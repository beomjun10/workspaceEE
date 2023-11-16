package com.itwill.datasource;

/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import java.sql.Connection;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.itwill.user.UserDao;
public class BasicDataSourceExample {
	public static void main(String[] args) throws Exception {
		/****************org.apache.tomcat.dbcp.dbcp2.BasicDataSource**********/
		BasicDataSource basicDataSource=new BasicDataSource();
		Properties properties=new Properties();
		properties.load(UserDao.class.getResourceAsStream("/jdbc.properties"));
		basicDataSource.setDriverClassName(properties.getProperty("driverClassName"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("username"));
		basicDataSource.setPassword(properties.getProperty("password"));
		
		
		/******************** << javax.sql.DataSource >> **************************/
		DataSource dataSource=basicDataSource;
		Connection con=dataSource.getConnection();
		System.out.println(con);
		con.close();
		/************************************************************************/
		
	}

}
