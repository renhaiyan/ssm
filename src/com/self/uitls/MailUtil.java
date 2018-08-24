package com.self.uitls;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.search.FlagTerm;

import org.junit.Test;

import com.sun.mail.util.MailSSLSocketFactory;

/**
 * 发送邮件
 * setRecipient(Message.RecipientType type , Address theAddress)、setRecipients(Message.RecipientType type , Address[] theAddress)、addRecipient(Message.RecipientType type , Address theAddress)、addRecipients(Message.RecipientType type,Address[] theAddress)方法都可以指定接受者类型，但是一般用后两个，这样可以避免意外的替换或者覆盖接受者名单。定义接受者类型：
 *Message.RecipientType.TO：消息接受者
 *Message.RecipientType.CC：消息抄送者
 *Message.RecipientType.BCC：匿名抄送接收者(其他接受者看不到这个接受者的姓名和地址)
 * @author rhy
 * @date 2018-7-23 下午3:11:05
 * @version V1.0
 */
public class MailUtil {

	/**
	 * 163邮箱
	 * 
	 * @param args
	 */
	public static void main(String[] args) {

		try {
			// 创建一个程序与邮件服务器会话对象session
			Properties props = new Properties();
			props.setProperty("mail.transport.protocol", "SMTP");
			props.setProperty("mail.smtp.host", "smtp.163.com");
			props.setProperty("mail.smtp.port", "25");
			// 指定验证为true
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.smtp.timeout", "4000");

			// 验证账号及密码，密码需要是第三方授权码
			Authenticator auth = new Authenticator() {

				public PasswordAuthentication getPasswordAuthentication() {

					return new PasswordAuthentication("xxxx@163.com", "xxxxx");
				}
			};

			Session session = Session.getInstance(props, auth);
			// session.setDebug(true);//设置debug模式，可以查看详细的发送
			// 创建一个message,它相当于是邮件内容
			Message message = new MimeMessage(session);
			// 设置发送者
			message.setFrom(new InternetAddress("xxxx@163.com"));
			message.setRecipient(MimeMessage.RecipientType.TO,
					new InternetAddress("xxxx@qq.com"));
			// 设置主题
			message.setSubject("晚上开会");
			// 设置内容
			message.setContent("晚点有事一起来开会", "text/html;charset=utf-8");
			// 设置发信时间
			message.setSentDate(new Date());
			// 创建 Transport用于将邮件发送
			Transport.send(message);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * qq邮箱
	 */
	@Test
	public void sendMail() {

		try {
			// 创建一个程序与邮件服务器会话对象session
			Properties props = new Properties();
			props.setProperty("mail.transport.protocol", "SMTP");
			props.setProperty("mail.smtp.host", "smtp.qq.com");
			props.setProperty("mail.smtp.port", "25");
			// 指定验证为true
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.smtp.timeout", "4000");

			// 验证账号及密码，密码需要是第三方授权码
			Authenticator auth = new Authenticator() {

				public PasswordAuthentication getPasswordAuthentication() {

					return new PasswordAuthentication("xxxx@qq.com", "xxxxx");
				}
			};

			Session session = Session.getInstance(props, auth);
			// 创建一个message,它相当于是邮件内容
			Message message = new MimeMessage(session);
			// 设置发送者
			message.setFrom(new InternetAddress("xxxxx@qq.com"));
			message.setRecipient(MimeMessage.RecipientType.TO,
					new InternetAddress("xxxx@163.com"));
			// 设置主题
			message.setSubject("晚上开会");
			// 设置内容
			message.setContent("晚点有事一起来开会lai", "text/html;charset=utf-8");
			// 设置发信时间
			message.setSentDate(new Date());
			// 创建 Transport用于将邮件发送
			Transport.send(message);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	// jmiifibifvpfbaii

	/**
	 * 
	 * 腾讯企业邮箱
	 */
	@Test
	public void sendMailqq() {

		try {
			// 创建一个程序与邮件服务器会话对象session
			Properties props = new Properties();
			// 协议
			props.setProperty("mail.transport.protocol", "SMTP");
			// 服务器
			props.setProperty("mail.smtp.host", "smtp.exmail.qq.com");
			// 端口
			props.setProperty("mail.smtp.port", "465");
			// 使用smtp身份验证
			props.setProperty("mail.smtp.auth", "true");

			// 使用ssl，企业邮箱必需
			// 开启安全协议
			MailSSLSocketFactory sf = null;
			try {

				sf = new MailSSLSocketFactory();
				sf.setTrustAllHosts(true);
			} catch (Exception e) {
				e.printStackTrace();
			}

			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.socketFactory", sf);

			Session session = Session.getDefaultInstance(props,
					new Authenticator() {

						@Override
						protected PasswordAuthentication getPasswordAuthentication() {

							PasswordAuthentication pa = new PasswordAuthentication(
									"xxxx@easyinfo.net.cn", "xxxx");
							return pa;
						}
					});

			// 设置session的调试模式
			session.setDebug(true);

			MimeMessage mimeMessage = new MimeMessage(session);

			mimeMessage.setFrom(new InternetAddress("xxxx@easyinfo.net.cn"));
			mimeMessage.addRecipient(Message.RecipientType.TO,
					new InternetAddress("xxxx@qq.com"));// // 邮件的收件人
//			 mimeMessage.setRecipient(Message.RecipientType.CC, new InternetAddress(MAIL_CC)); // 邮件的抄送人
//			 mimeMessage.setRecipient(Message.RecipientType.BCC, new InternetAddress(MAIL_BCC)); // 邮件的密送人
			// 设置主题
			mimeMessage.setSubject("下雨请注意");
			mimeMessage.setSentDate(new Date());
			// 设置内容
			mimeMessage.setText("请关好窗户");
			mimeMessage.saveChanges();

			// 发送
			Transport.send(mimeMessage);
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	/**
	 * 读取腾讯企业邮箱的邮件
	 */
	@Test
	public void getMessage() {
		
		try{
		
		//创建一个有具体连接信息的Properties对象
		Properties prop = new Properties();
		prop.setProperty("mail.debug", "true");
		prop.setProperty("mail.store.protocol", "pop3");
		prop.setProperty("mail.pop3.host", "smtp.exmail.qq.com");
		
		Session session = Session.getInstance(prop);
		Store store = session.getStore();
		store.connect("xxxxx@easyinfo.net.cn", "xxxx");
		
		Folder folder = store.getFolder("inbox");
		folder.open(Folder.READ_ONLY);
		
		Message[] messages = folder.getMessages();
		
		for(int i=0;i<messages.length;i++){
			
			String subject = messages[i].getSubject();
			String from = (messages[i].getFrom()[0]).toString();
			String content = messages[i].getContent().toString();
			
			System.out.println("第 "+ (i+1) + " 封邮件的发件人地址---->>>"+from);
			System.out.println("第 "+ (i+1) + " 封邮件的主题--->>>"+subject);
			System.out.println("第 "+ (i+1) + " 封邮件的内容---->>>"+content);
			System.out.println("-----------------------------------------");
		}
		
		}catch(Exception e){
			
			e.printStackTrace();
		}
	}
	/**
	 * qq邮箱接收邮件
	 */
	@Test
	public void getMessageQQ() {
		
		try{
			
		//创建一个有具体连接信息的Properties对象
		Properties props = new Properties();
        props.setProperty("mail.imap.socketFactory.class", "javax.net.ssl.SSLSocketFactory");//ssl加密,jdk1.8无法使用
        props.setProperty("mail.imap.socketFactory.fallback", "false");
        props.setProperty("mail.transport.protocol", "imap"); // 使用的协议
        props.setProperty("mail.imap.port", "993");
        props.setProperty("mail.imap.socketFactory.port", "993");
		
		Session session = Session.getDefaultInstance(props);
//		session.setDebug(true);
		Store store = session.getStore("imap");
		store.connect("imap.qq.com","xxxx@qq.com", "xxxx");//登录认证
		
		Folder folder = store.getFolder("inbox");//获取用户的邮件账户
		folder.open(Folder.READ_WRITE);//设置对邮件账户的访问权限
		
		FlagTerm ft = new FlagTerm(new Flags(Flags.Flag.SEEN),false);//false代表未读，true代表已读
		
//		Message[] messages = folder.getMessages();
		Message[] messages = folder.search(ft);
		
		for(int i=0;i<messages.length;i++){
			
			String subject = messages[i].getSubject();
			String from = (messages[i].getFrom()[0]).toString();
			String content = messages[i].getContent().toString();
			
			System.out.println("第 "+ (i+1) + " 封邮件的发件人地址---->>>"+from);
			System.out.println("第 "+ (i+1) + " 封邮件的主题--->>>"+subject);
			System.out.println("第 "+ (i+1) + " 封邮件的内容---->>>"+content);
			System.out.println("-----------------------------------------");
			
			messages[i].setFlag(Flags.Flag.SEEN, false);//imap读取后邮件状态变为已读
		}
		
		folder.close(false);
		store.close();
		}catch(Exception e){
			
			e.printStackTrace();
		}
	}
}
//rmvuvaygryevbbcd