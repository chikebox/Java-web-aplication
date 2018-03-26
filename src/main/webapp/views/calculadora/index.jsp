<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<%
	String message = (String) request.getAttribute("msg");
	if(message!=null){%>
	<div class="alert alert-danger" role="alert">
		<%=message %>
	</div>
		
		
	<%
	}
%>
<form action="calculadora" method="post">
<input name="operador1" type="text" value="0">
<input name="operador2" type="text" value="0">
<select class="form-control" name="operacion">
			<option value="suma"> Suma<br>
  			<option value="resta"> Resta<br>
  			<option value="multiplicacion"> Multiplicacion<br>
  			<option value="division"> divisi&oacuten
		</select>
<button type="submit">Calcular resultado</button>
</form>
<jsp:include page="/templates/footer.jsp"></jsp:include>