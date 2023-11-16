package com.itwill.guest;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class GuestDaoTest {
	GuestDao guestDao;
	@DisplayName("0.Dao객체생성")
	@Test
	void testGuestDao() throws Exception{
		guestDao=new GuestDaoImplJDBC();
		assertNotNull(guestDao);
	}
	@BeforeEach
	void guestDaoCreate() throws Exception{
		guestDao=new GuestDaoImplJDBC();
	}
	@DisplayName("1.방명록리스트")
	@Test
	void testFindAll() throws Exception{
		List<Guest> guestList= 
				guestDao.findAll();
		
		assertNotNull(guestList);
		assertNotSame(guestList.size(), 0);
		System.out.println(guestList);
	}

	@Test
	void testFindByNo() throws Exception{
		Guest guest = guestDao.findByNo(109);
		assertNotNull(guest);
		assertSame(109, guest.getGuest_no());
		
	}

	@Test
	void testInsert()throws Exception {
		int insertRowCount=guestDao.insert(
				new Guest(0, "이름", null, "abc@abc.com", "http://www.abc.com", "테스트타이틀", "테스트내용"));
		assertTrue(insertRowCount==1, "삽입실패");
	}

	@Test
	void testUpdate() {
		
	}

	@Test
	void testDelete() {
		
	}

}
