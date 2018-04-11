package com.jk.model;


import java.io.Serializable;
import java.util.Date;

/**
 * Created by lyc on 2018/4/3.
 */
public class User implements Serializable {

    private static final long serialVersionUID = -8945371540835791841L;

    private String userid;

    /** 用户名 */
    private String username;

    /** 密码 */
    private String password;

    /** E-mail */
    private String email;

    /** 姓名 */
    private String name;

    /** 部门 */
    private String department;

    /** 是否启用 */
    private Boolean isenabled;

    /** 是否锁定 */
    private Boolean islocked;

    /** 连续登录失败次数 */
    private Integer loginfailurecount;

    /** 锁定日期 */
    private Date lockeddate;

    /** 最后登录日期 */
    private Date logindate;

    /** 最后登录IP */
    private String loginip;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Boolean getIsenabled() {
        return isenabled;
    }

    public void setIsenabled(Boolean isenabled) {
        this.isenabled = isenabled;
    }

    public Boolean getIslocked() {
        return islocked;
    }

    public void setIslocked(Boolean islocked) {
        this.islocked = islocked;
    }

    public Integer getLoginfailurecount() {
        return loginfailurecount;
    }

    public void setLoginfailurecount(Integer loginfailurecount) {
        this.loginfailurecount = loginfailurecount;
    }

    public Date getLockeddate() {
        return lockeddate;
    }

    public void setLockeddate(Date lockeddate) {
        this.lockeddate = lockeddate;
    }

    public Date getLogindate() {
        return logindate;
    }

    public void setLogindate(Date logindate) {
        this.logindate = logindate;
    }

    public String getLoginip() {
        return loginip;
    }

    public void setLoginip(String loginip) {
        this.loginip = loginip;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        return userid != null ? userid.equals(user.userid) : user.userid == null;

    }

    @Override
    public int hashCode() {
        return userid != null ? userid.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid='" + userid + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", isenabled=" + isenabled +
                ", islocked=" + islocked +
                ", loginfailurecount=" + loginfailurecount +
                ", lockeddate=" + lockeddate +
                ", logindate=" + logindate +
                ", loginip='" + loginip + '\'' +
                '}';
    }
}
