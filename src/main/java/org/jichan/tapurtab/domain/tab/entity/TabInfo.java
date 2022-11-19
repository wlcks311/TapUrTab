package org.jichan.tapurtab.domain.tab.entity;

//import org.springframework.data.annotation.Id;

import javax.persistence.*;

@Entity
public class TabInfo {
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String songName;
    private String singerName;
    private String userId;
    private String tabLink;

    public TabInfo() {

    }

    public TabInfo(int id, String songName, String singerName, String userId, String tabLink) {
        this.id = id;
        this.songName = songName;
        this.singerName = singerName;
        this.userId = userId;
        this.tabLink = tabLink;
    }

    public int getId() {
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
}
