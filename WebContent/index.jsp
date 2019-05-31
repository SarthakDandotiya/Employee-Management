<%@ page isELIgnored="false" language="java" contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Add</title>
		<link
			href="https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap"
			rel="stylesheet"
		/>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
		<nav>
			<h2>Add Member</h2>
			<a href="View">View All</a>
		</nav>
		<main>
			<form action="Save" method="POST">
				<div class="input-container">
					<p>
						Id
					</p>
					<input type="number" name="id" required />
				</div>
				<div class="input-container">
					<p>
						Name
					</p>
					<input type="text" name="name" required />
				</div>
				<div class="input-container">
					<p>Email</p>
					<input type="email" name="email" required />
				</div>
				<div class="input-container">
					<p>
						Age
					</p>
					<input type="number" name="age" required />
				</div>
				<div class="input-container">
					<input type="submit" class="btn" value="Save" />
				</div>
			</form>
		</main>
	</body>
</html>
