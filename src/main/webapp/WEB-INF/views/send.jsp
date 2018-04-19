<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<script rel="script" type="text/javascript" src="<core:url value="/resource/javascript/flipclock.min.js"/>"></script>
<script rel="script" type="text/javascript" src="<core:url value="/resource/javascript/counter.js"/>"></script>
<div class="common_content" style="text-align: center">
    <p class="errorSend">
        Заявка отправлена ${param.get('name')} c ${param.get('email')}!<br>
        Вам перезвонят в течение дня на номер<br>
        "${param.get('phone')}"!
    </p>
    <p class="counter"></p>
</div>