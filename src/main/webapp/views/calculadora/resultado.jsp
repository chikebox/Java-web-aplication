<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<h1>Resultado de la operacion:</h1>
<%
	float resultado = (Float) request.getAttribute("resultado");
%>
<%= resultado %>
<jsp:include page="/templates/footer.jsp"></jsp:include>