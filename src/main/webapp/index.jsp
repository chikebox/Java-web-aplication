<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<%
	//Scriplet < % ... % >
	//varias sentencias
	String nombre = "pepe";
	String hora = "10:18";
%>
<h2>Hello <%=nombre%></h2>
<p><%= hora %></p>
<jsp:include page="templates/footer.jsp"></jsp:include>
