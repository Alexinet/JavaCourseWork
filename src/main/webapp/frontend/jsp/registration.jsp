<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html> <!-- Объявление формата документа -->
<html style='overflow-x:hidden;'>
    <head> <!-- Техническая информация о документе -->
        <link rel="icon" href="../../resources/images/tooth4.png" type="image/x-icon">
        <meta charset="utf-8">
        <title>tooth</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../resources/css/registration.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" type="text/css" href="./assets/style/registration.css"> <!-- Подключаем внешнюю таблицу стилей -->
        <script src="script.js"></script> <!-- Подключаем сценарии -->
    </head>
<body class="body">
    <div class="border">
        <%--@elvariable id="userForm" type=""--%>
        <form:form method="POST" modelAttribute="userForm">
            <div class="container">
            <h2>Регистрация</h2>
            <div>
                <form:input type="text" path="username" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="username"></form:errors>
                    ${usernameError}
            </div>
            <div>
                <form:input type="password" path="password" placeholder="Password"></form:input>
            </div>
            <div>
                <form:input type="password" path="passwordConfirm"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="password"></form:errors>
                    ${passwordError}
                <button type="submit" class="registerbtn">Зарегестрироваться</button>
            </div>
        </form:form>
    </div>
</body>
</html>