<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <p><asp:Label ID="Label1" runat="server" Text="Nombre producto "></asp:Label>
            <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox></p>
            <p><asp:Label ID="Label2" runat="server" Text="Cantidad "></asp:Label>
            <asp:TextBox ID="TextBoxCantidad" runat="server"></asp:TextBox></p>
            <p><asp:Label ID="Label3" runat="server" Text="Precio unitario "></asp:Label>
            <asp:TextBox ID="TextBoxPrecio" runat="server"></asp:TextBox></p>
            <p><asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Text="Favoritos" Value="1">Favoritos</asp:ListItem>
                <asp:ListItem Text="Carrito" Value="2">Carrito</asp:ListItem>
            </asp:DropDownList></p>
            <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" />
        </div>
        <div class="col-md-4">
            <table style="width:100%;">
                <tr>
                    <td style="background-color: #dddddd">FAVORITOS</td>
                    <td style="background-color: #dddddd"></td>
                </tr>
                <tr>
                    <td>Nombre Producto</td>
                    <td>Precio</td>
                </tr>               
            </table>
            <asp:Literal ID="TablaFavoritos" runat="server"></asp:Literal>
            <table style="width:100%;">
                <tr>
                    <td style="background-color: #dddddd; height: 20px;">Carrito</td>
                    <td style="background-color: #dddddd; height: 20px;"></td>
                    <td style="background-color: #dddddd; height: 20px;"></td>
                    <td style="background-color: #dddddd; height: 20px;"></td>
                </tr>
                <tr>
                    <td>Nombre Producto</td>
                    <td>Cantidad</td>
                    <td>Precio unitario</td>
                    <td>Subtotal</td>
                </tr>
                
            </table>
            <asp:Literal ID="TablaCarrito" runat="server"></asp:Literal>
        </div>
        <div class="col-md-4">
        </div>
    </div>
    <asp:RangeValidator id="valRange" runat="server"
    ControlToValidate="TextBoxCantidad"
    MaximumValue="100"
    MinimumValue="1"
    Type="Integer"
    ErrorMessage="* La cantidad debe ser entre 1 y 100"
    Display="static">*</asp:RangeValidator>
>

</asp:Content>
