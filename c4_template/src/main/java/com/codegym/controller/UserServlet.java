package com.codegym.controller;

import com.codegym.dao.CountryDAO;
import com.codegym.dao.ICountryDAO;
import com.codegym.dao.IUserDAO;
import com.codegym.dao.UserDAO;
import com.codegym.model.MyError;
import com.codegym.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

@WebServlet(name ="UserServlet" , urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    IUserDAO iUserDAO;
    ICountryDAO iCountryDAO;

    @Override
    public void init() throws ServletException {
        iUserDAO = new UserDAO();
        iCountryDAO = new CountryDAO();
        if(this.getServletContext().getAttribute("listCountry")==null){
            this.getServletContext().setAttribute("listCountry", iCountryDAO.selectAllCountry());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if(action==null){
            action ="";
        }
        switch (action){
            case "create":
                showFormCreate(req, resp);
                break;
            case "edit":
                break;
            case "sales":
                showSalesPage(req, resp);
                break;
            default:
                showListUser(req, resp);

        }

    }

    private void showSalesPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/sales.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showListUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<User> users = iUserDAO.selectAllUsers();

        req.setAttribute("users", users);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/list.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action==null){
            action ="";
        }
        switch (action){
            case "create":
                insertUser(req, resp);
                break;
//            case "edit":
//                break;
//            case "sales":
//                showSalesPage(req, resp);
//                break;
            default:
                showListUser(req, resp);

        }
    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        int idCountry = Integer.parseInt(req.getParameter("idCountry"));

        User user = new User( name, email, idCountry, password);



        ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
        Validator validator = validatorFactory.getValidator();

        Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);

        if(!constraintViolations.isEmpty()){


            req.setAttribute("errors", getErrorFromContraint(constraintViolations));
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/create.jsp");
            requestDispatcher.forward(req, resp);
        }else{

            req.setAttribute("success", "Insert success xxx");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/create.jsp");
            requestDispatcher.forward(req, resp);
        }


    }

    private List<String> getErrorFromContraint(Set<ConstraintViolation<User>> constraintViolations) {
        List<String> errors = new ArrayList<>();

        for(ConstraintViolation<User> c : constraintViolations){
            errors.add(c.getMessage());
        }
        return errors;
    }
}
