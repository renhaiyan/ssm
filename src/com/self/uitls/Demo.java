package com.self.uitls;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Scanner;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.html5.LocalStorage;
import org.openqa.selenium.remote.ExecuteMethod;
import org.openqa.selenium.remote.RemoteExecuteMethod;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.remote.html5.RemoteLocalStorage;

public class Demo {
	
	@Test
	public void getValue() throws IOException{
		
		/*System.out.println("开始了....");
		System.in.read();
		System.out.println("结束了....");*/
		/*System.setProperty("webdriver.firefox.bin","C:\\tools\\firefox.exe");
		RemoteWebDriver driver = new FirefoxDriver();
		driver.get("https://weibo.com/");
		RemoteExecuteMethod method = new RemoteExecuteMethod(driver);
		RemoteLocalStorage storage = new RemoteLocalStorage(method);
		System.out.println(storage.toString());
		String item = storage.getItem("sinaads_37");
		System.out.println(item);*/
//		ExecuteMethod
		
		
		ChromeOptions chromeOptions = new ChromeOptions();
		chromeOptions.addArguments("--start-maximized");
		System.setProperty("webdriver.chrome.driver","C:\\tools\\chromedriver.exe");
		RemoteWebDriver driver = new ChromeDriver(chromeOptions);
		driver.get("https://weibo.com/");
		RemoteExecuteMethod method = new RemoteExecuteMethod(driver);
		RemoteLocalStorage storage = new RemoteLocalStorage(method);
		System.out.println(storage.toString());
//		String item = storage.getItem("sinaads_37");
//		System.out.println(item);
//		driver.get("https://s.alitui.weibo.com");
		Set<String> keySet = storage.keySet();
		String skeyCookie = "";
		for (String string : keySet) {
			if(StringUtils.isNotBlank(string) || !"removeItem".equals(string) || !"setItem".equals("") || !"clear".equals("") || !"getItem".equals("") || !"length".equals("") || !"key".equals("")){
				
				System.out.println(string +"::::"+storage.getItem(string));
				skeyCookie += string + "="+storage.getItem(string)+" ";
			}
		}
		Set<Cookie> cookies = driver.manage().getCookies();
		for (Cookie cookie : cookies) {
			
			skeyCookie += cookie.toString().substring(0,cookie.toString().indexOf(";")) + "; ";
		}
//		System.out.println(skeyCookie);
		
//		String item2 = storage.getItem("_taxac_exp");
//		System.out.println(item2);
//		
//		String item3 = storage.getItem("_taxfp");
//		System.out.println(item3);
	}

}
