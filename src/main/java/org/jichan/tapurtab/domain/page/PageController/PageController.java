package org.jichan.tapurtab.domain.page.PageController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class PageController {

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/welcomePage/TabDefault")
    public String TabDefault() {
        return "TabDefault";
    }


}
