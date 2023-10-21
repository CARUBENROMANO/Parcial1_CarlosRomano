<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sectores.aspx.cs" Inherits="Parcial1_CarlosRomano.Sectores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Btn_atras" runat="server" Height="35px" OnClick="Btn_atras_Click" Text="atras" Width="76px" />
            <br />
            <br />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="168px"></asp:TextBox>
        <asp:Button ID="Btn_agregar" runat="server" Height="35px" OnClick="Btn_agregar_Click" Text="Agregar" Width="75px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="idSector" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="idSector" HeaderText="idSector" InsertVisible="False" ReadOnly="True" SortExpression="idSector" />
                <asp:BoundField DataField="nombreSector" HeaderText="nombreSector" SortExpression="nombreSector" />
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
        <br />
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombreSector" DataValueField="idSector" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Btn_eliminar" runat="server" Height="30px" OnClick="Btn_eliminar_Click" Text="Eliminar" Width="104px" />
        <asp:Button ID="Btn_modificar" runat="server" Height="30px" OnClick="Btn_modificar_Click" Text="Modificar" Width="91px" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [EmpleadoSectores] WHERE [idSector] = @idSector" InsertCommand="INSERT INTO [EmpleadoSectores] ([nombreSector]) VALUES (@nombreSector)" SelectCommand="SELECT * FROM [EmpleadoSectores]" UpdateCommand="UPDATE [EmpleadoSectores] SET [nombreSector] = @nombreSector WHERE [idSector] = @idSector">
            <DeleteParameters>
                <asp:ControlParameter ControlID="ListBox1" Name="idSector" PropertyName="SelectedValue" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nombreSector" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombreSector" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" DeleteCommand="DELETE FROM [EmpleadoSectores] WHERE [idSector] = @idSector" InsertCommand="INSERT INTO [EmpleadoSectores] ([nombreSector]) VALUES (@nombreSector)" SelectCommand="SELECT * FROM [EmpleadoSectores] WHERE ([idSector] = @idSector)" UpdateCommand="UPDATE [EmpleadoSectores] SET [nombreSector] = @nombreSector WHERE [idSector] = @idSector">
            <DeleteParameters>
                <asp:Parameter Name="idSector" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombreSector" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="ListBox1" Name="idSector" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombreSector" Type="String" />
                <asp:Parameter Name="idSector" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
