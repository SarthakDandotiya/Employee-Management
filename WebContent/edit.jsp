<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Edit</title>
	</head>
	<body>
		<main>
			<h1>Update Member</h1>
			<form action="Edit" method="POST">
				<table border="1">
					<tr>
						<td>Id</td>
						<td>
							<input
								type="number"
								name="id"
								required
								value="${ member.getId() }"
							/>
						</td>
					</tr>
					<tr>
						<td>Name</td>
						<td>
							<input
								type="text"
								name="name"
								required
								value="${ member.getName() }"
							/>
						</td>
					</tr>
					<tr>
						<td>Email</td>
						<td>
							<input
								type="email"
								name="email"
								required
								value="${ member.getEmail() }"
							/>
						</td>
					</tr>
					<tr>
						<td>Age</td>
						<td>
							<input
								type="number"
								name="age"
								required
								value="${ member.getAge() }"
							/>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="Save" />
						</td>
					</tr>
				</table>
			</form>
			<a href="View">Back to All Members</a>
		</main>
	</body>
</html>
