<%@page import="java.sql.*"%>
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
	

	String prod_name = request.getParameter("prod_name");
	String prod_price = request.getParameter("prod_price");
	String prod_info = request.getParameter("prod_info");
	String myloc="C:/Users/Admin/Desktop/images/"+request.getParameter("photo");
 	

	Connection con = (Connection) application.getAttribute("mycon");
	PreparedStatement ps = con.prepareStatement("insert into seller_product (prod_name,prod_price,prod_info,prod_photo,sid,status)values(?,?,?,?,?,?)",
			ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	ps.setString(1, prod_name);
	ps.setString(2, prod_price);
	ps.setString(3, prod_info);
	ps.setString(5, (String)session.getAttribute("sid"));
	ps.setString(6, "0");
	try
	{
		System.out.println("OK1");
		File image= new File(myloc); 
		System.out.println("Image : "+myloc);
		FileInputStream fis=new FileInputStream(image); 
		System.out.println("Fis : "+fis);
		ps.setBinaryStream(4, (InputStream) fis, (int) (image.length())); 
	}
	catch(Exception e)
	{
		System.out.println("H1 : "+e);
	}
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
<jsp:forward page="SellerHome.jsp"></jsp:forward>
<%
	}

	else {
		
		
%>
<jsp:forward page="SellerHome.jsp"></jsp:forward>
<%
	}
%>

