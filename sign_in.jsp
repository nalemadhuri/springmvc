<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In Page</title>
<style type="text/css">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}


body {
  font-family: Arial, sans-serif;
  background-color: #111;
  color: #fff;
  margin: 0;
  padding: 0;
}

#box {
  background-color: #333;
  width: 400px;
  margin: 100px auto;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
}

#head {
  font-size: 30px;
  margin-bottom: 20px;
  text-align: center;
  color: #ff4444;
}

.input {
  width: calc(100% - 20px);
  padding: 10px;
  margin: 10px 0;
  border: 1px solid;
  border-radius: 5px;
   background-color: #222;
  
}

.input:focus {
  outline: none;
  border-color: #ff4444;
}

.label {
  font-size: 18px;
  color: #ff4444;
}

#button {
  width: calc(100% - 20px);
  padding: 10px;
  margin: 20px 0;
  border: none;
  border-radius: 5px;
  background-color: #ff4444;
  color: #fff;
  cursor: pointer;
  font-size: 16px;
}

#button:hover {
  background-color: #ff6666;
}

#message {
  font-size: 18px;
  color: #ff4444;
  text-align: center;
  margin-top: 20px;
}

a {
  text-decoration: none;
  color: #ff4444;
}

a:hover {
  text-decoration: underline;
  color: #ff6666;
}
</style>
</head>
<body>
	<div id="box" align="center">
		<h3 id="head">Sign In</h3>
		<form action="check_user" method="post">
			<table>
				<tr>
					<td class="label">Email</td>
					<td><input class="input" type="text" name="email"
						required="required" autofocus="autofocus"></td>
				</tr>
				<tr>
					<td class="label">Password</td>
					<td><input class="input" type="text" name="password"
						required="required"></td>
				</tr>
			</table>
			<input id="button" type="submit" value="Sign In">
		</form>
		<h3>
			New User? <a href="sign_up">Sign up</a>
		</h3>
	</div>
	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h3 id="message"><%=message%></h3>
	</div>
	<%
	}
	%>
</body>
</html>