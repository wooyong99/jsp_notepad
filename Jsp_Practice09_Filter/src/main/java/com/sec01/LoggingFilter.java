package com.sec01;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoggingFilter implements Filter{
	/* init() 메소드는 필터가 생성될때(톰캣 실행 시) 딱 한번 호출된다. */ 
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("====Logging Filter init 메소드 호출 (초기화)====");
	}
	
	
	/* 클라이언트의 request (요청)과 response (응답)에 따라 계속 실행됨 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("====Logging Filter doFilter 메소드 호출(request가 필터에 걸림)====");
		chain.doFilter(request, response);
		System.out.println("====Logging Filter doFilter 메소드 호출(response가 필터에 걸림)====");
		
	}
	
	/* 필터의 인스터가 종료될떄 */
	@Override
	public void destroy() {
		System.out.println("====Logging Filter destroy 메소드, 호출(종료)====");
	}
}
