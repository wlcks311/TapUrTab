package org.jichan.tapurtab.domain.tab.controller;

import lombok.extern.slf4j.Slf4j;
import org.jichan.tapurtab.domain.tab.entity.TabDrawInfo;
import org.jichan.tapurtab.domain.tab.entity.TabInfo;
import org.jichan.tapurtab.domain.tab.service.TabDrawService;
import org.jichan.tapurtab.domain.tab.service.TabService;
import org.jichan.tapurtab.domain.user.entity.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/tab")
public class TabDrawController {
    private TabDrawService tabDrawService;
    private TabService tabService;

    @Autowired
    public TabDrawController(TabDrawService tabDrawService, TabService tabService) {
        this.tabDrawService = tabDrawService;
        this.tabService = tabService;
    }

    @PostMapping("/save")
    public ModelAndView saveTab(@RequestBody TabInfo tabInfo, @SessionAttribute(name = "user") UserInfo userInfo, ModelMap model) {
        model.addAttribute("tabInfo", tabInfo);
        tabInfo.setUserId(userInfo.getUserId());
        log.info("HELLO");
        log.info("{}", userInfo);
        log.info("{}", tabInfo);
        tabDrawService.insertTab(tabInfo);

        return new ModelAndView("saveSuccess", model);

    }

    @PostMapping("/getTabDrawInfo")
    public ModelAndView getTabDrawInfo(@RequestParam Integer tabId, ModelMap model) {
        TabInfo tabInfo = tabService.searchTab(tabId);
        model.addAttribute("tabInfo", tabInfo);
        if (tabInfo != null) {
            return new ModelAndView("TabDraw", model);
        }

        else {
            return new ModelAndView("TabFailed", model);
        }
    }


}
