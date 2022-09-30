package com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.catalina.util.SessionConfig;

public class LogFilter implements Filter{
	
	private PrintWriter writer = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LogFilter 호출");
		String filename = filterConfig.getInitParameter("filename");
		
		if(filename ==null )
			throw new ServletException("해당 로그파일이 존재하지 않습니다.");
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private String getCurrentTime() {
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat();
		return sdf.format(now);
	}
	
	private String getRequestURLPath(ServletRequest request) {
		HttpServletRequest hRequest = (HttpServletRequest)request;
		String urlpath = hRequest.getRequestURL().toString();
		String query = hRequest.getQueryString()!=null ? "?"+hRequest.getQueryString() : "";
		return urlpath+query;
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("LogFilter doFilter() - 호출");
		long start = System.currentTimeMillis();
		writer.printf("요청 시각 : %s \n", getCurrentTime());
		System.out.printf("요청 시각 : %s \n", getCurrentTime());
		writer.printf("요청 IP주소 : %s \n", request.getRemoteAddr());
		System.out.printf("요청 IP주소 : %s \n", request.getRemoteAddr());
		writer.printf("요청 URI : %s \n ", getRequestURLPath(request));
		System.out.printf("요청 URI : %s \n ", getRequestURLPath(request));
		/*writer.printf("요청 ID: %s \n" );*/
		
		chain.doFilter(request, response);

		writer.printf("응답 문서 유형 : %s \n",response.getContentType());
		System.out.printf("응답 문서 유형 : %s \n",response.getContentType());
		long end = System.currentTimeMillis();
		writer.printf("요청 처리 소요 시간 : %f \n", (float)(end-start)/1000);
		System.out.printf("요청 처리 소요 시간 : %f \n", (float)(end-start)/1000);
		writer.printf("--------------------------------------\n");
		System.out.println("LogFilter doFilter() - 종료");
		System.out.println("---------------------------------");
	}
	
	@Override
	public void destroy() {
		writer.close();
		System.out.println("LogFilter 종료");
	}
}
