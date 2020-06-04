Imports DevExpress.Web
Public Class References
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GVDistCity_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("district_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub
End Class