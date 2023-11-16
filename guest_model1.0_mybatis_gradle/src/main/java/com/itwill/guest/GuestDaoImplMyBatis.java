package com.itwill.guest;

import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.itwill.guest.mapper.GuestMapper;

public class GuestDaoImplMyBatis implements GuestDao{
	private SqlSessionFactory sqlSessionFactory;
	
	public GuestDaoImplMyBatis() throws Exception {
		this.sqlSessionFactory = 
				new SqlSessionFactoryBuilder()
				.build(Resources.getResourceAsStream("mybatis-config.xml"));
	}
	
	public List<Guest> findAll() throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		GuestMapper guestMapper = sqlSession.getMapper(GuestMapper.class);
		List<Guest> guestList = guestMapper.findAll();
		sqlSession.close();
		return guestList;
	}
	public Guest findByNo(int guest_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		GuestMapper guestMapper = sqlSession.getMapper(GuestMapper.class);
		Guest guest=guestMapper.findByNo(guest_no);
		sqlSession.close();
		return guest;
	}
	public int insert(Guest guest) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		GuestMapper guestMapper = sqlSession.getMapper(GuestMapper.class);
		int rowCount=guestMapper.insert(guest);
		sqlSession.close();
		return guest.getGuest_no();
	}
	public int update(Guest guest) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		GuestMapper guestMapper = sqlSession.getMapper(GuestMapper.class);
		int rowCount=guestMapper.update(guest);
		sqlSession.close();
		return rowCount;
	}
	public int delete(int guest_no) throws Exception {
		SqlSession sqlSession=sqlSessionFactory.openSession(true);
		GuestMapper guestMapper = sqlSession.getMapper(GuestMapper.class);
		int rowCount=guestMapper.delete(guest_no);
		sqlSession.close();
		return rowCount;
	}

}
