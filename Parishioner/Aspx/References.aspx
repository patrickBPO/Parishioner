<%@ Page Language="vb" Title="Reference" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="References.aspx.vb" Inherits="Parishioner.References" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;<%: Title %> Screens</h2>

    <div>
    <table class="nav-justified">
        <tr>
            <td>
                <dx:ASPxButton ID="BtnNat" runat="server" AutoPostBack="False" Font-Size="Large" Text="NATIONALITY" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopNat" runat="server" HeaderText="Maintain Nationalities" Height="129px" PopupElementID="BtnNat" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVNation" runat="server" AutoGenerateColumns="False" DataSourceID="DSNation" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Nationality" FieldName="par_desc" Name="SesNation" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSNation" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 20) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 20,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 20),0,'nationality'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 20) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 20) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                <dx:ASPxButton ID="BtnProf" runat="server" AutoPostBack="False" Font-Size="Large" Text="PROFESSION" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopProf" runat="server" HeaderText="Maintain Profession" Height="129px" PopupElementID="BtnProf" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVProf" runat="server" AutoGenerateColumns="False" DataSourceID="DSProf" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Profession" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSProf" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 26) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 26,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 26),0,'profession'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 26) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 26) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="BtnDegree" runat="server" AutoPostBack="False" Font-Size="Large" Text="DEGREE" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopDegree" runat="server" HeaderText="Maintain Degrees" Height="129px" PopupElementID="BtnDegree" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVNation1" runat="server" AutoGenerateColumns="False" DataSourceID="DSDegree" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Degree" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSDegree" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 20) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 3,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 3),0,'degree'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 3) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 3) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                <dx:ASPxButton ID="BtnPos" runat="server" AutoPostBack="False" Font-Size="Large" Text="POSITION" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopPos" runat="server" HeaderText="Maintain Position" Height="129px" PopupElementID="BtnPos" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVPos" runat="server" AutoGenerateColumns="False" DataSourceID="DSPos" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Position" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSPos" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 26) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 26,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 26),0,'position'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 26) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 26) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td style="width: 371px">
                <dx:ASPxButton ID="BtnMin" runat="server" AutoPostBack="False" Font-Size="Large" Text="MINISTRY" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" HeaderText="Maintain Ministries" Height="129px" PopupElementID="BtnMin" Theme="Glass" Width="322px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVNation0" runat="server" AutoGenerateColumns="False" DataSourceID="DSMinistry" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="271px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Ministry" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSMinistry" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 25) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 25,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 25),0,'ministry'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 25) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 25) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                <dx:ASPxButton ID="BtnRet" runat="server" AutoPostBack="False" Font-Size="Large" Text="RETIRED" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopRet" runat="server" HeaderText="Maintain Retired" Height="129px" PopupElementID="BtnRet" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVRet" runat="server" AutoGenerateColumns="False" DataSourceID="DSRet" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Retired" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSRet" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 24) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 24,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 24),0,'retired'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 24) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 24) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="BtnSkill" runat="server" AutoPostBack="False" Font-Size="Large" Text="SKILL" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopSkill" runat="server" HeaderText="Maintain Skills" Height="129px" PopupElementID="BtnSkill" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVSkill" runat="server" AutoGenerateColumns="False" DataSourceID="DSSkill" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Skill" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSSkill" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 23) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 23,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 23),0,'skill'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 23) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 23) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                <dx:ASPxButton ID="BtnDist" runat="server" AutoPostBack="False" Font-Size="Large" Text="DISTRICT" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopDist" runat="server" HeaderText="Maintain District" Height="167px" PopupElementID="BtnDist" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVDist" runat="server" AutoGenerateColumns="False" DataSourceID="DSDist" KeyFieldName="district_id" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                </SettingsEditing>
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="district_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="country_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="District" FieldName="description" ShowInCustomizationForm="True" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSDist" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM district WHERE (district_id = ?)" InsertCommand="INSERT INTO district(description, country_id) VALUES (?, '3')" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, country_id, description FROM district WHERE (country_id = '3')" UpdateCommand="UPDATE district SET description = ? WHERE (district_id = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="BtnEdu" runat="server" AutoPostBack="False" Font-Size="Large" Text="CLASS" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopEdu" runat="server" HeaderText="Maintain Education" Height="129px" PopupElementID="BtnEdu" Theme="Glass" Width="288px">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVEdu" runat="server" AutoGenerateColumns="False" DataSourceID="DSEdu" EnableTheming="True" KeyFieldName="par_num" Theme="Glass" Width="259px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn Caption="Education" FieldName="par_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="par_num" ReadOnly="True" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Styles>
                                    <FocusedRow BackColor="#33CCFF">
                                    </FocusedRow>
                                </Styles>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSEdu" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM param WHERE (par_code = 5) AND (par_num = ?)" InsertCommand="INSERT INTO param (par_code, par_desc, par_num, par_numfield, par_table_name) SELECT 5,?,(SELECT MAX(p.par_num + 1) FROM param AS p WHERE p.par_code = 5),0,'education_level'" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_desc, par_num FROM param WHERE (par_code = 5) ORDER BY par_desc, par_num" UpdateCommand="UPDATE param SET par_desc = ? WHERE (par_code = 5) AND (par_num = ?)"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <dx:ASPxButton ID="BtnCity" runat="server" Font-Size="Large" Text="CITY" Theme="BlackGlass">
                        </dx:ASPxButton>
                        <dx:ASPxPopupControl ID="PopCity0" runat="server" HeaderText="Maintain City" Height="167px" PopupElementID="BtnCity" Theme="BlackGlass" Width="360px">
                            <ContentCollection>
                                <dx:PopupControlContentControl runat="server">
                                    <dx:ASPxGridView ID="GVCityD" runat="server" AutoGenerateColumns="False" DataSourceID="DSCityD" EnableTheming="True" KeyFieldName="district_id" Theme="BlackGlass">
                                        <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                        <Templates>
                                            <DetailRow>
                                                <dx:ASPxGridView ID="GVDistCity" runat="server" AutoGenerateColumns="False" DataSourceID="DSDistCity" EnableTheming="True" KeyFieldName="city_id" OnBeforePerformDataSelect="GVDistCity_BeforePerformDataSelect" Theme="Glass">
                                                    <SettingsEditing Mode="Batch">
                                                    </SettingsEditing>
                                                    <Columns>
                                                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                        </dx:GridViewCommandColumn>
                                                        <dx:GridViewDataTextColumn FieldName="city_id" Visible="False" VisibleIndex="1">
                                                            <EditFormSettings Visible="False" />
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn Caption="City" FieldName="description" VisibleIndex="2">
                                                            <CellStyle Wrap="False">
                                                            </CellStyle>
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="country_id" Visible="False" VisibleIndex="4">
                                                        </dx:GridViewDataTextColumn>
                                                        <dx:GridViewDataTextColumn FieldName="district_id" Visible="False" VisibleIndex="3">
                                                        </dx:GridViewDataTextColumn>
                                                    </Columns>
                                                </dx:ASPxGridView>
                                                <asp:SqlDataSource ID="DSDistCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM city WHERE (city_id = ?)" InsertCommand="INSERT INTO city(description, district_id, country_id) VALUES (?, ?, 3)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description, district_id, country_id FROM city WHERE (country_id = 3) AND (district_id = ?) ORDER BY description" UpdateCommand="UPDATE city SET description = ?, district_id = ?, country_id = ? WHERE (city_id = ?)">
                                                    <DeleteParameters>
                                                        <asp:SessionParameter Name="city_id" SessionField="city_id" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:SessionParameter Name="description" SessionField="description" />
                                                        <asp:SessionParameter Name="district_id" SessionField="district_id" />
                                                        <asp:SessionParameter Name="country_id" SessionField="country_id" />
                                                    </InsertParameters>
                                                    <SelectParameters>
                                                        <asp:SessionParameter Name="district_id" SessionField="district_id" />
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:SessionParameter Name="description" SessionField="description" />
                                                        <asp:SessionParameter Name="district_id" SessionField="district_id" />
                                                        <asp:SessionParameter Name="country_id" SessionField="country_id" />
                                                        <asp:SessionParameter Name="city_id" SessionField="city_id" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </DetailRow>
                                        </Templates>
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="district_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="District" FieldName="description" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="country_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="DSCityD" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description, country_id FROM district ORDER BY description"></asp:SqlDataSource>
                                </dx:PopupControlContentControl>
                            </ContentCollection>
                        </dx:ASPxPopupControl>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:UpdatePanel ID="UPanParish" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                                <dx:ASPxButton ID="BtnPar" runat="server" Font-Size="Large" Text="PARISH" Theme="Glass" AutoPostBack="True">
                                </dx:ASPxButton>
                                <dx:ASPxPopupControl ID="PopPar" runat="server" HeaderText="Parish Maintenance" PopupAnimationType="Fade" PopupElementID="BtnPar" Theme="Glass">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <dx:ASPxGridView ID="GVPar" runat="server" AutoGenerateColumns="False" DataSourceID="DSPar" KeyFieldName="parishes_id" Theme="Glass">
                                                <SettingsEditing Mode="Batch">
                                                </SettingsEditing>
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="parishes_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Parish" FieldName="p_name" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <PropertiesTextEdit>
                                                            <Style Wrap="False">
                                                            </Style>
                                                        </PropertiesTextEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Phone" FieldName="phone_no" ShowInCustomizationForm="True" VisibleIndex="3">
                                                        <PropertiesTextEdit>
                                                            <MaskSettings Mask="(999) 000-0000" />
                                                            <Style Wrap="False">
                                                            </Style>
                                                        </PropertiesTextEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Address" FieldName="address" ShowInCustomizationForm="True" VisibleIndex="4">
                                                        <PropertiesTextEdit>
                                                            <Style Wrap="False">
                                                            </Style>
                                                        </PropertiesTextEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="City" FieldName="city_id" ShowInCustomizationForm="True" VisibleIndex="5">
                                                        <PropertiesComboBox DataSourceID="DSParCity" TextField="description" ValueField="city_id">
                                                            <Style Wrap="False">
                                                            </Style>
                                                        </PropertiesComboBox>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataComboBoxColumn>
                                                    <dx:GridViewDataComboBoxColumn Caption="District" FieldName="district_id" ShowInCustomizationForm="True" VisibleIndex="6">
                                                        <PropertiesComboBox DataSourceID="DSParDist" TextField="description" ValueField="district_id">
                                                            <Style Wrap="False">
                                                            </Style>
                                                        </PropertiesComboBox>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataComboBoxColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="DSPar" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.parishes WHERE (parishes_id = ?)" InsertCommand="INSERT INTO parish.parishes(p_name, address, phone_no, city_id, district_id) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT parishes_id, p_name, phone_no, address, city_id, district_id FROM parish.parishes" UpdateCommand="UPDATE parishes SET p_name = ?, address = ?, phone_no = ?, city_id = ?, district_id = ? WHERE (parishes_id = ?)"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="DSParCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description FROM parish.city WHERE (country_id = 3) ORDER BY city_id"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="DSParDist" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description FROM parish.district WHERE (country_id = '3') ORDER BY description"></asp:SqlDataSource>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                <dx:ASPxButton ID="BtnInt" runat="server" AutoPostBack="False" Font-Size="Large" Text="INTEREST" Theme="BlackGlass">
                </dx:ASPxButton>
                                <dx:ASPxPopupControl ID="PopInt" runat="server" HeaderText="Interest Maintenance" PopupAnimationType="Fade" PopupElementID="BtnInt" Theme="BlackGlass" Width="347px">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <dx:ASPxGridView ID="GVInterest" runat="server" AutoGenerateColumns="False" DataSourceID="DSInterest" KeyFieldName="interest_id" Theme="BlackGlass">
                                                <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailButtons="False" />
                                                <SettingsEditing Mode="Batch">
                                                </SettingsEditing>
                                                <Settings ShowGroupPanel="True" />
                                                <settingsbehavior confirmdelete="True" />
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataTextColumn FieldName="interest_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Interest" FieldName="i_desc" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="DSInterest" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM interest WHERE (interest_id = ?)" InsertCommand="INSERT INTO interest(i_desc) VALUES (?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT interest_id, i_desc FROM interest" UpdateCommand="UPDATE interest SET i_desc = ? WHERE (interest_id = ?)"></asp:SqlDataSource>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width:100%;">
                    <tr>
                        <td>
                <dx:ASPxButton ID="BtnCrs" runat="server" AutoPostBack="False" Font-Size="Large" Text="COURSES" Theme="Glass" Visible="False">
                </dx:ASPxButton>
                                <dx:ASPxPopupControl ID="PopCrs" runat="server" HeaderText="Course Maintenance" PopupAnimationType="Fade" PopupElementID="BtnCrs" Theme="Glass" Width="230px">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <dx:ASPxGridView ID="GVCourse" runat="server" AutoGenerateColumns="False" DataSourceID="DSCourse" KeyFieldName="course_id" EnableTheming="True" Theme="Glass">
                                                <SettingsEditing Mode="Batch">
                                                </SettingsEditing>
                                                <SettingsSearchPanel Visible="True" />
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataDateColumn Caption="Begin Date" FieldName="b_date" ShowInCustomizationForm="True" VisibleIndex="3">
                                                        <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                        </PropertiesDateEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn Caption="Comments" FieldName="c_comments" ShowInCustomizationForm="True" VisibleIndex="5" MinWidth="300">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Course" FieldName="c_desc" ShowInCustomizationForm="True" VisibleIndex="1">
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Course No." FieldName="course_no" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn Caption="End Date" FieldName="e_date" ShowInCustomizationForm="True" VisibleIndex="4">
                                                        <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                        </PropertiesDateEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataDateColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="DSCourse" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.course WHERE (course_id = ?)" InsertCommand="INSERT INTO parish.course(course_no, b_date, c_comments, e_date, c_desc) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT course_id, course_no, b_date, c_comments, e_date, c_desc FROM parish.course" UpdateCommand="UPDATE parish.course SET course_no=?, b_date=?, c_comments=?, e_date=?, c_desc=? WHERE (course_id = ?)"></asp:SqlDataSource>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <dx:ASPxButton ID="BtnAtt" runat="server" AutoPostBack="False" Font-Size="Large" Text="ATTENDED" Theme="Glass" Visible="False">
                </dx:ASPxButton>
                                <dx:ASPxPopupControl ID="PopAtt" runat="server" HeaderText="Attended Maintenance" PopupAnimationType="Fade" PopupElementID="BtnAtt" Theme="Aqua" Width="550px">
                                    <ContentCollection>
                                        <dx:PopupControlContentControl runat="server">
                                            <dx:ASPxGridView ID="GVAtt" runat="server" DataSourceID="DSAttend" EnableTheming="True" Theme="Glass" KeyFieldName="course_att_id" AutoGenerateColumns="False">
                                                <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                <SettingsEditing Mode="Batch">
                                                </SettingsEditing>
                                                <Columns>
                                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                    </dx:GridViewCommandColumn>
                                                    <dx:GridViewDataDateColumn Caption="Begin Date" FieldName="b_date" ShowInCustomizationForm="True" VisibleIndex="4">
                                                        <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                        </PropertiesDateEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataDateColumn>
                                                    <dx:GridViewDataTextColumn Caption="Comments" FieldName="c_comments" ShowInCustomizationForm="True" VisibleIndex="6" MinWidth="475">
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Course" FieldName="c_desc" ShowInCustomizationForm="True" VisibleIndex="2">
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="course_att_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                        <EditFormSettings Visible="False" />
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn Caption="Course No." FieldName="course_att_no" ShowInCustomizationForm="True" VisibleIndex="3">
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataDateColumn Caption="End Date" FieldName="e_date" ShowInCustomizationForm="True" VisibleIndex="5">
                                                        <PropertiesDateEdit EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                        </PropertiesDateEdit>
                                                        <CellStyle Wrap="False">
                                                        </CellStyle>
                                                    </dx:GridViewDataDateColumn>
                                                </Columns>
                                            </dx:ASPxGridView>
                                            <asp:SqlDataSource ID="DSAttend" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM course_att WHERE (course_att_id = ?)" InsertCommand="INSERT INTO course_att(course_att_no, b_date, c_comments, e_date, c_desc) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT b_date, c_comments, c_desc, course_att_id, course_att_no, e_date FROM course_att" UpdateCommand="UPDATE course_att SET course_att_no = ?, b_date = ?, c_comments = ?, e_date = ?, c_desc = ? WHERE (course_att_id = ?)"></asp:SqlDataSource>
                                        </dx:PopupControlContentControl>
                                    </ContentCollection>
                                </dx:ASPxPopupControl>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxButton ID="BtnMis" runat="server" AutoPostBack="False" Font-Size="Large" Text="MISSIONS" Theme="Glass">
                </dx:ASPxButton>
                <dx:ASPxPopupControl ID="PopMis" runat="server" EnableCallbackAnimation="True" HeaderText="Mission Maintenance" PopupAnimationType="Fade" PopupElementID="BtnMis" Theme="Glass">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <dx:ASPxGridView ID="GVMis" runat="server" AutoGenerateColumns="False" DataSourceID="DSMis" KeyFieldName="missions_id" Theme="Glass">
                                <SettingsEditing Mode="Batch">
                                </SettingsEditing>
                                <SettingsSearchPanel Visible="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="missions_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Mission" FieldName="m_name" ShowInCustomizationForm="True" VisibleIndex="2">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Phone" FieldName="phone_no" ShowInCustomizationForm="True" VisibleIndex="3">
                                        <PropertiesTextEdit>
                                            <MaskSettings Mask="(999) 000-0000" />
                                        </PropertiesTextEdit>
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Address" FieldName="address" ShowInCustomizationForm="True" VisibleIndex="4">
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="City" FieldName="city_id" ShowInCustomizationForm="True" VisibleIndex="5">
                                        <PropertiesComboBox DataSourceID="DSMisCity" TextField="description" ValueField="city_id">
                                        </PropertiesComboBox>
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="District" FieldName="district_id" ShowInCustomizationForm="True" VisibleIndex="6">
                                        <PropertiesComboBox DataSourceID="DSMisDist" TextField="description" ValueField="district_id">
                                        </PropertiesComboBox>
                                        <CellStyle Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="DSMis" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.missions WHERE (missions_id = ?)" InsertCommand="INSERT INTO missions(city_id, phone_no, address, district_id, m_name) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT missions_id, m_name, phone_no, address, city_id, district_id FROM parish.missions" UpdateCommand="UPDATE missions SET city_id = ?, phone_no = ?, address = ?, district_id = ?, m_name = ? WHERE (missions_id = ?)"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="DSMisCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description FROM parish.city WHERE (country_id = 3) ORDER BY city_id"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="DSMisDist" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description FROM parish.district WHERE (country_id = '3') ORDER BY description"></asp:SqlDataSource>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>
