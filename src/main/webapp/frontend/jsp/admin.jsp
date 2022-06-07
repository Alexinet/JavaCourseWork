<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!DOCTYPE html>
<html>
<head>
  <link rel="icon" href="../../resources/images/tooth4.png" type="image/x-icon">
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="../../resources/css/admin.css">
</head>

<body>
<div>
  <div class="back">
    <div class="back_to">
      <h3 class="table_name">
          Таблица пользователей
      </h3>
    </div>
    <div class="user_table">
      <table class="users">
        <thead>
            <th>ID</th>
            <th>Имя пользователя</th>
            <th>Пароль</th>
            <th>Роли</th>
        </thead>
        <tbody>
        <c:forEach items="${allUsers}" var="user">
          <tr>
            <td>${user.id}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>
              <c:forEach items="${user.roles}" var="role">${role.name}; </c:forEach>
            </td>
            <td>
              <form action="${pageContext.request.contextPath}/admin" method="post">
                <input type="hidden" name="userId" value="${user.id}"/>
                <input type="hidden" name="action" value="delete"/>
                <button class="button" type="submit">Удалить</button>
              </form>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      
    </div>
    <div class="back_to">
      <div class="back_space">
          <a class="button" href="/">Назад</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>