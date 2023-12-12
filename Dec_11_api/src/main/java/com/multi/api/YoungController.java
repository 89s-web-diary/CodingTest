package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YoungController {
	
	@Autowired
	YoungService service;
	
	@RequestMapping("young")
	public void insert() {
		service.insert();
	}
	
}
