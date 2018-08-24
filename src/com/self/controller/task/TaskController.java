package com.self.controller.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.self.pojo.task.Task;

@Controller
@RequestMapping("task")
public class TaskController {

	
	@RequestMapping("self")
	@ResponseBody
	public Task getTask(){
		
		
		Task task = new Task();
		
		return task;
	}
}
