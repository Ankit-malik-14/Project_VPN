<%@ page import="java.util.List"%>
<%@ page import="model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User List</title>
</head>
<body>
	<h2>User List</h2>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Country</th>
				<th>Action</th>
			</tr>	
		</thead>
		<tbody>
			<%
			List<User> userList = (List<User>) request.getAttribute("listuser");
			for (User user : userList) {
			%>
			<tr>
				<td><%=user.getId()%></td>
				<td><%=user.getName()%></td>
				<td><%=user.getEmail()%></td>
				<td><%=user.getCountry()%></td>
				<td><a href="edit?id=<%=user.getId()%>">Edit</a> | <a
					href="view?id=<%=user.getId()%>">View</a> | <a
					href="delete?id=<%=user.getId()%>">Delete</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<a href="new">Add New User</a>
</body>
</html>
