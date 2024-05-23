<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="RegistroLoginAjax.Inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Estilos3.css" rel="stylesheet" />
</head>
<body>
    <br /><br />
    <form id="form1" runat="server">
        <div>
            <center>
                <h1 style="font-family: Arial;">Bienvenido, has programado con Ajax, jQuery y JavaScript</h1>
                <br /><br />
                <table>
                    <tr>
                        <td><asp:LinkButton ID="lkbIndex" runat="server" PostBackUrl="~/Index.aspx">Registrar otro Usuario</asp:LinkButton></td>
                        <td></td><td></td>
                        <td><asp:LinkButton ID="lkbLogin" runat="server" PostBackUrl="~/Login.aspx">Verificar un Login</asp:LinkButton></td>
                    </tr>
                </table>
                <br />
            </center>
        </div>
    </form>
</body>
</html>
