package com.example.servlet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/core-servlet")
public class CoreServlet extends HttpServlet{

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<String> nomes = new ArrayList<String>();
        nomes.add("Alexandre");
        nomes.add("Carlos");
        req.setAttribute("lista", nomes);
        req.getRequestDispatcher("forEach.jsp").forward(req, resp);
    }
}
