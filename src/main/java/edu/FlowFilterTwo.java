package edu;

import java.io.IOException;

import javax.servlet.*;

public class FlowFilterTwo implements Filter{
	public void init(FilterConfig config) {
		System.out.println("init() ȣ�� ......... two");
	}
	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws java.io.IOException, ServletException{
		System.out.println("doFilter() ȣ�� �� .... two");
		chain.doFilter(req, res);
		System.out.println("doFilter() ȣ�� �� .... two");
	}
	
	public void destroy() {
		System.out.println("destroy() ȣ�� .... two");
	}	

}
