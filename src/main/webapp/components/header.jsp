<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Sistema de gestión - Clínica Odontológica Sonrisas">
    <meta name="author" content="Clínica Odontológica Sonrisas">
    <meta name="theme-color" content="#2979ff">

    <title>Sonrisas · Clínica Odontológica</title>

    <!-- Favicon diente SVG inline -->
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>🦷</text></svg>">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- SB Admin 2 -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- DataTables -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <style>
        /* ── Variables de color ── */
        :root {
            --blue-primary:   #2979ff;
            --blue-dark:      #1a3a6b;
            --blue-light:     #e8f0fe;
            --red-error:      #e53935;
            --red-light:      #fdecea;
            --orange-warn:    #ff9800;
            --orange-light:   #fff3e0;
            --gray-text:      #37474f;
            --gray-soft:      #90a4ae;
            --gray-border:    #e8edf2;
            --bg-page:        #f4f6fc;
        }

        /* ── Base ── */
        body {
            font-family: 'Nunito', sans-serif;
            background-color: var(--bg-page);
            color: var(--gray-text);
        }

        /* ── Scrollbar personalizada ── */
        ::-webkit-scrollbar { width: 6px; height: 6px; }
        ::-webkit-scrollbar-track { background: #f0f4f8; }
        ::-webkit-scrollbar-thumb { background: #c5d0e0; border-radius: 10px; }
        ::-webkit-scrollbar-thumb:hover { background: var(--blue-primary); }

        /* ── Selección de texto ── */
        ::selection {
            background: var(--blue-light);
            color: var(--blue-dark);
        }

        /* ── Cards globales ── */
        .card {
            border: none !important;
            border-radius: 14px !important;
            box-shadow: 0 2px 12px rgba(0,0,0,0.06) !important;
        }

        .card-header {
            border-radius: 14px 14px 0 0 !important;
            border-bottom: 1px solid var(--gray-border) !important;
            background: #fff !important;
            font-weight: 800;
            color: var(--blue-dark);
            padding: 16px 20px;
        }

        /* ── Tablas DataTables ── */
        .dataTables_wrapper .dataTables_filter input,
        .dataTables_wrapper .dataTables_length select {
            border: 1.5px solid var(--gray-border);
            border-radius: 8px;
            padding: 5px 10px;
            font-family: 'Nunito', sans-serif;
            font-size: 0.85rem;
            outline: none;
            transition: border-color 0.2s;
        }

        .dataTables_wrapper .dataTables_filter input:focus,
        .dataTables_wrapper .dataTables_length select:focus {
            border-color: var(--blue-primary);
            box-shadow: 0 0 0 3px rgba(41,121,255,0.08);
        }

        table.dataTable thead th {
            font-weight: 800;
            font-size: 0.8rem;
            letter-spacing: 0.5px;
            color: var(--gray-soft);
            border-bottom: 2px solid var(--gray-border) !important;
            text-transform: uppercase;
        }

        table.dataTable tbody tr:hover {
            background: var(--blue-light) !important;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button.current,
        .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
            background: var(--blue-primary) !important;
            color: #fff !important;
            border-color: var(--blue-primary) !important;
            border-radius: 8px;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            background: var(--blue-light) !important;
            color: var(--blue-primary) !important;
            border-color: transparent !important;
            border-radius: 8px;
        }

        /* ── Botones globales ── */
        .btn {
            font-family: 'Nunito', sans-serif;
            font-weight: 700;
            border-radius: 10px !important;
        }

        .btn-primary {
            background: var(--blue-primary) !important;
            border-color: var(--blue-primary) !important;
        }

        .btn-primary:hover {
            background: #1a5fd4 !important;
            border-color: #1a5fd4 !important;
        }

        /* ── Badges ── */
        .badge {
            border-radius: 6px;
            font-weight: 700;
            font-size: 0.72rem;
            padding: 4px 8px;
        }

        /* ── Alerts ── */
        .alert {
            border: none;
            border-radius: 12px;
            font-weight: 600;
            font-size: 0.88rem;
        }
    </style>
</head>