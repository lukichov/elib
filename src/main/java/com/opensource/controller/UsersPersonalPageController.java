package com.opensource.controller;

import com.opensource.Constants;
import com.opensource.model.User;
import com.opensource.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Controller
public class UsersPersonalPageController {

	@Autowired
	private UserService userService;

	/**
	 * Controller for getting personal page and editing of it. 
	 * Corrected by *user* on *date* *correction description
	 *
	 * @see com.opensource.controller.UsersPersonalPageController
	 * @author <i>Denys Shevotsukov</i>
	 * @since Nov 1, 2015
	 *
	 *
	 * @param model
	 * @param principal
	 * @return 
	 * String
	 * 
	 */
	@RequestMapping(value = "personalPage", method = RequestMethod.GET)
	public String redirectToPersonalPage(ModelMap model, Principal principal) {
		if (principal != null && userService.hasRole(principal.getName(), Constants.ADMIN_ROLE)) {
			return "redirect:/admin/";
		}
		if (principal != null) {
			String greetingMessage = "Hello " + getUserName(principal) + ". What's up?";

			model.addAttribute("greetingMessage", greetingMessage);

			User curentUser = userService.getUser(principal.getName());

			model.addAttribute("user", curentUser);

		} else
			return "redirect: /login/";

		return "personalPage";
	}

	private String getUserName(Principal principal) {
		if (principal != null) {
			return principal.getName();
		} else {
			return "User";
		}
	}
}
