package com.mybatis3.dao;

import java.util.Date;

import com.mybatis3.domain.Student;

public class StudentDao3_INSERT_Main {

	public static void main(String[] args) {
		
		StudentDao studentDao = new StudentDao();
		/**************************************************
		INSERT
		***************************************************/
		/*
		parameterType: DTO,VO,Domain
		*/
		System.out.println("---------insertStudentBySequence(Dto)--------------------------");
		Student insertStudent1=new Student(0,"시퀀스1","kim@naver.com",new Date());
		int insertRowCount=studentDao.insertStudentBySequence(insertStudent1);
		System.out.println(">>> dao return insertRowCount:"+insertRowCount);
		System.out.println("---------insertStudentBySequenceReturnPrimaryKey---------------");
		Student insertStudent2=new Student(0,"시퀀스2","kim2@naver.com",new Date());
		int insertPrimaryKey=
				studentDao.insertStudentBySequenceReturnPrimaryKey(insertStudent2);
		System.out.println(">>> dao return  insertPrimaryKey:"+insertPrimaryKey);
		System.out.println(">>> Student[Dto]     primary key:"+insertStudent2.getStudId());
		
		
		
		
	}
}
