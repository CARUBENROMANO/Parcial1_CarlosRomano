<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Parcial1_CarlosRomano.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            MENU<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Empleados.aspx">Empleados</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Sectores.aspx">Sectores</asp:HyperLink>
        </div>
    </form>
</body>
</html>
