package com.seayan.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MultiUploadServlet
 */
@WebServlet(name = "upload2.do", urlPatterns = { "/upload2.do" })
public class MultiUploadServlet extends HttpServlet {
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
		
		try {
			MultipartRequest multi = new MultipartRequest(
				request, // 객체
				uploadFilePath, // 서버상의 실제 디렉토리
				uploadFileSizeLimit, // 최대 업로드 파일 크기
				encType, // 인코딩 방법
				// 동일한 이름이 존재하면 새로운 이름 부여
				new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				String file_name = multi.getFilesystemName(file);
				// 중복 파일을 업로드시 파일명 변경
				String ori_file_name = multi.getOriginalFileName(file);
				out.println("<br> 업로드된 파일명 : " + file_name);
				out.println("<br> 원본 파일명 : " + ori_file_name);
				out.println("<hr> ");
			}
		} catch (Exception e) {
			System.out.println("예외 발생 : " + e);
		}
	}

}
