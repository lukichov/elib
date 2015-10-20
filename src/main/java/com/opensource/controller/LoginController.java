package com.opensource.controller;

import com.opensource.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Project <b> elib</b>. 
 *
 * 
 *
 * @version 1.0
 * @author Alexey Bezrodniy
 *
 * @since 20/10/2015
 * 
 *
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

 
    
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String redirectToLogin(ModelMap model, Principal principal) {
        
        return "login";
    }

    private String getUserName(Principal principal) {
        if (principal != null) {
            return principal.getName();
        } else {
            return "User";
        }
    }
}
