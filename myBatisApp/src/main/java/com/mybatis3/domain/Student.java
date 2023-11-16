package com.mybatis3.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

/*
이름      널?       유형           
------- -------- ------------ 
STUD_ID NOT NULL NUMBER(11)   
NAME    NOT NULL VARCHAR2(50) 
EMAIL   NOT NULL VARCHAR2(50) 
PHONE            VARCHAR2(15) 
DOB              DATE         
ADDR_ID          NUMBER(11)   

*/


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
public class Student {
	@NonNull
	private Integer studId;
	@NonNull
	private String name;
	@NonNull
	private String email;
	@NonNull
	private Date dob;
	
	private Address address;
	private List<Course> courseList;
	
	@Override
	public String toString() {
		return "Student [studId=" + studId + ", name=" + name + ", email=" + email + ", dob=" + dob + ", address="
				+ address + ", courseList=" + courseList + "]\n";
	}
	
}
