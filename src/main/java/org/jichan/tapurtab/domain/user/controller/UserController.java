package org.jichan.tapurtab.domain.user.controller;

import org.jichan.tapurtab.domain.user.entity.UserInfo;
import org.jichan.tapurtab.domain.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService; //서비스를 컨트롤러에 주입함
    private final HttpSession session;
    @Autowired
    public UserController(UserService userService, HttpSession session) {
        this.userService = userService;
        this.session = session;
    }

    @PostMapping("/login")
    public ModelAndView login(@ModelAttribute UserInfo userInfo, ModelMap model) { //form과 직접 연동
        model.addAttribute("userInfo", userInfo);
        if (userService.LoginCheck(userInfo)) {
            session.setAttribute("user", userInfo);
            return new ModelAndView("welcomePage", model);
        }
        else {
            return new ModelAndView("loginFailed", model);
        }

    }

    @PostMapping("/insertUser")
    public ModelAndView insertUser(@ModelAttribute UserInfo userInfo, ModelMap model) {
        model.addAttribute("userInfo", userInfo);
        if(userService.IdExistCheck(userInfo)) {
            return new ModelAndView("registerFailed", model);
        }
        else {
            userService.takeNewUser(userInfo);
            return new ModelAndView("registerSuccess", model);
        }

    }
}
