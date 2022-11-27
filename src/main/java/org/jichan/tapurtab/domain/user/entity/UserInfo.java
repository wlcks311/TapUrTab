package org.jichan.tapurtab.domain.user.entity;



//@Entity @Id @GeneratedValue

import javax.persistence.*;

@Entity
//@Table(name = "Table_name")
public class UserInfo {
    @Id
    private String userId;
//    @Column(length = 25)
    private String userPw;

    public UserInfo() {

    }

    public UserInfo(String userId, String userPw) {
        this.userId = userId;
        this.userPw = userPw;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }
}
