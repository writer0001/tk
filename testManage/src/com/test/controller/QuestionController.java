package com.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import com.test.po.MCQuestion;
import com.test.po.SCQuestion;
import com.test.service.QuestionService;





@Controller
public class QuestionController {

	@Autowired
	private QuestionService queService;
	
	//添加单选 
	@RequestMapping("/addSCQuestion.action")
	public String addSCQuestion(SCQuestion scQuestion,Model model){
		
		queService.saveSCQuestion(scQuestion);
		
		//返回跳转的页面		
		return "addQuestion.jsp";
	}
	
	//添加多选
	/*@RequestMapping("/addSCQuestion.action")
	public String addMCQuestion(MCQuestion mcQuestion,Model model){
		
		queService.saveMCQuestion(mcQuestion);
		
		//返回跳转的页面		
		return "addQuestion.jsp";
	}*/
	
	
	/*@RequestMapping("/findCustomerById")
	public String findCustomerById(Integer id,Model model){
		System.err.println("进入findCustomerById_---------------------------------------------");
		Customer customer=customerService.findCustomerById(id);
		System.out.println(customer.toString());
		model.addAttribute("customer",customer);
		//返回客户信息展示页面
		return "customer";
	}*/
}
