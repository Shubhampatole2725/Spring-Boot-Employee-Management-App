package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Employee;
import com.service.EmployeeService;

@Controller
public class HomeController {
	
	private EmployeeService service;
	
	@Autowired
	public void setService(EmployeeService service) {
		this.service = service;
	}

	@RequestMapping("/")
	public String landingPage() {
		return "index";
	}

	@RequestMapping("/reg")
	public String registerPage() {
		return "register";
	}
	@RequestMapping("/log")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("/register")
	public String registerEmployee(@ModelAttribute Employee emp) {
		service.saveEmployee(emp);
		return "index";
	}
	@RequestMapping("/login")
	public String loginEmployee(@RequestParam String username, @RequestParam String password, Model model) {
		boolean flag = service.loginCheck(username,password);
		if(flag) {
			List<Employee> list = service.getAllEmployees();
			model.addAttribute("list", list);
			return "success";
		}
		return "index";
	}
	@RequestMapping("/delete")
	public String deleteData(@RequestParam int id, Model model) {
		List<Employee> list = service.deleteEmployee(id);
		model.addAttribute("list", list);
		return "success";
	}
	@RequestMapping("/edit")
	public String editData(@RequestParam int id, Model model) {
		Employee emp = service.getStudent(id);
		model.addAttribute("employee", emp);
		return "update";
	}
	@RequestMapping("/update")
	public ModelAndView updateEmployeeData(@ModelAttribute Employee emp) {
		List<Employee> list = service.updateEmp(emp);
		ModelAndView md = new ModelAndView();
		md.addObject("list", list);
		md.setViewName("success");
		return md;
	}
}
