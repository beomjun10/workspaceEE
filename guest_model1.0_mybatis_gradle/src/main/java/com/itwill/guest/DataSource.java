package com.itwill.guest;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/*
 데이타베이스 설정정보를 사용해서
 Connection객체를 생성하고,해지하는 역할을하는 클래스
 (Dao객체들이 사용하는객체)
 */
public class DataSource {
	/*********데이타베이스접속정보를 저장할필드******/
	private String driverClassName;
	private String url;
	private String username;
	private String password;
	/***********************************************/
	public DataSource() throws Exception{
		/*****jdbc.properties 파일을 읽어서 데이타베이스접속정보를 필드에저장 *****/
		Properties properties=new Properties();
		InputStream propertiesInput = DataSource.class.getResourceAsStream("/jdbc.properties");
		properties.load(propertiesInput);
		this.driverClassName=properties.getProperty("jdbc.driverClassName");
		this.url=properties.getProperty("jdbc.url");
		this.username=properties.getProperty("jdbc.username");
		this.password=properties.getProperty("jdbc.password");
	}
	
	/*
	 * Connection 객체를 생성해서 반환하는메쏘드
	 */
	public Connection getConnection() throws Exception{
		Class.forName(driverClassName);
		Connection con=DriverManager.getConnection(url, username, password);
		return con;
	}
	/*
	 * Connection 객체를 close하는 메쏘드
	 */
	public void close(Connection con) throws Exception{
		con.close();
	}
	
	
}
