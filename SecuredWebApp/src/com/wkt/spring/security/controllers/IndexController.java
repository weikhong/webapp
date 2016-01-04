package com.wkt.spring.security.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wkt.dao.UserDao;

@Controller
public class IndexController {

	@Autowired
	UserDao userDao;

	@RequestMapping(value = { "/", "/index**", "/login" }, method = RequestMethod.GET)
	public ModelAndView indexPage() {
		userDao.findAll();
		ModelAndView model = new ModelAndView("index");		
		return model;
	}

	@RequestMapping(value = { "/dashboard" }, method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView("dashboard");

		return model;

	}
}
