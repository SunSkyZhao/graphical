package cn.gov.cnis.graphical.model;

import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * 用户实体
 * @author :  Amayadream
 * @date :  2016.08.02 19:32
 */
@Repository
public class User implements Serializable {

    /** 编号 */
    private String guid;
    /** 登录账号 */
    private String userId;
    /** 登录密码 */
    private String password;
    /** 真实姓名 */
    private String realName;
    /** 用户角色 */
    private String role;
    /** 电话 */
    private String telephone;
    /** 手机 */
    private String mobile;
    /** 单位名称 */
    private String company;
    /** 联系地址 */
    private String address;
    /** 邮箱 */
    private String mail;
    /** 注册时间 */
    private String firstTime;
    /** 最后登录时间 */
    private String lastTime;
    /** 状态 */
    private int status;


    public String getGuid() {
        return guid;
    }

    public void setGuid(String guid) {
        this.guid = guid;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
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

    public String getFirstTime() {
        return firstTime;
    }

    public void setFirstTime(String firstTime) {
        this.firstTime = firstTime;
    }

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
