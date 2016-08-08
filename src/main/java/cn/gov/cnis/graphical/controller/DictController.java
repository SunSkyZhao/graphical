package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.Dict;
import cn.gov.cnis.graphical.service.IDictService;
import cn.gov.cnis.graphical.utils.Results;
import cn.gov.cnis.graphical.utils.StringUtil;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * 字典控制器
 * @author :  Amayadream
 * @date :  2016.08.07 21:39
 */
@Controller
@RequestMapping(value = "dict")
public class DictController {

    @Resource
    private IDictService dictService;
    @Resource
    private Dict dict;

    /**
     * 跳转到字典首页
     * @return
     */
    @RequestMapping(value = "")
    public String index(){
        return "app/dict/list";
    }

    /**
     * 列表
     * @param dictType
     * @param offset
     * @param limit
     * @return
     */
    @RequestMapping(value = "list/{dictType}", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String list(@PathVariable String dictType, @RequestParam int offset, @RequestParam int limit) {
        dict = new Dict();
        dict.setDictType(dictType);
        Map<String, Object> map = new HashMap<>();
        map.put("rows", dictService.list(offset, limit, dict));
        map.put("total", dictService.count(dict));
        return JSON.toJSONString(map);
    }

    @RequestMapping(value = "insert/{dictType}", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results insert(@PathVariable String dictType, Dict dict){
        dict.setGuid(StringUtil.getGuid());
        dict.setDictType(dictType);
        if(dictService.insert(dict) > 0){
            return Results.success("添加成功!");
        }else{
            return Results.error("添加失败!");
        }
    }

    @RequestMapping(value = "update", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results update(Dict dict) {
        if(dictService.update(dict) != 0){
            return Results.success("更新成功!");
        } else{
            return Results.error("更新失败!");
        }
    }

    @RequestMapping(value = "delete", produces = "application/json;charset=utf-8")
    @ResponseBody
    public Results delete(String[] guids) {
        if(dictService.delete(Arrays.asList(guids)) != 0){
            return Results.success("删除成功!");
        }else{
            return Results.error("删除失败!");
        }
    }

}
