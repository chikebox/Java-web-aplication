<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<%
	String message=(String) request.getAttribute("message");
	if(message!=null){%>
		<div class="alert alert-danger" role="alert">
			<%=message %>
		</div>
	
	
<%
	}
%>
<form action="login" method="post">
	<div class="form-group">
		<label for="username"> Username:</label>
		<input class="form-control" type="text" name="username">
	</div>

	<div class="form-group">
		<label for="password"> Password:</label>
		<input class="form-control" type="password" name="password">
	</div>
	<button class="btn btn-primary">Login</button>
</form>
<jsp:include page="templates/footer.jsp"></jsp:include>