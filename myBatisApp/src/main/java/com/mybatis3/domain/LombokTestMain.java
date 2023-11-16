package com.mybatis3.domain;

public class LombokTestMain {

	public static void main(String[] args) {
		Student student=new Student();
		student.setStudId(12);
		//student.setName("이름");
		student.setEmail("guard@naver.com");
		
		System.out.println(student.getStudId());
		//System.out.println(student.getName());
		System.out.println(student.getEmail());
		System.out.println(student.toString());

	}

}
