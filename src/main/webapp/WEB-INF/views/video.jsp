<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="individual_content">
    <ul class="styleVideo">
        <core:forEach var="dto" items="${dtoList}">
            <li><p>${dto.id}|${dto.name}</p>
                <iframe src="${dto.video}" allowfullscreen></iframe>
            </li>
        </core:forEach>
    </ul>
</div>