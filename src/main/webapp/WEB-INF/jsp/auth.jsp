<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Авторизация - Изучаем Java</title>
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
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }

        .form-signin {
            margin-bottom: 15px;
        }

        .form-signin .form-control {
            position: relative;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }

        .form-signin .form-control:focus {
            z-index: 2;
        }

        .text-java {
            color: #00796b; /* Teal color */
        }

        .error-message {
            color: #a94442; /* Bootstrap 'has-error' color */
        }
    </style>
</head>
<body>

<div class="container">
    <form class="form-signin" action="MyController" method="post">
        <input type="hidden" name="command" value="do_auth"/>
        <h2 class="form-signin-heading text-java text-center">Пожалуйста,
            войдите</h2>
        <div class="error-message" id="error-message">
            <c:if test="${not (requestScope.authError eq null) }">
                <c:out value="${requestScope.authError}" />
            </c:if>
        </div>

        <label for="inputEmail" class="sr-only">Email адрес</label>

        <input type="email" id="inputEmail" class="form-control"
               placeholder="Email адрес" name="login" required autofocus> <label
            for="inputPassword" class="sr-only">Пароль</label> <input
            type="password" id="inputPassword" class="form-control"
            placeholder="Пароль" name="password" required>
        <div class="checkbox mb-3">
            <label> <input type="checkbox" value="remember-me">
                Запомнить меня
            </label>
        </div>
        <button class="btn btn-lg btn-success btn-block" type="submit">
            <a href="MyController?command=do_auth">Войти</a></button>
        <div class="text-center mt-2">
            <a href="MyController?command=go_to_registration_page">Регистрация нового аккаунта</a>
        </div>
        <p class="mt-5 mb-3 text-muted text-center">&copy; 2024 Изучаем
            Java</p>
    </form>
</div>



</body>
</html>