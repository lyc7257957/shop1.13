package com.jk.model;

import java.io.Serializable;

/**
 * Created by lyc on 2018/4/8.
 */
public class Tree implements Serializable {

    private static final long serialVersionUID = -3126647092182756142L;
    private Integer id;

    private String text;

    private String url;

    private Integer pid;

    private Integer code;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tree tree = (Tree) o;

        return id != null ? id.equals(tree.id) : tree.id == null;

    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "Tree{" +
                "id=" + id +
                ", text='" + text + '\'' +
                ", url='" + url + '\'' +
                ", pid=" + pid +
                ", code=" + code +
                '}';
    }

    public Tree(Integer id, String text, String url, Integer pid, Integer code) {
        this.id = id;
        this.text = text;
        this.url = url;
        this.pid = pid;
        this.code = code;
    }

    public Tree() {
    }
}
