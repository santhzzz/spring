<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>demo</title>
</head>
<body>

	<h2>
			<form action="save" method="post">
				<table>
				<tr>
						<td>Enter Id: </td><td><input type="number" name="id"></td>
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
		</h2>
		
		<h2>Employee records </h2>
		<table bgcolor="red">
		<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Designation</th>
			<th>delete</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${all}" var="list">
			<tr><td>${list.id}</td>
				<td>${list.name}</td>
				<td>${list.desig}</td>
				<td><a href="/delete/${list.id}">delete</a></td>
				<td><a href="/edit?id=${list.id}">edit</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	
</body>
</html>