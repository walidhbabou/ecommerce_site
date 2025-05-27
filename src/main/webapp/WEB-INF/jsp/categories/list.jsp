<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/jsp/common/layout.jsp">
    <jsp:param name="title" value="Liste des Catégories" />
    <jsp:param name="content" value="/WEB-INF/jsp/categories/list-content.jsp" />
</jsp:include> 