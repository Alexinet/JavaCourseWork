<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html style='overflow-x:hidden;'>
    <head>
        <link rel="icon" href="../../resources/images/tooth4.png" type="image/x-icon">
        <meta charset="utf-8">
        <title>tooth</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../resources/css/style.css">
        <link rel="stylesheet" href="../../resources/css/profile.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    

    </head>
    <body>
    <header class="header" style="background-color: rgb(117, 159, 206)">
        <div class="container">
            <div class="header__inner">
                <div class="logo">

                    <img src="../../resources/images/tooth4.png" style="height: 45px;width: 45px;">
                    <a href="/" class="logo__link" style="margin-left: 20px;">Tooth's</a>
                </div>

                <nav class="nav1" id="nav">
                    <a href="/news" class="nav__link">Профиль</a>
                    <form class="logout" action="/">
                        <sec:authorize access="isAuthenticated()">
                            <a class="nav__link nav_exit" href="/logout" type="submit">Выйти</a>
                        </sec:authorize>
                    </form>
                </nav>

                <button class="burger1" id="burger" type="button">Burger</button>
            </div> <!-- ./header__inner -->
        </div> <!-- ./container -->
    </header>

          
          <div class="bg-image column" style="background-color: rgb(184, 207, 237);min-height: 90vh;
          height: auto;justify-content: space-around;padding-top: 10vh;padding-bottom: 10vh;">
              <div class="container rounded bg-white mt-5 mb-5" style="width: 80%;height: auto;">
                <div class="row control">
                  <div class="col-md-3 get100 oldoneprofile">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5  border-right">
                        <%--@elvariable id="userFormRename" type=""--%>
                        <form:form method="POST" modelAttribute="userFormRename">
                          <div class="d-flex flex-column justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Настройки профиля</h4>
                            <span class="mytext">${pageContext.request.userPrincipal.name}</span>
                          </div>
                          <div class="flex-row">
                            <label class="mytext">Изменить логин</label>
                              <form:input type="text" class="form-control" path="username"
                                          placeholder="${pageContext.request.userPrincipal.name}"
                                          autofocus="true"></form:input>
                                  ${usernameError}
                          </div> <br>
                          <div class="md-12 flex-column">
                            <label class="mytext">Новый пароль</label>
                              <form:input class="form-control" type="password" path="password" placeholder="Пароль"></form:input>
                          </div> <br>
                          <div class="md-12 flex-column">
                            <label class="mytext">Потвердить новый пароль</label>
                              <form:input type="password" class="form-control" path="passwordConfirm"
                                          placeholder="Повторите пароль"></form:input>
                                  ${passwordError}
                          </div>
                          <div class="mt-5 text-center">
                            <button class="btn btn-primary profile-button" type="submit">
                              Сохранить профиль
                            </button>
                          </div>
                        </form:form>
                    </div>
                  </div>
                  <div class="col-md-5 oldonesigns get100">
                    <div class="p-3 py-5">
                      <h4 class="text-right">Записи</h4>
                      <div class="signs">
                          <c:forEach items="${allSigns}" var="sign">
                        <div class="sign">
                          <label class="mytext">Имя : ${sign.name}</label>
                          <label class="mytext">Доктор : ${sign.doctor}</label>
                          <label class="mytext">Назначенное время : не известно</label>
                          <label class="mytext">Причина : ${sign.text}</label>
                        </div>
                          </c:forEach>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

          <footer class="py-2" style="background-color: rgb(87, 130, 179)">
            <ul class="nav justify-content-center mb-3">
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Home</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Features</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Pricing</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">FAQs</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">About</a></li>
            </ul>
          </footer>

          <script src="./assets/js/navabar.js"></script>
    </body>
    </html>