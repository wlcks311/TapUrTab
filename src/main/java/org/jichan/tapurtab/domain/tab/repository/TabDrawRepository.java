package org.jichan.tapurtab.domain.tab.repository;

import org.jichan.tapurtab.domain.tab.entity.TabDrawInfo;
import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface TabDrawRepository extends CrudRepository<TabDrawInfo, String> {
    List<TabDrawInfo> findByTabInfoId(int tabId);
}
