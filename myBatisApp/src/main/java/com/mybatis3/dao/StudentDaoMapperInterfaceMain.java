package com.mybatis3.dao;

import java.util.Date;
import java.util.List;

import com.mybatis3.domain.Student;

public class StudentDaoMapperInterfaceMain {

	public static void main(String[] args) {
		StudentDaoMapperInterface studentDao=
				new StudentDaoMapperInterface();
		System.out.println("<<<<<<<<<<<<<< StudentMapper Interface를 사용한Dao메쏘드호출 >>>>>>>>>");
		/**************************************************
		1. SELECT[결과타입이 DTO[DTO List] 객체인경우] 
		**************************************************/
		System.out.println("---------findStudentById-----------------------------");
		System.out.println("### "+studentDao.findStudentById(2));
		System.out.println("---------findAllStudents-----------------------------");
		System.out.println("### "+studentDao.findAllStudents());
		System.out.println("---------findStudentByIdResultMap--------------------");
		System.out.println("### "+studentDao.findStudentByIdResultMap(1));
		System.out.println("---------findAllStudentsResultMap--------------------");
		System.out.println("### "+studentDao.findAllStudentsResultMap());
		/**************************************************
	 	 3. SELECT[student + address JOIN]( 1 : 1 )
		 **************************************************/
		System.out.println("---------findStudentByIdWithAddress------------------");
		System.out.println("### "+studentDao.findStudentByIdWithAddress(1));
		
		/*********************************************************
		 4. SELECT[students + courses[course_enrollment] JOIN( 1 : N )
		 ********************************************************/
		System.out.println("---------findStudentByIdWithCourses------------------");
		/**************************************************
		 5. SELECT[students + address + courses[course_enrollment] JOIN( 1 : 1 : N )
		**************************************************/
		/*
		 * resultMap : studentWithAddressAndCoursesResultMap
		 */
		
		/**************************************************
		 	INSERT
		 ***************************************************/
		
		System.out.println("---------insertStudentBySequence(Dto)--------------------------");
		/*
		Student insertStudent1=new Student(0,"시퀀스1","kim@naver.com",new Date());
		int insertRowCount=studentDao.insertStudentBySequence(insertStudent1);
		System.out.println(">>> dao return insertRowCount:"+insertRowCount);
		*/
		System.out.println("---------insertStudentBySequenceReturnPrimaryKey---------------");
		/*
		Student insertStudent2=new Student(0,"시퀀스2","kim2@naver.com",new Date());
		int insertPrimaryKey=
				studentDao.insertStudentBySequenceReturnPrimaryKey(insertStudent2);
		System.out.println(">>> dao return  insertPrimaryKey:"+insertPrimaryKey);
		System.out.println(">>> Student[Dto]     primary key:"+insertStudent2.getStudId());
		 */
		
		/**************************************************
		 UPDATE
		 ***************************************************/
		System.out.println("---------updateStudentById---------------------------");
		
		/**************************************************
		 DELETE
		 ***************************************************/
		System.out.println("---------deleteStudentById---------------------------");
		System.out.println("---------deleteStudentByName---------------------------");
		System.out.println("---------deleteStudentByNameLike-----------------------");
		
		
	}

}
