package cn.gov.cnis.graphical.model;

import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * 标准图形符号实体
 * @author :  Amayadream
 * @date :  2016.08.08 21:56
 */
@Repository
public class SymbolStandard implements Serializable {

    /** 编号 */
    private String guid;
    /** 中文名称 */
    private String chineseName;
    /** 外文名称 */
    private String foreignName;
    /** 标准编号 */
    private String standardId;
    /** 符号编号 */
    private String symbolId;
    /** 符号类型(标志用符号/技术用符号/技术文件用符号) */
    private String symbolType;
    /** 符号状态 */
    private String status;
    /** 注册号 */
    private String registerId;
    /** 关键词 */
    private String keyword;
    /** 符号说明 */
    private String symbolTips;
    /** 变更说明 */
    private String changeTips;

    /** 形状一 */
    private String shape1;
    /** 形状二 */
    private String shape2;
    /** 形状三 */
    private String shape3;
    /** 颜色一 */
    private String color1;
    /** 颜色二 */
    private String color2;

    /** gif格式 */
    private String fileGif;
    /** bmp格式 */
    private String fileBmp;
    /** pdf格式 */
    private String filePdf;
    /** jpg格式 */
    private String fileJpg;
    /** ai格式 */
    private String fileAi;
    /** eps格式 */
    private String fileEps;


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getChineseName() {
        return chineseName;
    }

    public void setChineseName(String chineseName) {
        this.chineseName = chineseName;
    }

    public String getForeignName() {
        return foreignName;
    }

    public void setForeignName(String foreignName) {
        this.foreignName = foreignName;
    }

    public String getStandardId() {
        return standardId;
    }

    public void setStandardId(String standardId) {
        this.standardId = standardId;
    }

    public String getSymbolId() {
        return symbolId;
    }

    public void setSymbolId(String symbolId) {
        this.symbolId = symbolId;
    }

    public String getSymbolType() {
        return symbolType;
    }

    public void setSymbolType(String symbolType) {
        this.symbolType = symbolType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRegisterId() {
        return registerId;
    }

    public void setRegisterId(String registerId) {
        this.registerId = registerId;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getSymbolTips() {
        return symbolTips;
    }

    public void setSymbolTips(String symbolTips) {
        this.symbolTips = symbolTips;
    }

    public String getChangeTips() {
        return changeTips;
    }

    public void setChangeTips(String changeTips) {
        this.changeTips = changeTips;
    }

    public String getShape1() {
        return shape1;
    }

    public void setShape1(String shape1) {
        this.shape1 = shape1;
    }

    public String getShape2() {
        return shape2;
    }

    public void setShape2(String shape2) {
        this.shape2 = shape2;
    }

    public String getShape3() {
        return shape3;
    }

    public void setShape3(String shape3) {
        this.shape3 = shape3;
    }

    public String getColor1() {
        return color1;
    }

    public void setColor1(String color1) {
        this.color1 = color1;
    }

    public String getColor2() {
        return color2;
    }

    public void setColor2(String color2) {
        this.color2 = color2;
    }

    public String getFileGif() {
        return fileGif;
    }

    public void setFileGif(String fileGif) {
        this.fileGif = fileGif;
    }

    public String getFileBmp() {
        return fileBmp;
    }

    public void setFileBmp(String fileBmp) {
        this.fileBmp = fileBmp;
    }

    public String getFilePdf() {
        return filePdf;
    }

    public void setFilePdf(String filePdf) {
        this.filePdf = filePdf;
    }

    public String getFileJpg() {
        return fileJpg;
    }

    public void setFileJpg(String fileJpg) {
        this.fileJpg = fileJpg;
    }

    public String getFileAi() {
        return fileAi;
    }

    public void setFileAi(String fileAi) {
        this.fileAi = fileAi;
    }

    public String getFileEps() {
        return fileEps;
    }

    public void setFileEps(String fileEps) {
        this.fileEps = fileEps;
    }
}
