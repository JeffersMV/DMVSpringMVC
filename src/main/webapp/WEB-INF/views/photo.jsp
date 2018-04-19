<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="common_content">
    <div class="stylePhoto">
        <core:forEach var="dto" items="${dtoList}">
            <div>
                <a onclick="change('/ShowServlet?action=onePhoto&id=${dto.id}')" title="${dto.name}">
                    <p>${dto.id}|${dto.name}</p>
                    <img src="${dto.photo}">
                </a>
            </div>
        </core:forEach>
    </div>
</div>