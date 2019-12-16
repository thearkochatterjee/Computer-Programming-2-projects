Public Class frmlab3
    Dim total As Double
    Dim subtotal As Double
    Dim tax As Double
    Dim price As Double
    Dim quanity As Long
    Const taxrate = 0.0725

    Private Sub cmdexit_Click(sender As Object, e As EventArgs) Handles cmdexit.Click
        End
    End Sub

    Private Sub cmdreset_Click(sender As Object, e As EventArgs) Handles cmdreset.Click
        txtprice.Clear()
        txtquanity.Clear()
        txtsubtotal.Clear()
        txttax.Clear()
        txttitle.Clear()
        txttotal.Clear()
    End Sub

    Private Sub cmdfind_Click(sender As Object, e As EventArgs) Handles cmdfind.Click

        price = Val(txtprice.Text)
        quanity = Val(txtquanity.Text)
        subtotal = price * quanity
        tax = subtotal * taxrate
        total = subtotal + tax
        txtsubtotal.Text = subtotal.ToString
        txttax.Text = tax.ToString
        txttotal.Text = total.ToString
        txttotal.ReadOnly = True
        txtsubtotal.ReadOnly = True
        txttax.ReadOnly = True
    End Sub

    Private Sub frmlab3_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        txttotal.ReadOnly = True
        txtsubtotal.ReadOnly = True
        txttax.ReadOnly = True
    End Sub

    Private Sub cmdtotals_Click(sender As Object, e As EventArgs) Handles cmdtotals.Click
        Try
            'Display the total sales, total books sold, 
            'and average book value in a message box.
            Dim AverageSaleDecimal As Decimal = total / quanity
            Dim MessageString As String = "Total Sales: " & total.ToString("C") & ControlChars.NewLine & "Total Books Sold: " & quanity.ToString("N0") & ControlChars.NewLine & "Average Book Value: " & AverageSaleDecimal.ToString("C")

            MessageBox.Show(MessageString, "Totals and Averages", MessageBoxButtons.OK, MessageBoxIcon.Information)

        Catch exArithmeticException As ArithmeticException
            MessageBox.Show("No books have been sold yet", "Zero Sales Message", MessageBoxButtons.OK, MessageBoxIcon.Information)
        Catch ex As Exception
            MessageBox.Show("Unexpected Error-inform the system administrator", "Unknown Error in Totals Button", MessageBoxButtons.OK, MessageBoxIcon.Error)
        End Try

    End Sub
End Class
