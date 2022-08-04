package com.codegym.c4_helloservlet;

import com.codegym.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");

//        PrintWriter out = resp.getWriter();
//        out.println("<!DOCTYPE html>\n" +
//                "<html lang=\"en\">\n" +
//                "<head>\n" +
//                "    <meta charset=\"UTF-8\">\n" +
//                "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n" +
//                "    <meta name=\"viewport\" content=\"width=<device-width>, initial-scale=1.0\">\n" +
//                "    <title>Document</title>\n" +
//                "</head>\n" +
//                "<body>\n" +
//                "    <form action=\"/login\" method=\"post\">\n" +
//                "        <input type=\"text\" name=\"username\" />\n" +
//                "        <input type=\"text\" name=\"password\" />\n" +
//                "        <button type=\"submit\">Login</button>\n" +
//                "    </form>\n" +
//                "</body>\n" +
//                "</html>");


//        ServletOutputStream servletOutputStream = resp.getOutputStream();
//        FileInputStream fileInputStream = new FileInputStream("D:\\CODEGYM\\C0422I1\\c4_helloservlet\\src\\main\\webapp\\login.jsp");
//
//
//        byte [] a  = new byte[8];
//        int read = -1;
//
//        int sum = 0;
//        while ((read = fileInputStream.read(a))!=-1){
//            sum += read;
//            System.out.println("sum: " + sum);
//            servletOutputStream.write(a);
//        }
//        fileInputStream.close();
//        servletOutputStream.close();


        req.setAttribute("username", "codegym");
        //req.setAttribute("password", "thien123123");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/login.jsp");
        requestDispatcher.forward(req, resp);

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("username: " + username + " pass: " + password);
        RequestDispatcher requestDispatcher = null;
        if(username.equals("thien")||username.equals("admin")&&password.equals("123123")){

            List<User> list = new ArrayList<>();

            list.add(new User("thien", "123123"));
            list.add(new User("vu", "12345"));
            list.add(new User("phu", "55555"));

            request.setAttribute("userinfo", username);
            request.setAttribute("listUser", list);
            requestDispatcher = request.getRequestDispatcher("/home.jsp");
            requestDispatcher.forward(request, resp);


        }else{
            request.setAttribute("username", username);
            request.setAttribute("password", password);
            request.setAttribute("error", "username khong dung");
            requestDispatcher = request.getRequestDispatcher("/login.jsp");
            requestDispatcher.forward(request, resp);
        }
    }
}
