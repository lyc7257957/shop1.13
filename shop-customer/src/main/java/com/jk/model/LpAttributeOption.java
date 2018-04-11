package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2018/4/10.
 */
public class LpAttributeOption implements Serializable {

    private static final long serialVersionUID = -1800263088030701999L;
//    attributefuid
//            optionsname
//    glid

    private Integer attributefuid;
    private String optionsname;
    private Integer glid;
    private List<LpAttribute> serises1;
    private String attributecreatedate;
    public Integer getAttributefuid() {
        return attributefuid;
    }

    public void setAttributefuid(Integer attributefuid) {
        this.attributefuid = attributefuid;
    }

    public String getOptionsname() {
        return optionsname;
    }

    public void setOptionsname(String optionsname) {
        this.optionsname = optionsname;
    }

    public Integer getGlid() {
        return glid;
    }

    public void setGlid(Integer glid) {
        this.glid = glid;
    }

    @Override
    public String toString() {
        return "LpAttributeOption{" +
                "attributefuid=" + attributefuid +
                ", optionsname='" + optionsname + '\'' +
                ", glid=" + glid +
                '}';
    }

    public List<LpAttribute> getSerises1() {
        return serises1;
    }

    public void setSerises1(List<LpAttribute> serises1) {
        this.serises1 = serises1;
    }

    public String getAttributecreatedate() {
        return attributecreatedate;
    }

    public void setAttributecreatedate(String attributecreatedate) {
        this.attributecreatedate = attributecreatedate;
    }
}
