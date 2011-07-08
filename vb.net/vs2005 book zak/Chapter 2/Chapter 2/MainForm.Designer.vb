<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MainForm
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(MainForm))
        Me.Label1 = New System.Windows.Forms.Label
        Me.Label2 = New System.Windows.Forms.Label
        Me.xNameTextBox = New System.Windows.Forms.TextBox
        Me.xAddressTextBox = New System.Windows.Forms.TextBox
        Me.xCityTextBox = New System.Windows.Forms.TextBox
        Me.Label3 = New System.Windows.Forms.Label
        Me.xStateTextBox = New System.Windows.Forms.TextBox
        Me.Label4 = New System.Windows.Forms.Label
        Me.xZipTextBox = New System.Windows.Forms.TextBox
        Me.Label5 = New System.Windows.Forms.Label
        Me.PictureBox1 = New System.Windows.Forms.PictureBox
        Me.Label6 = New System.Windows.Forms.Label
        Me.xBlueTextBox = New System.Windows.Forms.TextBox
        Me.xYellowTextBox = New System.Windows.Forms.TextBox
        Me.Label7 = New System.Windows.Forms.Label
        Me.Label8 = New System.Windows.Forms.Label
        Me.xCalcButton = New System.Windows.Forms.Button
        Me.Label9 = New System.Windows.Forms.Label
        Me.Label10 = New System.Windows.Forms.Label
        Me.xTotalBoardsLabel = New System.Windows.Forms.Label
        Me.xTotalPriceLabel = New System.Windows.Forms.Label
        Me.xClearButton = New System.Windows.Forms.Button
        Me.xExitButton = New System.Windows.Forms.Button
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(14, 103)
        Me.Label1.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(38, 13)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "&Name:"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(14, 132)
        Me.Label2.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(48, 13)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "&Address:"
        '
        'xNameTextBox
        '
        Me.xNameTextBox.Location = New System.Drawing.Point(83, 103)
        Me.xNameTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xNameTextBox.Name = "xNameTextBox"
        Me.xNameTextBox.Size = New System.Drawing.Size(172, 20)
        Me.xNameTextBox.TabIndex = 1
        '
        'xAddressTextBox
        '
        Me.xAddressTextBox.Location = New System.Drawing.Point(83, 129)
        Me.xAddressTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xAddressTextBox.Name = "xAddressTextBox"
        Me.xAddressTextBox.Size = New System.Drawing.Size(172, 20)
        Me.xAddressTextBox.TabIndex = 3
        '
        'xCityTextBox
        '
        Me.xCityTextBox.Location = New System.Drawing.Point(83, 155)
        Me.xCityTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xCityTextBox.Name = "xCityTextBox"
        Me.xCityTextBox.Size = New System.Drawing.Size(172, 20)
        Me.xCityTextBox.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(14, 158)
        Me.Label3.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(27, 13)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Ci&ty:"
        '
        'xStateTextBox
        '
        Me.xStateTextBox.Location = New System.Drawing.Point(83, 181)
        Me.xStateTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xStateTextBox.Name = "xStateTextBox"
        Me.xStateTextBox.Size = New System.Drawing.Size(28, 20)
        Me.xStateTextBox.TabIndex = 7
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(14, 184)
        Me.Label4.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(35, 13)
        Me.Label4.TabIndex = 6
        Me.Label4.Text = "&State:"
        '
        'xZipTextBox
        '
        Me.xZipTextBox.Location = New System.Drawing.Point(200, 181)
        Me.xZipTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xZipTextBox.Name = "xZipTextBox"
        Me.xZipTextBox.Size = New System.Drawing.Size(54, 20)
        Me.xZipTextBox.TabIndex = 9
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(157, 184)
        Me.Label5.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(27, 13)
        Me.Label5.TabIndex = 8
        Me.Label5.Text = "&ZIP:"
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Image)
        Me.PictureBox1.InitialImage = CType(resources.GetObject("PictureBox1.InitialImage"), System.Drawing.Image)
        Me.PictureBox1.Location = New System.Drawing.Point(60, 12)
        Me.PictureBox1.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(100, 50)
        Me.PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage
        Me.PictureBox1.TabIndex = 10
        Me.PictureBox1.TabStop = False
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label6.Location = New System.Drawing.Point(166, 32)
        Me.Label6.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(216, 16)
        Me.Label6.TabIndex = 17
        Me.Label6.Text = "Skate-Away Sales Order Form"
        '
        'xBlueTextBox
        '
        Me.xBlueTextBox.BackColor = System.Drawing.Color.FromArgb(CType(CType(192, Byte), Integer), CType(CType(192, Byte), Integer), CType(CType(255, Byte), Integer))
        Me.xBlueTextBox.Location = New System.Drawing.Point(188, 207)
        Me.xBlueTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xBlueTextBox.Name = "xBlueTextBox"
        Me.xBlueTextBox.Size = New System.Drawing.Size(66, 20)
        Me.xBlueTextBox.TabIndex = 11
        '
        'xYellowTextBox
        '
        Me.xYellowTextBox.BackColor = System.Drawing.Color.FromArgb(CType(CType(255, Byte), Integer), CType(CType(255, Byte), Integer), CType(CType(128, Byte), Integer))
        Me.xYellowTextBox.Location = New System.Drawing.Point(188, 233)
        Me.xYellowTextBox.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xYellowTextBox.Name = "xYellowTextBox"
        Me.xYellowTextBox.Size = New System.Drawing.Size(66, 20)
        Me.xYellowTextBox.TabIndex = 13
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(14, 210)
        Me.Label7.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(131, 13)
        Me.Label7.TabIndex = 10
        Me.Label7.Text = "&Blue skateboards ordered:"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(14, 236)
        Me.Label8.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(141, 13)
        Me.Label8.TabIndex = 12
        Me.Label8.Text = "&Yellow skateboards ordered:"
        '
        'xCalcButton
        '
        Me.xCalcButton.Location = New System.Drawing.Point(341, 101)
        Me.xCalcButton.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xCalcButton.Name = "xCalcButton"
        Me.xCalcButton.Size = New System.Drawing.Size(95, 23)
        Me.xCalcButton.TabIndex = 14
        Me.xCalcButton.Text = "&Calculate Order"
        Me.xCalcButton.UseVisualStyleBackColor = True
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(275, 210)
        Me.Label9.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(95, 13)
        Me.Label9.TabIndex = 18
        Me.Label9.Text = "Total skateboards:"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(275, 236)
        Me.Label10.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(61, 13)
        Me.Label10.TabIndex = 19
        Me.Label10.Text = "Total Price:"
        '
        'xTotalBoardsLabel
        '
        Me.xTotalBoardsLabel.AutoSize = True
        Me.xTotalBoardsLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xTotalBoardsLabel.Location = New System.Drawing.Point(376, 207)
        Me.xTotalBoardsLabel.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.xTotalBoardsLabel.MinimumSize = New System.Drawing.Size(60, 20)
        Me.xTotalBoardsLabel.Name = "xTotalBoardsLabel"
        Me.xTotalBoardsLabel.Size = New System.Drawing.Size(60, 20)
        Me.xTotalBoardsLabel.TabIndex = 20
        Me.xTotalBoardsLabel.Text = "             "
        Me.xTotalBoardsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xTotalPriceLabel
        '
        Me.xTotalPriceLabel.AutoSize = True
        Me.xTotalPriceLabel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.xTotalPriceLabel.Location = New System.Drawing.Point(341, 233)
        Me.xTotalPriceLabel.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.xTotalPriceLabel.MinimumSize = New System.Drawing.Size(94, 20)
        Me.xTotalPriceLabel.Name = "xTotalPriceLabel"
        Me.xTotalPriceLabel.Size = New System.Drawing.Size(94, 20)
        Me.xTotalPriceLabel.TabIndex = 21
        Me.xTotalPriceLabel.Text = "             "
        Me.xTotalPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'xClearButton
        '
        Me.xClearButton.Location = New System.Drawing.Point(341, 127)
        Me.xClearButton.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xClearButton.Name = "xClearButton"
        Me.xClearButton.Size = New System.Drawing.Size(95, 23)
        Me.xClearButton.TabIndex = 15
        Me.xClearButton.Text = "C&lear Screen"
        Me.xClearButton.UseVisualStyleBackColor = True
        '
        'xExitButton
        '
        Me.xExitButton.Location = New System.Drawing.Point(341, 153)
        Me.xExitButton.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.xExitButton.Name = "xExitButton"
        Me.xExitButton.Size = New System.Drawing.Size(95, 23)
        Me.xExitButton.TabIndex = 16
        Me.xExitButton.Text = "E&xit"
        Me.xExitButton.UseVisualStyleBackColor = True
        '
        'MainForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.Control
        Me.ClientSize = New System.Drawing.Size(451, 284)
        Me.Controls.Add(Me.xExitButton)
        Me.Controls.Add(Me.xClearButton)
        Me.Controls.Add(Me.xTotalPriceLabel)
        Me.Controls.Add(Me.xTotalBoardsLabel)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.xCalcButton)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.xYellowTextBox)
        Me.Controls.Add(Me.xBlueTextBox)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.xZipTextBox)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.xStateTextBox)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.xCityTextBox)
        Me.Controls.Add(Me.xAddressTextBox)
        Me.Controls.Add(Me.xNameTextBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Margin = New System.Windows.Forms.Padding(2, 3, 2, 3)
        Me.Name = "MainForm"
        Me.Text = "Skate-Away Sales"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents xNameTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xAddressTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xCityTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents xStateTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents xZipTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents xBlueTextBox As System.Windows.Forms.TextBox
    Friend WithEvents xYellowTextBox As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents xCalcButton As System.Windows.Forms.Button
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents xTotalBoardsLabel As System.Windows.Forms.Label
    Friend WithEvents xTotalPriceLabel As System.Windows.Forms.Label
    Friend WithEvents xClearButton As System.Windows.Forms.Button
    Friend WithEvents xExitButton As System.Windows.Forms.Button

End Class
