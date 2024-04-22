<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Изучаем Джава</title>
</head>
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
        max-width: 800px;
        padding: 15px;
        margin: auto;
        background-color: white;
        border-radius: 7px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }

    .text-java {
        color: #00796b; /* Teal color */
    }

    .footer {
        text-align: center;
        padding: 20px 0;
        margin-top: 20px;
        border-top: 1px solid #e5e5e5;
        color: #777;
    }

    .content {
        margin-top: 20px;
    }
</style>
<br>
<body>
<div class="container text-center">
    <h1 class="text-java">Добро пожаловать на курс Java!</h1>
    <p class="lead">Здесь вы найдете всё, что нужно для изучения Java
        от начального до продвинутого уровня.</p>
    <div class="content">
        <a href="MyController?command=do_auth" class="btn btn-lg btn-success">
            Войти / Регистрация</a>
        <h2>NEWS</h2>
        <c:out value="${requestScope.newss.title}" />
        <br/>
        <c:out value="${requestScope.newss.brief}" />
        <hr>
        <p>&copy; 2024 Изучаем Java. Все права защищены.</p>
    </div>
</div>
</body>
</html>