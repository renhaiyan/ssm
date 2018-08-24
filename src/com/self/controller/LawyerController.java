package com.self.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.self.pojo.Address;
import com.self.pojo.Lawyer;
import com.self.service.ILawyerService;
import com.self.uitls.WeiboUtils;

/**
 * @author rhy
 * @2017-11-7 上午9:53:52
 * @version v1.0
 */
@Controller
@RequestMapping("lawyer")
public class LawyerController {

	@Autowired
	private ILawyerService lawyerService;
	
	@Value("${page}")
	private String page;
	
	@RequestMapping("address")
	public String getAddress(HttpServletRequest request,HttpServletResponse response,Model model){
		
//		String lawyer = request.getParameter("lawyer");
		
		List<Address> address = this.lawyerService.getAddress();
		model.addAttribute("lawyers", address);
		return "forward:/jsp/lawyer.jsp";
	}
	
	/**
	 * 获取数据
	 * @param request
	 * @param response
	 */
	@RequestMapping("message")
	public void getMessage(HttpServletRequest request,HttpServletResponse response){
		
		String address = request.getParameter("address");//律师地址
		String page = request.getParameter("pages");
		List<Lawyer> lawyer = WeiboUtils.getMessage(address,page);
		for (Lawyer lawyers : lawyer) {
			
			this.lawyerService.saveMessage(lawyers);
		}
	}
}
