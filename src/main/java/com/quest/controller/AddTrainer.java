package com.quest.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.entities.Trainers;
import com.quest.repos.GymRespository;

public class AddTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddTrainer() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String phonenumber = request.getParameter("phonenumber");
		String gender = request.getParameter("gender");
		String experience = request.getParameter("exp");
		String trainertype = request.getParameter("trainer-type");

		Trainers trainer = new Trainers();

		trainer.setName(name);
		trainer.setGender(gender);
		trainer.setPhonenumber(phonenumber);
		trainer.setTrainerType(trainertype);
		trainer.setExperience(Integer.parseInt(experience));

		GymRespository repo = new GymRespository();

		int noOfrowsAffected = repo.AddTrainer(trainer);

		if (noOfrowsAffected > 0) {
			response.sendRedirect("viewTrainers.jsp?message=Successfully created");
		} else {
			response.sendRedirect("addTrainer.jsp?message=Oops ! something went wrong");
		}

	}

}
