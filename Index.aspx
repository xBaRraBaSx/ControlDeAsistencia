<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Sistema_Asistencia.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<frameset rows=20%,* frame border=0 noresize>
	<frame src=Banner.aspx>
		<frameset cols=15%,*>
			<frame src="Menu.aspx">
			<frame src="Inicio.aspx" id="frmBody" name="frmBody">
		</frameset>
</frameset>
</html>
