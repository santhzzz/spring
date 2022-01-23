<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>id is ${id} </h2>
<form action="save">
				<table>
				<tr>
						 </td><td><input type="hidden" name="id" value="${id}"></td>
				</tr>
				<tr>
						<td>Enter Name</td><td><input type="text" name="name"></td>
				</tr>
				<tr>
						<td>Enter Designation</td><td><input type="text" name="desig"></td>
				</tr>
				<tr>
				<td>
					<input type="submit" value="save"></td>
				<tr>
				</table>
			</form>	
</body>
</html>