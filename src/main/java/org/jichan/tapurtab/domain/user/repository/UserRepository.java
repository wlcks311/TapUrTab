package org.jichan.tapurtab.domain.user.repository;

import org.jichan.tapurtab.domain.user.entity.UserInfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

//함수 검색 : crudrepository
@Repository
public interface UserRepository extends CrudRepository<UserInfo, String> {
    UserInfo findByUserIdAndUserPw(String user_id, String user_pw);
    UserInfo findByUserId(String user_id);

}
