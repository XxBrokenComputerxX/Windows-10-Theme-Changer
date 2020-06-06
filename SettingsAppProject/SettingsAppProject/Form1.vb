Public Class Form1
    Private Sub LightBtn_Click(sender As Object, e As EventArgs) Handles LightBtn.Click
        Process.Start("C:\Program Files\#ThemeChanger\VBSLightmode.vbs")
    End Sub

    Private Sub DarkBtn_Click(sender As Object, e As EventArgs) Handles DarkBtn.Click
        Process.Start("C:\Program Files\#ThemeChanger\VBSdarkmode.vbs")
    End Sub

    Private Sub DelBtn_Click(sender As Object, e As EventArgs) Handles DelBtn.Click
        Process.Start("C:\Program Files\#ThemeChanger\VBSdel.vbs")
    End Sub

    Private Sub uninst_Click(sender As Object, e As EventArgs) Handles uninst.Click
        On Error GoTo ErrorHandler
        Process.Start("C:\Program Files\#ThemeChanger\VBSdel.vbs")

        System.Threading.Thread.Sleep(200)
        My.Computer.FileSystem.DeleteFile("C:\Program Files\#ThemeChanger\VBSLightMode.vbs")
        My.Computer.FileSystem.DeleteFile("C:\Program Files\#ThemeChanger\VBSDarkMode.vbs")
        My.Computer.FileSystem.DeleteFile("C:\Program Files\#ThemeChanger\VBSDel.vbs")
        End
        Exit Sub
ErrorHandler:
        End
        Resume Next
    End Sub
End Class
