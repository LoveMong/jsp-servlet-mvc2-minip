package com.minip.mvc2.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;


@WebFilter(
		   urlPatterns = {"/*"},
		   initParams = {
				   @WebInitParam(name = "encoding", value = "utf-8")
		   })
		
public class CharacterEncodingFilter implements Filter{
	private String encoding;
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding(encoding);
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}
	public void init(FilterConfig config) throws ServletException{
		
		encoding = config.getInitParameter("encoding");
		if(encoding == null)
			encoding = "UTF-8";
	}

}
