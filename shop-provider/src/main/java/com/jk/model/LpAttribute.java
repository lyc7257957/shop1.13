package com.jk.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/4/10.
 */
public class LpAttribute implements Serializable {
    private static final long serialVersionUID = -1800263088030401798L;

    private Integer attributeid;
    private String attributecreatedate;
    private String attributemodifydate;
    private Integer attributeorders;
    private String attributename;
    private Integer attributepropertyindex;
    private Integer attributeproductcategory;
    //业务字段
    private String optionsname;
    public Integer getAttributeid() {
        return attributeid;
    }

    public void setAttributeid(Integer attributeid) {
        this.attributeid = attributeid;
    }

    public String getAttributecreatedate() {
        return attributecreatedate;
    }

    public void setAttributecreatedate(String attributecreatedate) {
        this.attributecreatedate = attributecreatedate;
    }

    public String getAttributemodifydate() {
        return attributemodifydate;
    }

    public void setAttributemodifydate(String attributemodifydate) {
        this.attributemodifydate = attributemodifydate;
    }

    public Integer getAttributeorders() {
        return attributeorders;
    }

    public void setAttributeorders(Integer attributeorders) {
        this.attributeorders = attributeorders;
    }

    public String getAttributename() {
        return attributename;
    }

    public void setAttributename(String attributename) {
        this.attributename = attributename;
    }

    public Integer getAttributepropertyindex() {
        return attributepropertyindex;
    }

    public void setAttributepropertyindex(Integer attributepropertyindex) {
        this.attributepropertyindex = attributepropertyindex;
    }

    public Integer getAttributeproductcategory() {
        return attributeproductcategory;
    }

    public void setAttributeproductcategory(Integer attributeproductcategory) {
        this.attributeproductcategory = attributeproductcategory;
    }

    @Override
    public String toString() {
        return "LpAttribute{" +
                "attributeid=" + attributeid +
                ", attributecreatedate='" + attributecreatedate + '\'' +
                ", attributemodifydate='" + attributemodifydate + '\'' +
                ", attributeorders=" + attributeorders +
                ", attributename='" + attributename + '\'' +
                ", attributepropertyindex=" + attributepropertyindex +
                ", attributeproductcategory=" + attributeproductcategory +
                '}';
    }

    public String getOptionsname() {
        return optionsname;
    }

    public void setOptionsname(String optionsname) {
        this.optionsname = optionsname;
    }
}
