package com.nildev.bhaktirealestate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nildev.bhaktirealestate.domain.Holder;
import com.nildev.bhaktirealestate.service.HolderService;

@Controller
@RequestMapping("holder")
public class HolderController {

	@Autowired
	HolderService holderService;
	
	@GetMapping("")
	public ModelAndView holder(@RequestParam("categoryId") Long propertyCategoryId) {
		ModelAndView view = new ModelAndView("holder/holder");
		view.addObject("holders", holderService.findByPropertyCategoryId(propertyCategoryId));
		
		return view;
	}
	
	@PostMapping("save")
	public String holderSave(@ModelAttribute("holder") Holder holder) {
		
		holderService.save(holder);
		
		return "redirect:/holder?categoryId=" + holder.getPropertyCategory().getId();
	}
	
	@PostMapping("{id}/delete")
	public String holderDelete(@PathVariable("id") Long id) {
		
		Holder holder = holderService.findById(id);
		holderService.delete(id);
		
		return "redirect:/holder?categoryId=" + holder.getPropertyCategory().getId();
	}
}
