<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioC.aspx.cs" Inherits="Sistema_Asistencia.UsuarioC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Usuario</title>
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
            max-width: 500px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #007bff;
            border-color: #007bff;
            color: #ffffff;
            margin-top: 10px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <h2 class="text-center">Registrar Usuario</h2>
            <div class="form-group">
                <label for="TextBox1">Nombre:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Ingrese su nombre"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">Usuario:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Ingrese su usuario"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox3">Contraseña:</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password" placeholder="Ingrese su contraseña"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox4">Email:</label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Ingrese su email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ListBox1">Rol:</label>
                <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control">
                    <asp:ListItem Value="A">Admin</asp:ListItem>
                    <asp:ListItem Value="R">RRHH</asp:ListItem>
                    <asp:ListItem Value="D">Docente</asp:ListItem>
                </asp:ListBox>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guardar" CssClass="btn btn-custom btn-block" />
            <asp:Label ID="Label1" runat="server" CssClass="d-block text-center mt-3"></asp:Label>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

