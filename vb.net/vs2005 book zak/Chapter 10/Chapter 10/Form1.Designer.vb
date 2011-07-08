<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Friends
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.xAddButton = New System.Windows.Forms.Button
        Me.xRemoveButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        Me.Label1 = New System.Windows.Forms.Label
        Me.xFriendsComboBox = New System.Windows.Forms.ComboBox
        Me.SuspendLayout()
        '
        'xAddButton
        '
        Me.xAddButton.Location = New System.Drawing.Point(248, 37)
        Me.xAddButton.Name = "xAddButton"
        Me.xAddButton.Size = New System.Drawing.Size(75, 23)
        Me.xAddButton.TabIndex = 2
        Me.xAddButton.Text = "&Add"
        Me.xAddButton.UseVisualStyleBackColor = True
        '
        'xRemoveButton
        '
        Me.xRemoveButton.Location = New System.Drawing.Point(248, 66)
        Me.xRemoveButton.Name = "xRemoveButton"
        Me.xRemoveButton.Size = New System.Drawing.Size(75, 23)
        Me.xRemoveButton.TabIndex = 3
        Me.xRemoveButton.Text = "&Remove"
        Me.xRemoveButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(248, 95)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(75, 23)
        Me.xExitButton.TabIndex = 4
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(21, 21)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(44, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "&Friends:"
        '
        'xFriendsComboBox
        '
        Me.xFriendsComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.Simple
        Me.xFriendsComboBox.FormattingEnabled = True
        Me.xFriendsComboBox.Location = New System.Drawing.Point(24, 36)
        Me.xFriendsComboBox.Name = "xFriendsComboBox"
        Me.xFriendsComboBox.Size = New System.Drawing.Size(203, 202)
        Me.xFriendsComboBox.TabIndex = 5
        '
        'Friends
        '
        Me.AcceptButton = Me.xAddButton
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(357, 262)
        Me.Controls.Add(Me.xFriendsComboBox)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xRemoveButton)
        Me.Controls.Add(Me.xAddButton)
        Me.Name = "Friends"
        Me.Text = "Friends"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents xAddButton As System.Windows.Forms.Button
    Friend WithEvents xRemoveButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents xFriendsComboBox As System.Windows.Forms.ComboBox

End Class
