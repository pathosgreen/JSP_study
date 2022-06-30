package com.seayan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet(name = "upload.do", urlPatterns = { "/upload.do" })
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 다운받는 경로 지정
		String savePath = "upload";
		// 업로드 파일 용량 제한(5MB)
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
				request, // 객체
				uploadFilePath, // 서버상의 실제 디렉토리
				uploadFileSizeLimit, // 최대 업로드 파일 크기
				encType, // 인코딩 방법
				// 동일한 이름이 존재하면 새로운 이름 부여
				new DefaultFileRenamePolicy());
			// 업로드된 파일의 이름 얻기
			String fileName = multi.getFilesystemName("uploadFile");
			
			if(fileName == null) { // 파일이 업로드되지 않았을 때
				System.out.print("파일이 업로드 되지 않았음.");
			}else {
				out.println("<br> 글쓴이 : " + multi.getParameter("name"));
				out.println("<br> 제 &nbsp; 목 : " + multi.getParameter("title"));
				out.println("<br> 파일명 : " + fileName);
			}
		} catch (Exception e) {
			System.out.println("예외 발생 : " + e);
		}
	}

}
