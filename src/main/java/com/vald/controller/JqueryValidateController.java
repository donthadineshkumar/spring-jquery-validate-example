package com.vald.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


import com.vald.entity.User;

@Controller
@RequestMapping("/jquery")
public class JqueryValidateController {

	@RequestMapping(method = RequestMethod.GET)
	public String validate(ModelMap modelMap) {
		modelMap.put("user", new User());
		return "validate";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute(value = "user") User user,
			ModelMap modelMap) {
		modelMap.put("user",user);
		return "user";
	}

}
