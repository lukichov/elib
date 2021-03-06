package com.common.security.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("logoutSuccess")
public class LogoutSuccessController {

    @RequestMapping(method = RequestMethod.GET)
    public String formFarewellMessage(ModelMap model) {
        model.addAttribute("farewellMessage", "You have been logged out successfully. Bye bye...");
        return "security/logoutSuccess";
    }
}
