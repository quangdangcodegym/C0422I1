package com.codegym.model.c4_user;

import com.codegym.dao.IUserDAO;
import com.codegym.dao.UserDAO;
import com.codegym.model.User;

import java.io.*;
import java.sql.SQLException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    UserDAO iUserDAO = new UserDAO();


    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


    }

    public void destroy() {
    }
}