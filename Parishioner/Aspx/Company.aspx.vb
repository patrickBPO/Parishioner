Imports DevExpress.Web

Public Class Company
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GVCompDet_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("Company_Num") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

    End Sub
End Class