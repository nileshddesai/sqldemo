package com.nildev.bhaktirealestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("home")
public class HomeController {

	@GetMapping("")
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("index");
		return view;
	}
	
	@GetMapping("holder")
	public ModelAndView newHolder() {
		ModelAndView view = new ModelAndView("holder/holder");
		return view;
	}
}
