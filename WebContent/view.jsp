<%@ page isELIgnored="false" language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>View</title>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
		<nav>
			<h2>All Member</h2>
			<a href="Save">Add Members</a>
		</nav>
		<main>
			<table border="1">
				<tr class="headings">
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Age</th>
					<th colspan="2">Options</th>
				</tr>
				<c:forEach var="member" items="${ list }">
					<tr>
						<td><c:out value="${ member.id }"></c:out></td>
						<td><c:out value="${ member.name }"></c:out></td>
						<td><c:out value="${ member.email }"></c:out></td>
						<td><c:out value="${ member.age }"></c:out></td>
						<td
							><a href="Edit?id=<c:out value='${ member.id }'/>"
								>Edit</a
							></td
						>
						<td
							><a href="Delete?id=<c:out value='${ member.id }'/>"
								>Delete</a
							></td
						>
					</tr>
				</c:forEach>
			</table>
		</main>
	</body>
</html>
