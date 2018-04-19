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
    <link rel="shortcut icon" href="<core:url value="/resource/img/kvintapICO.ico"/>">
    <link rel="stylesheet" type="text/css" href="<core:url value="resource/css/bootstrap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/resource/css/cap.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/resource/css/menu.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/resource/css/replaceable_body.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/resource/css/bid.css" />">
    <link rel="stylesheet" type="text/css" href="<core:url value="/resource/css/flipclock.css" />">
    <script rel="script" type="text/javascript" src="<core:url value="/resource/javascript/jquery-3.3.1.min.js"/>"></script>
    <%--<script rel="script" type="text/javascript" src="<core:url value="/javascript/ajax.js"/>"></script>--%>
    <script rel="script" type="text/javascript" src="<core:url value="/resource/javascript/jquery.js"/>"></script>
</head>
<body>
<div style="position: relative">
    <header>
        <div id="cap">
            <div id="cap_right">
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
        </div>
        <div id="menu">
            <ul>
                <li>
                    <a onclick="change('/ShowServlet')" title="Здесь ссылка на главную">Главная</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=about_myself')" title="Здесь информация о cебе">О себе</a>
                </li>
                <li>
                    <a title="Здесь галерея Аудио Видео Фото">Галерея</a>
                    <ul>
                        <li><a onclick="change('/ShowServlet?action=audio')">Аудио</a></li>
                        <li><a onclick="change('/ShowServlet?action=video')">Видео</a></li>
                        <li><a onclick="change('/ShowServlet?action=photo')">Фото</a></li>
                    </ul>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=cost')" title="Стоимость">Стоимость</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=reviews')" title="Отзывы">Отзывы</a>
                </li>
                <li>
                    <a onclick="change('/ShowServlet?action=contacts')" title="Контакты">Контакты</a>
                </li>
            </ul>
        </div>
    </header>
    <%----------------------------------------------EXCHANGE------------------------------------------------%>
    <div class="exchange">
        <jsp:include page="/WEB-INF/views/home.jsp"/>
    </div>
    <%-----------------------------------------------BOTTOM-------------------------------------------------%>
    <div class="bottom">
        <div id="bid">
            <p>
                ОТПРАВИТЬ ЗАЯВКУ
            </p>
            <div>
                <form name="formSend" novalidate="novalidate" autocomplete="off">
                    <input type="text" name="name"
                           value="<core:if test="${param.get('name') != null}">${param.get('name')}</core:if>"
                           required="required" placeholder="Ваше имя" autocomplete="name"/><br>
                    <input type="text" name="phone"
                           value="<core:if test="${param.get('phone') != null}">${param.get('phone')}</core:if>"
                           required="required" placeholder="+375 __ ___ __ __" autocomplete="phone"/><br>
                    <input type="text" name="email"
                           value="<core:if test="${param.get('email') != null}">${param.get('email')}</core:if>"
                           required="required" placeholder="E-mail" autocomplete="email"/><br>
                    <input type="button" name="action" value="SEND" onclick="sendE()"/>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>