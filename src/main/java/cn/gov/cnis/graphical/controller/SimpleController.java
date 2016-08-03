package cn.gov.cnis.graphical.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 简单的测试控制器
 * @author :  Amayadream
 * @date :  2016.08.03 13:54
 */
@Controller
public class SimpleController {

    @RequestMapping(value = "index")
    public String index(){
        return "app/index";
    }

    @RequestMapping(value = "demo")
    public String demo(){
        return "app/demo";
    }

}
