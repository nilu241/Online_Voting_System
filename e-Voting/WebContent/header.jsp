<%@ page import="com.src.java.evoting.model.User"%>
<!-- header -->

<%
	User loggedInUser = (User) session.getAttribute("LoggedInUserDetails");
%>
<header>
	<nav>
		<ul id="menu">

			<li id="menu_active"><a href="index.jsp">Home</a></li>
			<li><a href="Biography.jsp">Biography</a></li>
			<li><a href="Program.jsp">Program</a></li>

			<%
				if (loggedInUser == null) {
			%>

			<li><a href="signUp.jsp">SignUp</a></li>
			<li><a href="signIn.jsp">SignIn</a></li>

			<%
				} else {
			%>
			<li><a href="Contacts.jsp">Contacts</a></li>
			<li><a href="SignOut">SignOut</a></li>
			<%
				}
			%>
		</ul>
	</nav>
	<h1>
		<a href="index.jsp" id="logo">Independent Politician</a>
	</h1>
</header>
<!-- / header end -->
</body>
</html>