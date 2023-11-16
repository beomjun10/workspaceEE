package com.itwill.guest;

import java.util.List;

public interface GuestDao {

	public List<Guest> findAll() throws Exception;

	public Guest findByNo(int no) throws Exception;

	public int insert(Guest guest) throws Exception;

	public int update(Guest guest) throws Exception;

	public int delete(int no) throws Exception;

}