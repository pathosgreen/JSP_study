package com.nonage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nonage.controller.action.Action;
import com.nonage.controller.action.ActionFactory;


@WebServlet("/NonageServlet")
public class NonageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청시 보낸 파라미터 command 값을 얻어온다.
		String command = request.getParameter("command");
		// 파라미터 command 값이 제대로 전달되었는지 출력
		System.out.println("Nonage에서 요청을 받음을 확인 : " + command);
		
		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);
		
		if(action != null) {
			action.execute(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 방식으로 요청시 한글 깨짐 방지용 코드 추가
		request.setCharacterEncoding("utf-8");
		// post 방식으로 요청해도 doGet 호출
		doGet(request, response);
	}

}
