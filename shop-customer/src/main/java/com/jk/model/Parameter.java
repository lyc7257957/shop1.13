package com.jk.model;

import java.io.Serializable;

public class Parameter implements Serializable{

    private static final long serialVersionUID = -1800233088030401298L;
    private Integer id;

    private String createDate;//创建日期

    private String modifyDate;//修改日期

    private Integer orders;//排序

    private String name;

    private Integer parameter;//参数组

    //业务
    private Integer productcategory;//绑定分类
    private String nameq;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getModifyDate() {
        return modifyDate;
    }

    public void setModifyDate(String modifyDate) {
        this.modifyDate = modifyDate;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getParameter() {
        return parameter;
    }

    public void setParameter(Integer parameter) {
        this.parameter = parameter;
    }

    @Override
    public String toString() {
        return "users{" +
                "id=" + id +
                ", createDate='" + createDate + '\'' +
                ", modifyDate='" + modifyDate + '\'' +
                ", orders=" + orders +
                ", name='" + name + '\'' +
                ", parameter=" + parameter +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getProductcategory() {
        return productcategory;
    }

    public void setProductcategory(Integer productcategory) {
        this.productcategory = productcategory;
    }

    public String getNameq() {
        return nameq;
    }

    public void setNameq(String nameq) {
        this.nameq = nameq;
    }


}