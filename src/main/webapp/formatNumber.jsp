<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>JSTL Formatação de Números</title>
</head>
<body>
	<h3>Formatar Números:</h3>
	<c:set var="valor" value="999.888" />
	<p>
		Número Formatado (1):
		<fmt:formatNumber value="${valor}" type="currency" />
	</p>
	<p>
		Número Formatado (2):
		<fmt:formatNumber type="number" maxIntegerDigits="3"
			value="${valor}" />
	</p>
	<p>
		Número Formatado (3):
		<fmt:formatNumber type="number" maxFractionDigits="3"
			value="${valor}" />
	</p>	
	<p>
		Número Formatado (4):
		<fmt:formatNumber type="percent" value="${valor}" />
	</p>
	<p>
		Número Formatado (5):
		<fmt:formatNumber type="number" pattern="###.###E0" value="${valor}" />
	</p>	
</body>
</html>