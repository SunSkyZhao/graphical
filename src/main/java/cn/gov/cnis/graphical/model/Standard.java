package cn.gov.cnis.graphical.model;

import java.io.Serializable;

/**
 * 标准实体
 * @author :  Amayadream
 * @date :  2016.08.03 19:52
 */
public class Standard implements Serializable {

    /** 编号 */
    private String guid;
    /** 中文名称 */
    private String chineseName;
    /** 外文名称 */
    private String foreignName;
    /** 标准编号 */
    private String identifier;
    /** 标准范围 */
    private String standardRange;
    /** 符号范围 */
    private String symbolRange;
    /** 标准状态, 0:现行, -1废弃, -2被替代 */
    private String status;
    /** 替代情况 */
    private String replaceInfo;
    /** 采标程度 */
    private String adoptInfo;
    /** 提出单位 */
    private String proposeCompany;
    /** 起草单位 */
    private String draftCompany;
    /** 起草人员 */
    private String draftPerson;
    /** 归口单位 */
    private String occupyCompany;
    /** 历次发布 */
    private String releaseHistory;
    /** 适用范围 */
    private String useScope;
    /** 标准全文 */
    private String attachment;
    /** 文件路径 */
    private String filePath;
    /** 关键词 */
    private String keyword;


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

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public String getStandardRange() {
        return standardRange;
    }

    public void setStandardRange(String standardRange) {
        this.standardRange = standardRange;
    }

    public String getSymbolRange() {
        return symbolRange;
    }

    public void setSymbolRange(String symbolRange) {
        this.symbolRange = symbolRange;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReplaceInfo() {
        return replaceInfo;
    }

    public void setReplaceInfo(String replaceInfo) {
        this.replaceInfo = replaceInfo;
    }

    public String getAdoptInfo() {
        return adoptInfo;
    }

    public void setAdoptInfo(String adoptInfo) {
        this.adoptInfo = adoptInfo;
    }

    public String getProposeCompany() {
        return proposeCompany;
    }

    public void setProposeCompany(String proposeCompany) {
        this.proposeCompany = proposeCompany;
    }

    public String getDraftCompany() {
        return draftCompany;
    }

    public void setDraftCompany(String draftCompany) {
        this.draftCompany = draftCompany;
    }

    public String getDraftPerson() {
        return draftPerson;
    }

    public void setDraftPerson(String draftPerson) {
        this.draftPerson = draftPerson;
    }

    public String getOccupyCompany() {
        return occupyCompany;
    }

    public void setOccupyCompany(String occupyCompany) {
        this.occupyCompany = occupyCompany;
    }

    public String getReleaseHistory() {
        return releaseHistory;
    }

    public void setReleaseHistory(String releaseHistory) {
        this.releaseHistory = releaseHistory;
    }

    public String getUseScope() {
        return useScope;
    }

    public void setUseScope(String useScope) {
        this.useScope = useScope;
    }

    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
