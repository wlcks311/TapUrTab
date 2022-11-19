package org.jichan.tapurtab.domain.tab.repository;

import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface TabRepository extends CrudRepository<TabInfo, String> {
    List<TabInfo> findBySongName(String songName);
    List<TabInfo> findBySingerName(String singerName);
    List<TabInfo> findByUserId(String userId);
}
