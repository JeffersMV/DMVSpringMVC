<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="common_content">
    <core:if test="${error == 'name_error'}">
        <p class="errorSend">
            Введите пожалуйста Ваше имя!
        </p>
    </core:if>
    <core:if test="${error == 'phone_error'}">
        <p class="errorSend">
            Введите пожалуйста Ваш номер телефона!
        </p>
    </core:if>
    <core:if test="${error == 'email_error'}">
        <p class="errorSend">
            Введите пожалуйста Ваш E-mail!
        </p>
    </core:if>
    <core:if test="${error == 'connect_BD'}">
        <p class="errorSend">
            Ошибка подключения, не могу достучаться до Базы Данных!
        </p>
    </core:if>
    <core:if test="${error == 'send_email'}">
        <p class="errorSend">
            Ошибка отправки данных, какой-то сбой в программе произошёл при отправки!
            Пожалуйста воспользуйтесь вкладкой КОНТАКТЫ и выберети сбособ связи удобный для Вас!
        </p>
    </core:if>
    <core:if test="${error == 'server'}">
        <p class="errorSend">
            Ошибка приложения, какой-то сбой в программе!
        </p>
    </core:if>
</div>