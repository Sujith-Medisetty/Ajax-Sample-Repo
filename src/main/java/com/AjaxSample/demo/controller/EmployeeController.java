package com.AjaxSample.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.AjaxSample.demo.model.Employee;

@Controller
public class EmployeeController {
	
	@RequestMapping("/")
	public String LoginPage() {
		
		return "Login.jsp";
	}
	
	@RequestMapping("/employee")
	public @ResponseBody String DetailsPage(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		
		/*
		 * Employee employee = new Employee(); String firstName =
		 * request.getParameter("firstName"); String lastName =
		 * request.getParameter("lastName");
		 */
		/*
		 * String email = request.getParameter("email"); String[] details =
		 * request.getParameterValues("details");
		 */
		
		/*
		 * for( String i: details) { System.out.println(i+"  "); }
		 * 
		 * System.out.println(lastName+" "+email); employee.setEmail(email);
		 */
		/*
		 * employee.setFirstname(firstName); employee.setLastname(lastName);
		 * System.out.println("first name is "+employee.getFirstname()); return
		 * employee;
		 */
		
		String val=request.getParameter("val");
		return val;
	
	
	}

}
