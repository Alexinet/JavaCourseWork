<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head> <!-- Техническая информация о документе -->
  <link rel="icon" href="../../resources/images/tooth4.png" type="image/x-icon">
  <meta charset="utf-8">
  <title>tooth</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../../resources/css/login.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>

<body class="body">

<div class="border">
  <form method="POST" action="/login">
    <div class="container">
    <h2>Авторизация</h2>
      <div>
        <input name="username" type="text" placeholder="Username"
               autofocus="true"/>
        <input name="password" type="password" placeholder="Password"/>
        <button class="registerbtn" type="submit">Войти</button>
      </div>
    </div>
  </form>
</div>
</body>
</html>



<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>