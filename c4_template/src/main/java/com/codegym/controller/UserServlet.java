package com.codegym.controller;

import com.codegym.dao.CountryDAO;
import com.codegym.dao.ICountryDAO;
import com.codegym.dao.IUserDAO;
import com.codegym.dao.UserDAO;
import com.codegym.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.IOException;
import java.sql.SQLException;
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


        Cookie[] cookies = req.getCookies();
        for(Cookie cookie : cookies){
            System.out.println("Key: " + cookie.getName() + " value: " + cookie.getValue());
        }

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

        Cookie vubede = new Cookie("vu", "bede");
        vubede.setMaxAge(5);

        resp.addCookie(vubede);
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
        try{
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
        }catch (SQLException e){
            e.printStackTrace();
        }

    }

    private void insertUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        int idCountry = Integer.parseInt(req.getParameter("idCountry"));

        User user = new User( name, email, idCountry, password);



        ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
        Validator validator = validatorFactory.getValidator();

        Set<ConstraintViolation<User>> constraintViolations = validator.validate(user);

        if(!constraintViolations.isEmpty()){


            //req.setAttribute("errors", getErrorFromContraint(constraintViolations));
            req.setAttribute("errors", getErrorFromContraint(constraintViolations));
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/create.jsp");
            requestDispatcher.forward(req, resp);
        }else{

            req.setAttribute("success", "Insert success xxx");

            iUserDAO.insertUserSP(user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/create.jsp");
            requestDispatcher.forward(req, resp);
        }


    }

    private HashMap<String, List<String>> getErrorFromContraint(Set<ConstraintViolation<User>> constraintViolations) {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        for(ConstraintViolation<User> c : constraintViolations){
            if(hashMap.keySet().contains(c.getPropertyPath().toString())){
                hashMap.get(c.getPropertyPath().toString()).add(c.getMessage());
            }else{
                List<String> listMessages = new ArrayList<>();
                listMessages.add(c.getMessage());
                hashMap.put(c.getPropertyPath().toString(), listMessages);
            }
        }
        return hashMap;
    }
}
