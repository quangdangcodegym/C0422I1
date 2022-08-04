package com.codegym.c4_helloservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletLifeCycle", urlPatterns = "/servletlifecycle")
public class ServletLifeCycle extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Servlet chay vao ham doGEt");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Servlet chay vao ham doPost");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("Servlet duoc khoi tao");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);

        System.out.println("Servlet chay vao ham service");
    }

    @Override
    public void destroy() {
        System.out.println("Servlet bi huy");
    }
}
