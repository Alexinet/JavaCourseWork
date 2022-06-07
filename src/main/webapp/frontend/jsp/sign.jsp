<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html style='overflow-x:hidden;overflow-y:hidden;'>
    <head>
        <meta charset="utf-8">
        <title>tooth</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../resources/css/sign.css">
        <link rel="stylesheet" href="../../resources/css/style.css">
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
                    <a href="/admin" class="nav__link">Профиль</a>
                    <form class="logout" action="/">
                    <a class="nav__link nav_exit" href="/logout" type="submit">Выйти</a>
                    </form>
                </nav>

                <button class="burger1" id="burger" type="button">Burger</button>
            </div> <!-- ./header__inner -->
        </div> <!-- ./container -->
    </header>




          <div class="bg-image" style="display: flex;align-items: center;background-color: rgb(184, 207, 237);width: 100%;height: 100vh;justify-content: space-around;">
            <div class="forma" style="margin-top: 3%;">
                <div class="form-at">
              <%--@elvariable id="signForm" type=""--%>
              <form:form method="POST" modelAttribute="signForm">
                  <div class="validate-input-at w-50" data-validate="Обязательное поле">
                      <form:input type="text" path="name"
                                  autofocus="true" class="input-at" placeholder="Ваше имя"></form:input>
                      <span class="focus-input-at"></span>
                  </div>
                  <div class="validate-input-at w-50" data-validate="Обязательное поле">
                      <form:input type="text" path="email"
                                  autofocus="true" class="input-at" placeholder="Ваш телефон или email"></form:input>
                      <span class="focus-input-at"></span>
                  </div>

                  <div>
                      <div style="font-size: 17px;" >Выберите вашего лечащего врача</div>
                      <div class="validate-input-at w-50" data-validate="Обязательное поле">
                          <form:select type="text" path="doctor"
                                      autofocus="true" class="box input-at"><option>Артур Магиланов</option>
                              <option>Егор Владимирович</option>
                              <option>Осипов Станислав Андреевич</option>
                              <option>Гущин Артём Михайлович</option>
                              <option>Кира Александровна</option>
                              <option>София Шарифовна</option></form:select>
                      </div>
                  <div class="validate-input-at" data-validate="Обязательное поле">>
                      <form:textarea type="text" path="text"
                                  autofocus="true" class="input-at" placeholder="Напишите, что вас беспокоит"></form:textarea>
                      <span class="focus-input-at"></span>
                  </div>
                  </div>

                  <input checked="checked" class="input-at" id="checkbox-at" type="checkbox" name="checkbox-at" onchange="document.getElementById('submit-at').disabled = !this.checked;" />
                  <label for="checkbox-at">
                      Настоящим подтверждаю, что я ознакомлен и согласен с
                      <a href="#rules">пользовательским соглашением</a>
                  </label>
                  <input type="hidden" name="subject-at" value="Тема формы">
                  <button id="submit-at" class="form-at-btn">
                      Отправить
                  </button>
                <div class="result-at"></div>
              </form:form>

          </div>
          </div>
          </div>


          <script src="../../resources/js/navabar.js"></script>
    </body>
    </html>