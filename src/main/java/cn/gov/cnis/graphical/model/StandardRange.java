package cn.gov.cnis.graphical.model;

import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * 标准范围
 * @author :  Amayadream
 * @date :  2016.08.03 20:06
 */
@Repository
public class StandardRange implements Serializable {

    /** 编号 */
    private String guid;
    /** 标准范围名称 */
    private String rangeName;
    /** 标准范围代码 */
    private String rangeCode;
    /** 标准类型 */
    private String rangeType;


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getRangeName() {
        return rangeName;
    }

    public void setRangeName(String rangeName) {
        this.rangeName = rangeName;
    }

    public String getRangeCode() {
        return rangeCode;
    }

    public void setRangeCode(String rangeCode) {
        this.rangeCode = rangeCode;
    }

    public String getRangeType() {
        return rangeType;
    }

    public void setRangeType(String rangeType) {
        this.rangeType = rangeType;
    }

}
