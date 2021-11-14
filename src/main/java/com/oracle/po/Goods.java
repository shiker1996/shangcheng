package com.oracle.po;

import java.util.Date;

public class Goods {
    private Integer id;

    private String name;

    private Date onshelf;

    private Date offshelf;

    private String state;

    private Integer num;

    private Date prodate;

    private Date reldate;
    
    private String pride;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getOnshelf() {
        return onshelf;
    }

    public void setOnshelf(Date onshelf) {
        this.onshelf = onshelf;
    }

    public Date getOffshelf() {
        return offshelf;
    }

    public void setOffshelf(Date offshelf) {
        this.offshelf = offshelf;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getProdate() {
        return prodate;
    }

    public void setProdate(Date prodate) {
        this.prodate = prodate;
    }

    public Date getReldate() {
        return reldate;
    }

    public void setReldate(Date reldate) {
        this.reldate = reldate;
    }

	public String getPride() {
		return pride;
	}

	public void setPride(String pride) {
		this.pride = pride;
	}
}