package org.jichan.tapurtab.domain.user.service;

import org.jichan.tapurtab.domain.user.entity.UserInfo;
import org.jichan.tapurtab.domain.user.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;//서비스에 주입함

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public boolean LoginCheck(UserInfo userInfo) {
        String userID = userInfo.getUserId();
        String userPW = userInfo.getUserPw();
        if (userRepository.findByUserIdAndUserPw(userID, userPW) != null) {
            return true; //로그인 성공시
        }
        else {
            return false;
        }
    }
    public boolean IdExistCheck(UserInfo userInfo) {
        String newId = userInfo.getUserId();
        if(userRepository.findByUserId(newId) != null) {//이미 아이디가 있는 경우
            return true;
        }
        else {
            return false;
        }
    }
    public void insertUser(UserInfo userInfo) {
        UserInfo user = new UserInfo();
        user.setUserId(userInfo.getUserId());
        user.setUserPw(userInfo.getUserPw());
        userRepository.save(user); //유저 정보 DB에 저장
    }


}
