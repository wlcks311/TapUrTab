package org.jichan.tapurtab.domain.tab.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
public class TabDrawInfo {

    @ManyToOne
    @JoinColumn(name = "tab_info_id")
    @JsonBackReference
    private TabInfo tabInfo;

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(nullable = false)
    private Integer periodNum;
    @Column(nullable = false)
    private Integer xPoint;
    @Column(nullable = false)
    private Integer yPoint;
    @Column(nullable = false)
    private String node;

    @Column(nullable = true)
    private String textNode;

    public TabDrawInfo(){

    }


    public TabDrawInfo(TabInfo tabInfo, Long id, Integer periodNum, Integer xPoint, Integer yPoint, String node, String textNode) {
        this.tabInfo = tabInfo;
        this.id = id;
        this.periodNum = periodNum;
        this.xPoint = xPoint;
        this.yPoint = yPoint;
        this.node = node;
        this.textNode = textNode;
    }

    public TabInfo getTabInfo() {
        return tabInfo;
    }

    public void setTabInfo(TabInfo tabInfo) {
        this.tabInfo = tabInfo;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getPeriodNum() {
        return periodNum;
    }

    public void setPeriodNum(Integer periodNum) {
        this.periodNum = periodNum;
    }

    public Integer getxPoint() {
        return xPoint;
    }

    public void setxPoint(Integer xPoint) {
        this.xPoint = xPoint;
    }

    public Integer getyPoint() {
        return yPoint;
    }

    public void setyPoint(Integer yPoint) {
        this.yPoint = yPoint;
    }

    public String getNode() {
        return node;
    }

    public void setNode(String node) {
        this.node = node;
    }

    public String getTextNode() {
        return textNode;
    }

    public void setTextNode(String textNode) {
        this.textNode = textNode;
    }

    @Override
    public String toString() {
        return "TabDrawInfo{" +
                "tabInfo=" + tabInfo +
                ", id=" + id +
                ", periodNum=" + periodNum +
                ", xPoint=" + xPoint +
                ", yPoint=" + yPoint +
                ", node='" + node +
                ", textNode'" + textNode + '\'' +
                '}';
    }
}
