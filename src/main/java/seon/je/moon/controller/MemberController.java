package seon.je.moon.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import seon.je.moon.service.MemberService;

@Controller
public class MemberController {

	@Inject
	MemberService memberService;
	
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String test() {
		
		return "test";
	}
	@RequestMapping(value = "grid_test", method = RequestMethod.GET)
	public String grid_test() {
		
		return "grid_test";
	}
	@RequestMapping(value = "javascript_test", method = RequestMethod.GET)
	public String javascript_test() {
		
		return "javascript_test";
	}

}
