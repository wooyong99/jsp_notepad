package com.exam_listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("ServletContextListener 호출 (톰캣실행");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("ServeletContextListener 종료 (톰캣종료)");
	}
}
