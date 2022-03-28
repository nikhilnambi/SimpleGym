package com.quest.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.entities.FeedbackMessage;
import com.quest.repos.GymRespository;

public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Feedback() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String message = request.getParameter("message");

		FeedbackMessage feedback = new FeedbackMessage();

		feedback.setName(name);
		feedback.setPhonenumber(phonenumber);
		feedback.setFeedback(message);

		GymRespository repo = new GymRespository();

		int noOfrowsAffected = repo.FeedbackAccount(feedback);

		if (noOfrowsAffected > 0) {
			response.sendRedirect("index.jsp?message=Successfully created");
		} else {
			response.sendRedirect("feedback.jsp?message=Oops ! something went wrong");
		}

	}


	

	

}
