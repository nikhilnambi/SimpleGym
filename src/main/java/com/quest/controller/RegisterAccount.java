package com.quest.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.entities.Account;
import com.quest.repos.GymRespository;

public class RegisterAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterAccount() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("fname");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String gender = request.getParameter("gender");
		String trainer = request.getParameter("trainer-type").split(";")[0];
		String amount = request.getParameter("trainer-type").split(";")[1];

		Connection con = null;
		PreparedStatement ps = null;

		Account account = new Account();

		account.setName(name);
		account.setGender(gender);
		account.setPhoneNumber(phonenumber);
		account.setTrainerType(trainer);
		account.setEmail(email);
		account.setAge(Integer.parseInt(age));
		account.setAmount(Integer.parseInt(amount));

		GymRespository repo = new GymRespository();

		int noOfrowsAffected = repo.createAccount(account);

		if (noOfrowsAffected > 0) {
			response.sendRedirect("register.jsp?message=Payment received successfully");
		} else {
			response.sendRedirect("register.jsp?message=Oops ! something went wrong");
		}

	}

}
