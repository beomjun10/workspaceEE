package com.itwill.guest;

import static org.junit.jupiter.api.Assertions.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.itwill.guest.mapper.GuestMapper;

class GuestDaoMyBatisTest {
	GuestDaoImplMyBatis daoMyBatis;
	@BeforeEach
	void setUp() throws Exception {
		daoMyBatis=new GuestDaoImplMyBatis();
	}
	@AfterEach
	@Test
	void testGuestDaoMyBatis() throws Exception{
		daoMyBatis=new GuestDaoImplMyBatis();
	}
	@DisplayName("1.전체리스트")
	@Disabled
	@Test
	void testFindAll() {
		fail("Not yet implemented");
	}

	@Test
	void testFindByNo() {
		fail("Not yet implemented");
	}

	@Test
	void testInsert() {
		fail("Not yet implemented");
	}

	@Test
	void testUpdate() {
		fail("Not yet implemented");
	}

	@Test
	void testDelete() {
		fail("Not yet implemented");
	}

}
