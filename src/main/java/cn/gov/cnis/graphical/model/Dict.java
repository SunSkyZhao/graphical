package cn.gov.cnis.graphical.model;

import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * 字典实体
 * @author :  Amayadream
 * @date :  2016.08.07 21:21
 */
@Repository
public class Dict implements Serializable {

    /** 编号 */
    private String guid;
    /** 字典名称 */
    private String dictName;
    /** 字典值 */
    private String dictValue;
    /** 字典类型 */
    private String dictType;
    /** 符号类型 */
    private String symbolType;


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getDictName() {
        return dictName;
    }

    public void setDictName(String dictName) {
        this.dictName = dictName;
    }

    public String getDictValue() {
        return dictValue;
    }

    public void setDictValue(String dictValue) {
        this.dictValue = dictValue;
    }

    public String getDictType() {
        return dictType;
    }

    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    public String getSymbolType() {
        return symbolType;
    }

    public void setSymbolType(String symbolType) {
        this.symbolType = symbolType;
    }
}
