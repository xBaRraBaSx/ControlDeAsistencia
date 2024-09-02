<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Sistema_Asistencia.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menú</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #007bff;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #007bff;
            width: 200px; /* Ajusta el ancho del menú */
            position: fixed; /* Fija el menú en el lado izquierdo */
            height: 100%; /* Extiende el menú a lo largo de la altura de la ventana */
            top: 0;
            left: 0;
        }
        .navbar-nav {
            display: flex;
            flex-direction: column;
            width: 100%;
        }
        .nav-item {
            position: relative;
        }
        .nav-link {
            color: #ffffff;
            padding: 14px 20px;
            display: block;
            text-align: left;
            text-decoration: none;
        }
        .nav-link:hover {
            background-color: #0056b3;
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            top: 0;
            left: 100%; /* Posiciona el menú desplegable a la derecha del elemento principal */
            background-color: #007bff;
            border: none;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 200px; /* Ancho del menú desplegable */
            z-index: 1000;
        }
        .dropdown-menu a {
            color: #ffffff;
            padding: 10px 20px;
            display: block;
            text-decoration: none;
        }
        .dropdown-menu a:hover {
            background-color: #0056b3;
        }
        .nav-item:hover .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" target="frmBody" href="Inicio.aspx">INICIO</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="#">LOGIN</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" target="frmBody" href="Recuperar.aspx">RECUPERAR CONTRASEÑA</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="CambiarPwd.aspx">CAMBIAR CONTRASEÑA</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="UsuarioC.aspx">CREAR USUARIO</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">DOCENTE</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" target="frmBody" href="DocenteC.aspx">REGISTRAR DOCENTE</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="DocenteV.aspx">VER DOCENTES</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">GRUPO</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" target="frmBody" href="GrupoC.aspx">REGISTRAR GRUPO</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="GrupoV.aspx">VER GRUPOS</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">RRHH</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" target="frmBody" href="GenerarP.aspx">GENERAR PLANILLAS</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="ConsultasP.aspx">CONSULTAR PLANILLAS</a></li>
                        <li><a class="dropdown-item" target="frmBody" href="AsistenciaV.aspx">JUSTIFICACIONES</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </form>
</body>
</html>
