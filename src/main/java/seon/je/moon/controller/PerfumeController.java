package seon.je.moon.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import seon.je.moon.service.PerfumeService;

@Controller
public class PerfumeController {
	@Inject
	PerfumeService perfumeService;
	
	@RequestMapping(value = "perfume", method = RequestMethod.GET)
	public String perfume() {
		
		return "perfume";
	}
}
