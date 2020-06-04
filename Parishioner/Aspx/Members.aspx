<%@ Page Language="vb" Title="Members" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Members.aspx.vb" Inherits="Parishioner.Members" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.DashboardWeb" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;<%: Title %> Screen</h2>
    
    <div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <dx:ASPxGridView ID="GVMembers" runat="server" AutoGenerateColumns="False" DataSourceID="DSMembers" KeyFieldName="members_id" Theme="Office2010Black">
                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                    <Templates>
                        <DetailRow>

                            <br />
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <dx:ASPxPageControl ID="PCMemberSub" runat="server" ActiveTabIndex="6" AutoPostBack="True" Theme="PlasticBlue">
                                        <TabPages>
                                            <dx:TabPage Name="PDegree" Text="Degrees">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVDegrees" runat="server" AutoGenerateColumns="False" DataSourceID="DSMDegree" KeyFieldName="m_degree_id" OnBeforePerformDataSelect="GVDegrees_BeforePerformDataSelect" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="m_degree_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Degrees" FieldName="degree_id" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <PropertiesComboBox DataSourceID="DSDegree" TextField="par_desc" ValueField="par_num">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMDegree" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.m_degree WHERE (m_degree_id = ?)" InsertCommand="INSERT INTO parish.m_degree(degree_id, member_id) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT m_degree_id, degree_id, member_id FROM parish.m_degree WHERE (member_id = ?)" UpdateCommand="UPDATE parish.m_degree SET member_id = ?, degree_id = ? WHERE (m_degree_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="m_degree_id" SessionField="m_degree_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="degree_id" SessionField="degree_id" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="degree_id" SessionField="degree_id" />
                                                                <asp:SessionParameter Name="m_degree_id" SessionField="m_degree_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PSkill" Text="Skills">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVSkills" runat="server" AutoGenerateColumns="False" DataSourceID="DSMSkill" KeyFieldName="m_skill_id" OnBeforePerformDataSelect="GVSkills_BeforePerformDataSelect" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="m_skill_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Skills" FieldName="skill_id" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <PropertiesComboBox DataSourceID="DSSkill" TextField="par_desc" ValueField="par_num">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMSkill" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.m_skill WHERE (m_skill_id = ?)" InsertCommand="INSERT INTO parish.m_skill(skill_id, member_id) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT m_skill_id, skill_id, member_id FROM parish.m_skill WHERE (member_id = ?)" UpdateCommand="UPDATE parish.m_skill SET member_id = ?, skill_id = ? WHERE (m_skill_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="m_skill_id" SessionField="m_skill_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="skill_id" SessionField="skill_id" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="skill_id" SessionField="skill_id" />
                                                                <asp:SessionParameter Name="m_skill_id" SessionField="m_skill_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PRetired" Text="Retired">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVRetSkills" runat="server" AutoGenerateColumns="False" DataSourceID="DSMRSkill" KeyFieldName="r_skill_id" OnBeforePerformDataSelect="GVDegrees_BeforePerformDataSelect" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="r_skill_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Retired" FieldName="retired_id" ShowInCustomizationForm="True" VisibleIndex="2">
                                                                    <PropertiesComboBox DataSourceID="DSRetired" TextField="par_desc" ValueField="par_num">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMRSkill" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.r_skill WHERE (r_skill_id = ?)" InsertCommand="INSERT INTO parish.r_skill(retired_id, member_id) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT r_skill_id, retired_id, member_id FROM parish.r_skill WHERE (member_id = ?)" UpdateCommand="UPDATE parish.r_skill SET member_id = ?, retired_id = ? WHERE (r_skill_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="r_skill_id" SessionField="r_skill_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="retired_id" SessionField="retired_id" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="retired_id" SessionField="retired_id" />
                                                                <asp:SessionParameter Name="r_skill_id" SessionField="r_skill_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PCourses" Text="Courses">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVCourse" runat="server" AutoGenerateColumns="False" DataSourceID="DSMCourse" KeyFieldName="course_id" OnBeforePerformDataSelect="GVCourse_BeforePerformDataSelect" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataDateColumn Caption="Begin Date" FieldName="b_date" ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <PropertiesDateEdit DisplayFormatString="dd-MMM-yyyy" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                                    </PropertiesDateEdit>
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="Comments" FieldName="c_comments" MinWidth="200" ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <CellStyle Wrap="True">
                                                                    </CellStyle>
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Course" FieldName="c_desc" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="course_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Course No." FieldName="course_no" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="End Date" FieldName="e_date" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <PropertiesDateEdit DisplayFormatString="dd-MMM-yyyy" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                                    </PropertiesDateEdit>
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMCourse" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.course WHERE (course_id = ?)" InsertCommand="INSERT INTO parish.course(b_date, c_comments, c_desc, course_no, e_date, member_id) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT b_date, c_comments, c_desc, course_id, course_no, e_date, member_id FROM parish.course WHERE (member_id = ?)" UpdateCommand="UPDATE parish.course SET member_id = ?, c_desc = ?, course_no = ?, c_comments = ?, b_date = ?, e_date = ? WHERE (course_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="course_id" SessionField="course_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="b_date" SessionField="b_date" />
                                                                <asp:SessionParameter Name="c_comments" SessionField="c_comments" />
                                                                <asp:SessionParameter Name="c_desc" SessionField="c_desc" />
                                                                <asp:SessionParameter Name="course_no" SessionField="course_no" />
                                                                <asp:SessionParameter Name="e_date" SessionField="e_date" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="c_desc" SessionField="c_desc" />
                                                                <asp:SessionParameter Name=" course_no" SessionField=" course_no" />
                                                                <asp:SessionParameter Name="c_comments" SessionField="c_comments" />
                                                                <asp:SessionParameter Name="b_date" SessionField="b_date" />
                                                                <asp:SessionParameter Name="e_date" SessionField="e_date" />
                                                                <asp:SessionParameter Name="course_id" SessionField="course_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PAttend" Text="Courses Attended">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVCourseAtt" runat="server" AutoGenerateColumns="False" DataSourceID="DSMCourseAtt" KeyFieldName="course_att_id" OnBeforePerformDataSelect="GVCourseAtt_BeforePerformDataSelect" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataDateColumn Caption="Begin Date" FieldName="b_date" ShowInCustomizationForm="True" VisibleIndex="5">
                                                                    <PropertiesDateEdit DisplayFormatString="dd-MMM-yyyy" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                                    </PropertiesDateEdit>
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn Caption="Comments" FieldName="c_comments" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Attended" FieldName="c_desc" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="course_att_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Course No." FieldName="course_att_no" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataDateColumn Caption="End Date" FieldName="e_date" ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <PropertiesDateEdit DisplayFormatString="dd-MMM-yyyy" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                                                                    </PropertiesDateEdit>
                                                                </dx:GridViewDataDateColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                </dx:GridViewDataTextColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMCourseAtt" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.course_att WHERE (course_att_id = ?)" InsertCommand="INSERT INTO parish.course_att(b_date, c_comments, c_desc, course_att_no, e_date, member_id) VALUES (?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT b_date, c_comments, c_desc, course_att_id, course_att_no, e_date, member_id FROM parish.course_att WHERE (member_id = ?)" UpdateCommand="UPDATE parish.course_att SET member_id = ?, c_desc = ?, course_att_no = ?, c_comments = ?, b_date = ?, e_date = ? WHERE (course_att_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="course_att_id" SessionField="course_att_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="b_date" SessionField="b_date" />
                                                                <asp:SessionParameter Name="c_comments" SessionField="c_comments" />
                                                                <asp:SessionParameter Name="c_desc" SessionField="c_desc" />
                                                                <asp:SessionParameter Name="course_att_no" SessionField="course_att_no" />
                                                                <asp:SessionParameter Name="e_date" SessionField="e_date" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="c_desc" SessionField="c_desc" />
                                                                <asp:SessionParameter Name=" course_att_no" SessionField=" course_att_no" />
                                                                <asp:SessionParameter Name="c_comments" SessionField="c_comments" />
                                                                <asp:SessionParameter Name="b_date" SessionField="b_date" />
                                                                <asp:SessionParameter Name="e_date" SessionField="e_date" />
                                                                <asp:SessionParameter Name="course_att_id" SessionField="course_att_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PInterest" Text="Interests">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVInterest" runat="server" AutoGenerateColumns="False" DataSourceID="DSMInterest" KeyFieldName="m_interest_id" Theme="Office2010Black">
                                                            <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                                                            <Templates>
                                                                <DetailRow>
                                                                    <dx:ASPxGridView ID="GVMIntDet" runat="server" AutoGenerateColumns="False" DataSourceID="DSMIntDet" EnableTheming="True" KeyFieldName="interest_det_id" OnBeforePerformDataSelect="GVMIntDet_BeforePerformDataSelect" Theme="SoftOrange">
                                                                        <SettingsPager Visible="False">
                                                                        </SettingsPager>
                                                                        <SettingsEditing Mode="Batch">
                                                                        </SettingsEditing>
                                                                        <Columns>
                                                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                            </dx:GridViewCommandColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="interest_det_id" Visible="False" VisibleIndex="1">
                                                                                <EditFormSettings Visible="False" />
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn FieldName="m_interest_id" Visible="False" VisibleIndex="2">
                                                                            </dx:GridViewDataTextColumn>
                                                                            <dx:GridViewDataTextColumn Caption="Type Of Interest" FieldName="i_det_desc" VisibleIndex="3">
                                                                            </dx:GridViewDataTextColumn>
                                                                        </Columns>
                                                                    </dx:ASPxGridView>
                                                                    <asp:SqlDataSource ID="DSMIntDet" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.m_interest_det WHERE (interest_det_id = ?)" InsertCommand="INSERT INTO parish.m_interest_det(m_interest_id, i_det_desc) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT interest_det_id, m_interest_id, i_det_desc FROM parish.m_interest_det WHERE (m_interest_id = ?)" UpdateCommand="UPDATE parish.m_interest_det SET m_interest_id = ?, i_det_desc = ? WHERE (interest_det_id = ?)">
                                                                        <DeleteParameters>
                                                                            <asp:SessionParameter Name="interest_det_id" SessionField="interest_det_id" />
                                                                        </DeleteParameters>
                                                                        <InsertParameters>
                                                                            <asp:SessionParameter Name="m_interest_id" SessionField="m_interest_id" />
                                                                            <asp:SessionParameter Name="i_det_desc" SessionField="i_det_desc" />
                                                                        </InsertParameters>
                                                                        <SelectParameters>
                                                                            <asp:SessionParameter Name="?" SessionField="m_interest_id" />
                                                                        </SelectParameters>
                                                                        <UpdateParameters>
                                                                            <asp:SessionParameter Name="m_interest_id" SessionField="m_interest_id" />
                                                                            <asp:SessionParameter Name="i_det_desc" SessionField="i_det_desc" />
                                                                            <asp:SessionParameter Name="interest_det_id" SessionField="interest_det_id" />
                                                                        </UpdateParameters>
                                                                    </asp:SqlDataSource>
                                                                </DetailRow>
                                                            </Templates>
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="m_interest_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Interests" FieldName="interest_id" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                    <PropertiesComboBox DataSourceID="DSInterest" TextField="i_desc" ValueField="interest_id">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSMInterest" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.m_interest WHERE (m_interest_id = ?)" InsertCommand="INSERT INTO parish.m_interest(member_id, interest_id) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT m_interest_id, member_id, interest_id FROM parish.m_interest WHERE (member_id = ?)" UpdateCommand="UPDATE parish.m_interest SET interest_id = ?, member_id = ? WHERE (m_interest_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="m_interest_id" SessionField="m_interest_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="interest_id" SessionField="interest_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="?" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="interest_id" SessionField="interest_id" />
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="m_interest_id" SessionField="m_interest_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PChilds" Text="Children">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVChildren" runat="server" AutoGenerateColumns="False" DataSourceID="DSChildren" EnableTheming="True" OnBeforePerformDataSelect="GVChildren_BeforePerformDataSelect" Theme="Office2010Black" KeyFieldName="child_id">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="child_id" ShowInCustomizationForm="True" VisibleIndex="1" Visible="False">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" VisibleIndex="2" Visible="False">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="f_name" ShowInCustomizationForm="True" VisibleIndex="3" Caption="First">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="m_name" ShowInCustomizationForm="True" VisibleIndex="4" Caption="Middle">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="l_name" ShowInCustomizationForm="True" VisibleIndex="5" Caption="Last">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="age" ShowInCustomizationForm="True" VisibleIndex="6" Caption="Age">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Gender" FieldName="gender_id" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <PropertiesComboBox DataSourceID="DSChildType" TextField="par_desc" ValueField="par_num">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Relationship" FieldName="relationship_id" ShowInCustomizationForm="True" VisibleIndex="8">
                                                                    <PropertiesComboBox DataSourceID="DSGender" TextField="par_desc" ValueField="par_num">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSChildren" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.child WHERE (child_id = ?)" InsertCommand="INSERT INTO parish.child(member_id, f_name, m_name, l_name, age, gender_id, relationship_id) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT child_id, member_id, f_name, m_name, l_name, age, gender_id, relationship_id FROM parish.child WHERE (member_id = ?)" UpdateCommand="UPDATE parish.child SET member_id = ?, f_name = ?, m_name = ?, l_name = ?, age = ?, gender_id = ?, relationship_id = ? WHERE (child_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="child_id" SessionField="child_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="f_name" SessionField="f_name" />
                                                                <asp:SessionParameter Name="m_name" SessionField="m_name" />
                                                                <asp:SessionParameter Name="l_name" SessionField="l_name" />
                                                                <asp:SessionParameter Name="age" SessionField="age" />
                                                                <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                                                                <asp:SessionParameter Name="relationship_id" SessionField="relationship_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="f_name" SessionField="f_name" />
                                                                <asp:SessionParameter Name="m_name" SessionField="m_name" />
                                                                <asp:SessionParameter Name="l_name" SessionField="l_name" />
                                                                <asp:SessionParameter Name="age" SessionField="age" />
                                                                <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                                                                <asp:SessionParameter Name="relationship_id" SessionField="relationship_id" />
                                                                <asp:SessionParameter Name="child_id" SessionField="child_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                            <dx:TabPage Name="PNextKin" Text="Next Of Kin">
                                                <ContentCollection>
                                                    <dx:ContentControl runat="server">
                                                        <dx:ASPxGridView ID="GVNextKin" runat="server" AutoGenerateColumns="False" DataSourceID="DSNextKin" EnableTheming="True" KeyFieldName="next_kin_id" OnParseValue="GVNextKin_ParseValue" Theme="Office2010Black">
                                                            <SettingsEditing Mode="Batch">
                                                            </SettingsEditing>
                                                            <Columns>
                                                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                                                </dx:GridViewCommandColumn>
                                                                <dx:GridViewDataTextColumn FieldName="next_kin_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="1">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn FieldName="member_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="2">
                                                                    <EditFormSettings Visible="False" />
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="First" FieldName="f_name" ShowInCustomizationForm="True" VisibleIndex="3">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Middle" FieldName="m_name" ShowInCustomizationForm="True" VisibleIndex="4">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Last" FieldName="l_name" ShowInCustomizationForm="True" VisibleIndex="5">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Phone" FieldName="phone_no" ShowInCustomizationForm="True" VisibleIndex="8">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataTextColumn Caption="Address" FieldName="address" ShowInCustomizationForm="True" VisibleIndex="9">
                                                                </dx:GridViewDataTextColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Gender" FieldName="gender_id" ShowInCustomizationForm="True" VisibleIndex="6">
                                                                    <PropertiesComboBox DataSourceID="DSGender" TextField="par_desc" ValueField="par_num" TextFormatString="A">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="Relation" FieldName="relationship_id" ShowInCustomizationForm="True" VisibleIndex="7">
                                                                    <PropertiesComboBox DataSourceID="DSRelation" TextField="par_desc" ValueField="par_num" TextFormatString="A">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="City" FieldName="city_id" ShowInCustomizationForm="True" VisibleIndex="10">
                                                                    <PropertiesComboBox DataSourceID="DSCity" TextField="description" ValueField="city_id">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                                <dx:GridViewDataComboBoxColumn Caption="District" FieldName="district_id" ShowInCustomizationForm="True" VisibleIndex="11">
                                                                    <PropertiesComboBox DataSourceID="DSDistrict" TextField="description" ValueField="district_id">
                                                                    </PropertiesComboBox>
                                                                </dx:GridViewDataComboBoxColumn>
                                                            </Columns>
                                                        </dx:ASPxGridView>
                                                        <asp:SqlDataSource ID="DSNextKin" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" DeleteCommand="DELETE FROM parish.next_kin WHERE (next_kin_id = ?)" InsertCommand="INSERT INTO parish.next_kin(member_id, address, city_id, district_id, f_name, gender_id, l_name, m_name, phone_no, relationship_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT next_kin_id, member_id, f_name, m_name, l_name, gender_id, relationship_id, phone_no, address, city_id, district_id FROM parish.next_kin WHERE (member_id = ?)" UpdateCommand="UPDATE parish.next_kin SET member_id = ?, address = ?, city_id = ?, district_id = ?, f_name = ?, gender_id = ?, l_name = ?, m_name = ?, phone_no = ?, relationship_id = ? WHERE (next_kin_id = ?)">
                                                            <DeleteParameters>
                                                                <asp:SessionParameter Name="next_kin_id" SessionField="next_kin_id" />
                                                            </DeleteParameters>
                                                            <InsertParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="address" SessionField="address" />
                                                                <asp:SessionParameter Name="city_id" SessionField="city_id" />
                                                                <asp:SessionParameter Name="district_id" SessionField="district_id" />
                                                                <asp:SessionParameter Name="f_name" SessionField="f_name" />
                                                                <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                                                                <asp:SessionParameter Name="l_name" SessionField="l_name" />
                                                                <asp:SessionParameter Name="m_name" SessionField="m_name" />
                                                                <asp:SessionParameter Name="phone_no" SessionField="phone_no" />
                                                                <asp:SessionParameter Name="relationship_id" SessionField="relationship_id" />
                                                            </InsertParameters>
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="?" SessionField="member_id" />
                                                            </SelectParameters>
                                                            <UpdateParameters>
                                                                <asp:SessionParameter Name="member_id" SessionField="member_id" />
                                                                <asp:SessionParameter Name="address" SessionField="address" />
                                                                <asp:SessionParameter Name="city_id" SessionField="city_id" />
                                                                <asp:SessionParameter Name="district_id" SessionField="district_id" />
                                                                <asp:SessionParameter Name="f_name" SessionField="f_name" />
                                                                <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                                                                <asp:SessionParameter Name="l_name" SessionField="l_name" />
                                                                <asp:SessionParameter Name="m_name" SessionField="m_name" />
                                                                <asp:SessionParameter Name="phone_no" SessionField="phone_no" />
                                                                <asp:SessionParameter Name="relationship_id" SessionField="relationship_id" />
                                                                <asp:SessionParameter Name="next_kin_id" SessionField="next_kin_id" />
                                                            </UpdateParameters>
                                                        </asp:SqlDataSource>
                                                    </dx:ContentControl>
                                                </ContentCollection>
                                            </dx:TabPage>
                                        </TabPages>
                                    </dx:ASPxPageControl>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </DetailRow>
                    </Templates>
                    <SettingsSearchPanel Visible="True" />
                    <EditFormLayoutProperties ColCount="3">
                        <Items>
                            <dx:GridViewColumnLayoutItem Caption="First" ColumnName="f_name" RequiredMarkDisplayMode="Required">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem Caption="Middle" ColumnName="m_name">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem Caption="Last" ColumnName="l_name" RequiredMarkDisplayMode="Required">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="gender_id" RequiredMarkDisplayMode="Optional">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="m_status_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="nation_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="dob">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem Caption="Age" ColumnName="Age">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="ssn">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="parishes_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="ministry_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="status_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="city_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="district_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="address">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="class_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="blood_gp">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="phone_no">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="cell_no">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="work_place">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="profession_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem Caption="Position" ColumnName="position_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="w_city_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="w_district_id">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="w_address">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="work_phone">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="ret_skill_id" Visible="False">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="diseased_date">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ClientVisible="False" ColumnName="next_kin_id" Visible="False">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="baptize_yn">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="e_member_yn">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColumnName="confirm_yn">
                            </dx:GridViewColumnLayoutItem>
                            <dx:GridViewColumnLayoutItem ColSpan="2" ColumnName="parish_duty">
                            </dx:GridViewColumnLayoutItem>
                            <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right">
                            </dx:EditModeCommandLayoutItem>
                        </Items>
                    </EditFormLayoutProperties>
                    <Columns>
                        <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn Caption="ID" FieldName="members_id" ShowInCustomizationForm="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="First" FieldName="f_name" ShowInCustomizationForm="True" VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Middle" FieldName="m_name" ShowInCustomizationForm="True" VisibleIndex="3">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Last" FieldName="l_name" ShowInCustomizationForm="True" VisibleIndex="4">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn Caption="DOB" FieldName="dob" ShowInCustomizationForm="True" VisibleIndex="8">
                            <PropertiesDateEdit AnimationType="Fade" EditFormat="Custom" EditFormatString="yyyy-M-dd" DisplayFormatString="dd-MMM-yyyy">
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn Caption="SSN" FieldName="ssn" ShowInCustomizationForm="True" Visible="False" VisibleIndex="10">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Address" FieldName="address" ShowInCustomizationForm="True" Visible="False" VisibleIndex="16">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Parish Duty" FieldName="parish_duty" ShowInCustomizationForm="True" Visible="False" VisibleIndex="18">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Phone" FieldName="phone_no" ShowInCustomizationForm="True" Visible="False" VisibleIndex="20">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Cell" FieldName="cell_no" ShowInCustomizationForm="True" Visible="False" VisibleIndex="21">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Workplace" FieldName="work_place" ShowInCustomizationForm="True" Visible="False" VisibleIndex="22">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Work Address" FieldName="w_address" ShowInCustomizationForm="True" Visible="False" VisibleIndex="27">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Work Phone" FieldName="work_phone" ShowInCustomizationForm="True" Visible="False" VisibleIndex="28">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn Caption="Diseased Date" FieldName="diseased_date" ShowInCustomizationForm="True" Visible="False" VisibleIndex="33">
                            <PropertiesDateEdit AnimationType="Fade" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="next_kin_id" ShowInCustomizationForm="True" Visible="False" VisibleIndex="34">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Gender" FieldName="gender_id" VisibleIndex="5">
                            <PropertiesComboBox DataSourceID="DSGender" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Marital Status" FieldName="m_status_id" VisibleIndex="6">
                            <PropertiesComboBox DataSourceID="DSMStat" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Nationality" FieldName="nation_id" VisibleIndex="7">
                            <PropertiesComboBox DataSourceID="DSMNation" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Parish" FieldName="parishes_id" Visible="False" VisibleIndex="11">
                            <PropertiesComboBox DataSourceID="DSParish" TextField="p_name" ValueField="parishes_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Ministry" FieldName="ministry_id" Visible="False" VisibleIndex="12">
                            <PropertiesComboBox DataSourceID="DSMinistry" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Status" FieldName="status_id" Visible="False" VisibleIndex="13">
                            <PropertiesComboBox DataSourceID="DSStatus" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataCheckColumn Caption="Electorial" FieldName="e_member_yn" Visible="False" VisibleIndex="32">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataComboBoxColumn Caption="District" FieldName="district_id" Visible="False" VisibleIndex="15">
                            <PropertiesComboBox DataSourceID="DSDistrict" TextField="description" ValueField="district_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="City" FieldName="city_id" Visible="False" VisibleIndex="14">
                            <PropertiesComboBox DataSourceID="DSCity" TextField="description" ValueField="city_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Education" FieldName="class_id" Visible="False" VisibleIndex="17">
                            <PropertiesComboBox DataSourceID="DSEdu" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Blood Type" FieldName="blood_gp" Visible="False" VisibleIndex="19">
                            <PropertiesComboBox DataSourceID="DSBlood" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Profession" FieldName="profession_id" Visible="False" VisibleIndex="23">
                            <PropertiesComboBox DataSourceID="DSProf" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Position" FieldName="position_id" Visible="False" VisibleIndex="24">
                            <PropertiesComboBox DataSourceID="DSPosit" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Work City" FieldName="w_city_id" Visible="False" VisibleIndex="25">
                            <PropertiesComboBox DataSourceID="DSWCity" TextField="description" ValueField="city_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Work District" FieldName="w_district_id" Visible="False" VisibleIndex="26">
                            <PropertiesComboBox DataSourceID="DSWDistrict" TextField="description" ValueField="district_id">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Retired Skill" FieldName="ret_skill_id" Visible="False" VisibleIndex="29">
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataCheckColumn Caption="Baptized" FieldName="baptize_yn" Visible="False" VisibleIndex="30">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataCheckColumn Caption="Confirmed" FieldName="confirm_yn" Visible="False" VisibleIndex="31">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn Caption="Age" FieldName="FAge" ShowInCustomizationForm="True" UnboundExpression="DateDiffYear([dob], LocalDateTimeToday()) + Iif(GetMonth([dob]) &gt; GetMonth(LocalDateTimeToday()), -1, GetMonth([dob]) = GetMonth(LocalDateTimeToday()), Iif(GetDay([dob]) &gt; GetDay(LocalDateTimeToday()), -1, 0), 0)" UnboundType="Integer" VisibleIndex="9">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
                <asp:SqlDataSource ID="DSDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description FROM parish.district WHERE (country_id = '3') ORDER BY description"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSRelation" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc FROM parish.param WHERE (par_code = 13) ORDER BY par_desc"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSChildType" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc FROM parish.param WHERE (par_code = 13) AND (par_num IN (9, 11)) ORDER BY par_desc"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSInterest" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT interest_id, i_desc FROM parish.interest"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSRetired" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 24) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description FROM parish.city WHERE (country_id = 3) ORDER BY description"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSWDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT district_id, description FROM parish.district WHERE (country_id = '3') ORDER BY description"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSWCity" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT city_id, description FROM parish.city WHERE (country_id = 3) ORDER BY description"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSParish" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT parishes_id, p_name FROM parish.parishes ORDER BY p_name"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSMembers" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT parish.members.* FROM members ORDER BY f_name" InsertCommand="INSERT INTO members(address, baptize_yn, blood_gp, cell_no, city_id, class_id, confirm_yn, diseased_date, district_id, dob, e_member_yn, f_name, gender_id, l_name, m_name, m_status_id, ministry_id, nation_id, next_kin_id, parish_duty, parishes_id, phone_no, position_id, profession_id, ret_skill_id, ssn, status_id, w_address, w_city_id, w_district_id, work_phone, work_place) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE members SET address = ?, baptize_yn = ?, blood_gp = ?, cell_no = ?, city_id = ?, class_id = ?, confirm_yn = ?, diseased_date = ?, district_id = ?, dob = ?, e_member_yn = ?, f_name = ?, gender_id = ?, l_name = ?, m_name = ?, m_status_id = ?, ministry_id = ?, nation_id = ?, next_kin_id = ?, parish_duty = ?, parishes_id = ?, phone_no = ?, position_id = ?, profession_id = ?, ret_skill_id = ?, ssn = ?, status_id = ?, w_address = ?, w_city_id = ?, w_district_id = ?, work_phone = ?, work_place = ? WHERE (members_id = ?)">
                    <InsertParameters>
                        <asp:SessionParameter Name="address" SessionField="address" />
                        <asp:SessionParameter Name="baptize_yn" SessionField="baptize_yn" />
                        <asp:SessionParameter Name="blood_gp" SessionField="blood_gp" />
                        <asp:SessionParameter Name="cell_no" SessionField="cell_no" />
                        <asp:SessionParameter Name="city_id" SessionField="city_id" />
                        <asp:SessionParameter Name="class_id" SessionField="class_id" />
                        <asp:SessionParameter Name="confirm_yn" SessionField="confirm_yn" />
                        <asp:SessionParameter Name="diseased_date" SessionField="diseased_date" />
                        <asp:SessionParameter Name="district_id" SessionField="district_id" />
                        <asp:SessionParameter Name="dob" SessionField="dob" />
                        <asp:SessionParameter Name="e_member_yn" SessionField="e_member_yn" />
                        <asp:SessionParameter Name="f_name" SessionField="f_name" />
                        <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                        <asp:SessionParameter Name="l_name" SessionField="l_name" />
                        <asp:SessionParameter Name="m_name" SessionField="m_name" />
                        <asp:SessionParameter Name="m_status_id" SessionField="m_status_id" />
                        <asp:SessionParameter Name="ministry_id" SessionField="ministry_id" />
                        <asp:SessionParameter Name="nation_id" SessionField="nation_id" />
                        <asp:SessionParameter Name="next_kin_id" SessionField="next_kin_id" />
                        <asp:SessionParameter Name="parish_duty" SessionField="parish_duty" />
                        <asp:SessionParameter Name="parishes_id" SessionField="parishes_id" />
                        <asp:SessionParameter Name="phone_no" SessionField="phone_no" />
                        <asp:SessionParameter Name="position_id" SessionField="position_id" />
                        <asp:SessionParameter Name="profession_id" SessionField="profession_id" />
                        <asp:SessionParameter Name="ret_skill_id" SessionField="ret_skill_id" />
                        <asp:SessionParameter Name="ssn" SessionField="ssn" />
                        <asp:SessionParameter Name="status_id" SessionField="status_id" />
                        <asp:SessionParameter Name="w_address" SessionField="w_address" />
                        <asp:SessionParameter Name="w_city_id" SessionField="w_city_id" />
                        <asp:SessionParameter Name="w_district_id" SessionField="w_district_id" />
                        <asp:SessionParameter Name="work_phone" SessionField="work_phone" />
                        <asp:SessionParameter Name="work_place" SessionField="work_place" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:SessionParameter Name="address" SessionField="address" />
                        <asp:SessionParameter Name="baptize_yn" SessionField="baptize_yn" />
                        <asp:SessionParameter Name="blood_gp" SessionField="blood_gp" />
                        <asp:SessionParameter Name="cell_no" SessionField="cell_no" />
                        <asp:SessionParameter Name="city_id" SessionField="city_id" />
                        <asp:SessionParameter Name="class_id" SessionField="class_id" />
                        <asp:SessionParameter Name="confirm_yn" SessionField="confirm_yn" />
                        <asp:SessionParameter Name="diseased_date" SessionField="diseased_date" />
                        <asp:SessionParameter Name="district_id" SessionField="district_id" />
                        <asp:SessionParameter Name="dob" SessionField="dob" />
                        <asp:SessionParameter Name="e_member_yn" SessionField="e_member_yn" />
                        <asp:SessionParameter Name="f_name" SessionField="f_name" />
                        <asp:SessionParameter Name="gender_id" SessionField="gender_id" />
                        <asp:SessionParameter Name="l_name" SessionField="l_name" />
                        <asp:SessionParameter Name="m_name" SessionField="m_name" />
                        <asp:SessionParameter Name="m_status_id" SessionField="m_status_id" />
                        <asp:SessionParameter Name="ministry_id" SessionField="ministry_id" />
                        <asp:SessionParameter Name="nation_id" SessionField="nation_id" />
                        <asp:SessionParameter Name="next_kin_id" SessionField="next_kin_id" />
                        <asp:SessionParameter Name="parish_duty" SessionField="parish_duty" />
                        <asp:SessionParameter Name="parishes_id" SessionField="parishes_id" />
                        <asp:SessionParameter Name="phone_no" SessionField="phone_no" />
                        <asp:SessionParameter Name="position_id" SessionField="position_id" />
                        <asp:SessionParameter Name="profession_id" SessionField="profession_id" />
                        <asp:SessionParameter Name="ret_skill_id" SessionField="ret_skill_id" />
                        <asp:SessionParameter Name="ssn" SessionField="ssn" />
                        <asp:SessionParameter Name="status_id" SessionField="status_id" />
                        <asp:SessionParameter Name="w_address" SessionField="w_address" />
                        <asp:SessionParameter Name="w_city_id" SessionField="w_city_id" />
                        <asp:SessionParameter Name="w_district_id" SessionField="w_district_id" />
                        <asp:SessionParameter Name="work_phone" SessionField="work_phone" />
                        <asp:SessionParameter Name="work_place" SessionField="work_place" />
                        <asp:SessionParameter Name="members_id" SessionField="members_id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="DSGender" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 2) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSMStat" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 27) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSMNation" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 20) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSMinistry" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 25) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSStatus" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 17) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSEdu" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 5) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSBlood" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 12) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSProf" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 26) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSPosit" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 1) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSDegree" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 3) ORDER BY par_code, par_num"></asp:SqlDataSource>
                <asp:SqlDataSource ID="DSSkill" runat="server" ConnectionString="<%$ ConnectionStrings:NationConnStr %>" ProviderName="<%$ ConnectionStrings:NationConnStr.ProviderName %>" SelectCommand="SELECT par_code, par_num, par_desc, par_table_name FROM parish.param WHERE (par_code = 23) ORDER BY par_code, par_num"></asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>

    </div>
    <div>

    </div>
</asp:Content>
