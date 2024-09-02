<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Sistema_Asistencia.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            color: #343a40;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
        }
        .btn-custom {
            background-color: #007bff;
            border-color: #007bff;
            color: #ffffff;
            margin: 10px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .header {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <span>Bienvenido, <asp:Label ID="lblUsuario" runat="server" Text=""></asp:Label></span>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-custom" OnClick="btnLogout_Click" />
        </div>
        <div class="container">
            <h1>Inicio</h1>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Marcar Asistencia" CssClass="btn btn-custom" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Login" CssClass="btn btn-custom" />
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
