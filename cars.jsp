<%@page import="com.jspiders.springmvc.dto.CarDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Cars Page</title>
<style type="text/css">
body{
background-color: black;
}

#message {
	font-size: 40px;
	color:red;
}

.head {
	width: 150px;
	font-size: 25px;
	padding: 10px;
	font-weight: bold;
	font-size: 25px;
	border: 1px solid;
	text-align: center;
}

.data {
	width: 150px;
	font-size: 20px;
	padding: 15px;
	border: 1px solid;
	text-align: center;
}

#table {
	background-color: gray;
	margin-top: 100px;
	background-color: gray;
	border: 3px solid;
}

a {
	text-decoration: none
}



form {
	margin-left: 780px;
	margin-top: 7px;
}
h3{
color:red;
}


#button {
	height: 35px;
	width: 100px;
	background-color: black;
	color: gray;
	border-radius: 5px;
	font-size: 15px;
	text-decoration: none;
}

input {
	height: 28px;
	width: 200px;
	background-color: gray;
	border: 1px solid;
	background-color: gray;
	background-color: gray;
}
</style>
</head>
<body>
	
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	@SuppressWarnings("unchecked")
	List<CarDTO> cars = (List<CarDTO>) request.getAttribute("cars");
	if (cars != null) {
	%>
	<div align="center">
		<table id="table">
			<tr>
				<td class="head">Id</td>
				<td class="head">Name</td>
				<td class="head">Brand</td>
				<td class="head">Price</td>
			</tr>
			<%
			for (CarDTO car : cars) {
			%>
			<tr>
				<td class="data"><%=car.getId()%></td>
				<td class="data"><%=car.getName()%></td>
				<td class="data"><%=car.getBrand()%></td>
				<td class="data"><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	}
	%>
	<div align="center">
		<h3>
			Do you want to go to <a href="home">Home Page</a> ?
		</h3>
	</div>
</body>
</html>