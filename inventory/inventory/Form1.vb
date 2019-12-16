
Public Class frmtech
    Dim entry As Integer
    Dim tin As String
    Dim type As String
    Dim brand As String
    Dim s As String
    Dim ram As String
    Dim graph As String
    Dim soft1 As String
    Dim soft2 As String
    Dim soft3 As String
    Dim soft4 As String
    Dim soft5 As String
    Dim soft6 As String
    Dim soft7 As String
    Dim soft8 As String
    Dim soft9 As String
    Dim soft10 As String
    Dim soft11 As String
    Dim soft12 As String
    Dim age As String
    Dim current As Integer
    Dim path As String
    Dim techarray(9999999) As String
    Dim total As Long
    Dim op1 As String

    Private Sub cmdadd_Click(sender As Object, e As EventArgs) Handles cmdadd.Click
        entry = current + 1
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
        techarray(entry) = tin
        lstdata.Items.Add(techarray(entry))
        txtdata.Text = txtdata.Text + techarray(entry) + vbCrLf
        current = entry
        Timer1.Enabled = True
    End Sub

    Private Sub cbotype_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbotype.SelectedIndexChanged
        If cbotype.Text = "Laptop" Then
            type = "L"
            If cbobrand.Text = "Apple" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple laptop.jpg")
            ElseIf cbobrand.Text = "Dell" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell laptop.jpg")
            ElseIf cbobrand.Text = "Gateway" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway laptop.jpg")
            ElseIf cbobrand.Text = "Ascur" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur laptop.jpg")
            ElseIf cbobrand.Text = "Lenova" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova laptop.jpg")
            End If
        ElseIf cbotype.Text = "Desktop" Then
            type = "D"
            If cbobrand.Text = "Apple" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple desktop.jpg")
            ElseIf cbobrand.Text = "Dell" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell desktop.jpg")
            ElseIf cbobrand.Text = "Gateway" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway desktop.jpg")
            ElseIf cbobrand.Text = "Ascur" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur desktop.jpg")
            ElseIf cbobrand.Text = "Lenova" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova desktop.jpg")
            End If
        ElseIf cbotype.Text = "Ultrabook" Then
            type = "U"
            If cbobrand.Text = "Apple" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple ultrabook.jpg")
            ElseIf cbobrand.Text = "Dell" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell ultrabook.jpg")
            ElseIf cbobrand.Text = "Gateway" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway ultrabook.jpg")
            ElseIf cbobrand.Text = "Ascur" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur ultrabook.jpg")
            ElseIf cbobrand.Text = "Lenova" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova ultrabook.jpg")
            End If
        ElseIf cbotype.Text = "2 in 1" Then
            type = "I"
            If cbobrand.Text = "Apple" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple 2in1.jpg")
            ElseIf cbobrand.Text = "Dell" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell 2in1.jpg")
            ElseIf cbobrand.Text = "Gateway" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway 2in1.jpg")
            ElseIf cbobrand.Text = "Ascur" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur 2in1.jpg")
            ElseIf cbobrand.Text = "Lenova" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova 2in1.jpg")
            End If
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub frmtech_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Timer1.Enabled = False
        cbotype.Items.Add("Laptop")
        cbotype.Items.Add("Desktop")
        cbotype.Items.Add("Ultrabook")
        cbotype.Items.Add("2 in 1")
        cbobrand.Items.Add("Dell")
        cbobrand.Items.Add("Apple")
        cbobrand.Items.Add("Gateway")
        cbobrand.Items.Add("Ascur")
        cbobrand.Items.Add("Lenova")
        cboage.Items.Add("New")
        cboage.Items.Add("Used")
        cboage.Items.Add("Referbrished")
        type = "0"
        brand = "0"
        s = "0"
        ram = "0"
        graph = "0"
        soft1 = "0"
        soft2 = "0"
        soft3 = "0"
        soft4 = "0"
        soft5 = "0"
        soft6 = "0"
        soft7 = "0"
        soft8 = "0"
        soft9 = "0"
        soft10 = "0"
        soft11 = "0"
        soft12 = "0"
    End Sub

    Private Sub cmdexit_Click(sender As Object, e As EventArgs) Handles cmdexit.Click
        End
    End Sub

    Private Sub rnd8gb_CheckedChanged(sender As Object, e As EventArgs) Handles rnd8gb.CheckedChanged
        If rnd8gb.Checked = True Then
            ram = "1"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd12gb_CheckedChanged(sender As Object, e As EventArgs) Handles rnd12gb.CheckedChanged
        If rnd12gb.Checked = True Then
            ram = "2"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd16gb_CheckedChanged(sender As Object, e As EventArgs) Handles rnd16gb.CheckedChanged
        If rnd16gb.Checked = True Then
            ram = "3"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd13in_CheckedChanged(sender As Object, e As EventArgs) Handles rnd13in.CheckedChanged
        If rnd13in.Checked = True Then
            s = "1"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd15in_CheckedChanged(sender As Object, e As EventArgs) Handles rnd15in.CheckedChanged
        If rnd15in.Checked = True Then
            s = "2"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd17in_CheckedChanged(sender As Object, e As EventArgs) Handles rnd17in.CheckedChanged
        If rnd17in.Checked = True Then
            s = "3"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd400ppi_CheckedChanged(sender As Object, e As EventArgs) Handles rnd400ppi.CheckedChanged
        If rnd400ppi.Checked = True Then
            graph = "1"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd500ppi_CheckedChanged(sender As Object, e As EventArgs) Handles rnd500ppi.CheckedChanged
        If rnd500ppi.Checked = True Then
            graph = "2"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub rnd600ppi_CheckedChanged(sender As Object, e As EventArgs) Handles rnd600ppi.CheckedChanged
        If rnd600ppi.Checked = True Then
            graph = "3"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkword_CheckedChanged(sender As Object, e As EventArgs) Handles chkword.CheckedChanged
        If chkword.Checked = True Then
            soft1 = "1"
        Else
            soft1 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkppt_CheckedChanged(sender As Object, e As EventArgs) Handles chkppt.CheckedChanged
        If chkppt.Checked = True Then
            soft2 = "1"
        Else
            soft2 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkexcel_CheckedChanged(sender As Object, e As EventArgs) Handles chkexcel.CheckedChanged
        If chkexcel.Checked = True Then
            soft3 = "1"
        Else
            soft3 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkvideo_CheckedChanged(sender As Object, e As EventArgs) Handles chkvideo.CheckedChanged
        If chkvideo.Checked = True Then
            soft4 = "1"
        Else
            soft4 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkminecraft_CheckedChanged(sender As Object, e As EventArgs) Handles chkminecraft.CheckedChanged
        If chkminecraft.Checked = True Then
            soft5 = "1"
        Else
            soft5 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkaudio_CheckedChanged(sender As Object, e As EventArgs) Handles chkaudio.CheckedChanged
        If chkaudio.Checked = True Then
            soft6 = "1"
        Else
            soft6 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkonenote_CheckedChanged(sender As Object, e As EventArgs) Handles chkonenote.CheckedChanged
        If chkonenote.Checked = True Then
            soft7 = "1"
        Else
            soft7 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkchrome_CheckedChanged(sender As Object, e As EventArgs) Handles chkchrome.CheckedChanged
        If chkchrome.Checked = True Then
            soft8 = "1"
        Else
            soft8 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub cbobrand_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cbobrand.SelectedIndexChanged
        If cbobrand.Text = "Dell" Then
            brand = "D"
            If cbotype.Text = "Laptop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell laptop.jpg")
            ElseIf cbotype.Text = "Desktop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell desktop.jpg")
            ElseIf cbotype.Text = "Ultrabook" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell ultrabook.jpg")
            ElseIf cbotype.Text = "2 in 1" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\dell 2in1.jpg")
            End If
        ElseIf cbobrand.Text = "Apple" Then
            brand = "A"
            If cbotype.Text = "Laptop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple laptop.jpg")
            ElseIf cbotype.Text = "Desktop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple desktop.jpg")
            ElseIf cbotype.Text = "Ultrabook" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple ultrabook.jpg")
            ElseIf cbotype.Text = "2 in 1" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\apple 2in1.jpg")
            End If
        ElseIf cbobrand.Text = "Gateway" Then
            brand = "G"
            If cbotype.Text = "Laptop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway laptop.jpg")
            ElseIf cbotype.Text = "Desktop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway desktop.jpg")
            ElseIf cbotype.Text = "Ultrabook" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway ultrabook.jpg")
            ElseIf cbotype.Text = "2 in 1" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\gateway 2in1.jpg")
            End If
        ElseIf cbobrand.Text = "Ascur" Then
            brand = "a"
            If cbotype.Text = "Laptop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur laptop.jpg")
            ElseIf cbotype.Text = "Desktop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur desktop.jpg")
            ElseIf cbotype.Text = "Ultrabook" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur ultrabook.jpg")
            ElseIf cbotype.Text = "2 in 1" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\ascur 2in1.jpg")
            End If
        ElseIf cbobrand.Text = "Lenova" Then
            brand = "L"
            If cbotype.Text = "Laptop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova laptop.jpg")
            ElseIf cbotype.Text = "Desktop" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova desktop.jpg")
            ElseIf cbotype.Text = "Ultrabook" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova ultrabook.jpg")
            ElseIf cbotype.Text = "2 in 1" Then
                pic1.Load("F:\arko\Computer Programming 2 projects\lenova 2in1.jpg")
            End If
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub cmdsave_Click(sender As Object, e As EventArgs) Handles cmdsave.Click
        'creating file
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        'path = Trim(InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\tindata.txt"))
        oWrite = oFile.CreateText(path)

        'writing file
        oWrite.WriteLine(txtdata.Text)
        oWrite.Close()
    End Sub

    Private Sub cmdsaveas_Click(sender As Object, e As EventArgs) Handles cmdsaveas.Click
        'creating file
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        path = Trim(InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\tindata.txt"))
        oWrite = oFile.CreateText(path)

        'writing file
        oWrite.WriteLine(txtdata.Text)
        oWrite.Close()

    End Sub

    Private Sub cboage_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cboage.SelectedIndexChanged
        If cboage.Text = "New" Then
            age = "N"
        ElseIf cboage.Text = "Used" Then
            age = "U"
        ElseIf cboage.Text = "Referbished" Then
            age = "R"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub cmdopen_Click(sender As Object, e As EventArgs) Handles cmdopen.Click
        'access file

        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        Dim i As Integer

        path = Trim(InputBox("What is the path?", "Path", "F:\arko\Computer Programming 2 projects\tindata.txt"))
        oRead = oFile.OpenText(path)

        'entire file

        Dim EntireFile As String
        oRead = oFile.OpenText(path)
        EntireFile = oRead.ReadToEnd()
        txtdata.Text = EntireFile

        'line by line
        oRead = oFile.OpenText(path)
        i = 1
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            techarray(i) = LineIn
            lstdata.Items.Add(techarray(i))
            i = i + 1
            total = i
            current = i
        End While
        oRead.Close()

    End Sub

    Private Sub cmdchange_Click(sender As Object, e As EventArgs) Handles cmdchange.Click
        Dim num As Long
        Dim pos As Long
        pos = lstdata.SelectedIndex + 1
        num = lstdata.Items.Count
        techarray(pos) = tin
        total = lstdata.Items.Count
        lstdata.Items.Clear()
        txtdata.Clear()
        For i = 1 To total
            lstdata.Items.Add(techarray(i))
        Next
        txtdata.Text = techarray(1)
        For i = 2 To lstdata.Items.Count + 1
            txtdata.Text = txtdata.Text + vbCrLf + techarray(i)
        Next
    End Sub

    Private Sub lstdata_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstdata.SelectedIndexChanged
        If Mid(lstdata.Items(lstdata.SelectedIndex), 1, 1) = "L" Then
            type = "L"
            cbotype.Text = "Laptop"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 1, 1) = "D" Then
            type = "D"
            cbotype.Text = "Desktop"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 1, 1) = "U" Then
            type = "U"
            cbotype.Text = "Ultrabook"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 1, 1) = "I" Then
            type = "I"
            cbotype.Text = "2 in 1"
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 2, 1) = "D" Then
            brand = "D"
            cbobrand.Text = "Dell"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 2, 1) = "A" Then
            brand = "A"
            cbobrand.Text = "Apple"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 2, 1) = "L" Then
            brand = "L"
            cbobrand.Text = "Lenova"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 2, 1) = "G" Then
            brand = "G"
            cbobrand.Text = "Gateway"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 2, 1) = "a" Then
            brand = "a"
            cbobrand.Text = "Ascur"
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 3, 1) = "1" Then
            s = "1"
            rnd13in.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 3, 1) = "2" Then
            s = "2"
            rnd15in.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 3, 1) = "3" Then
            s = "3"
            rnd17in.Checked = True
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 4, 1) = "1" Then
            ram = "1"
            rnd8gb.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 4, 1) = "2" Then
            ram = "2"
            rnd12gb.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 4, 1) = "3" Then
            ram = "3"
            rnd16gb.Checked = True
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 5, 1) = "1" Then
            graph = "1"
            rnd400ppi.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 5, 1) = "2" Then
            graph = "2"
            rnd500ppi.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 5, 1) = "3" Then
            graph = "3"
            rnd600ppi.Checked = True
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 6, 1) = "1" Then
            soft1 = "1"
            chkword.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 6, 1) = "0" Then
            soft1 = "0"
            chkword.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 7, 1) = "1" Then
            soft2 = "1"
            chkppt.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 7, 1) = "0" Then
            soft2 = "0"
            chkppt.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 8, 1) = "1" Then
            soft3 = "1"
            chkexcel.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 8, 1) = "0" Then
            soft3 = "0"
            chkexcel.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 9, 1) = "1" Then
            soft4 = "1"
            chkvideo.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 9, 1) = "0" Then
            soft4 = "0"
            chkvideo.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 10, 1) = "1" Then
            soft5 = "1"
            chkminecraft.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 10, 1) = "0" Then
            soft5 = "0"
            chkminecraft.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 11, 1) = "1" Then
            soft6 = "1"
            chkaudio.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 11, 1) = "0" Then
            soft6 = "0"
            chkaudio.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 12, 1) = "1" Then
            soft7 = "1"
            chkonenote.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 12, 1) = "0" Then
            soft7 = "0"
            chkonenote.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 13, 1) = "1" Then
            soft8 = "1"
            chkchrome.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 13, 1) = "0" Then
            soft8 = "0"
            chkchrome.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 14, 1) = "1" Then
            soft9 = "1"
            chkmusic.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 14, 1) = "0" Then
            soft9 = "0"
            chkmusic.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 15, 1) = "1" Then
            soft10 = "1"
            chkremind.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 15, 1) = "0" Then
            soft10 = "0"
            chkremind.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 16, 1) = "1" Then
            soft11 = "1"
            chkfirefox.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 16, 1) = "0" Then
            soft11 = "0"
            chkfirefox.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 17, 1) = "1" Then
            soft12 = "1"
            chkdrive.Checked = True
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 17, 1) = "0" Then
            soft12 = "0"
            chkdrive.Checked = False
        End If
        If Mid(lstdata.Items(lstdata.SelectedIndex), 18, 1) = "N" Then
            age = "N"
            cboage.Text = "New"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 18, 1) = "U" Then
            age = "U"
            cboage.Text = "Used"
        ElseIf Mid(lstdata.Items(lstdata.SelectedIndex), 18, 1) = "R" Then
            age = "R"
            cboage.Text = "Referbrished"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        piccar.Left = piccar.Left + 10
        If piccar.Left = 450 Or piccar.Left > 450 Then
            piccar.Left = 0
            My.Computer.Audio.Play("F:\arko\Computer Programming 2 projects\car.wav",
        AudioPlayMode.WaitToComplete)
            Timer1.Enabled = False
        End If
    End Sub

    Private Sub cmddelete_Click(sender As Object, e As EventArgs) Handles cmddelete.Click
        op1 = MsgBox("Are you sure you want to delete this?", vbYesNo, "Are you Sure")
        If op1 = vbYes Then
            For i = lstdata.SelectedIndex To lstdata.Items.Count - 1
                techarray(i) = techarray(i + 1)
            Next
            total = lstdata.Items.Count
            lstdata.Items.Clear()
            For i = 1 To total
                lstdata.Items.Add(techarray(i))
            Next
            txtdata.Text = techarray(1)
            For i = 2 To lstdata.Items.Count + 1
                txtdata.Text = txtdata.Text + vbCrLf + techarray(i)
            Next
        End If
    End Sub

    Private Sub cmdreset_Click(sender As Object, e As EventArgs) Handles cmdreset.Click
        Timer1.Enabled = False
        cbotype.Items.Add("Laptop")
        cbotype.Items.Add("Desktop")
        cbotype.Items.Add("Ultrabook")
        cbotype.Items.Add("2 in 1")
        cbobrand.Items.Add("Dell")
        cbobrand.Items.Add("Apple")
        cbobrand.Items.Add("Gateway")
        cbobrand.Items.Add("Ascur")
        cbobrand.Items.Add("Lenova")
        cboage.Items.Add("New")
        cboage.Items.Add("Used")
        cboage.Items.Add("Referbrished")
        type = "0"
        brand = "0"
        s = "0"
        ram = "0"
        graph = "0"
        soft1 = "0"
        soft2 = "0"
        soft3 = "0"
        soft4 = "0"
        soft5 = "0"
        soft6 = "0"
        soft7 = "0"
        soft8 = "0"
        soft9 = "0"
        soft10 = "0"
        soft11 = "0"
        soft12 = "0"
        chkaudio.Checked = False
        chkchrome.Checked = False
        chkexcel.Checked = False
        chkminecraft.Checked = False
        chkonenote.Checked = False
        chkppt.Checked = False
        chkvideo.Checked = False
        chkword.Checked = False
        rnd12gb.Checked = False
        rnd13in.Checked = False
        rnd15in.Checked = False
        rnd16gb.Checked = False
        rnd17in.Checked = False
        rnd400ppi.Checked = False
        rnd500ppi.Checked = False
        rnd600ppi.Checked = False
        rnd8gb.Checked = False
        lstdata.Items.Clear()
        txtdata.Clear()
        txttin.Clear()
    End Sub

    Private Sub chkmusic_CheckedChanged(sender As Object, e As EventArgs) Handles chkmusic.CheckedChanged
        If chkmusic.Checked = True Then
            soft9 = "1"
        Else
            soft9 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkremind_CheckedChanged(sender As Object, e As EventArgs) Handles chkremind.CheckedChanged
        If chkremind.Checked = True Then
            soft10 = "1"
        Else
            soft10 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkfirefox_CheckedChanged(sender As Object, e As EventArgs) Handles chkfirefox.CheckedChanged
        If chkfirefox.Checked = True Then
            soft11 = "1"
        Else
            soft11 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub

    Private Sub chkdrive_CheckedChanged(sender As Object, e As EventArgs) Handles chkdrive.CheckedChanged
        If chkdrive.Checked = True Then
            soft12 = "1"
        Else
            soft12 = "0"
        End If
        tin = type + brand + s + ram + graph + soft1 + soft2 + soft3 + soft4 + soft5 + soft6 + soft7 + soft8 + soft9 + soft10 + soft11 + soft12 + age
        txttin.Text = tin
    End Sub
End Class
