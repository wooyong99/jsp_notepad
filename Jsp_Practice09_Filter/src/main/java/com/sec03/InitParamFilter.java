package com.sec03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter{
	
	private FilterConfig filterConfig = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("InitParamFilter 필터 호출");
		this.filterConfig = filterConfig;
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("InitParamFilter 필터 실행 (요청)");
		
		request.setCharacterEncoding("utf-8");
		
		/* 쿼리 스트링으로 넘어온 파라미터의 값을 저장 */
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		/* web.xml에서 <init-param>태그로 저장한 param값을 저장 */
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(id.equals(param1) && pw.equals(param2)) {
			chain.doFilter(request, response);
		}else {
			out.println("<title>InintParamFilter 통과 실패</title>");
			out.println("<h1 style='color:red;'>IninitParamFilter 통과 실패 </h1>");
			out.println("<p>입력하신 값: "+id+" | "+pw+"가 올바르지 않습니다.</p>");
		}
		System.out.println("InitParamFilter 필터 실행 (응답)");
	}
	
	@Override
	public void destroy() {
		System.out.println("InitParamFilter 필터 종료");
	}
}
