<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html style='overflow-x:hidden;'>
    <head>
        <link rel="icon" href="../../resources/images/tooth4.png" type="image/x-icon">
        <meta charset="utf-8">
        <title>tooth</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
        

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- bootstrap link -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
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
                    <sec:authorize access="hasAnyRole('ADMIN')">
                        <a href="/admin" class="nav__link">Пользователи</a>
                    </sec:authorize>


                    <sec:authorize access="isAuthenticated()">
                        <a href="/news" class="nav__link">Профиль</a>
                    </sec:authorize>

                    <sec:authorize access="!isAuthenticated()">
                  <a href="/registration" class="nav__link">Регистрация</a>
                  <a href="/login" class="nav__link">Войти</a>
                    </sec:authorize>


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



          <div id="tekst_sverhu_kartinki">
            <img src="../../resources/images/back.jpg" id="backgroundimage" class="bg-image" style="background-color: rgb(209,219,235);height: 98vh;width: 100%;">
            <div class="tekst_sverhu_kartinki">Нам можно доверять!</div>
            <div class="tekst_sverhu_kartinki2">
              - только оригинальные материалы<br />
              - гарантия качества<br />
              - честные цены
            </div>
              <sec:authorize access="!isAuthenticated()">
                  <a href="/login" class="pressed-button">Записаться на прием</a>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
                    <a href="/sign" class="pressed-button">Записаться на прием</a>
              </sec:authorize>
          </div>
          
          <div class="bg-image row" style="background-color: rgb(184, 207, 237);height: auto;justify-content: space-around;padding-top: 10vh;">
            
            <div>
              <div style="display: flex;justify-content: space-around;height: 100px;">
                <div class="textofbodyUpper">Информация о нас</div>
              </div>
              <div class="information" style="display: flex;justify-content: space-around;">
                <div class="textofbodyLower">
                    <p>«СМ-Стоматология» – сеть взрослых и детских стоматологических отделений</p>
                    <p>«СМ-Стоматология» – это сеть стоматологических клиник в Москве, которые оказывают широкий спектр услуг по диагностике и лечению заболеваний зубов, десен и ротовой полости. Мы являемся частью крупнейшего медицинского холдинга «СМ-Клиника» и начиная с 2002 года успешно избавляем пациентов от зубной бо-ли.</p>
                    <p>В наших отделениях можно получить консультацию специалистов как самых востребованных, так и достаточно редких стоматологических направлений, что позволяет решить большинство стоматологических вопросов за одно посещение. Кроме того, мы заботимся о квалификации врачей «СМ-Стоматология» – предоставляем возможность перенимать опыт у ведущих экспертов в своей области, осваивать передовые методы и технологии, проходить стажировки и обучение за рубежом.</p>
                </div>
                <img class="informationimage" src="../../resources/images/infimage.jpg">
              </div>
            </div>

            <div class="container" >
              <div class="swiper-container mySwiper my-5 py-5 ">
              
                <div style="display: flex;justify-content: space-around;padding-bottom: 3%;">
                  <div class="swiper-button-prev" style="position: relative;margin-top: 1%;"></div>
                  <div class="swipetext">Наши лучшие специалисты</div>
                  <div class="swiper-button-next" style="position: relative;margin-top: 1%;"></div>
                </div>
                <div class="swiper-wrapper">
                  
                  <div class="swiper-slide d-flex justify-content-center">
                    <div class="card" >
                      <figure class="mb-0" >
                        <img style="width: 100%;border-radius:0 0 12px 12px;" src="../../resources/images/card1.jpg" alt="Hotel" >
                      </figure>
            
                      <div class="card-body bg-light d-flex flex-column justify-content-center">
                        <h5 class="card-title">Артур Магиланов и София Шарифовна</h5>
                        <p class="card-text">Стоматолог-хирург-имплантолог, стоматолог ортопед, стоматолог -терапевт, общей практики 
                        </p>
                      </div>
                    </div>
                  </div>
            
                  
                  <div class="swiper-slide d-flex justify-content-center">
                    <div class="card" >
                      <figure >
                        <img style="width: 100%;border-radius:0 0 12px 12px;" src="../../resources/images/card2.jpg" >
                      </figure>
            
                      <div class="card-body">
                        <h5 class="card-title">Егор Владимирович и Кира Александровна</h5>
                        <p class="card-text">Стоматолог терапевт, стоматолог ортодонт, детский стоматолог 
                        </p>
                      </div>
                    </div>
                  </div>
            
                  
                  <div class="swiper-slide d-flex justify-content-center">
                   <div class="card" >
                     <figure >
                       <img style="width: 100%;border-radius:0 0 12px 12px;" src="../../resources/images/card3.jpg" >
                     </figure>
            
                     <div class="card-body">
                       <h5 class="card-title">Осипов Станислав Андреевич</h5>
                       <p class="card-text">Врач стоматолог ортодонт, стоматолог общей практики
                       </p>
                      </div>
            
                    </div>
                  </div>
            
                  
                  <div class="swiper-slide d-flex justify-content-center">
                    <div class="card" >
                     <figure >
                      <img style="width: 100%;border-radius:0 0 12px 12px;" src="../../resources/images/card4.jpg" >
                     </figure>
            
                     <div class="card-body">
                       <h5 class="card-title">Гущин Артём Михайлович</h5>
                       <p class="card-text">Стоматолог-хирург-имплантолог, стоматолог -ортопед, стоматолог-терапевт, стоматолог общей практики
                       </p>
                     </div>
                    </div>
                  </div>
                </div>
              </div>
              
            </div>
            </div>

          <footer class="py-2" style="background-color: rgb(87, 130, 179)">
            <ul class="nav justify-content-center pb-3 mb-3">
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Home</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Features</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">Pricing</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">FAQs</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 botcolor" style="color:rgb(227, 239, 246)">About</a></li>
            </ul>
            <p class="text-center" style="color:rgb(227, 239, 246)">© 2021 Company, Inc</p>
          </footer>

          <script src="../../resources/js/navabar.js"></script>

              <!-- bootstrap  -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>

            <!-- swiper-bundle -->
          <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

          <script>
            var swiper = new Swiper(".mySwiper", {
              slidesPerView: 1,
              spaceBetween: 30,
              slidesPerGroup: 1,
              breakpoints: {
               768: {
                  slidesPerView: 2,
                },
        
                991: {
                  slidesPerView: 3,
                },
              },
              loop: true,
              navigation:{
                nextEl:".swiper-button-next",
                prevEl: ".swiper-button-prev",
              }
        
        
            });
        
          </script>
    </body>
    </html>