<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body id="page-top">

    <!-- Validacion sesion -->
    <%HttpSession misession = request.getSession();
        String usuario = (String) request.getSession().getAttribute("usuario");
        if (usuario == null) {
            response.sendRedirect("sinLogin.jsp");
        }
    %>

    <style>
        /* ── Sidebar personalizado ── */
        .sidebar-brand {
            padding: 1.5rem 1rem;
        }

        .sidebar-brand-icon {
            background: rgba(255,255,255,0.15);
            border-radius: 12px;
            width: 42px;
            height: 42px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.3rem;
        }

        .sidebar-brand-text {
            font-size: 0.95rem;
            font-weight: 800;
            letter-spacing: 0.5px;
            line-height: 1.2;
        }

        .sidebar-brand-sub {
            font-size: 0.65rem;
            font-weight: 400;
            opacity: 0.6;
            letter-spacing: 2px;
            text-transform: uppercase;
            display: block;
        }

        /* ── Nav items ── */
        #accordionSidebar .nav-item .nav-link {
            border-radius: 10px;
            margin: 2px 10px;
            padding: 0.75rem 1rem;
            font-weight: 600;
            font-size: 0.85rem;
            transition: background 0.2s;
        }

        #accordionSidebar .nav-item .nav-link:hover {
            background: rgba(255,255,255,0.12);
        }

        #accordionSidebar .nav-item.active .nav-link {
            background: rgba(255,255,255,0.18);
        }

        #accordionSidebar .nav-link i {
            font-size: 0.95rem;
            margin-right: 4px;
        }

        .sidebar-heading {
            font-size: 0.65rem;
            letter-spacing: 2.5px;
            font-weight: 800;
            padding: 0.5rem 1.5rem;
            opacity: 0.5;
        }

        /* ── Collapse inner ── */
        .collapse-inner {
            border-radius: 12px !important;
            box-shadow: 0 4px 16px rgba(0,0,0,0.08);
            padding: 6px 8px !important;
        }

        .collapse-header {
            font-size: 0.68rem;
            letter-spacing: 1.5px;
            font-weight: 800;
            color: #b0bec5;
            padding: 4px 10px;
        }

        .collapse-item {
            border-radius: 8px !important;
            font-size: 0.83rem !important;
            font-weight: 600 !important;
            color: #37474f !important;
            padding: 7px 12px !important;
            transition: background 0.15s !important;
        }

        .collapse-item:hover {
            background: #e8f0fe !important;
            color: #2979ff !important;
        }

        .collapse-item.active {
            background: #e8f0fe !important;
            color: #2979ff !important;
        }

        /* ── Topbar ── */
        .topbar {
            border-bottom: 1px solid #e8edf2 !important;
            padding: 0 1.5rem;
        }

        .topbar .nav-link {
            padding: 0.5rem 0.75rem;
        }

        .img-profile {
            width: 36px;
            height: 36px;
            border: 2px solid #e8edf2;
        }

        .user-badge {
            background: #e8f0fe;
            color: #2979ff;
            font-weight: 700;
            font-size: 0.78rem;
            padding: 4px 12px;
            border-radius: 20px;
        }

        /* ── Dropdown ── */
        .dropdown-menu {
            border: none !important;
            border-radius: 14px !important;
            box-shadow: 0 8px 30px rgba(0,0,0,0.12) !important;
            padding: 8px !important;
            min-width: 200px;
        }

        .dropdown-item {
            border-radius: 8px;
            font-size: 0.85rem;
            font-weight: 600;
            padding: 8px 14px;
            color: #37474f;
        }

        .dropdown-item:hover {
            background: #e8f0fe;
            color: #2979ff;
        }

        .dropdown-item i {
            width: 18px;
        }

        .dropdown-divider {
            margin: 6px 8px;
            border-color: #f0f4f8;
        }

        /* ── Page heading ── */
        .page-heading-bar {
            background: #fff;
            border-radius: 14px;
            padding: 16px 24px;
            margin-bottom: 24px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .page-heading-bar h1 {
            font-size: 1.25rem;
            font-weight: 800;
            color: #1a3a6b;
            margin: 0;
        }

        .page-heading-bar .breadcrumb-text {
            font-size: 0.8rem;
            color: #90a4ae;
        }

        .page-heading-bar .breadcrumb-text i {
            color: #2979ff;
        }
    </style>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- ── Sidebar ── -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-tooth"></i>
                </div>
                <div class="sidebar-brand-text mx-3">
                    Sonrisas
                    <span class="sidebar-brand-sub">Clínica Odontológica</span>
                </div>
            </a>

            <hr class="sidebar-divider my-0">

            <!-- Menú -->
            <li class="nav-item active">
                <a class="nav-link" href="#">
                    <i class="fas fa-home"></i>
                    <span>Inicio</span>
                </a>
            </li>

            <hr class="sidebar-divider">

            <div class="sidebar-heading">Gestión</div>

            <!-- Odontólogo -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                   aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-hospital-user"></i>
                    <span>Odontólogo</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="">
                            <i class="fas fa-list fa-xs mr-1"></i> Ver Odontólogos
                        </a>
                        <a class="collapse-item" href="altasOdontologo.jsp">
                            <i class="fas fa-plus fa-xs mr-1"></i> Alta Odontólogos
                        </a>
                    </div>
                </div>
            </li>

            <!-- Pacientes -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                   aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-user-injured"></i>
                    <span>Pacientes</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="">
                            <i class="fas fa-list fa-xs mr-1"></i> Ver Pacientes
                        </a>
                        <a class="collapse-item" href="">
                            <i class="fas fa-plus fa-xs mr-1"></i> Alta Pacientes
                        </a>
                    </div>
                </div>
            </li>

            <!-- Usuarios -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsers"
                   aria-expanded="true" aria-controls="collapseUsers">
                    <i class="fas fa-users-cog"></i>
                    <span>Usuarios</span>
                </a>
                <div id="collapseUsers" class="collapse" aria-labelledby="headingUsers"
                     data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Acciones:</h6>
                        <a class="collapse-item" href="SvUsuarios">
                            <i class="fas fa-list fa-xs mr-1"></i> Ver Usuarios
                        </a>
                        <a class="collapse-item" href="altaUsuarios.jsp">
                            <i class="fas fa-plus fa-xs mr-1"></i> Alta Usuarios
                        </a>
                    </div>
                </div>
            </li>

            <hr class="sidebar-divider">

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">

                <!-- ── Topbar ── -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle d-flex align-items-center gap-2"
                               href="#" id="userDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="user-badge d-none d-lg-inline">
                                    <i class="fas fa-user-circle mr-1"></i>
                                    <%= request.getSession().getAttribute("usuario") %>
                                </span>
                                <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                            </a>

                            <!-- Dropdown -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                 aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user text-primary mr-2"></i> Perfil
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs text-secondary mr-2"></i> Configuración
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list text-info mr-2"></i> Actividad
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt mr-2"></i> Cerrar sesión
                                </a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- End Topbar -->

                <!-- ── Page Heading ── -->
                <div class="container-fluid">
                    <div class="page-heading-bar">
                        <div>
                            <h1><i class="fas fa-tooth mr-2" style="color:#2979ff;"></i>Clínica Odontológica</h1>
                            <span class="breadcrumb-text">
                                <i class="fas fa-home"></i> Inicio &rsaquo; Panel principal
                            </span>
                        </div>
                    </div>
