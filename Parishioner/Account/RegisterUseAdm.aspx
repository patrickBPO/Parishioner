<%@ Page Title="Register A User" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegisterUseAdm.aspx.vb" Inherits="Parishioner.RegisterUseAdm" %>

<%@ Import Namespace="Parishioner" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div>

    </div>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserAlias" CssClass="col-md-2 control-label">User Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="UserAlias" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserAlias"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10" style="left: 0px; top: 0px">
                <table style="width:100%;">
                    <tr>
                        <td style="width: 507px">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                <asp:Button runat="server" Text="Register User" CssClass="btn btn-default" ID="RegisterUser" Width="118px" BackColor="#110009" ForeColor="White" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <dx:ASPxListBox ID="LBUsers" runat="server" AutoPostBack="True" DataSourceID="DSUsers" Theme="BlackGlass" ValueField="Id" Width="461px">
                                            <Columns>
                                                <dx:ListBoxColumn Caption="User Name" FieldName="UserName">
                                                </dx:ListBoxColumn>
                                                <dx:ListBoxColumn Caption="Email" FieldName="Email">
                                                </dx:ListBoxColumn>
                                            </Columns>
                                        </dx:ASPxListBox>
                                        <asp:SqlDataSource ID="DSUsers" runat="server" ConnectionString="<%$ ConnectionStrings:AspConn %>" ProviderName="<%$ ConnectionStrings:AspConn.ProviderName %>" SelectCommand="SELECT UserName, Email, Id FROM aspnetusers ORDER BY UserName"></asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
