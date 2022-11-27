package org.jichan.tapurtab.domain.tab.service;

import org.jichan.tapurtab.domain.tab.entity.TabDrawInfo;
import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.jichan.tapurtab.domain.tab.repository.TabDrawRepository;
import org.jichan.tapurtab.domain.tab.repository.TabRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TabDrawService {
    private final TabRepository tabRepository;
    private final TabDrawRepository tabDrawRepository;

    @Autowired
    public TabDrawService(TabRepository tabRepository, TabDrawRepository tabDrawRepository) {
        this.tabRepository = tabRepository;
        this.tabDrawRepository = tabDrawRepository;
    }
    
    public void insertTab(TabInfo tabInfo) {
        TabInfo saved = tabRepository.save(tabInfo); //tab저장
        for (TabDrawInfo tabDrawInfo : tabInfo.getTabDrawInfos()) {
            tabDrawInfo.setTabInfo(saved);
            tabDrawRepository.save(tabDrawInfo);
        }
    }

    public List<TabDrawInfo> searchTabDraw(int tabId) {

        if (tabDrawRepository.findByTabInfoId(tabId).isEmpty()) {
            return null;
        }
        else {
            return tabDrawRepository.findByTabInfoId(tabId);
        }

    }


}
