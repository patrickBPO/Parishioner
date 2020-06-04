﻿Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports Owin

Partial Public Class RegisterUseAdm
    Inherits Page
    Protected Sub CreateUser_Click(sender As Object, e As EventArgs) Handles RegisterUser.Click
        Dim uAlias As String = UserAlias.Text
        Dim userName As String = Email.Text
        Dim manager = Context.GetOwinContext().GetUserManager(Of ApplicationUserManager)()
        Dim signInManager = Context.GetOwinContext().Get(Of ApplicationSignInManager)()
        Dim user = New ApplicationUser() With {.UserName = uAlias, .Email = userName}
        Dim result = manager.Create(user, Password.Text)
        If result.Succeeded Then
            ' For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
            ' Dim code = manager.GenerateEmailConfirmationToken(user.Id)
            ' Dim callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request)
            ' manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=""" & callbackUrl & """>here</a>.")

            Call ClearFields()
            Response.Redirect("/Account/RegisterUseAdm")
            'signInManager.SignIn(user, isPersistent:=False, rememberBrowser:=False)
            'IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
        Else
            ErrorMessage.Text = result.Errors.FirstOrDefault()
        End If
    End Sub

    Private Sub ClearFields()
        UserAlias.Text = Nothing
        Email.Text = Nothing
    End Sub

End Class
