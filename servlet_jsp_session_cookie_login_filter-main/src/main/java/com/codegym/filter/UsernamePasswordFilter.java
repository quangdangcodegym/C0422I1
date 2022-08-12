package com.codegym.filter;

import com.codegym.security.SecurityUtils;
import com.codegym.security.UserRoleRequestWrapper;
import com.codegym.utils.UserDAO;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebFilter(filterName = "UsernamePasswordFilter")
public class UsernamePasswordFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        String servletPath = req.getServletPath();
        String username = null;
        String password = null;
        Cookie[] cookies = req.getCookies();
        if(cookies!=null){
            for (Cookie cookie : cookies){
                if(cookie.getName().equals("username")){
                    username = cookie.getValue();
                }
                if(cookie.getName().equals("password")){
                    password = cookie.getValue();
                }
            }
        }
        boolean checkResource  = (boolean) req.getSession().getAttribute("checkResource");
        System.out.println("checkResource............" + checkResource);
        if(checkResource){
            // Nếu không phải là resource thì thêm UTF8

            boolean checkUserNamePasswordCookie = UserDAO.checkUserExists(username, password);
            boolean checkUserNamePasswordSession  = SecurityUtils.checkUsernamePasswordSession(req);
            if(checkUserNamePasswordCookie==true){
/*                UserRoleRequestWrapper req_UserRoleRequestWrapper =
                        new UserRoleRequestWrapper(username, UserDAO.getUserRoles(username), req);*/

                chain.doFilter(req, resp);
                return;
            }else{
                if(servletPath.equals("/login")||servletPath.equals("/profile")
                        ||servletPath.equals("/logout")||servletPath.equals("/register")){
                    chain.doFilter(req, resp);
                    return;
                }
                if(checkUserNamePasswordSession==true){
                    chain.doFilter(req, resp);
                    return;
                }else{
                    resp.sendRedirect("/login");
                    return;
                }
            }
        }

        chain.doFilter(req, resp);
        return;



    }
}
