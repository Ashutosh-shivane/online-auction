<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	
	String bid= request.getParameter("bid");
	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("update bidding set status=? where bid=?",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, "1");
	ps.setString(2, bid);

	
	
	int i=0;
	try
	{
		i = ps.executeUpdate();
	}
	catch(Exception e)
	{
		System.out.println("H2 : "+e);
	}
	if (i>0) 
	{
		
		
%>
<jsp:forward page="AdminBiddingStatus.jsp"></jsp:forward>
<%
	}

	else {
		
		
%>
<jsp:forward page="AdminBiddingStatus.jsp"></jsp:forward>
<%
	}
%>

