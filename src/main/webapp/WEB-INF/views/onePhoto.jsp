<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="photo" scope="request" type="entity.Photo"/>
<div class="common_content">
    <div class="double styleOnePhoto">
        <a onclick="change('/ShowServlet?action=photo')" title="fgh">
            <p>${photo.id}|<fmt:formatDate pattern="yyyy-MM-dd" value="${photo.date}"/>|${photo.name}</p>
            <img src="${photo.photo}">
        </a>
    </div>
</div>