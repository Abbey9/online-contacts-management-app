package com.eapps.onlinecontactsmanagementapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHomePage(){
		
		return "welcome";
	}
	
	@RequestMapping("/welcome")
	public String showHomeLandingPage(){
		
		return "welcome";
	}
}
