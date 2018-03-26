<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>

<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>

<%
	//recoger el atributo del controlador, si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	boolean esCustom=(Boolean) request.getAttribute("esCustom");
	
%>
<div class="container">
<p>Precio: <%=mesa.calcularPrecio()%> &euro;</p>
<form action="generar-mesa" method="post">
		<label for="patas">Numero de patas:</label>
		<input type="number" name="patas" required value="<%=mesa.getNumPatas()%>">
		<br>
		<label for="dimension">Dimensi&oacuten en metros cuadrados:</label>
		<input type="number" name="dimension" required value="<%=mesa.getDimension()%>">
		<br>
		<label for="color">Color de la mesa:</label>
		<div  height:10px; width:30px; background-color:<%=mesa.getColor()%>;"></div>
		<br>
		<input id="customizado"type="checkbox" name="custom" onclick="habilitarEdicionColor()"<%=(mesa.isCustom())?"checked":"" %>> Quiero customizarlo
		<input id="colorCustomizado" type="color" style="visibility:hidden;"name="color" value="<%=mesa.getColor()%>">
		<br>
		<label for="material">Numero de patas:</label><br>
		<select class="form-control" name="material">
			<option <%=(mesa.getMaterial()==1)?"selected":""%> value=1> Madera<br>
  			<option <%=(mesa.getMaterial()==2)?"selected":""%> value=2> Acero<br>
  			<option <%=(mesa.getMaterial()==3)?"selected":""%> value=3> Aluminio<br>
  			<option <%=(mesa.getMaterial()==4)?"selected":""%> value=4> Pl&aacutestico
		</select>
  		<br>
	
		<input type="submit" value="Calcular precio">
	</form>
</div>

<jsp:include page="templates/footer.jsp"></jsp:include>