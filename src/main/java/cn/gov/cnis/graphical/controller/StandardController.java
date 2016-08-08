package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.Standard;
import cn.gov.cnis.graphical.model.StandardRange;
import cn.gov.cnis.graphical.service.IStandardRangeService;
import cn.gov.cnis.graphical.service.IStandardService;
import cn.gov.cnis.graphical.utils.*;
import com.alibaba.fastjson.JSON;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 标准控制器
 * @author :  Amayadream
 * @date :  2016.08.04 21:05
 */
@Controller
@RequestMapping(value = "standard")
public class StandardController {

    /** 标准服务 */
    @Resource
    private IStandardService standardService;
    @Resource
    private IStandardRangeService standardRangeService;

    /**
     * 跳转至标准列表页面
     * @return
     */
    @RequestMapping(value = "")
    public String index(){
        return "app/standard/list";
    }

    /**
     * 跳转至标准添加页面
     * @return
     */
    @RequestMapping(value = "add")
    public ModelAndView add(){
        ModelAndView view = new ModelAndView("app/standard/input");
        view.addObject("domestic", standardRangeService.selectByType("domestic"));
        view.addObject("international", standardRangeService.selectByType("international"));
        view.addObject("abroad", standardRangeService.selectByType("abroad"));
        return view;
    }

    /**
     * 获取标准列表分页数据
     * @param offset
     * @param limit
     * @return
     */
    @RequestMapping(value = "list", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String list(@RequestParam int offset, @RequestParam int limit) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows", standardService.list(offset, limit));
        map.put("total", standardService.count());
        return JSON.toJSONString(map);
    }

    /**
     * 添加标准
     * @param standard
     * @param file
     * @param attributes
     * @param request
     * @return
     */
    @RequestMapping(value = "insert")
    public String insert(Standard standard, MultipartFile file, RedirectAttributes attributes, HttpServletRequest request){
        String uploadPath = request.getServletContext().getRealPath(Constants.UPLOAD_FOLDER) + "/" + DateUtil.getDayTime();
        String realName = file.getOriginalFilename();
        String formatName = FileUtil.buildName(uploadPath, realName);
        File target = new File(uploadPath + "/" + formatName);
        if (!target.exists()) {
            target.mkdirs();
        }
        try {
            file.transferTo(target);
        } catch (IOException e) {
            e.printStackTrace();
        }
        standard.setGuid(StringUtil.getGuid());
        standard.setAttachment(realName);
        standard.setFilePath((uploadPath + "/" + formatName).substring((uploadPath + "/" + formatName).lastIndexOf(Constants.UPLOAD_FOLDER)));
        if(standardService.insert(standard) != 0){
            attributes.addFlashAttribute("message", "添加成功!");
        }else{
            attributes.addFlashAttribute("error", "添加失败!");
        }
        return "redirect:/standard";
    }

    @RequestMapping(value = "delete", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results delete(String[] guids){
        if(standardService.delete(Arrays.asList(guids)) != 0){
            return Results.success("删除成功!");
        }else{
            return Results.error("删除失败!");
        }
    }

    /**
     * 详情页
     * @param guid
     * @return
     */
    @RequestMapping(value = "detail/{guid}")
    public ModelAndView detail(@PathVariable String guid){
        ModelAndView view = new ModelAndView("app/standard/detail");
        Standard standard = standardService.selectByPrimaryKey(guid);
        if (standard != null) {
            StandardRange range = standardRangeService.selectByPrimaryKey(standard.getStandardRange());
            if(range != null){
                standard.setStandardRange(Constants.getStandardRangeType(range.getRangeType()) + " - " + range.getRangeName());
                standard.setSymbolRange(Constants.getSymbol(standard.getSymbolRange()));
                standard.setStatus(Constants.getStatus(standard.getStatus()));
            }else{
                standard.setStandardRange("");
            }
            view.addObject("standard", standard);
        }else{
            view.addObject("error", "暂无信息");
        }
        return view;
    }

    @RequestMapping(value = "download/{guid}")
    public void download(@PathVariable String guid, HttpServletRequest request, HttpServletResponse response) {
        Standard standard = standardService.selectByPrimaryKey(guid);
        if (!StringUtils.isEmpty(standard.getAttachment()) && !StringUtils.isEmpty(standard.getFilePath())) {
            File file = new File(request.getServletContext().getRealPath("/") + "/" + standard.getFilePath());
            if (file.exists()) {
                try {
                    String fileNameEncode = new String(standard.getAttachment().getBytes(),"ISO8859-1");
                    response.setContentType("application/x-msdownload");
                    FileInputStream FileInputStreamRef = new FileInputStream(file);
                    response.setHeader("Content-Disposition","attachment;filename=\""+fileNameEncode+"\"");     //文件名经过处理,防止有空格时出现文件名不全的情况
                    OutputStream osRef = response.getOutputStream();
                    IOUtils.copy(FileInputStreamRef,osRef);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

}
