<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>
           

            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_Product" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_Product:
            <asp:Label ID="id_ProductLabel1" runat="server" Text='<%# Eval("id_Product") %>' />
            <br />
            id_Category:
            <asp:TextBox ID="id_CategoryTextBox" runat="server" Text='<%# Bind("id_Category") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            description_Product:
            <asp:TextBox ID="description_ProductTextBox" runat="server" Text='<%# Bind("description_Product") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            name_Product:
            <asp:TextBox ID="name_ProductTextBox" runat="server" Text='<%# Bind("name_Product") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_Category:
            <asp:TextBox ID="id_CategoryTextBox" runat="server" Text='<%# Bind("id_Category") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            description_Product:
            <asp:TextBox ID="description_ProductTextBox" runat="server" Text='<%# Bind("description_Product") %>' />
            <br />
            img:
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            name_Product:
            <asp:TextBox ID="name_ProductTextBox" runat="server" Text='<%# Bind("name_Product") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_Product:
            <asp:Label ID="id_ProductLabel" runat="server" Text='<%# Eval("id_Product") %>' />
            <br />
            id_Category:
            <asp:Label ID="id_CategoryLabel" runat="server" Text='<%# Bind("id_Category") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            description_Product:
            <asp:Label ID="description_ProductLabel" runat="server" Text='<%# Bind("description_Product") %>' />
            <br />
            img:
            <asp:Label ID="imgLabel" runat="server" Text='<%# Bind("img") %>' />
            <br />
            name_Product:
            <asp:Label ID="name_ProductLabel" runat="server" Text='<%# Bind("name_Product") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Fpoly\Downloads\Anhdtph05055_INF205_Assignment1\INF205v8.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [Product] WHERE [id_Product] = @id_Product" InsertCommand="INSERT INTO [Product] ([id_Category], [price], [description_Product], [img], [name_Product]) VALUES (@id_Category, @price, @description_Product, @img, @name_Product)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_Product], [id_Category], [price], [description_Product], [img], [name_Product] FROM [Product]" UpdateCommand="UPDATE [Product] SET [id_Category] = @id_Category, [price] = @price, [description_Product] = @description_Product, [img] = @img, [name_Product] = @name_Product WHERE [id_Product] = @id_Product">
        <DeleteParameters>
            <asp:Parameter Name="id_Product" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_Category" Type="Int32" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="description_Product" Type="String" />
            <asp:Parameter Name="img" Type="Object" />
            <asp:Parameter Name="name_Product" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_Category" Type="Int32" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="description_Product" Type="String" />
            <asp:Parameter Name="img" Type="Object" />
            <asp:Parameter Name="name_Product" Type="String" />
            <asp:Parameter Name="id_Product" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <asp:FormView ID="FormView2" runat="server">
            </asp:FormView>
</asp:Content>
