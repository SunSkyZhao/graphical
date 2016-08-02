package cn.gov.cnis.graphical.model;

import java.io.Serializable;

/**
 * 用户实体
 * @author :  Amayadream
 * @date :  2016.08.02 19:32
 */
public class User implements Serializable {

    /** 用户编号 */
    private String guid;
    /** 登录账号 */
    private String userid;
    /** 登录密码 */
    private String password;
    /** 真实姓名 */
    private String realname;
    /** 用户角色 */
    private String role;
    /** 电话 */
    private String telephone;
    /** 手机 */
    private String mobilephone;
    /** 单位名称 */
    private String company;
    /** 联系地址 */
    private String address;
    /** 邮箱 */
    private String mail;
    /** 注册时间 */
    private String firsttime;
    /** 最后登录时间 */
    private String lasttime;
    /** 状态 */
    private int status;


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMobilephone() {
        return mobilephone;
    }

    public void setMobilephone(String mobilephone) {
        this.mobilephone = mobilephone;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getFirsttime() {
        return firsttime;
    }

    public void setFirsttime(String firsttime) {
        this.firsttime = firsttime;
    }

    public String getLasttime() {
        return lasttime;
    }

    public void setLasttime(String lasttime) {
        this.lasttime = lasttime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
