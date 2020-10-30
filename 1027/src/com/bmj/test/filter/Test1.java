package com.bmj.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class Test1 implements Filter{

	public Test1() {
		System.out.println("test1 ㄷㄷㄷㅈ");
	}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("test1 준비중");
		
	}
	
	
	@Override
	public void destroy() {
		System.out.println("test1 죽음");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("test1 전처리");
		
		chain.doFilter(request, response);//이게 있어야 실행됨 다음필터가 있으면 다음필터 없으면 a.jsp실행
		
		System.out.println("test1 후처리");
	}


	
}
