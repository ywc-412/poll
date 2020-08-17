package com.poll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class PollController {
	
	@RequestMapping(value = "/respPoll")
	public String respPoll(Model model){
		
		return "/user/respPoll";
	}
	
	@RequestMapping(value="/writePoll")
	public String writePoll(Model model) {
		
		return "/user/writePoll";
	}
	
	@RequestMapping(value="/pollList")
	public String pollList(Model model) {
		
		return "/user/pollList";
	}
}
