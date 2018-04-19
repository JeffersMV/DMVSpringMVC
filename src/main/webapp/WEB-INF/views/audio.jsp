<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="individual_content">
    <ul class="styleAudio">
        <core:forEach var="dto" items="${dtoList}">
            <li><p>${dto.id}|${dto.name}</p>
                <audio controls>
                    <source src="${dto.audio}" type="audio/mp3">
                    Тег audio не поддерживается вашим браузером.
                    <a href="${dto.audio}">SAVE</a>.
                </audio>
            </li>
        </core:forEach>
    </ul>
</div>