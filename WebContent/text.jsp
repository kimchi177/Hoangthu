<%@page import="java.util.List"%>
<%@page import="Model.PhongBanModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<PhongBanModel> myList = (ArrayList<PhongBanModel>) request.getAttribute("danhsachphongban");
	%>
	<%
		for(PhongBanModel pb : myList)
		{
	%>
	<div>
			<%=pb.getId_phongban() %>
	</div>
	<%
		}
	%>
</body>
</html>