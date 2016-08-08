package cn.gov.cnis.graphical.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页控制器
 * @author :  Amayadream
 * @date :  2016.08.08 22:15
 */
@Controller
public class IndexController {

    @RequestMapping(value = "")
    public String index(){
        return "app/index";
    }

}
