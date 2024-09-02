<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerarP.aspx.cs" Inherits="Sistema_Asistencia.GenerarP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Generar Planilla</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            color: #343a40;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ced4da;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>GENERAR PLANILLA</h2>
            <div class="form-group">
                <label for="TextBox1" class="form-label">Gestión:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2" class="form-label">Mes:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox3" class="form-label">Factor Descuento:</label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generar" CssClass="btn btn-primary btn-block" />
            <asp:Button ID="Button2" runat="server" Text="Eliminar Planilla" 
    OnClientClick="return confirm('¿Está seguro de Eliminar los registros?');"
    OnClick="Button2_Click" CssClass="btn btn-primary btn-block"/>

            <asp:Label ID="Label1" runat="server" CssClass="form-text text-muted"></asp:Label>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
