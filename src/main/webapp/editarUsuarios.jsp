<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %> <%-- Esta lindea COPIA TODO el contenido de index.jsp --%>
<%@include file="components/body_primera_parte.jsp" %>

<h1>Edición de  Usuarios</h1>
<p>Este es el apartado para modificar usuarios del sistema.</p>

<%Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col-sm-6 mb-3">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                   placeholder="Nombre Usuario" value="<%=usu.getNombre_usuario()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña"  value="<%=usu.getContrsenia()%>">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol" value="<%=usu.getRol()%>">
        </div>


    </div>

    <button class="btn btn-primary btn-user btn-block" type="submit">
        Guardar
    </button>
    <hr>

</form>

<%@include file="components/body_final.jsp" %>
