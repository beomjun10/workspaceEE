package com.itwill.address.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.address.AddressService;

/**
 * Servlet implementation class AddressDeleteActionServlet
 */
@WebServlet("/address_delete_action.do")
public class AddressDeleteActionServlet extends HttpServlet {
	/*
	 GET방식으로 요청시
	 address_main.do로 redirection	
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("address_main.do");
	}

	/*
	 * POST방식으로 요청시 삭제
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 요청라인  POST /addressSite/address_delete_action.do HTTP/1.1
		 요청헤더  ....
		 요청바디 no=1
		 */
		/*
		 * 0.요청객체encoding설정
		 * 1.파라메타받기
		 * 2.AddressService객체생성
		 * 3.AddressService.addressDelete()메쏘드실행
		 * 4.클라이언트로 redirection 응답--> address_list.do 로 redirection
		 */
		try {
			request.setCharacterEncoding("UTF-8");
			String noStr=request.getParameter("no");
			AddressService addressService=new AddressService();
			int rowCount=addressService.addressDelete(Integer.parseInt(noStr));
			response.sendRedirect("address_list.do");
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}

}
