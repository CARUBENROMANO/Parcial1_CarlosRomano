<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Parcial1_CarlosRomano.Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Btn_atras" runat="server" Height="29px" OnClick="Btn_atras_Click" Text="atras" Width="78px" />
            <br />
            <br />
            APELLIDO&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="166px"></asp:TextBox>
            <br />
            <br />
            NOMBRE&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="169px"></asp:TextBox>
            <br />
            <br />
            SECTOR&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombreSector" DataValueField="idSector" Height="34px" Width="167px">
            </asp:DropDownList>
            <br />
        </div>
        <p>
            <asp:Button ID="Btn_agregar" runat="server" Height="30px" OnClick="Btn_agregar_Click" Text="Cargar" Width="86px" />
        </p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="idSector" HeaderText="idSector" SortExpression="idSector" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" SelectCommand="SELECT * FROM [EmpleadoSectores]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Empleados] WHERE [id] = @id" InsertCommand="INSERT INTO [Empleados] ([apellido], [nombre], [idSector]) VALUES (@apellido, @nombre, @idSector)" SelectCommand="SELECT * FROM [Empleados]" UpdateCommand="UPDATE [Empleados] SET [apellido] = @apellido, [nombre] = @nombre, [idSector] = @idSector WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="apellido" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="idSector" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        CONSULTA SECTOR<br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="nombreSector" DataValueField="idSector" Height="37px" Width="160px">
        </asp:DropDownList>
        <asp:Button ID="Btn_filtrar" runat="server" Height="30px" OnClick="Btn_filtrar_Click" Text="Filtrar" Width="88px" />
        <asp:Button ID="Btn_desfiltrar" runat="server" Height="30px" OnClick="Btn_desfiltrar_Click" Text="Desfiltrar" Width="85px" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource3" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="idSector" HeaderText="id Sector" SortExpression="idSector" />
                <asp:BoundField DataField="nombreSector" HeaderText="Nombre Sector" SortExpression="nombreSector" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
&nbsp;<br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [Empleados] WHERE [id] = @id" InsertCommand="INSERT INTO [Empleados] ([apellido], [nombre], [idSector]) VALUES (@apellido, @nombre, @idSector)" SelectCommand="SELECT Empleados.id, Empleados.apellido, Empleados.nombre, Empleados.idSector, EmpleadoSectores.nombreSector FROM Empleados INNER JOIN EmpleadoSectores ON Empleados.idSector = EmpleadoSectores.idSector" UpdateCommand="UPDATE [Empleados] SET [apellido] = @apellido, [nombre] = @nombre, [idSector] = @idSector WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="apellido" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" SelectCommand="SELECT * FROM [EmpleadoSectores]"></asp:SqlDataSource>
    </form>
</body>
</html>
