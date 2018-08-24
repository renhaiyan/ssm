package com.self.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.self.pojo.Address;
import com.self.pojo.DataGrid;
import com.self.pojo.DateTree;
import com.self.pojo.Lawyer;
import com.self.pojo.Message;
import com.self.pojo.Page;
import com.self.service.ILawyerService;
import com.self.service.IMessageService;

@Controller
@RequestMapping("/message")
public class MessageController {

	private static Logger logger = Logger.getLogger(MessageController.class);
	
	@Autowired
	private IMessageService messageService;
	
	@Autowired
	private ILawyerService lawyerService;
	
	@Value("${url}")
	private String url;
	
	@RequestMapping("/get")
	@ResponseBody
	public DataGrid getMessage(Model model){
		
//		Message message = new Message();
//		message.setId("1");
//		message.setUsername("习大大");
//		message.setMessages("十九大完了");
//		message.setIsSend("发送了");
//		
//		System.out.println(url);
		logger.info("this is a message");
//		int id = 13;
		List<Lawyer> message = messageService.findMessage();
		
		DataGrid dataGrid = new DataGrid();
		dataGrid.setTotal(message.size());
		dataGrid.setRows(message);
		return dataGrid;
	}
	
	@RequestMapping("address")
	@ResponseBody
	public DataGrid getAddress(HttpServletRequest request,HttpServletResponse response){
		
		String page = request.getParameter("page");
		int pages = Integer.parseInt(page);
		if(pages == 0){
			pages = 1;
		}
		pages = (pages-1)*10;
		Page pager = new Page();
		pager.setPage(pages);
		pager.setSize(10);
		List<Address> address = this.messageService.getAddress(pager);
		DataGrid dataGrid = new DataGrid();
//		dataGrid.setTotal(address.size());
		dataGrid.setRows(address);
		return dataGrid;
	}
	
	@RequestMapping("tree")
	@ResponseBody
	public List<DateTree> getTree(HttpServletRequest request,HttpServletResponse response){
		
		List<DateTree> plist = new ArrayList<DateTree>();
		
		DateTree dataTree = new DateTree();
		dataTree.setId("1");
		dataTree.setText("我的菜单");
		
		DateTree dataTree5 = new DateTree();
		dataTree5.setId("2");
		dataTree5.setText("喜好");
		
		List<DateTree> list = new ArrayList<DateTree>();
		
		DateTree dataTree2 = new DateTree();
		dataTree2.setId("11");
		dataTree2.setText("我的子菜单一");
		
		List<DateTree> lists = new ArrayList<DateTree>();
		DateTree dataTree4 = new DateTree();
		dataTree4.setId("111");
		dataTree4.setText("我的子子菜单一");
		
		lists.add(dataTree4);
		dataTree2.setChildren(lists);
		
		DateTree dataTree3 = new DateTree();
		dataTree3.setId("12");
		dataTree3.setText("我的子菜单二");
		
		list.add(dataTree2);
		list.add(dataTree3);
		
		dataTree.setChildren(list);
		
		plist.add(dataTree);
		plist.add(dataTree5);
		return plist;
	}
}
