package com.self.model.flyweight;

import java.sql.Connection;
import java.util.Vector;


public class ConnectionPool {

	private Vector<Connection> pool;
	
	/**
	 * 共有属性
	 */
	
	private String url = "jdbc:mysql://localhost:3306/test";
	
	private String username = "root";
	
	private String password = "root";
	
	private String driverClassName = "com.mysql.jdbc.Driver";

	private int poolSize = 100;
	private static ConnectionPool instance = null;
	
	Connection conn = null;
	
	/**
	 * 构造方法，做一些初始化工作
	 * 
	 */
	
	private ConnectionPool(){
		
		
		pool = new Vector<Connection>(poolSize);
		
		for(int i=0;i<poolSize;i++){
			
			try{
				
				Class.forName(driverClassName);
//				conn = DriverNanager.getConnection(url, username, password);
				pool.add(conn);
			}catch(Exception e){
				
			}
			
		}
	}
	
	/**
	 * 
	 * 返回连接到连接池
	 */
	
	public synchronized Connection getConection(){
		
		if(pool.size()>0){
			
			Connection conn = pool.get(0);
			pool.remove(conn);
			return conn;
		}else{
			return null;
		}
	}
}
