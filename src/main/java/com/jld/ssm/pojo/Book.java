package com.jld.ssm.pojo;

public class Book {
    private Integer id;

    private String name;

    private Integer bnum;

    private String pic;

    private Integer roid;

    public Book(Integer id, String name, Integer bnum, String pic, Integer roid) {
        this.id = id;
        this.name = name;
        this.bnum = bnum;
        this.pic = pic;
        this.roid = roid;
    }

    public Book() {
        super();
    }

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

    public Integer getBnum() {
        return bnum;
    }

    public void setBnum(Integer bnum) {
        this.bnum = bnum;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Integer getRoid() {
        return roid;
    }

    public void setRoid(Integer roid) {
        this.roid = roid;
    }
}