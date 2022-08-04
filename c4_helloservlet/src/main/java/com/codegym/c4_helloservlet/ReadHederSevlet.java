package com.codegym.c4_helloservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "ReadHederSevlet", urlPatterns = "/readheader")
public class ReadHederSevlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Enumeration<String> headers = req.getHeaderNames();


        while (headers.hasMoreElements()){
            String h = headers.nextElement();
            String value = req.getHeader(h);
            System.out.println(h + " value: " + value);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ;
    }

    @Override
    public void init() throws ServletException {

    }
}
