package com.itwill.guest.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.guest.Guest;

public interface GuestMapper {
	
	@Select("select * from guest")
	public List<Guest> findAll() throws Exception;
	
	@Select("select * from guest where guest_no=#{guest_no}")
	public Guest findByNo(int guest_no) throws Exception;
	/*
	@Insert("insert into guest values(guest_guest_no_seq.nextval,#{guest_name},sysdate,#{guest_email},#{guest_homepage},#{guest_title},#{guest_content})")
	public int insert(Guest guest) throws Exception;
	 */
	@SelectKey(	statement = "select guest_guest_no_seq.nextval from dual",
				before = true,
				keyProperty = "guest_no" ,
				resultType = Integer.class)
	@Insert("insert into guest values(#{guest_no},#{guest_name},sysdate,#{guest_email},#{guest_homepage},#{guest_title},#{guest_content})")
	public int insert(Guest guest) throws Exception;
	
	@Update("update guest set  guest_name=#{guest_name}, guest_email=#{guest_email}, guest_homepage=#{guest_homepage}, guest_title=#{guest_title}, guest_content=#{guest_content} where guest_no=#{guest_no}")
	public int update(Guest guest) throws Exception;
	
	@Delete("delete from guest where guest_no=#{guest_no}")
	public int delete(int guest_no) throws Exception;
}
