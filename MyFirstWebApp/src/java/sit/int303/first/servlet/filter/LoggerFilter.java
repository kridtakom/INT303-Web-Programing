/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.servlet.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author INT303
 */
public class LoggerFilter implements Filter {

    private FilterConfig filterConfig;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        long before = System.currentTimeMillis();
        
        chain.doFilter(request, response);
        
        long duration = System.currentTimeMillis()-before;
        String url = ((HttpServletRequest)request).getRequestURI();
        String msg = String.format("%s duration : %d miliseconds \n",url,duration);
        filterConfig.getServletContext().log(msg);
    }

    @Override
    public void destroy() {
    }
 
}
