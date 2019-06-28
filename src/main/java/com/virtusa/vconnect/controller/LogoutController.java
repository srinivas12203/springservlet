package com.virtusa.vconnect.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;


import com.virtusa.vconnect.model.Employee;


@Controller
public class LogoutController {
	@Autowired
	Employee employee;	
@RequestMapping(value = "/logout", method = RequestMethod.GET) public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws IOException {
	HttpSession session=request.getSession();
	
	session.setAttribute("Id",null);
	session.invalidate();
	return new ModelAndView("index1","command",employee);
}
}
