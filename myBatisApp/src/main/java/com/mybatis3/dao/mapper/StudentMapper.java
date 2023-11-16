package com.mybatis3.dao.mapper;

import java.util.List;

import com.mybatis3.domain.Student;

public interface StudentMapper {
	/*
	 * 인터페이스의 풀네임은 StudentMapper.xml의 namespace와일치
	 * 메쏘드이름은 	StudentMapper.xml 파일의 id와일치
	 * 메쏘드인자타입은 StudentMapper.xml 파일의 parameterType 와일치
	 * 메쏘드리턴타입은 StudentMapper.xml 파일의 resultType 와일치(ResultSet이 1개이상일경우는 List)
	 */
	/**************************************************
	1. SELECT[결과타입이 DTO[DTO List] 객체인경우] 
	**************************************************/
	Student findStudentById(Integer studId);
	List<Student> findAllStudents();
	Student findStudentByIdResultMap(Integer studId);
	List<Student> findAllStudentsResultMap();
	/*******************************************************************
	 2. SELECT[결과타입이 Wrapper(String)[Wrapper(String) List]객체인경우] 
	*******************************************************************/
	String findStudentNameById(Integer studId);
	List<String> findStudentNameList();
	/**************************************************
	 3. SELECT[student + address JOIN]( 1 : 1 )
	 **************************************************/
	Student findStudentByIdWithAddress(Integer studId);

	/*********************************************************
	 4. SELECT[students + courses[course_enrollment]+course] JOIN( 1 : N )
	 ********************************************************/
	Student findStudentByIdWithCourses(Integer studId);

	/**************************************************
	 5. SELECT[students + address + courses[course_enrollment] JOIN( 1 : 1 : N )
	**************************************************/
	Student findStudentByIdWithAddressAndCourses(Integer studId);

	/**************************************************
	 * INSERT
	 ***************************************************/
	int insertStudentBySequence(Student student);
	int insertStudentBySequenceReturnPrimaryKey(Student student);
	/**************************************************
	 * UPDATE
	 ***************************************************/
	int updateStudentById(Student updateStudent);
	/**************************************************
	 * DELETE
	 ***************************************************/
	int deleteStudentById(Integer studId);
	int deleteStudentByName(String name);
	int deleteStudentByNameLike(String name);
}
