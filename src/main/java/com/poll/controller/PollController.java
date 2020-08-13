package com.poll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PollController {
	@RequestMapping(value = "/poll", method = RequestMethod.GET)
	public String poll(Model model) {		
		return "index";
	}
	
	@RequestMapping(value = "/user/respPoll")
	public String respPoll(Model mode){
		
		return "/user/respPoll";
	}
}
