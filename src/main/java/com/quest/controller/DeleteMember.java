package com.quest.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quest.repos.GymRespository;

public class DeleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteMember() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		id = id == null ? "0" : id;

		GymRespository repo = new GymRespository();
		int noOfRowsAffected = repo.deleteAccount(Integer.parseInt(id));

		if (noOfRowsAffected > 0) {

			response.sendRedirect("viewMembers.jsp");

		} else {

			response.sendRedirect("deleteMember.jsp?message=Oops! Something went wrong.&id=" + id);
		}

	}

}
