package cn.gov.cnis.graphical.utils;

/**
 * 一些常量定义
 *
 * @author :  Amayadream
 * @date :  2016.08.04 22:24
 */
public class Constants {

    public static final String UPLOAD_FOLDER = "upload";

    public static final String domestic = "国内";
    public static final String international = "国际";
    public static final String abroad = "国外";

    public static final String symbol = "符号用标志";
    public static final String device = "设备用标志";
    public static final String document = "技术文件用标志";

    public static final String active = "现行";
    public static final String replaced = "被代替";
    public static final String obsolete = "废弃";

    public static String getStandardRangeType(String code){
        String type = "";
        switch (code){
            case "domestic":
                type = "国内标准";
                break;
            case "international":
                type = "国际标准";
                break;
            case "abroad":
                type =  "国外标准";
                break;
        }
        return type;
    }

    public static String getSymbol(String code){
        String symbol = "";
        switch (code){
            case "symbol":
                symbol = "符号用标志";
                break;
            case "device":
                symbol = "设备用标志";
                break;
            case "document":
                symbol =  "技术文件用标志";
                break;
        }
        return symbol;
    }

    public static String getStatus(String code) {
        String status = "";
        switch (code){
            case "active":
                status = "现行";
                break;
            case "replaced":
                status = "被代替";
                break;
            case "obsolete":
                status =  "废弃";
                break;
        }
        return status;
    }

}
