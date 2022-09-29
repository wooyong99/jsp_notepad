package com.sec04;


import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFileFilter implements Filter{
	
	PrintWriter writer = null;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("LogFileFilter 호출");
		String filename = filterConfig.getInitParameter("filename");
		
		if(filename == null)
			throw new ServletException("로그 파일이름을 찾을 수 없습니다.");
		try {
			/* FileWriter 두번째 인자값에 false값을 설정하면, 파일을 덮어쓰게된다. */
			writer = new PrintWriter(new FileWriter(filename,true), true);
		} catch (IOException e) { e.printStackTrace(); }
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("LogFileFilter 실행 - 요청");
		request.setCharacterEncoding("utf-8");
		String id = "";
		String pw ="";
		// 요청 ServletContext 기록
		writer.printf("요청 ServletContext : %s \n", request.getServletContext().getContextPath());
		System.out.printf("요청 ServletContext : %s \n", request.getServletContext().getContextPath());
		// 요청 (접속) 시간 기록
		writer.printf("요청 시간 : %s \n", getCurrentTime() );
		System.out.printf("요청 시간 : %s \n",getCurrentTime());
		
		// ID파라미터가 null이 아니라면 log 기록
		if(request.getParameter("id") != null) {
			id=request.getParameter("id");
			writer.printf("요청 ID : %s \n", id);
			System.out.printf("요청 ID : %s \n", id);
		}
		// PW파라미터가 null이 아니라면 log 기록
		if(request.getParameter("pw") != null) {
			pw=request.getParameter("pw");
			writer.printf("요청 PW : %s \n", pw);
			System.out.printf("요청 PW : %s \n", pw);
		}
		// 요청한 클라이언트 IP 주소 기록
		writer.printf("요청 IP 주소 : %s \n",request.getRemoteAddr());
		System.out.printf("요청 IP 주소 : %s \n",request.getRemoteAddr());
		
		// 그 다음 필터 실행, 없다면 servelet의 service()함수 실행
		chain.doFilter(request, response);
		
		// 요청 처리 완료 후 응답시, 기록
		writer.printf("응답 문서 유형 : %s \n", response.getContentType());
		System.out.printf("응답 문서 유형 : %s \n", response.getContentType());
		writer.printf("----------------------------\n");
		System.out.println("LogFileFilter 실행 - 응답");
		System.out.println("-----------------------------");
	}

	@Override
	public void destroy() {
		System.out.println("LogFileFilter 종료");
		// 리소스 자원 해제
		writer.close();
	}

	private String getCurrentTime() {
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(now);
	}
}
