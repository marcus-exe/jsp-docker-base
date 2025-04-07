<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Exemplo JSP / TagLibs</title>
</head>
<body>
    <c:set var="data" value="<%=new java.util.Date()%>"/>
    <p>Data Formatada(1): <fmt:formatDate type="time" value="${data}"/> <p/>
    
    <c:set var="valor" value="999.888"/>
    <p>Número Formatado(1):
        <fmt:formatNumber value="${valor}" type="currency"/>
    </p>
</body>
</html>