package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@Autowired
	EmpService service;

	@RequestMapping("/")
	public ModelAndView dem(ModelAndView mv) {
		mv.setViewName("index.jsp");
		List<Employee> list = service.getEmployees();
		mv.addObject("all", list);
		return mv;
	}

	@RequestMapping(value = "/save")
	public ModelAndView empSave(ModelAndView mv, Employee emp) {
		mv.setViewName("redirect:/");
		service.saveEmp(emp);
		return mv;
	}
	
	@RequestMapping(value = "/delete/{id}")
	public ModelAndView deleteEmp(@PathVariable("id") int id,ModelAndView mv) {
		mv.setViewName("redirect:/");	
		service.deleteEmp(id);
		return mv;
	}

	@RequestMapping(value = "/edit")
	public ModelAndView empUpdate(@RequestParam("id") int id,ModelAndView mv) {
		mv.setViewName("welcome.jsp");
		mv.addObject("id",id);
//		Employee emp=service.find(id).orElse(new Employee());
//		service.saveEmp(emp);
		return mv;
	}

}
