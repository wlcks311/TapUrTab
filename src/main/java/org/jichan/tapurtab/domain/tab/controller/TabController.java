package org.jichan.tapurtab.domain.tab.controller;

import lombok.extern.slf4j.Slf4j;
import org.jichan.tapurtab.domain.tab.dto.TabInfoSearchDto;
import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.jichan.tapurtab.domain.tab.service.TabService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/tab")
@Slf4j
public class TabController {
    private final TabService tabService;
    @Autowired
    public TabController(TabService tabService) { this.tabService = tabService; }

    @GetMapping("/search")
    public String test() {
        return "index";
    }

    @PostMapping("/search")
    public ModelAndView search(@ModelAttribute TabInfoSearchDto tabInfoSearchDto, ModelMap model) {

        List<TabInfo> tabInfos = tabService.SearchCheck(tabInfoSearchDto);
        model.addAttribute("tabInfos", tabInfos);
        if(tabInfos != null) {
            return new ModelAndView("searchResult", model);
        }

        else {
            return new ModelAndView("searchNoResult", model);
        }
    }

//    @GetMapping("/{id}")
//    public TabInfo aaa(@PathVariable int id) {
//        return tabService.findById(id);
//    }
}
