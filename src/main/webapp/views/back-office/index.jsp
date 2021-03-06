<%@page import="com.ipartek.formacion.nidea.pojo.Material"%>
<%@page import="com.ipartek.formacion.nidea.model.MaterialDAO"%>
<%@page import="java.util.ArrayList"%>
<head>
    <meta charset="UTF-8">
    <title>DataTables</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                "language": {
                    "sProcessing": "Procesando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "No se encontraron resultados",
                    "sEmptyTable": "Ning�n dato disponible en esta tabla",
                    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "sInfoThousands": ",",
                    "sLoadingRecords": "Cargando...",
                    "oPaginate": {
                        "sFirst": "Primero",
                        "sLast": "�ltimo",
                        "sNext": "Siguiente",
                        "sPrevious": "Anterior"
                    },
                    "oAria": {
                        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                    }
                }
            });
        });
    </script>
</head>

	<body>
		<div>
			<table id="example" class="table table-striped table-bordered" style="width:100%">
        		<thead>
           				<tr>
                		<th>Id</th>
                		<th>Nombre</th>
                		<th>Precio</th>
            		</tr>
        		</thead>
        		<tfoot>
            		<tr>
                		<th>Id</th>
                		<th>Nombre</th>
                		<th>Precio</th>
            		</tr>
        		</tfoot>
        		<tbody>
        		<% 			
        			MaterialDAO dao=new MaterialDAO();
        			ArrayList<Material> materiales = dao.getAll();	
					Material m = null;
					for ( int i=0; i < materiales.size(); i++ ) {
						m = materiales.get(i);
				%>
					<tr>
                		<td><%=m.getId() %></td>
                		<td><%=m.getNombre() %></td>
                		<td><%=m.getPrecio() %></td>

            			</tr>
						<% } %>
        		</tbody>
        
    		</table>
    	</div>
    </body>

</html>