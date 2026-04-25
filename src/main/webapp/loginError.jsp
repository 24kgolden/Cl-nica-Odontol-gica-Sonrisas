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
            * { box-sizing: border-box; margin: 0; padding: 0; }

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

            /* ── Panel izquierdo ── */
            .login-form-panel {
                width: 50%;
                background: #fff;
                padding: 50px 45px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
            }

            /* ── Logo ── */
            .brand { margin-bottom: 24px; }

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

            /* ── Ícono de error ── */
            .error-icon {
                width: 72px;
                height: 72px;
                background: #fdecea;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto 20px;
            }

            .error-icon i {
                font-size: 2rem;
                color: #e53935;
            }

            .error-title {
                font-size: 1.3rem;
                font-weight: 800;
                color: #1a3a6b;
                margin-bottom: 10px;
            }

            .error-msg {
                font-size: 0.92rem;
                color: #90a4ae;
                margin-bottom: 32px;
                line-height: 1.6;
            }

            /* ── Pill de error ── */
            .error-badge {
                display: inline-flex;
                align-items: center;
                gap: 7px;
                background: #fdecea;
                color: #e53935;
                font-size: 0.82rem;
                font-weight: 700;
                padding: 7px 16px;
                border-radius: 20px;
                margin-bottom: 28px;
            }

            /* ── Botón ── */
            .btn-login {
                display: inline-flex;
                align-items: center;
                gap: 8px;
                padding: 13px 36px;
                background: #2979ff;
                color: #fff;
                border: none;
                border-radius: 10px;
                font-size: 1rem;
                font-weight: 700;
                cursor: pointer;
                font-family: 'Nunito', sans-serif;
                text-decoration: none;
                transition: background 0.2s;
            }

            .btn-login:hover {
                background: #1a5fd4;
                color: #fff;
                text-decoration: none;
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
                .login-wrapper { flex-direction: column; width: 95%; }
                .login-form-panel { width: 100%; padding: 40px 28px; }
                .login-image-panel { display: none; }
            }
        </style>
    </head>

    <body>
        <div class="login-wrapper">

            <!-- ── Panel Error ── -->
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

                <!-- Ícono error -->
                <div class="error-icon">
                    <i class="fas fa-times-circle"></i>
                </div>

                <div class="error-title">Credenciales incorrectas</div>

                <!-- Badge de error -->
                <div class="error-badge">
                    <i class="fas fa-exclamation-circle"></i>
                    Nombre de usuario o contraseña incorrecto
                </div>

                <div class="error-msg">
                    Por favor verifica tus datos<br>e intenta nuevamente.
                </div>

                <a href="login.jsp" class="btn-login">
                    <i class="fas fa-arrow-left"></i>
                    Volver al Login
                </a>

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
    </body>
</html>