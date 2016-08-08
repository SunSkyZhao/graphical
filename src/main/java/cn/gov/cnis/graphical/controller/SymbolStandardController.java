package cn.gov.cnis.graphical.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 标准符号控制器
 * @author :  Amayadream
 * @date :  2016.08.08 22:43
 */
@Controller
@RequestMapping(value = "symbol/standard")
public class SymbolStandardController {

    @RequestMapping(value = "/list/{symbolType}")
    public String list(@PathVariable String symbolType){
        return "app/symbol-standard/" + symbolType + "-symbol";
    }

}
