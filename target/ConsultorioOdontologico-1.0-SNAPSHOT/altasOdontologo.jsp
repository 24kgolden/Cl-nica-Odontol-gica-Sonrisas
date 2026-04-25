<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp" %> <%-- Esta lindea COPIA TODO el contenido de index.jsp --%>
<%@include file="components/body_primera_parte.jsp" %>

<h1>Alta Odontólogo</h1>
<form class="user">
                                <div class="form-group col-sm-6 mb-3">
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="dni" name="dni"
                                            placeholder="DNI ">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="nombre" name="nombre"
                                            placeholder="Nombre">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="apellido" name="apellido"
                                            placeholder="Apellido">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="telefono" name="telefono"
                                            placeholder="Teléfono">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="direccion" name="direccion"
                                            placeholder="Dirección">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="fechanac" name="fechanac"
                                            placeholder="Fecha Nac">
                                    </div>
                                    <div class="col-sm-6 mb-3">
                                        <input type="text" class="form-control form-control-user" id="especialidad" name="especialidad"
                                            placeholder="Especialidad">
                                    </div>
                                    
                                    
                                    <!-- Acá va a ir todo lo que respecta a horarios y usuarios -->
                                </div>
                                
                                <a href="#" class="btn btn-primary btn-user btn-block">
                                    Crear Odontologo
                                </a>
                                <hr>
                                
                            </form>

<%@include file="components/body_final.jsp" %>