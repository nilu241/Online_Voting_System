package com.src.java.evoting.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(name = "SignOutController", urlPatterns = { "/SignOut" })
public class SignOutController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		String message = "You are successfully LogOut";
		String targetPage = "index.jsp";

		HttpSession session = req.getSession(false);
		session.setAttribute("LoggedInUserDetails", null);
		session.invalidate();
		req.setAttribute("Message", message);
		
		// Database
		RequestDispatcher dispatcher = req.getRequestDispatcher(targetPage);
		// Forces caches to obtain a new copy of the page from the
		// origin server
		resp.setHeader("Cache-Control", "no-cache");
		// Directs caches not to store the page under any circumstance
		resp.setHeader("Cache-Control", "no-store");
		System.out.println("Working");
		// Causes the proxy cache to see the page as "stale"
		resp.setDateHeader("Expires", 0);
		// HTTP 1.0 backward compatibility
		resp.setHeader("Pragma", "no-cache");
		req.setAttribute("message", message);
		dispatcher.forward(req, resp);
	}
}

