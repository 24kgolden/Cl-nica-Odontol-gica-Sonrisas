<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login Clinica Odontologica</title>
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700,800,900" rel="stylesheet">
        <link href="css/sb-admin-2.min.css" rel="stylesheet">

        <style>
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body {
                font-family: 'Nunito', sans-serif;
                background: #f0f4f8;
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .login-wrapper {
                display: flex;
                width: 900px;
                min-height: 560px;
                border-radius: 20px;
                overflow: hidden;
                box-shadow: 0 20px 60px rgba(0,0,0,0.15);
            }

            /* ── Panel izquierdo formulario ── */
            .login-form-panel {
                width: 50%;
                background: #fff;
                padding: 50px 45px;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            /* ── Logo / Marca ── */
            .brand {
                text-align: center;
                margin-bottom: 24px;
            }

            .brand svg {
                width: 65px;
                height: 65px;
                margin-bottom: 8px;
            }

            .brand-name {
                font-size: 2rem;
                font-weight: 800;
                color: #1a3a6b;
                line-height: 1;
            }

            .brand-sub {
                font-size: 0.68rem;
                font-weight: 700;
                color: #2979ff;
                letter-spacing: 3px;
                margin-top: 3px;
            }

            .welcome-title {
                text-align: center;
                font-size: 1.35rem;
                font-weight: 800;
                color: #1a3a6b;
                margin-bottom: 4px;
            }

            .welcome-sub {
                text-align: center;
                font-size: 0.88rem;
                color: #90a4ae;
                margin-bottom: 28px;
            }

            /* ── Inputs ── */
            .form-label-custom {
                font-size: 0.85rem;
                font-weight: 700;
                color: #1a3a6b;
                margin-bottom: 6px;
                display: block;
            }

            .input-group-custom {
                display: flex;
                align-items: center;
                border: 1.5px solid #e0e7ef;
                border-radius: 10px;
                padding: 10px 14px;
                margin-bottom: 18px;
                background: #fff;
                transition: border-color 0.2s;
            }

            .input-group-custom:focus-within {
                border-color: #2979ff;
                box-shadow: 0 0 0 3px rgba(41,121,255,0.08);
            }

            .input-group-custom i {
                color: #b0bec5;
                font-size: 0.95rem;
                margin-right: 10px;
                min-width: 16px;
            }

            .input-group-custom input {
                border: none;
                outline: none;
                width: 100%;
                font-size: 0.9rem;
                color: #37474f;
                font-family: 'Nunito', sans-serif;
                background: transparent;
            }

            .input-group-custom input::placeholder {
                color: #b0bec5;
            }

            .toggle-password {
                cursor: pointer;
                color: #b0bec5;
                font-size: 0.95rem;
                background: none;
                border: none;
                padding: 0;
            }

            /* ── Botón ── */
            .btn-login {
                width: 100%;
                padding: 13px;
                background: #2979ff;
                color: #fff;
                border: none;
                border-radius: 10px;
                font-size: 1rem;
                font-weight: 700;
                cursor: pointer;
                font-family: 'Nunito', sans-serif;
                transition: background 0.2s;
                margin-top: 6px;
            }

            .btn-login:hover {
                background: #1a5fd4;
            }

            /* ── Panel derecho imagen ── */
            .login-image-panel {
                width: 50%;
                overflow: hidden;
            }

            .login-image-panel img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                display: block;
            }

            /* ── Responsive ── */
            @media (max-width: 768px) {
                .login-wrapper {
                    flex-direction: column;
                    width: 95%;
                }
                .login-form-panel {
                    width: 100%;
                    padding: 40px 28px;
                }
                .login-image-panel {
                    display: none;
                }
            }
        </style>
    </head>

    <body>
        <div class="login-wrapper">

            <!-- ── Panel Formulario ── -->
            <div class="login-form-panel">

                <!-- Logo -->
                <div class="brand">
                    <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M50 10 C35 10, 18 22, 18 38 C18 52, 24 60, 28 72 C30 80, 34 90, 38 90 C42 90, 44 80, 50 80 C56 80, 58 90, 62 90 C66 90, 70 80, 72 72 C76 60, 82 52, 82 38 C82 22, 65 10, 50 10Z" fill="#2979ff" opacity="0.12"/>
                    <path d="M50 10 C35 10, 18 22, 18 38 C18 52, 24 60, 28 72 C30 80, 34 90, 38 90 C42 90, 44 80, 50 80 C56 80, 58 90, 62 90 C66 90, 70 80, 72 72 C76 60, 82 52, 82 38 C82 22, 65 10, 50 10Z" stroke="#2979ff" stroke-width="3.5" fill="none"/>
                    <path d="M50 18 C42 18, 36 26, 36 34" stroke="#2979ff" stroke-width="3" stroke-linecap="round"/>
                    <circle cx="72" cy="16" r="3" fill="#2979ff"/>
                    <circle cx="80" cy="26" r="2" fill="#2979ff"/>
                    <circle cx="78" cy="10" r="1.5" fill="#2979ff"/>
                    </svg>
                    <div class="brand-name">Sonrisas</div>
                    <div class="brand-sub">CLÍNICA ODONTOLÓGICA</div>
                </div>

                <div class="welcome-title">Bienvenido</div>
                <div class="welcome-sub">Inicia sesión para continuar</div>

                <!-- Formulario original intacto: action, method, nombres de campos -->
                <form class="user" action="SvLogin" method="POST">

                    <label class="form-label-custom">Usuario</label>
                    <div class="input-group-custom">
                        <i class="fas fa-user"></i>
                        <input id="usuario" name="usuario" placeholder="Ingresa tu usuario">
                    </div>

                    <label class="form-label-custom">Contraseña</label>
                    <div class="input-group-custom">
                        <i class="fas fa-lock"></i>
                        <input type="password" id="contrasenia" name="contrasenia" placeholder="Ingresa tu contraseña">
                        <button type="button" class="toggle-password" onclick="togglePassword()">
                            <i class="fas fa-eye" id="eyeIcon"></i>
                        </button>
                    </div>

                    <button class="btn-login" type="submit">Ingresar</button>

                </form>
            </div>

            <!-- ── Panel Imagen ── -->
            <div class="login-image-panel">
                <img src="img/ChatGPT Image 24 abr 2026, 11_05_42.png" alt="Clínica Odontológica"/>
            </div>

        </div>

        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/sb-admin-2.min.js"></script>

        <script>
                            function togglePassword() {
                                const input = document.getElementById('contrasenia');
                                const icon = document.getElementById('eyeIcon');
                                if (input.type === 'password') {
                                    input.type = 'text';
                                    icon.classList.replace('fa-eye', 'fa-eye-slash');
                                } else {
                                    input.type = 'password';
                                    icon.classList.replace('fa-eye-slash', 'fa-eye');
                                }
                            }
        </script>
    </body>
</html>
