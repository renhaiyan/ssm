package com.self.uitls;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.self.pojo.Lawyer;


public class WeiboUtils {

	private static Logger logger = LoggerFactory.getLogger(WeiboUtils.class);

	public static List<Lawyer> getMessage(String address,String page){
		
		try{
		System.setProperty("webdriver.firefox.bin","C:\\tools\\firefox.exe");
		WebDriver driver = new FirefoxDriver();
		driver.manage().window().maximize();
		
//		driver.get("http://weibo.com/");
		driver.get("https://login.sina.com.cn/signup/signin.php");
		
//		Thread.sleep(60000);
		
		WebElement username = driver.findElement(By.id("username"));
		username.clear();
		username.sendKeys("15965318397");
		
		WebElement password = driver.findElement(By.id("password"));
		password.clear();
		password.sendKeys("gnwdlr8136");
		
		WebElement loginButton = driver.findElement(By.xpath("//*[@id='vForm']/div[2]/div/ul/li[7]/div[1]/input"));
		loginButton.click();
		
		Thread.sleep(10000);
		
		int pages = Integer.parseInt(page);
		List<Lawyer> list = new ArrayList<Lawyer>();
		for(int i=1;i<=pages;i++){
			
		System.out.println("第"+i+"页");
		driver.get(address+"&page="+i);
		Thread.sleep(15000);
		String str = driver.getPageSource();
		list = getLawyerMessage(str,list);
		
		}
		return list;
//		driver.get("http://s.weibo.com/weibo/%25E5%25BE%258B%25E5%25B8%2588?topnav=1&wvr=6&b=1");
//		driver.get("http://s.weibo.com/user/%25E5%25BE%258B%25E5%25B8%2588&auth=per_vip&page=1");
//		WebElement username = driver.findElement(By.xpath("//*[@id='pl_user_feedList']/div[1]/div/div/div/div[1]/div[3]/p[1]/a[1]"));
		
//		Thread.sleep(30000);
		
//		getHtml(pageSource);
		
		}catch(Exception e){
			
			e.printStackTrace();
		}
		return null;
	}

	
	/**
	 * @param html
	 * @param list
	 * @return
	 */
	@SuppressWarnings("unused")
	@Test
	public static List<Lawyer> getLawyerMessage(String html,List<Lawyer> list){
		
//		String str = "<div class=\"list_person clearfix\">" +
//				" <div class=\"person_pic\"><a target=\"_blank\" href=\"http://weibo.com/fuminrong?refer_flag=1001030201_\" title=\"富敏荣律师\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_icon\"><img class=\"W_face_radius\" src=\"http://tva4.sinaimg.cn/crop.0.0.180.180.180/4231a8dbjw1e8qgp5bmzyj2050050aa8.jpg\" usercard=\"id=1110550747&amp;usercardkey=user_mp&amp;refer_flag=1001030201_\" uid=\"1110550747\" height=\"80\" width=\"80\"></a></div>" +
//				"  <div class=\"person_adbtn\">" +
//				"  	<a href=\"javascript:void(0);\" class=\"W_btn_b6 W_fr\" action-data=\"type=followed&amp;refer_lflag=1001030201_\" wforce=\"0\" uid=\"1110550747\" action-type=\"follow\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_follow\"><em title=\"关注\" class=\"W_ficon ficon_add S_ficon\">+</em>关注</a>" +
//				"  <!-- " +
//				" <p class=\"fri_show\"><a target=\"_blank\" href=\"http://s.weibo.com/friend/common?type=com&uids=1110550747\" class=\"frishow_link\" suda-data=\"key=tblog_search_user&value=user_feed_friends_other:1110550747\"><span class=\"search_icon searchper_icon\"></span><span class=\"searchper_txt\">TA的好友</span></a></p>" +
//				"  -->" +
//				" </div>" +
//				"  <div class=\"person_detail\">" +
//				"	<p class=\"person_name\">" +
//				"	<a class=\"W_texta W_fb\" target=\"_blank\" href=\"http://weibo.com/fuminrong?refer_flag=1001030201_\" title=\"富敏荣律师\" usercard=\"id=1110550747&amp;usercardkey=user_mp&amp;refer_flag=1001030201_\" uid=\"1110550747\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_name\">" +
//				"	富敏荣律师" +
//				"		" +
//				"	</a>" +
//				"		<a target=\"_blank\" href=\"http://verified.weibo.com/verify\" title=\"微博个人认证 \" alt=\"微博个人认证 \" class=\"W_icon icon_approve\"></a>" +
//				"	</p>" +
//				"	<p class=\"person_addr\">" +
//				"	<span class=\"male m_icon\" title=\"男\"></span>" +
//				"	<span>上海，静安区</span>" +
//				"	<a class=\"W_linkb\" target=\"_blank\" href=\"http://weibo.com/fuminrong?refer_flag=1001030201_\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_url\">http://weibo.com/fuminrong</a>" +
//				"	" +
//				"	</p>" +
//				"	<p class=\"person_card\">" +
//				"		上海新文汇律师事务所主任富敏荣" +
//				"	" +
//				"	</p>" +
//				"	<p class=\"person_num\">" +
//				"	<span>关注<a class=\"W_linkb\" href=\"http://weibo.com/1110550747/follow?refer_flag=1001030201_\" target=\"_blank\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_num\">3632</a></span>" +
//				"	<span>粉丝<a class=\"W_linkb\" href=\"http://weibo.com/1110550747/fans?refer_flag=1001030201_\" target=\"_blank\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_num\">11万</a></span>" +
//				"	<span>微博<a class=\"W_linkb\" href=\"http://weibo.com/1110550747/profile?refer_flag=1001030201_\" target=\"_blank\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_num\">11768</a></span></p>" +
//				"		<p class=\"person_label\">标签：" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E6%25B3%2595%25E5%25BE%258B&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	法律" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E5%25BE%258B%25E5%25B8%2588&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	<em class=\"red\">律师</em>" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E6%25B0%2591%25E4%25B8%25BB%25E8%2587%25AA%25E7%2594%25B1&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	民主自由" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E5%25AE%25AA%25E6%25B3%2595&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	宪法" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E5%2585%25AC%25E5%25B9%25B3%25E6%25AD%25A3%25E4%25B9%2589&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	公平正义" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E8%25AF%259D%25E8%25AF%25AD%25E6%259D%2583&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	话语权" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E4%25B8%258D%25E5%25B9%25B3%25E5%2588%2599%25E9%25B8%25A3&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	不平则鸣" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E6%2596%25B0%25E9%2597%25BB%25E8%25AE%25B0%25E8%2580%2585&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	新闻记者" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E5%2585%25AC%25E6%25B0%2591&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	公民" +
//				"		</a>" +
//				"		<a class=\"W_linkb\" href=\"&amp;tag=%25E5%25AA%2592%25E4%25BD%2593&amp;Refer=SUer_tag\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_label\">" +
//				"	媒体" +
//				"		</a>" +
//				"		</p>" +
//				"		<p class=\"person_label\">教育信息：" +
//				"		<a class=\"W_linkb\" href=\"&amp;school=%25E5%258D%258E%25E4%25B8%259C%25E6%2594%25BF%25E6%25B3%2595%25E5%25A4%25A7%25E5%25AD%25A6&amp;Refer=SUer_school\" suda-data=\"key=tblog_search_user&amp;value=user_feed_page_edu\">" +
//				"	华东政法大学" +
//				"		</a>" +
//				"		</p>" +
//				"		 </div>" +
//				"</div>";
		
//		DataUtils data = null;
		
		Lawyer lawyer = null;
		Document document = Jsoup.parseBodyFragment(html);
		
		Elements pl_personlist = document.getElementsByClass("list_person");
		
		for(int k=0;k<pl_personlist.size();k++){
			
//		data = new DataUtils();
		lawyer = new Lawyer();
		Element list_person = pl_personlist.get(k);
		
		Elements person_detail = list_person.getElementsByClass("person_detail");
		Element person_name = person_detail.get(0);
		String personHtml = person_name.toString();
		
		if(personHtml.indexOf("person_name")>0){
		Elements elementspersonname= person_name.getElementsByClass("person_name");
		Elements elementsusername = elementspersonname.get(0).getElementsByTag("a");
		String username = elementsusername.get(0).text();//用户名，徐昕
		lawyer.setUsername(username);
		System.out.println("姓名:"+username);
		}
		
		if(personHtml.indexOf("person_addr")>0){
		Elements elementspersonaddr= person_name.getElementsByClass("person_addr");
		Elements elementspersonsex = elementspersonaddr.get(0).getElementsByTag("span");
		String sex = elementspersonsex.get(0).attr("title");//性别，男
//		System.out.println("性别:"+sex);
		
		String addr = elementspersonsex.get(1).text();//地址，北京，东城
//		System.out.println("地址:"+addr);
		
		Elements elementspersonnet = elementspersonaddr.get(0).getElementsByTag("a");
		String network = elementspersonnet.get(0).text();//网址，http://weibo.com/poetjustice
		lawyer.setNetwork(sex+" "+addr+" "+network);
		
		System.out.println("个人主页:"+sex+" "+addr+" "+network);
		}
		
		if(personHtml.indexOf("person_card")>0){
		Elements elementspersoncard= person_name.getElementsByClass("person_card");
		String card = elementspersoncard.get(0).text();//身份,法律学者，律师 头条文章作者 微博签约自媒体
		lawyer.setCard(card);
		
		System.out.println("身份:"+card);
		}
		
		Elements elementspersonnum= person_name.getElementsByClass("person_num");
		Elements elementspersonnums = elementspersonnum.get(0).getElementsByTag("span");
		String attention = elementspersonnums.get(0).getElementsByTag("a").get(0).text();//关注，983
		lawyer.setAttention(attention);
		
		System.out.println("关注:"+attention);
		
		String fans = elementspersonnums.get(1).getElementsByTag("a").get(0).text();//粉丝，3108万
		lawyer.setFans(fans);
		
		System.out.println("粉丝:"+fans);
		
		String microblog = elementspersonnums.get(2).getElementsByTag("a").get(0).text();//粉丝，3108万
		lawyer.setMicroblog(microblog);
		
		System.out.println("微博:"+microblog);
		
		if(personHtml.indexOf("person_info")>0){
		Elements elementspersoninfo= person_name.getElementsByClass("person_info");
		String intro = elementspersoninfo.get(0).getElementsByTag("p").get(0).text().replaceAll("简介：", "").trim();//简介,请关注@法律悦读，电邮xuxinlaw@163.com
		lawyer.setIntro(intro);
		
		System.out.println("简介:"+intro);
		}
 		 
		String education = "";
	 	String profession = "";
		if(personHtml.indexOf("person_label")>0){
	 	Elements elementspersonlabel2= person_name.getElementsByClass("person_label");
	 	
	 	for(int i=1;i<elementspersonlabel2.size();i++){
	 	Elements elementseducations = elementspersonlabel2.get(i).getElementsByTag("a");//教育，西南政法大学
	 	for(int j=0;j<elementseducations.size();j++){
//	 		String str = elementspersonlabel2.get(1).getElementsByTag("p").get(0).text();
	 		if(elementspersonlabel2.get(i).text().indexOf("教育信息")>-1){
	 			
	 			education += elementseducations.get(j).text()+" ";//教育，西南政法大学
	 		}else{
	 			
	 		profession += elementseducations.get(j).text()+" ";//职业，北京理工大学，西南政法大学
	 		}		  	
	 	}
	 	lawyer.setEducation(education);
	 	lawyer.setProfession(profession);
	 	System.out.println("教育:"+education);
		System.out.println("职业:"+profession);
	 	}
//	 	data.insertLayer(lawyer);
	 	list.add(lawyer);
	 	
		}
		}
		return list;
	}
	
}
