<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	String uid = request.getParameter("uid");
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String bidamt = request.getParameter("bidamt");
	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("insert into bidding (uid,pid,pname,bidamt,status)values(?,?,?,?,?)",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, uid);
	ps.setString(2, pid);
	ps.setString(3, pname);
	ps.setString(4, bidamt);
	ps.setString(5, "0");
	
	
	int i= ps.executeUpdate();

	if (i>0) 
	{
		request.setAttribute("Success", " Sign Up Success");		
		
%>
<jsp:forward page="UserHome.jsp"></jsp:forward>
<%

	}

	else {
		request.setAttribute("Error", "Sorry!Username or Password Error. plz Enter Correct Detail");
		session.setAttribute("Loginmsg", "Sign Up Registration Failed");
		
%>
<jsp:forward page="UserHome.jsp"></jsp:forward>
<%
	}
%>

