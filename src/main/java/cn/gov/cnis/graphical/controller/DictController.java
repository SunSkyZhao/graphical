package cn.gov.cnis.graphical.controller;

import cn.gov.cnis.graphical.model.Dict;
import cn.gov.cnis.graphical.service.IDictService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
    @RequestMapping(value = "list/{dictType}")
    @ResponseBody
    public String list(@PathVariable String dictType, @RequestParam int offset, @RequestParam int limit) {
        dict = new Dict();
        dict.setDictType(dictType);
        List<Dict> list = dictService.list(offset, limit, dict);
        return JSON.toJSONString(list);
    }

}
