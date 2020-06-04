<%@ Page Language="vb" Title="Company" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Company.aspx.vb" Inherits="Parishioner.Company" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;<%: Title %> Screen</h2>
    
    <div>

        <dx:ASPxGridView ID="GVCompany" runat="server" AutoGenerateColumns="False" DataSourceID="DSCompany" Theme="Office2010Black" KeyFieldName="Company_Num">
            <SettingsDetail ShowDetailRow="True" />
            <Templates>
                <DetailRow>
                    <dx:ASPxGridView ID="GVCompDet" runat="server" AutoGenerateColumns="False" DataSourceID="DSCompDet" EnableTheming="True" KeyFieldName="Phone_Num" Theme="PlasticBlue" OnBeforePerformDataSelect="GVCompDet_BeforePerformDataSelect">
                        <SettingsPager Visible="False">
                        </SettingsPager>
                        <SettingsEditing Mode="Batch">
                            <BatchEditSettings EditMode="Row" />
                        </SettingsEditing>
                        <Columns>
                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn FieldName="Phone_Num" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Company_Num" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Phone" FieldName="Company_Phone" ShowInCustomizationForm="True" VisibleIndex="3">
                                <CellStyle Wrap="False">
                                </CellStyle>
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                </DetailRow>
            </Templates>
            <SettingsEditing Mode="Batch">
            </SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="Company_Num" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Company Name" FieldName="Company_Name" MinWidth="200" ShowInCustomizationForm="True" VisibleIndex="2">
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Street" FieldName="Company_Street" ShowInCustomizationForm="True" VisibleIndex="3">
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Representative" FieldName="company_rep" ShowInCustomizationForm="True" VisibleIndex="7">
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="City" FieldName="Company_City" ShowInCustomizationForm="True" VisibleIndex="4">
                    <PropertiesComboBox DataSourceID="DSCity" TextField="description" ValueField="city_id">
                    </PropertiesComboBox>
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="District" FieldName="Company_District" ShowInCustomizationForm="True" VisibleIndex="5">
                    <PropertiesComboBox DataSourceID="DSDistrict" TextField="description" ValueField="district_id">
                    </PropertiesComboBox>
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="Company_Country" ShowInCustomizationForm="True" VisibleIndex="6">
                    <PropertiesComboBox DataSourceID="DSCountry" TextField="description" ValueField="country_id">
                    </PropertiesComboBox>
                    <CellStyle Wrap="False">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="DSCompany" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM company WHERE (Company_Num = ?)" InsertCommand="INSERT INTO company(Company_Name, Company_Street, Company_City, Company_District, Company_Country, company_rep) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT Company_Num, Company_Name, Company_Street, Company_City, Company_District, Company_Country, company_rep FROM company" UpdateCommand="UPDATE company SET Company_Name = ?, Company_Street = ?, Company_City = ?, Company_District = ?, Company_Country = ?, company_rep = ? WHERE (Company_Num = ?)">
            <DeleteParameters>
                <asp:Parameter Name="Company_Num" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Company_Name" />
                <asp:Parameter Name="Company_Street" />
                <asp:Parameter Name="Company_City" />
                <asp:Parameter Name="Company_District" />
                <asp:Parameter Name="Company_Country" />
                <asp:Parameter Name="company_rep" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company_Name" />
                <asp:Parameter Name="Company_Street" />
                <asp:Parameter Name="Company_City" />
                <asp:Parameter Name="Company_District" />
                <asp:Parameter Name="Company_Country" />
                <asp:Parameter Name="company_rep" />
                <asp:Parameter Name="Company_Num" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="DSCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description FROM parish.city ORDER BY description"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description FROM parish.district WHERE (country_id = '3') ORDER BY description"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSCountry" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT country_id, description FROM parish.country ORDER BY description"></asp:SqlDataSource>

        <asp:SqlDataSource ID="DSCompDet" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.company_phone WHERE (Phone_Num = ?) " InsertCommand="INSERT INTO company_phone(Company_Num, Company_Phone) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT Phone_Num, Company_Num, Company_Phone FROM company_phone WHERE (Company_Num = ?)" UpdateCommand="UPDATE company_phone SET Company_Phone = ? WHERE (Phone_Num = ?) ">
            <DeleteParameters>
                <asp:Parameter Name="Phone_Num" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="Company_Num" SessionField="Company_Num" />
                <asp:SessionParameter Name="Company_Phone" SessionField="Company_Phone" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Company_Num" SessionField="Company_Num" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company_Phone" />
                <asp:Parameter Name="Phone_Num" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
