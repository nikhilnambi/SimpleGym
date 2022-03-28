package com.quest.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.entities.Account;
import com.quest.repos.GymRespository;

public class EditMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditMember() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		id = id == null ? "0" : id;

		String name = request.getParameter("username");
		String gender = request.getParameter("gender");
		String trainer = request.getParameter("trainer-type");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");

		System.out.println(age);
		System.out.println(email);
		System.out.println(phonenumber);

		Account account = new Account();
		account.setId(Integer.parseInt(id));
		account.setName(name);
		account.setTrainerType(trainer);
		account.setGender(gender);
		account.setEmail(email);
		account.setAge(Integer.parseInt(age));
		account.setPhoneNumber(phonenumber);

		GymRespository repo = new GymRespository();
		int noOfRowsAffected = repo.editAccount(account);

		if (noOfRowsAffected > 0) {

			response.sendRedirect("viewMembers.jsp");

		} else {

			response.sendRedirect("editMembers.jsp?message=Oops! Something went wrong.&id=" + account.getId());
		}

	}
}

