package com.opensource.controller;

import com.opensource.model.User;
import com.opensource.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Project <b> elib</b>. 
 *
 * 
 * тест
 * @version 1.0
 * @author Alexey Bezrodniy
 *
 * @since 23/10/2015
 * 
 *
 */
@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "registration", method = RequestMethod.POST)
    public ModelAndView redirectToRegistration(HttpServletRequest arg0,
			HttpServletResponse arg1) {
        User user = new User();
        
        ModelAndView mav = new ModelAndView("registration","", user);
        return mav;
    }
    
    @RequestMapping(value = "registr", method = RequestMethod.POST)
    public ModelAndView registerUserAccount(
//            @ModelAttribute("user") User account, 
//  BindingResult result, WebRequest request, Errors errors,
  HttpServletRequest arg0,
			HttpServletResponse arg1) {
//        User user = new User();
//        user.setUserName(account.getUserName());
//        user.setUserLogin(account.getUserLogin());
//        user.setUserEmail(account.getUserEmail());
//        user.setUserPassword(account.getUserPassword());
//        userService.createUser(user);
    return new ModelAndView("personalPage");
}
    
//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//	public String post(@Valid @ModelAttribute("register") NewUserValidation register,
//			BindingResult result, Model model, 
//			final RedirectAttributes redirectAttributes) {
//		//ModelAndView modelW = new ModelAndView();
//		
//        if (result.hasErrors()) {
//        	System.out.println("Not valid");
//        	return  "register" ;
//            
//        }else{
//        	User user = new User(register.getEmail(), register.getPassword(), true);
//        	UserRoles userRolesNew = new UserRoles();
//        	userRolesNew.setUserRole("ROLE_USER");
//        	userRolesNew.setUsername(user);
//        			
//        	Collection<UserRoles> userRolesCollection = new ArrayList<UserRoles>();
//        	userRolesCollection.add(userRolesNew);        	
//        	user.setUserRolesCollection(userRolesCollection);
//        	
//        	usersService.save(user);
//        	
//        	System.out.println(user.toString());
//        	System.out.println(userRolesNew.toString());
//        }
//        System.out.println("valid");
//        //return  modelW;
//        redirectAttributes.addFlashAttribute("msg", "Registration successful! Please, login.");
//        redirectAttributes.addFlashAttribute("name", register.getEmail());
//        return "redirect:login";
//       // return  new ModelAndView("redirect:login") ;
//    }

}
