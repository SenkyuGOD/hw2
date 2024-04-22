<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Регистрация</title>
	<link
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
			rel="stylesheet">
	<style>
		body {
			padding-top: 40px;
			padding-bottom: 40px;
			background-color: #f5f5f5;
		}

		.container {
			max-width: 400px;
			padding: 15px;
			margin: auto;
			background-color: white;
			border-radius: 7px;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
			margin-top: 100px;
		}

		.text-center {
			text-align: center;
		}

		.btn {
			width: 100%;
			margin-top: 10px;
		}
	</style>
</head>
<body>

<div class="container">
	<h2 class="text-center">Регистрация</h2>
	<form action="MyController" method="post" class="form-signin">
		<div class="form-group">
			<input type="text" name="username" class="form-control" placeholder="Имя пользователя" required autofocus>
		</div>
		<div class="form-group">
			<input type="email" name="email" class="form-control" placeholder="Email" required>
		</div>
		<div class="form-group">
			<input type="password" name="password" class="form-control" placeholder="Пароль" required>
		</div>
		<div class="form-group">
			<input type="password" name="confirm_password" class="form-control" placeholder="Подтвердите пароль" required>
		</div>
		<a href="MyController?command=go_to_index_page" class="btn btn-lg btn-success">Зарегистрироваться</a>
	</form>
	<p class="text-center">Уже есть аккаунт? <a href="MyController?command=go_to_auth_page">Войти</a></p>
</div>

</body>
</html>