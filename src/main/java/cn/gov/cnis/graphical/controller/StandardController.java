package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.Standard;
import cn.gov.cnis.graphical.service.IStandardService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;
import java.util.HashMap;

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
    public String add(){
        return "app/standard/input";
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

}
