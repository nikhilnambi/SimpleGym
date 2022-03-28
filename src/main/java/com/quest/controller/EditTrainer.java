package com.quest.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.entities.Account;
import com.quest.entities.Trainers;
import com.quest.repos.GymRespository;

public class EditTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditTrainer() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		id = id == null ? "0" : id;

		String name = request.getParameter("username");
		String phonenumber = request.getParameter("phone-number");
		String gender = request.getParameter("gender");
		String experience = request.getParameter("experience");
		String trainerType = request.getParameter("trainer-type");

		Trainers trainer = new Trainers();
		
		trainer.setId(Integer.parseInt(id));
		trainer.setName(name);
		trainer.setTrainerType(trainerType);
		trainer.setGender(gender);
		trainer.setPhonenumber(phonenumber);
		trainer.setExperience(Integer.parseInt(experience));

		GymRespository repo = new GymRespository();
		int noOfRowsAffected = repo.editTrainer(trainer);

		if (noOfRowsAffected > 0) {

			response.sendRedirect("viewTrainers.jsp");

		} else {

			response.sendRedirect("editTrainer.jsp?message=Oops! Something went wrong.&id=" + trainer.getId());
		}

	}

}
