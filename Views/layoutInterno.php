<?php

    function ShowHeader()
    {
        echo 
            '<header class="topbar">
                <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                    <div class="navbar-header">
                        <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)">
                            <i class="ti-menu ti-close"></i>
                        </a>
                        <div class="navbar-brand">
                            <a href="../Home/principal.php" class="logo">
                                <b class="logo-icon">
                                    <img src="../Imagenes/logo-icon.png" alt="homepage" class="dark-logo" />
                                    <img src="../Imagenes/logo-light-icon.png" alt="homepage" class="light-logo" />
                                </b>
                                <span class="logo-text">
                                    <img src="../Imagenes/logo-text.png" alt="homepage" class="dark-logo" />
                                    <img src="../Imagenes/logo-light-text.png" class="light-logo" alt="homepage" />
                                </span>
                            </a>
                            <a class="sidebartoggler d-none d-md-block" href="javascript:void(0)" data-sidebartype="mini-sidebar">
                                <i class="mdi mdi-toggle-switch mdi-toggle-switch-off font-20"></i>
                            </a>
                        </div>
                        <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="ti-more"></i>
                        </a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav float-left mr-auto">
                            
                        </ul>
                        <ul class="navbar-nav float-right">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="m-l-5 font-medium d-none d-sm-inline-block">Usuario... <i class="mdi mdi-chevron-down"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right user-dd animated flipInY">
                                    <span class="with-arrow">
                                        <span class="bg-primary"></span>
                                    </span>
                                    <div class="profile-dis scrollable">
                                        <a class="dropdown-item" href="../Usuario/consultarPerfil.php">
                                            <i class="fa fa-user-circle mr-2"></i> My Profile</a>
                                            <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="javascript:void(0)">
                                            <i class="ti-wallet mr-2"></i> My Balance</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>';
    }

    function ShowFooter()
    {
        echo 
            '<footer class="footer text-center">
                Derechos Reservados © Nice admin
            </footer>';
    }

    function ShowMenu()
    {
        echo 
            '<aside class="left-sidebar">
                <div class="scroll-sidebar">
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav">
                            <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="index.html" aria-expanded="false"><i class="ti-loop"></i><span class="hide-menu">Back To Home</span></a></li>
                        </ul>
                    </nav>
                </div>
            </aside>';
    }

    function AddCss()
    {
        echo 
            '<head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="description" content="">
                <meta name="author" content="">
                <title>Proyecto MN</title>
                <link href="../Estilos/style.css" rel="stylesheet">
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
            </head>';
    }

    function AddJs()
    {
        echo 
            '<script src="../Funciones/jquery.min.js"></script>
            <script src="../Funciones/popper.min.js"></script>
            <script src="../Funciones/bootstrap.min.js"></script>
            <script src="../Funciones/app.min.js"></script>
            <script src="../Funciones/app.init.js"></script>
            <script src="../Funciones/app-style-switcher.js"></script>
            <script src="../Funciones/perfect-scrollbar.jquery.min.js"></script>
            <script src="../Funciones/sparkline.js"></script>
            <script src="../Funciones/waves.js"></script>
            <script src="../Funciones/sidebarmenu.js"></script>
            <script src="../Funciones/custom.min.js"></script>';
    }

?>