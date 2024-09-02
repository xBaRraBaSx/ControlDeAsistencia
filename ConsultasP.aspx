<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultasP.aspx.cs" Inherits="Sistema_Asistencia.ConsultasP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar Planilla</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
            color: #343a40;
        }
        .form-container {
            max-width: 800px;
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
        .form-container h4 {
            margin-top: 20px;
            color: #28a745;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #004085;
        }
        .table-header {
            background-color: #99FF66 !important;
        }
        #chart {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>CONSULTAR PLANILLA</h2>
            <div class="form-group">
                <label for="TextBox1">Gestión:</label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">Mes:</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="text-center mb-4">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ver" CssClass="btn btn-primary" />
            </div>
            <asp:Label ID="Label1" runat="server" CssClass="d-block text-center mt-3"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-borderless table-hover" 
                          DataKeyNames="ID" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="Id" />
                    <asp:BoundField DataField="NombreCompleto" HeaderText="Nombre" />
                    <asp:BoundField DataField="Gestion" HeaderText="Gestion" />
                    <asp:BoundField DataField="Mes" HeaderText="Mes" />
                    <asp:BoundField DataField="HaberBasico" HeaderText="HaberBasico" />
                    <asp:BoundField DataField="Descuento" HeaderText="Descuento" />
                    <asp:BoundField DataField="LiquidoPagable" HeaderText="LiquidoPagable" />
                </Columns>
                <HeaderStyle CssClass="table-header" />
            </asp:GridView>
            
            <h4>Ver Gráfica de Retrasos</h4>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="TextBox3">Desde:</label>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group col-md-6">
                    <label for="TextBox4">Hasta:</label>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="text-center mb-4">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Detalle" CssClass="btn btn-primary" />
            </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-borderless table-hover" 
                          DataKeyNames="IdDocente" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="IdDocente" HeaderText="Id" />
                    <asp:BoundField DataField="NombreDocente" HeaderText="Nombre" />
                    <asp:BoundField DataField="MinutosRetrasoAcumulados" HeaderText="TotalMinutos" />
                </Columns>
                <HeaderStyle CssClass="table-header" />
            </asp:GridView>
            <br/>
            <canvas id="chart" width="800" height="400"></canvas>
        </div>
    </form>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function populateChart() {
            // Obtén el GridView2 desde el HTML
            var gridView2 = document.querySelector("#<%= GridView2.ClientID %>");

            // Crea arrays para los datos
            var labels = [];
            var data = [];

            // Recorre las filas del GridView2 para llenar los arrays
            gridView2.querySelectorAll("tbody tr").forEach(function (row) {
                var cells = row.querySelectorAll("td");
                labels.push(cells[1].textContent); // NombreDocente
                data.push(parseFloat(cells[2].textContent)); // MinutosRetrasoAcumulados
            });

            // Configura el gráfico
            var ctx = document.getElementById('chart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Minutos de Retraso',
                        data: data,
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Muestra el gráfico
            document.getElementById('chart').style.display = 'block';
        }
    </script>

</body>
</html>
