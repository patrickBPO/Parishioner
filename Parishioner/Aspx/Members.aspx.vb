Imports DevExpress.Web

Public Class Members
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GVDegrees_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("member_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVSkills_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("member_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVMembers_ParseValue(sender As Object, e As Data.ASPxParseValueEventArgs) Handles GVMembers.ParseValue
        'If e.Value <> Nothing Then
        '    If e.FieldName = "dob" Then
        '        Session("FAge") = GetCurrentAge(Session("dob"))
        '    Else
        '        e.Value = e.Value.ToString.ToUpper
        '    End If
        'End If
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub
    Public Function GetCurrentAge(ByVal dob As Date) As Integer
        Dim age As Integer
        age = Today.Year - dob.Year
        If (dob > Today.AddYears(-age)) Then age -= 1
        Return age
    End Function

    Protected Sub GVCourseAtt_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("member_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVCourse_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("member_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVMIntDet_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("m_interest_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVChildren_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("member_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub

    Protected Sub GVNextKin_ParseValue(sender As Object, e As Data.ASPxParseValueEventArgs)
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub
End Class