<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %> <%-- Esta lindea COPIA TODO el contenido de index.jsp --%>
<%@include file="components/body_primera_parte.jsp" %>


<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
    <p class="mb-4">A continuacion podrá visualizar la lista completa de usaurios</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre de Usuario</th>
                            <th>Rol</th>
                            <th style="width:210px">Acción</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Nombre de Usuario</th>
                            <th>Rol</th>
                            <th style="width:210px">Acción</th>
                    </tfoot>
                    <%
                        List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                    %>
                    <tbody>
                        <% if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
                                for (Usuario usu : listaUsuarios) {%>
                        <tr>
                            <td><%=usu.getId_usuario()%></td>
                            <td><%=usu.getNombre_usuario()%></td>
                            <td><%=usu.getRol()%></td>

                            <td style="display: flex; width: 230px;">
                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" 
                                            style="background-color:red; margin-right: 5px;">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"> <!--  name="id" -->
                                </form>
                                <form name="editar" action="SvEditUsuarios" method="GET"> <!-- esto es para mandar el codigo al servlet -->
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i>  Editar
                                    </button>
                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>"> <!-- esto es para mandar el codigo al servlet -->
                                </form>
                            </td>
                        </tr>
                        <%  }
                        } else { %>
                        <tr>
                            <td colspan="3">No hay usuarios registrados</td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->



<%@include file="components/body_final.jsp" %>