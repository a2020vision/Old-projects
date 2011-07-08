Public Class Form1
    Public animStart As Boolean
    Public btnLabels As String() = {"Start", "Stop"}
    Public defaultLocation As New System.Drawing.Point(34, 27)

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        animStart = False
        updates()

    End Sub
    Private Sub updates() Handles xStartBtn.Click
        If animStart Then
            xStartBtn.Text = btnLabels(1)
            animStart = False
            ' also start animation
            xCanvas.BackColor = Color.Beige
            'animate()
            thing.Location = defaultLocation
            System.Threading.Thread.Sleep(50)
            animate()
        Else
            resetall()
        End If
    End Sub
    Private Sub animate()
        Dim newLocation As System.Drawing.Point
        While thing.Location.X < 100
            newLocation.X = thing.Location.X + 1
            newLocation.Y = thing.Location.Y + 1
            thing.Location = newLocation
            System.Threading.Thread.Sleep(50)
        End While
        resetall()

    End Sub
    Private Sub resetall()
        xStartBtn.Text = btnLabels(0)
        animStart = True
        xCanvas.BackColor = Color.Black
        thing.Location = defaultLocation

    End Sub
End Class
