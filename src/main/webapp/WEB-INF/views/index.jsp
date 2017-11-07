<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>DMV — Уроки гитары в Минске</title>
    <meta name="description"
          content="Уроки гитары для начинающих в Минске по самым доступным ценам!Уроки у Вас на дому!">
    <meta name="keywords" content="уроки гитары минск,уроки гитары в минске,уроки гитары минск для начинающих,уроки гитары для начинающих в минске,
      уроки игры на гитаре минск,уроки игры на гитаре в минске,уроки игры для начинающих минск,уроки игры на гитаре для начинающих в минске,
      курсы гитары минск,курсы гитары в минске,школа гитары минск,школа гитары в минске,уроки электрогитары минск,курсы электрогитары минск">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bootstrap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/header.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/menu.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/replaceable_body.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/css/bottom.css" />">

    <%--<script rel="script" type="text/javascript" src="../../resource/javascript/script.js"></script>--%>
    <script rel="script" type="text/javascript" src="/javascript/script.js"></script>
    <%--<link rel="script" type="text/xml" href="<core:url value="/javascript/script.js"/>">--%>
    <script async>
        function handleLoad(e) {
            console.log('Loaded import: ' + e.target.href);
        }
        function handleError(e) {
            console.log('Error loading import: ' + e.target.href);
        }
    </script>
    <link rel="import" href="home.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" href="about_myself.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" href="import.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" href="cost.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" href="reviews.jsp" onload="handleLoad(event)" onerror="handleError(event)">
    <link rel="import" href="contacts.jsp" onload="handleLoad(event)" onerror="handleError(event)">

</head>
<body>
<div style="position: relative">
    <header>
        <div class="header">
            <div class="left_header">
                <h2>
                    <span>Репетиторство</span><br>
                    Михаила Владимировича
                </h2>
                <h3>
                    индивидуальное обучение
                    <br>
                    игры на ГИТАРЕ
                </h3>
            </div>
            <div class="right_header">
                <p class="phone_right_header">+375 29 254 24 91</p>
                <p>Viber: +375 29 254 24 91<br>
                    Skype: dmv.com</p>
            </div>
        </div>
        <ul id="menu">
            <li>
                <a onclick="change('/home.jsp')" title="Здесь ссылка на главную">Главная</a>
            </li>
            <li>
                <a onclick="change('/about_myself.jsp')" title="Здесь информация о cебе">О себе</a>
            </li>
            <li>
                <a onclick="" title="Здесь галерея Аудио Видео Фото">Галерея</a>
                <ul>
                    <li><a onclick="audio()">Аудио</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShowServlet?action=video">Видео</a></li>
                    <li><a href="${pageContext.request.contextPath}/ShowServlet?action=photo">Фото</a></li>
                </ul>
            </li>
            <li>
                <a onclick="change('/cost.jsp')" title="Стоимость">Стоимость</a>
            </li>
            <li>
                <a onclick="change('/reviews.jsp')" title="Отзывы">Отзывы</a>
            </li>
            <li>
                <a onclick="change('/contacts.jsp')" title="Контакты">Контакты</a>
            </li>
        </ul>

    </header>


    <%----------------------------------------------EXCHANGE------------------------------------------------%>
    <div class="exchange">
        <core:if test="${param.get('action') == 'audio'}">
            Сработал параметр Audio в JSP!
        </core:if>
        <div id="changebody">

            RRTJGYFHJHGJHGHJG
            <%--<script>--%>
                <%--change('/home.jsp');--%>

            <%--</script>--%>
        </div>

        <core:choose>
            <%--О СЕБЕ--%>
            <core:when test="${param.get('action') == 'about_myself'}">

            </core:when>
            <%--AUDIO--%>
            <core:when test="${param.get('action') == 'audio'}">
                <div class="replaceable_body">
                    <ul class="double">
                            <%--@elvariable id="dtoList" type="java.util.List"--%>
                        <core:forEach var="dto" items="${dtoList}">
                            <li><p>${dto.id}|${dto.name}</p>
                                <audio controls style="width: 480px">
                                    <source src="${dto.audio}" type="audio/mpeg">
                                    Тег audio не поддерживается вашим браузером.
                                    <a href="${dto.audio}">SAVE</a>.
                                </audio>
                            </li>
                        </core:forEach>
                    </ul>
                </div>
            </core:when>
            <%--VIDEO--%>
            <core:when test="${param.get('action') == 'video'}">
                <div class="replaceable_body">
                    <ul class="double">
                            <%--@elvariable id="dtoList" type="java.util.List"--%>
                        <core:forEach var="dto" items="${dtoList}">
                            <li><p>${dto.id}|${dto.name}</p>
                                <iframe width="480" height="270" src="${dto.video}" frameborder="0" allowfullscreen
                                        align="center"></iframe>
                            </li>
                        </core:forEach>
                    </ul>
                </div>
            </core:when>
            <%--PHOTO--%>
            <core:when test="${param.get('action') == 'photo'}">
                <div class="replaceable_body">
                    <ul class="double">
                            <%--@elvariable id="dtoList" type="java.util.List"--%>
                        <core:forEach var="dto" items="${dtoList}">
                            <li><a href="${pageContext.request.contextPath}/ShowServlet?action=onePhoto&id=${dto.id}"
                                   title="${dto.name}">
                                <p>${dto.id}|${dto.name}</p>
                                <img src="${dto.photo}" width="480">
                            </a>
                            </li>
                        </core:forEach>
                    </ul>
                </div>
            </core:when>
            <%--ONE PHOTO--%>
            <core:when test="${param.get('action') == 'onePhoto'}">
                <jsp:useBean id="photo" scope="request" type="entity.Photo"/>
                <div class="replaceable_body">
                    <ul class="double">
                        <li style="width: 100%"><a href="${pageContext.request.contextPath}/ShowServlet?action=photo"
                                                   title="${photo.name}">
                            <p style="width: 1020px">${photo.id}|<fmt:formatDate pattern="yyyy-MM-dd"
                                                                                 value="${photo.date}"/>|${photo.name}</p>
                            <img src="${photo.photo}" width="1020">
                        </a>
                        </li>
                    </ul>
                </div>
            </core:when>
            <%--СТОИМОСТЬ--%>
            <core:when test="${param.get('action') == 'cost'}">

            </core:when>
            <%--ОТЗЫВЫ--%>
            <core:when test="${param.get('action') == 'reviews'}">

            </core:when>
            <%--КОНТАКТЫ--%>
            <core:when test="${param.get('action') == 'contacts'}">

            </core:when>
            <%--ERROR--%>
            <core:when test="${action == 'error'}">
                <div class="replaceable_body">
                    <core:if test="${error == 'name_error'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Введите пожалуйста Ваше имя!
                        </p>
                    </core:if>
                    <core:if test="${error == 'phone_error'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Введите пожалуйста Ваш номер телефона!
                        </p>
                    </core:if>
                    <core:if test="${error == 'e-mail_error'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Введите пожалуйста Ваш E-mail!
                        </p>
                    </core:if>
                    <core:if test="${error == 'connect_BD'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Ошибка подключения, не могу достучаться до Базы Данных!
                        </p>
                    </core:if>
                    <core:if test="${error == 'send_e-mail'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Ошибка отправки данных, какой-то сбой в программе произошёл при отправки!
                            Пожалуйста воспользуйтесь вкладкой КОНТАКТЫ и выберети сбособ связи удобный для Вас!
                        </p>
                    </core:if>
                    <core:if test="${error == 'server'}">
                        <p style="text-align: center; font-size: 30px; font-style: oblique; color: #c60016">
                            Ошибка приложения, какой-то сбой в программе!
                        </p>
                    </core:if>
                </div>
            </core:when>
            <%--ACTION--%>
            <core:when test="${action == 'SEND'}">
                <div class="replaceable_body">
                    <p style="text-align: center; font-size: 30px; font-style: oblique; color: #000000">
                        Заявка отправлена ${name} c ${e-mail}!<br>
                        Вам перезвонят в течение дня на номер<br>
                        "${phone}"!
                    </p>
                </div>
            </core:when>
            <%--ГЛАВНАЯ--%>
            <core:otherwise>

            </core:otherwise>
        </core:choose>
    </div>
    <%----------------------------------------------------BOT-----------------------------------------------------%>
    <div class="bot">
        <div id="bottom">
            <p>
                ОТПРАВИТЬ ЗАЯВКУ
            </p>
            <div>
                <form action="${pageContext.request.contextPath}/sendEmail" method="get" novalidate="novalidate">
                    <input type="text" name="name"
                           value="<core:if test="${param.get('name') != null}">${param.get('name')}</core:if>"
                           required="required" placeholder="Ваше имя"/><br>
                    <input type="text" name="phone"
                           value="<core:if test="${param.get('phone') != null}">${param.get('phone')}</core:if>"
                           required="required" placeholder="+375 __ ___ __ __"/><br>
                    <input type="text" name="e-mail"
                           value="<core:if test="${param.get('e-mail') != null}">${param.get('e-mail')}</core:if>"
                           required="required" placeholder="E-mail"/><br>
                    <input type="submit" name="action" value="SEND"/>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
