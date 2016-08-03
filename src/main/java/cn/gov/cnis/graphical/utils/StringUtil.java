package cn.gov.cnis.graphical.utils;

import org.junit.Test;

import java.util.UUID;

/**
 * 字符串工具类
 * @author :  Amayadream
 * @date :  2016.08.03 20:39
 */
public class StringUtil {

    public static String getGuid(){
        return UUID.randomUUID().toString().trim().replaceAll("-", "").toLowerCase();
    }

    @Test
    public void test(){
        System.out.println(getGuid());
    }

}
