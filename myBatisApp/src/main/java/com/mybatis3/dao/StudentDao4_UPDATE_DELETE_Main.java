package com.mybatis3.dao;

import java.util.Date;

import com.mybatis3.domain.Student;

public class StudentDao4_UPDATE_DELETE_Main {

	public static void main(String[] args) {
		
		StudentDao studentDao = new StudentDao();
		
		/**************************************************
		 UPDATE
		 ***************************************************/
		/*
		 parameterType: DTO,VO,Domain
		 */
		System.out.println("---------updateStudentById---------------------------");
		int rowCount=
				studentDao.updateStudentById(new Student(1, "반장님", "gogogo@gmail.com", new Date()));
		System.out.println("update row count:"+rowCount);
		/**************************************************
		 DELETE
		 ***************************************************/
		/*
		parameterType: java.lang.Integer,java.lang.String
		*/
		System.out.println("---------deleteStudentById---------------------------");
		System.out.println("delete row count:"+studentDao.deleteStudentById(33));
		System.out.println("---------deleteStudentByName---------------------------");
		System.out.println("delete row count:"+studentDao.deleteStudentByName("시퀀스1"));
		System.out.println("---------deleteStudentByNameLike-----------------------");
		System.out.println("delete row count:"+studentDao.deleteStudentByNameLike("시"));
		
		
		
	}
}
