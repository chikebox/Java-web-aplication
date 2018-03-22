<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>

<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<%
	//recoger el atributo del controlador, si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	
%>
<div class="container">
<p>Precio: <%=mesa.calcularPrecio()%> &euro;</p>
<form action="generar-mesa" method="post">
		<label for="patas">Numero de patas:</label>
		<input type="number" name="patas" required value="4">
		<br>
		<label for="dimension">Dimensi&oacuten en metros cuadrados:</label>
		<input type="number" name="dimension" required value="1">
		<br>
		<label for="color">Color de la mesa:</label>
		<input type="color" name="color" value="#ffffff">
		<br>
		<label for="material">Numero de patas:</label><br>
		<select class="form-control" name="material">
			<option value=1> Madera<br>
  			<option value=2> Acero<br>
  			<option value=3> Aluminio<br>
  			<option value=4> Pl&aacutestico
		</select>
  		<br>
	
		<input type="submit" value="Calcular precio">
	</form>
</div>

<jsp:include page="templates/footer.jsp"></jsp:include>