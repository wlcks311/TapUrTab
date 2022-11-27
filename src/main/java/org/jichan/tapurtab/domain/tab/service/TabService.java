package org.jichan.tapurtab.domain.tab.service;

import lombok.extern.slf4j.Slf4j;
import org.jichan.tapurtab.domain.tab.dto.TabInfoSearchDto;
import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.jichan.tapurtab.domain.tab.repository.TabDrawRepository;
import org.jichan.tapurtab.domain.tab.repository.TabRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class TabService {
    private final TabRepository tabRepository;
    private final TabDrawRepository tabDrawRepository;
    @Autowired
    public TabService(TabRepository tabRepository, TabDrawRepository tabDrawRepository) {
        this.tabRepository = tabRepository;
        this.tabDrawRepository = tabDrawRepository;
    }

    public List<TabInfo> SearchCheck(TabInfoSearchDto tabInfoSearchDto) {
        String searchType = tabInfoSearchDto.getSearchType();
        String givenWord = tabInfoSearchDto.getGivenWord();

        log.info("{}", tabInfoSearchDto);

        if (searchType.equals("songName")) {
            if(tabRepository.findBySongName(givenWord).isEmpty()) {
                return null;
            }
            else {
                return tabRepository.findBySongName(givenWord);
            }

        }
        else if(searchType.equals("singerName")) {
            if(tabRepository.findBySingerName(givenWord).isEmpty()) {
                return null;
            }
            else {
                return tabRepository.findBySingerName(givenWord);
            }

        }
        else { //user_id
            if(tabRepository.findByUserId(givenWord).isEmpty()) {
                return null;
            }
            else {
                return tabRepository.findByUserId(givenWord);
            }

        }
    }

    public TabInfo searchTab(Integer id) {


        return tabRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("error"));
    }

}
