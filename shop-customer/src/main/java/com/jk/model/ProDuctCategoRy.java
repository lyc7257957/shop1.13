package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/4/6.
 */
public class ProDuctCategoRy implements Serializable {

    private static final long serialVersionUID = -1800233088030401261L;
    private Integer id;

    private String createDatea;//创建日期

    private String modifyDatea;//修改日期

    private Integer ordersa;//排序

    private String nameq;

    private Integer productcategory;//绑定分类

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreateDatea() {
        return createDatea;
    }

    public void setCreateDatea(String createDatea) {
        this.createDatea = createDatea;
    }

    public String getModifyDatea() {
        return modifyDatea;
    }

    public void setModifyDatea(String modifyDatea) {
        this.modifyDatea = modifyDatea;
    }

    public Integer getOrdersa() {
        return ordersa;
    }

    public void setOrdersa(Integer ordersa) {
        this.ordersa = ordersa;
    }

    public String getNameq() {
        return nameq;
    }

    public void setNameq(String nameq) {
        this.nameq = nameq;
    }

    public Integer getProductcategory() {
        return productcategory;
    }

    public void setProductcategory(Integer productcategory) {
        this.productcategory = productcategory;
    }

    @Override
    public String toString() {
        return "ProDuctCategoRy{" +
                "id=" + id +
                ", createDatea='" + createDatea + '\'' +
                ", modifyDatea='" + modifyDatea + '\'' +
                ", ordersa=" + ordersa +
                ", nameq='" + nameq + '\'' +
                ", productcategory=" + productcategory +
                '}';
    }
}
