<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("select * from seller where username=? and password=?",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, username);
	ps.setString(2, password);

	ResultSet rs = ps.executeQuery();

	if (rs.next()) 
	{
		session.setAttribute("islogin", "plz sign in first");
		session.setAttribute("uname", rs.getString(2));
		session.setAttribute("sid", rs.getString(1));
%>
<jsp:forward page="SellerHome.jsp"></jsp:forward>
<%
	}

	else {
		request.setAttribute("Error", "Sorry!Username or Password Error. plz Enter Correct Detail");
		session.setAttribute("Loginmsg", "plz sign in first");
		
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
	}
%>

