package com.nildev.bhaktirealestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nildev.bhaktirealestate.domain.PropertyCategory;
import com.nildev.bhaktirealestate.service.PropertyCategoryService;

@Controller
@RequestMapping("propertycategory")
public class PropertyCategoryController {

	@Autowired
	PropertyCategoryService propertyCategoryService;
	
	@GetMapping("")
	public ModelAndView propertyCategory() {
		ModelAndView view = new ModelAndView("propertycategory/propertycategory");
		view.addObject("propertyCategory", propertyCategoryService.findAll());
		
		return view;
	}
	
	@PostMapping("save")
	public String propertyCategorySave(@ModelAttribute("propertyCategory") PropertyCategory propertyCategory) {
		
		propertyCategoryService.save(propertyCategory);
		return "redirect:/propertycategory";
	}
	
	@PostMapping("{id}/delete")
	public String propertyCategoryDelete(@PathVariable("id") Long id) {
		
		propertyCategoryService.delete(id);
		return "redirect:/propertycategory";
	}
}
