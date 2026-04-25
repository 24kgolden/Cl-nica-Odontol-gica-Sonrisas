<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %> <%-- Esta lindea COPIA TODO el contenido de index.jsp --%>
<%@include file="components/body_primera_parte.jsp" %>

<h1>Alta Usuarios</h1>
<form class="user" action="SvUsuarios" method="POST">
    <div class="form-group col-sm-6 mb-3">
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="nombreusu" name="nombreusu"
                   placeholder="Nombre Usuario">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia"
                   placeholder="Contraseña">
        </div>
        <div class="col-sm-6 mb-3">
            <input type="text" class="form-control form-control-user" id="rol" name="rol"
                   placeholder="Rol">
        </div>


    </div>

    <button class="btn btn-primary btn-user btn-block" type="submit">
        Crear Usuario
    </button>
    <hr>

</form>

<%@include file="components/body_final.jsp" %>
