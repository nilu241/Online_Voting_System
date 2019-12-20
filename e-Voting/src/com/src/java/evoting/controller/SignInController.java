package com.src.java.evoting.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.src.java.evoting.model.User;
import com.src.java.evoting.utilities.MyDataSource;

@SuppressWarnings("serial")
@WebServlet(name = "SignInController", urlPatterns = { "/signIn.python" })
public class SignInController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String message = null;
		String targetPage = "signIn.jsp";

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		try {
			User user = fetchUserDetail(email, password);
			if (user == null) {
				message = "Email / Password mismatched...";
			} else {

				HttpSession session = req.getSession(true);
				session.setAttribute("LoggedInUserDetails", user);
				targetPage = "index.jsp";
			}
		} catch (SQLException e) {
			message = "Server Internal Issue, Please contact admin";
		}

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

	private User fetchUserDetail(String email, String password) throws SQLException {
		Connection con = null;
		User user = null;

		try {
			con = (Connection) MyDataSource.getInstance().getDbConnection();
			ResultSet rs = null;
			String sql = "select * from user where email = ? and password = ?";

			PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setfName(rs.getString("fName"));
				user.setlName(rs.getString("lName"));
				user.setEmail(rs.getString("email"));
				user.setPassword((rs.getString("password")));
				user.setAdhaar(rs.getString("adhaar"));
				user.setPhone(rs.getString("phone"));
				user.setAddress(rs.getString("address"));
			}
		} catch (SQLException e) {
			throw e;
		} finally {
			if (con != null) {
				con.close();
			}
		}
		return user;
	}
}
