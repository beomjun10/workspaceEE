package com.itwill.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MIMETypeImageResponseServlet
 */
@WebServlet("/response_image.do")
public class MIMETypeImageResponseServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.응답객체 MIME타입설정
		 */
		response.setContentType("image/jpeg");
		/*
		 * 2.부라우져와 연결된 출력(이미지) 스트림얻기
		 */
		OutputStream out = response.getOutputStream();
		
		String imageFilePath = "C:\\2023-05-JAVA-DEVELOPER\\workspaceEE\\servletSite\\src\\main\\webapp\\image\\album.jpg";
		FileInputStream imageInputStream = new FileInputStream(imageFilePath);
		
		
		while(true) {
			int readByte=imageInputStream.read();
			if(readByte==-1)break;
			/*
			 * 3.부라우져와 연결된 출력(이미지) 스트림에 이미지데이타 쓰기
			 */
			out.write(readByte);
		}
		imageInputStream.close();
		out.close();
		
	}

}













