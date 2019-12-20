package com.src.java.evoting.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.java.evoting.model.User;
import com.src.java.evoting.utilities.MyDataSource;

@SuppressWarnings("serial")
@WebServlet(name = "SignUpController", urlPatterns = "/SignUpcontroller.do")
public class SignUpController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		String nextPage = "";
		String message = "";

		User user = new User();
		user.setfName(req.getParameter("fname"));
		user.setlName(req.getParameter("lname"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setAdhaar(req.getParameter("adhaar"));
		user.setPhone(req.getParameter("phone"));
		user.setAddress(req.getParameter("address"));

		if (isUserExists(user.getEmail())) {
			nextPage = "signIn.jsp";
			message = "Email Id already exists";
		} else {
			try {
				addUser(user);
				nextPage = "signIn.jsp";
				message = "User Sucessfully Registered...";
				req.setAttribute("RegisterEmail", user.getEmail());
			} catch (SQLException e) {
				nextPage = "signUp.jsp";
				message = "Problem to register user. Please contact admin.";
			}
		}

		RequestDispatcher rd = req.getRequestDispatcher(nextPage);
		req.setAttribute("message", message);
		rd.forward(req, res);

	}

	private void addUser(User user) throws SQLException {
		Connection con = null;
		try {
			String sql = "insert into user (fname, lname, email, password, adhaar, phone, address) values (?, ?, ?, ?, ?, ?, ?)";

			con = MyDataSource.getInstance().getDbConnection();
			con.setAutoCommit(false);

			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getfName());
			pstmt.setString(2, user.getlName());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getPassword());
			pstmt.setString(5, user.getAdhaar());
			pstmt.setString(6, user.getPhone());
			pstmt.setString(7, user.getAddress());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			con.rollback();
			throw e;
		} finally {
			if (con != null) {
				con.commit();
				con.close();
			}
		}
	}

	private boolean isUserExists(String email) {
		boolean userFound = false;
		String tempLoginId = null;
		Connection con = null;

		try {
			con = MyDataSource.getInstance().getDbConnection();
			ResultSet rs = null;
			String sql = "select email from user where email = ?";

			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				tempLoginId = rs.getString("email");
			}

			if (tempLoginId != null && tempLoginId.equals(email)) {
				userFound = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return userFound;
	}

}
