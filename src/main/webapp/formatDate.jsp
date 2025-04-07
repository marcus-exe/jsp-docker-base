<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
  <title>JSTL Formatação de datas</title>
</head>
<body>
<h3>Formatação de datas:</h3>
<c:set var="data" value="<%=new java.util.Date()%>" />
<p>Data Formatada (1): <fmt:formatDate type="time" 
            value="${data}" /></p>
<p>Data Formatada (2): <fmt:formatDate type="date" 
            value="${data}" /></p>
<p>Data Formatada (3): <fmt:formatDate type="both" 
            value="${data}" /></p>
<p>Data Formatada (4): <fmt:formatDate pattern="dd/MM/yyyy" 
            value="${data}" /></p>
</body>
</html>