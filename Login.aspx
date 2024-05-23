<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistroLoginAjax.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery-3.7.1.min.js"></script>
    <script src="Funciones.js"></script>
    <script>
        $(document).ready(function () {
            $("#btnLog").click(function (e) {
                e.preventDefault();
            });
        });
    </script>
    <title></title>
    <link href="Estilos3.css" rel="stylesheet" /> 
</head>
<body>
    <center><h1 style="font-family: Arial;">Verifica Usuario y Password</h1></center>
    <br /><br />
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Registro único:</td>
                    <td><asp:TextBox ID="txtRegistro" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Contraseña:</td>
                    <td><asp:TextBox ID="txtContra" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLog" runat="server" Text="Login" OnClientClick="login()" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
