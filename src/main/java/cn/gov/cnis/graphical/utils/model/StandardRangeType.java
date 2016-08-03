package cn.gov.cnis.graphical.utils.model;

/**
 * 标准范围类型
 *
 * @author :  Amayadream
 * @date :  2016.08.03 20:58
 */
public enum  StandardRangeType {

    domestic("domestic", "国内"), international("international", "国际"), abroad("abroad", "国外");

    private String code;
    private String name;

    private StandardRangeType(String code, String name){
        this.code = code;
        this.name = name;
    }

    public static String getName(String code){
        for (StandardRangeType type : StandardRangeType.values()) {
            if (code.equals(type.getCode())) {
                return type.name;
            }
        }
        return null;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
