package com.self.model.bridge;

public class MyBridge extends Bridge {

	public void method(){
		
		getSource().method();
	}
}
