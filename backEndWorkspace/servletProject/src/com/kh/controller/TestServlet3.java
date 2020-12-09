package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet3
 */
@WebServlet("/test3.do")
public class TestServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1. 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String city = request.getParameter("city");
		String height = request.getParameter("height");

		String[] foodArr = request.getParameterValues("food");
		
		//2. 위임
		request.setAttribute("name", name);
		request.setAttribute("gender", gender);
		request.setAttribute("age", age);
		request.setAttribute("city", city);
		request.setAttribute("height", height);
		
		String foods = String.join(", ", foodArr);
		request.setAttribute("foods", foods);
		
		RequestDispatcher view = request.getRequestDispatcher("views/testServlet3End.jsp");
		view.forward(request, response);
		
		/* RequestDispatcher : 현재 request에 담긴 정보를 저장하고 있다가 그 다음 페이지에서도 해당정보를 볼 수 있게 저장하는 기능
		 * 
		 * forward : 기존 파라미터 정보를 유지하며 페이지를 전환(url 변하지 않고, 클라이언트 모르게 위임)
		 * 
		 * sendRedirect : 모든 파라미터 정보를 제외하고 단순 페이지 호출만함
		 */
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
