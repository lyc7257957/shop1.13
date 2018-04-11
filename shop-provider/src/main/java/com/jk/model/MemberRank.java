package com.jk.model;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by lyc on 2018/4/10.
 */
public class MemberRank implements Serializable {

    private static final long serialVersionUID = 9057089569141588501L;

    private Integer rankid;
    /** 名称 */
    private String name;

    /** 优惠比例 */
    private Double scale;

    /** 消费金额 */
    private Double amount;

    /** 是否默认 */
    private Integer isDefault;

    /** 是否特殊 */
    private Integer isSpecial;

    private Date createtime;

    private Date modifytime;

    public Integer getRankid() {
        return rankid;
    }

    public void setRankid(Integer rankid) {
        this.rankid = rankid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getScale() {
        return scale;
    }

    public void setScale(Double scale) {
        this.scale = scale;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
    }

    public Integer getIsSpecial() {
        return isSpecial;
    }

    public void setIsSpecial(Integer isSpecial) {
        this.isSpecial = isSpecial;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MemberRank that = (MemberRank) o;

        return rankid.equals(that.rankid);

    }

    @Override
    public int hashCode() {
        return rankid.hashCode();
    }

    @Override
    public String toString() {
        return "MemberRank{" +
                "rankid=" + rankid +
                ", name='" + name + '\'' +
                ", scale=" + scale +
                ", amount=" + amount +
                ", isDefault=" + isDefault +
                ", isSpecial=" + isSpecial +
                ", createtime=" + createtime +
                ", modifytime=" + modifytime +
                '}';
    }
}
