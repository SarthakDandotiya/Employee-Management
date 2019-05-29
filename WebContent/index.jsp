<%@ page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Members</title>
	</head>
	<body>
		<main>
			<h1>Add Member</h1>
			<form action="Save" method="POST">
				<table border="1">
					<tr>
						<td>Id</td>
						<td><input type="number" name="id" required /></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name" required /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="email" name="email" required /></td>
					</tr>
					<tr>
						<td>Age</td>
						<td><input type="number" name="age" required /></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="Save" />
						</td>
					</tr>
				</table>
			</form>
			<a href="View">View All Members</a>
		</main>
	</body>
</html>
