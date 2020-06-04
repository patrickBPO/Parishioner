<%@ Page Title="DIS" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Parishioner._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2 style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Diocese Information System (DIS)</h2>
            <p>
                Anglican Diocese Of Belize<br />
                Rt. Rev. Bishop Philip Wright<br />  
            </p>
            <p>
                &nbsp;<asp:Image ID="Image1" runat="server" Height="304px" ImageUrl="~/diocese logo.png" Width="271px" />              
                
            </p>
        </div>
        <div class="col-md-4">
            
            <asp:Image ID="Image2" runat="server" />
            
        </div>

    </div>
</asp:Content>
