<%@page import="java.sql.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	String spid = request.getParameter("spid");
	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("update seller_product set status=? where spid=?",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, "1");
	ps.setString(2, spid);

	int i= ps.executeUpdate();

	if (i>0) 
	{
		session.setAttribute("islogin", "plz sign in first");
	
%>
<jsp:forward page="AdminAddProduct.jsp"></jsp:forward>
<%
	}

	else {
		request.setAttribute("Error", "Sorry!Username or Password Error. plz Enter Correct Detail");
		session.setAttribute("Loginmsg", "plz sign in first");
		
%>
<jsp:forward page="AdminAddProduct.jsp"></jsp:forward>
<%
	}
%>

