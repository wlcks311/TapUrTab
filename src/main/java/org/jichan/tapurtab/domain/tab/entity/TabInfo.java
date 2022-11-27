package org.jichan.tapurtab.domain.tab.entity;

//import org.springframework.data.annotation.Id;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.print.attribute.IntegerSyntax;
import java.util.List;

@Entity
public class TabInfo {

    @OneToMany(mappedBy = "tabInfo")
    @JsonBackReference
    private List<TabDrawInfo> tabDrawInfos;

    @Id @GeneratedValue(strategy = GenerationType.AUTO) //pk 자동 증가
    private Integer id;
    private String songName;
    private String singerName;
    private String userId;
    private String tabLink;

    public TabInfo() {

    }

    public TabInfo(List<TabDrawInfo> tabDrawInfos, Integer id, String songName, String singerName, String userId, String tabLink) {
        this.tabDrawInfos = tabDrawInfos;
        this.id = id;
        this.songName = songName;
        this.singerName = singerName;
        this.userId = userId;
        this.tabLink = tabLink;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
    }

    public String getSingerName() {
        return singerName;
    }

    public void setSingerName(String singerName) {
        this.singerName = singerName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getTabLink() {
        return tabLink;
    }

    public void setTabLink(String tabLink) {
        this.tabLink = tabLink;
    }

    public List<TabDrawInfo> getTabDrawInfos() {
        return tabDrawInfos;
    }

    public void setTabDrawInfos(List<TabDrawInfo> tabDrawInfos) {
        this.tabDrawInfos = tabDrawInfos;
    }

    @Override
    public String toString() {
        return "TabInfo{" +
                "tabDrawInfos=" + tabDrawInfos +
                ", id=" + id +
                ", songName='" + songName + '\'' +
                ", singerName='" + singerName + '\'' +
                ", userId='" + userId + '\'' +
                ", tabLink='" + tabLink + '\'' +
                '}';
    }
}
