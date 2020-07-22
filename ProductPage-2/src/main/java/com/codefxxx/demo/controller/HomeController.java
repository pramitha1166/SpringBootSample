package com.codefxxx.demo.controller;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/login")
	public void checkLogin(HttpServletRequest req, HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		
		String name = req.getParameter("username").toString();
		String psw = req.getParameter("psw").toString();
		
		if (name.equals("admin")&&psw.equals("admin")) {
			session.setAttribute("name", "admin");
			res.sendRedirect("index");
		}else {
			res.sendRedirect("/");
		}
		
	}

	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/index")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping("AddNewProductPage")
	public String addNewProductPage() {
		return "AddNewProduct";
	}
	
}
