package com.sec02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("AuthenFilter 필터 초기화");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("AuthenFilter 필터 (요청 처리)");
		String name = request.getParameter("name");
		System.out.println("요청 파라미터 : "+name);
		if(name.isEmpty()) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<title>Authen Filter 처리실패</title>");
			out.println("<h1>AuthenFilter 처리 실패</h1><br>");
			out.println("<p>입력된 값이 null입니다.</p>");
			return;
		}
		chain.doFilter(request, response);
		
		System.out.println("AuthenFilter 필터 (요청 처리)");
	}
	
	@Override
	public void destroy() {
		System.out.println("AuthenFilter 필터 종료");
	}
}
