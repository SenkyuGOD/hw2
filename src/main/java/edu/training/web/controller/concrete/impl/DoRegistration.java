package edu.training.web.controller.concrete.impl;

import java.io.IOException;
import java.time.LocalDate;

import edu.training.web.controller.concrete.Command;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DoRegistration implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("username " + request.getParameter("username"));
		System.out.println("password " + request.getParameter("password"));
		System.out.println("confirm password" + request.getParameter("confirm_password"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/main_index.jsp");
		dispatcher.forward(request, response);
		
	}

}
