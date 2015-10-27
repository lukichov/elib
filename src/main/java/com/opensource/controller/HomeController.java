package com.opensource.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Project <b> elib</b>. 
 *
 * Insert description here
 *
 * @version $version$
 * @author Oleksandr Lukichov
 *
 * @since 15 ����. 2015 �.
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping(method = RequestMethod.GET)
	public String fillParametersForWelcomePage(ModelMap model) {
		model.addAttribute("welcomeMessage", "Welcome to e-lib project!");
		return "index";
	}

    /**
     * Input description here
     * Corrected by *user* on *date* *correction description
     *
     * @see com.opensource.controller.HomeController
     * @author <i>Oleksandr Lukichov</i>
     * @since 15 ����. 2015 �.
     *
     *
     * @param name
     * @param model
     * @return 
     * String
     * 
     */
    @RequestMapping(value = "{name}", method = RequestMethod.GET)
    public String putSacredMessage(@PathVariable String name, ModelMap model) {
        model.addAttribute("welcomeMessage", name);
        return "index";
    }
    
    
    @RequestMapping(value = "footer", method = RequestMethod.GET)
    public String footerTest(ModelMap model) {
       return "footer";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLoginPage(HttpServletRequest request, HttpServletResponse response, Locale locale) {
	
		ModelAndView view = new ModelAndView("login");
	
		return view;
}
    
}
