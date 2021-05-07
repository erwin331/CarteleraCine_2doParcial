<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarteleraCine_2doParcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    ><asp:Panel ID="Panel2" runat="server" BackColor="#3399FF" Height="137px">
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="NOMBRES DE ACTORES" Font-Names="Bahnschrift" Font-Size="XX-Large"></asp:Label>
            </asp:Panel>
     
        <br />
        Ingrese el nombre de la pelicula:
        <asp:TextBox ID="TextBox1" runat="server" Width="307px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Dotted" ForeColor="White" Text="Debe Ingresar un nombre válido"></asp:Label>
        <br />
        <br />
        Ingrese el nombre del genero(de la pelicula):
        <asp:TextBox ID="TextBox2" runat="server" Width="276px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Dotted" ForeColor="White" Text="Debe Ingresar un nombre válido"></asp:Label>
        <br />
        <br />
    Ingrese el nombre del estudio(de la pelicula):
        <asp:TextBox ID="TextBox4" runat="server" Width="276px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" BackColor="Red" BorderColor="Black" BorderStyle="Dotted" ForeColor="White" Text="Debe Ingresar un nombre válido"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar a la lista" Width="535px" />
        <br />
        <br />
        Peliculas en Cartelera:<br />
        <asp:TextBox ID="TextBox3" runat="server" Height="121px" ReadOnly="True" TextMode="MultiLine" Width="523px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar peliculas" Width="528px" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" BackColor="Lime" PostBackUrl="~/MostrarDatos.aspx" Text="Mostrar Cartelera" Width="524px" />
   


</asp:Content>
