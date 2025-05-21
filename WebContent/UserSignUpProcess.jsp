<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email").trim();
	String mob = request.getParameter("mob");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("insert into user (name,email,mob,username,password)values(?,?,?,?,?)",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mob);
	ps.setString(4, username);
	ps.setString(5, password);
	
	
	int i= ps.executeUpdate();

	if (i>0) 
	{
		request.setAttribute("Success", name + " Sign Up Success");		
		
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%

	}

	else {
		request.setAttribute("Error", "Sorry!Username or Password Error. plz Enter Correct Detail");
		session.setAttribute("Loginmsg", "Sign Up Registration Failed");
		
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>

