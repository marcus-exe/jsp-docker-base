<c:if test="${numero > 100 }">
	<p>Valor Maior que 100</p>
</c:if>
<c:if test="${not empty lista }">
	<!-- Tabela -->
</c:if>
<c:if test="${usuario == 'admin' }">
	<p>Ola Administrador!</p>
</c:if>

<c:out value="${numero}"/>

<c:url value="editarCliente" var="link">
	<c:param name="nome" value="${cli.nome}"/>
</c:url>
<a href="${link}">Cliente</a>