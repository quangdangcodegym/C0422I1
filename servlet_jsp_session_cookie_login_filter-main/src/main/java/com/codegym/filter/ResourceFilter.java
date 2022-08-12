package com.codegym.filter;

import com.codegym.security.SecurityUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "ResourceFilter")
public class ResourceFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("ResourceFilter ...................");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;


        ServletContext servletContext = request.getServletContext();


        String servletPath = req.getServletPath();
        String pathInfo = req.getPathInfo();

        String urlPattern = null;
        if (pathInfo != null) {
            urlPattern = servletPath + "/*";
        }
        urlPattern = servletPath;
        boolean has = SecurityUtils.hasUrlPattern(servletContext, urlPattern);


        req.getSession().setAttribute("checkResource", has);

        chain.doFilter(req, res);
    }
}
