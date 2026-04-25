<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    /* ── Footer ── */
    .sticky-footer {
        border-top: 1px solid #e8edf2 !important;
        padding: 16px 0;
    }

    .footer-content {
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap;
        gap: 8px;
    }

    .footer-brand {
        display: flex;
        align-items: center;
        gap: 8px;
        font-weight: 800;
        color: #1a3a6b;
        font-size: 0.85rem;
    }

    .footer-brand i {
        color: #2979ff;
    }

    .footer-copy {
        font-size: 0.78rem;
        color: #b0bec5;
    }

    /* ── Scroll to top ── */
    .scroll-to-top {
        background: #2979ff !important;
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 10px !important;
        box-shadow: 0 4px 14px rgba(41,121,255,0.35);
        transition: background 0.2s, transform 0.2s;
    }

    .scroll-to-top:hover {
        background: #1a5fd4 !important;
        transform: translateY(-2px);
    }

    .scroll-to-top i {
        color: #fff;
        font-size: 1rem;
    }

    /* ── Modal logout ── */
    .modal-content {
        border: none !important;
        border-radius: 18px !important;
        box-shadow: 0 20px 60px rgba(0,0,0,0.15) !important;
        overflow: hidden;
    }

    .modal-header {
        background: linear-gradient(135deg, #1a3a6b, #2979ff);
        border: none !important;
        padding: 20px 24px;
    }

    .modal-title {
        color: #fff !important;
        font-weight: 800;
        font-size: 1rem;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .modal-title i {
        font-size: 1.1rem;
        opacity: 0.85;
    }

    .modal-header .close {
        color: #fff !important;
        opacity: 0.7;
        text-shadow: none;
        font-size: 1.3rem;
    }

    .modal-header .close:hover {
        opacity: 1;
    }

    .modal-body {
        padding: 28px 24px 16px;
        text-align: center;
    }

    .modal-icon-wrap {
        width: 68px;
        height: 68px;
        background: #fdecea;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 16px;
    }

    .modal-icon-wrap i {
        font-size: 1.8rem;
        color: #e53935;
    }

    .modal-body p {
        color: #546e7a;
        font-size: 0.9rem;
        margin: 0;
        line-height: 1.6;
    }

    .modal-footer {
        border: none !important;
        padding: 12px 24px 24px;
        display: flex;
        gap: 10px;
        justify-content: center;
    }

    .btn-modal-cancel {
        padding: 10px 28px;
        border-radius: 10px;
        font-weight: 700;
        font-size: 0.88rem;
        background: #f0f4f8;
        color: #546e7a;
        border: none;
        transition: background 0.2s;
    }

    .btn-modal-cancel:hover {
        background: #e0e7ef;
        color: #37474f;
    }

    .btn-modal-logout {
        padding: 10px 28px;
        border-radius: 10px;
        font-weight: 700;
        font-size: 0.88rem;
        background: #e53935;
        color: #fff;
        border: none;
        text-decoration: none;
        transition: background 0.2s;
        display: inline-flex;
        align-items: center;
        gap: 7px;
    }

    .btn-modal-logout:hover {
        background: #c62828;
        color: #fff;
        text-decoration: none;
    }
</style>

<!-- ── Footer ── -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="footer-content">
            <div class="footer-brand">
                <i class="fas fa-tooth"></i>
                Sonrisas · Clínica Odontológica
            </div>
            <div class="footer-copy">
                &copy; <%= new java.util.Calendar.Builder().build().get(java.util.Calendar.YEAR) %> Todos los derechos reservados.
            </div>
        </div>
    </div>
</footer>
<!-- End of Footer -->

            </div>
        <!-- End of Content Wrapper -->
        </div>
    <!-- End of Page Wrapper -->
    </div>

<!-- Scroll to Top -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- ── Modal Logout ── -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">
                    <i class="fas fa-sign-out-alt"></i>
                    Cerrar sesión
                </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                <div class="modal-icon-wrap">
                    <i class="fas fa-sign-out-alt"></i>
                </div>
                <p>¿Estás seguro que deseas cerrar tu sesión actual?<br>Tendrás que volver a iniciar sesión para acceder.</p>
            </div>

            <div class="modal-footer">
                <button class="btn-modal-cancel" type="button" data-dismiss="modal">
                    <i class="fas fa-times mr-1"></i> Cancelar
                </button>
                <a class="btn-modal-logout" href="login.jsp">
                    <i class="fas fa-sign-out-alt"></i> Cerrar sesión
                </a>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="js/sb-admin-2.min.js"></script>
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
<script src="js/demo/datatables-demo.js"></script>

</body>
</html>
