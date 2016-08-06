package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.StandardRange;
import cn.gov.cnis.graphical.service.IStandardRangeService;
import cn.gov.cnis.graphical.utils.Results;
import cn.gov.cnis.graphical.utils.StringUtil;
import com.alibaba.fastjson.JSON;
import org.apache.commons.collections.ListUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;

/**
 * 标准设置控制器
 * @author :  Amayadream
 * @date :  2016.08.03 21:30
 */
@Controller
@RequestMapping(value = "config")
public class ConfigController {

    /** 标准范围服务 */
    @Resource
    private IStandardRangeService standardRangeService;

    /**
     * 跳转到标准设置页面
     * @return
     */
    @RequestMapping(value = "standard")
    public String list(){
        return "app/config/list";
    }

    /**
     * 根据标准范围类型获取标准范围数据
     * @param type
     * @return
     */
    @RequestMapping(value = "standard/{type}", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String getListByType(@PathVariable String type){
        List<StandardRange> list = standardRangeService.selectByType(type);
        return JSON.toJSONString(list);
    }

    /**
     * 添加
     * @param type
     * @param standardRange
     * @return
     */
    @RequestMapping(value = "standard/insert/{type}", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results insert(@PathVariable String type, StandardRange standardRange){
        standardRange.setGuid(StringUtil.getGuid());
        standardRange.setRangeType(type);
        if(standardRangeService.insert(standardRange) != 0){
            return Results.success("添加成功!");
        }else {
            return Results.error("添加失败!");
        }
    }

    /**
     * 更新
     * @param standardRange
     * @return
     */
    @RequestMapping(value = "standard/update", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results update(StandardRange standardRange){
        if(standardRangeService.update(standardRange) != 0){
            return Results.success("更新成功!");
        } else{
            return Results.error("更新失败!");
        }
    }

    /**
     * 删除
     * @param guids
     * @return
     */
    @RequestMapping(value = "standard/delete", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results delete(String[] guids){
        if(standardRangeService.delete(Arrays.asList(guids)) != 0){
            return Results.success("删除成功!");
        }else{
            return Results.error("删除失败!");
        }
    }


}
