package com.self.controller;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.self.pojo.User;
import com.self.service.IQQLikeService;

/**
 * @author rhy
 * @2017-11-8 下午2:34:24
 * @version v1.0
 */
@Controller
@RequestMapping("qqlike")
public class QQLikeConterller {

	@Autowired
	private IQQLikeService qqlikeService;
	
	@RequestMapping("agree")
	public void toLike(HttpServletRequest request,HttpServletResponse response){
		
		String address = request.getParameter("address");
		List<User> user = this.qqlikeService.getUser();
		
		for (User users : user) {
			
			getLikeqq(users,address);
		}
	}

	private void getLikeqq(User users,String address) {
		try{
			
			System.setProperty("webdriver.firefox.bin","C:\\tools\\firefox.exe");
			WebDriver driver = new FirefoxDriver(); 
			driver.get("http://ui.ptlogin2.qq.com/cgi-bin/login?hide_title_bar=0&low_login=0&qlogin_auto_login=1&no_verifyimg=1&link_target=blank&appid=636014201&target=self&s_url=http%3A//www.qq.com/qq2012/loginSuccess.htm");  
			
			WebElement login = driver.findElement(By.id("switcher_plogin"));
			login.click();
			
			WebElement username = driver.findElement(By.id("u"));
			username.clear();
			username.sendKeys(users.getUsername());
			
			WebElement password = driver.findElement(By.id("p"));
			password.clear();
			password.sendKeys(users.getPassword());
			
			WebElement loginButton = driver.findElement(By.id("login_button"));
			loginButton.submit();
			
			Thread.sleep(10000);
			driver.get(address);
			Thread.sleep(10000);
			
			WebElement agreeButton = driver.findElement(By.xpath("//*[@id='host_home_feeds']/li[1]/div[3]/div[1]/p/a[3]"));
			agreeButton.click();
			
			Set<Cookie> cookies = driver.manage().getCookies();
			
			String skeyCookie = "";
			for (Cookie cookie : cookies) {
				
				skeyCookie += cookie.toString().substring(0,cookie.toString().indexOf(";")) + "; ";
			}
//			
//			toAgree(skeyCookie);
		}catch(Exception e){
			
			e.printStackTrace();
		}
		}
	/**
	 * 跟帖
	 * @param skey 评论cookie
	 */ 
	public static String toAgree(String skey) {
		
		try{
		URL url = new URL("https://h5.qzone.qq.com/proxy/domain/w.qzone.qq.com/cgi-bin/likes/internal_dolike_app?g_tk=2041613719&qzonetoken=ef9ca5e6c745bc72dffa918551345e77a3cf28ef453b0826be36857a0dd369bd2e58c1dfb267596b66");
		
		HttpURLConnection openConnection = (HttpURLConnection)url.openConnection();
	
		String param = "";
		
		openConnection.addRequestProperty("", "");
		}catch(Exception e){
		
			e.printStackTrace();
		}
		return skey;
		
	}
}
