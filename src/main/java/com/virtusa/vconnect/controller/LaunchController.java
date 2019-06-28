/*package com.virtusa.vconnect.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtusa.vconnect.model.Job;

@Controller
public class LaunchController {
	@Autowired
	Job job;
@RequestMapping(value="/index", method=RequestMethod.GET)
public ModelAndView index1() {
	return new ModelAndView( "index" ,"command",job);
}
}
*/