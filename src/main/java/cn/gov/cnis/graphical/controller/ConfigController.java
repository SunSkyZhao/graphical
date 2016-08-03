package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.StandardRange;
import cn.gov.cnis.graphical.service.IStandardRangeService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
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

}
