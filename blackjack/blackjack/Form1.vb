Public Class frm21
    Inherits System.Windows.Forms.Form
#Region " Windows Form Designer generated code "
#End Region

    Structure card
        Dim suit As Integer
        Dim vcard As Integer
        Dim rvc As Integer
    End Structure
    Dim deck(54) As card
    Dim temp As card
    Dim pcard(5) As card
    Dim dcard(5) As card
    Dim pscard(5) As card
    Structure sc
        Dim pname As String
        Dim point As Integer
    End Structure
    Dim scores(9999999) As sc
    Dim name1 As String
    Dim i As Integer, bet As Integer, ascore As Integer, p1a As Integer, ip1a As Integer, x As Integer, y As Integer, ccard As Integer, rpos As Integer
    Dim s As String, path As String
    Dim picpcard(5) As PictureBox
    Dim picdcard(5) As PictureBox
    Dim picpscard(5) As PictureBox
    Dim cardt As Integer, cardd As Integer, adcard As Integer
    Dim scard As Integer, scardt As Integer
    Dim aced As String, acet As Integer
    Dim jokerd As String, jokert As Integer
    Dim cscore As Integer
    Dim insure As String
    Dim ws1 As Integer, ws2 As Integer

    Sub enableall()
        cmddecrease.Enabled = True
        cmdincrease.Enabled = True
        cmddouble.Enabled = True
        cmdsplit.Enabled = True
        cmdfold.Enabled = True
        cmdhit.Enabled = True
        cmdstand.Enabled = True
        cmdstart.Enabled = True
        cmdhits1.Visible = False
        cmdhits2.Visible = False
        cmdstands1.Visible = False
        cmdstands2.Visible = False
        cmdhits1.Enabled = True
        cmdhits2.Enabled = True
        cmdstands1.Enabled = True
        cmdstands2.Enabled = True
        lblpcardval.Text = "Total Value of Cards:"
        lbldcardval.Text = ""
        ws1 = 0
        ws2 = 0
    End Sub

    Sub disableall()
        cmddecrease.Enabled = False
        cmdincrease.Enabled = False
        cmddouble.Enabled = False
        cmdsplit.Enabled = False
        cmdfold.Enabled = False
        cmdhit.Enabled = False
        cmdstand.Enabled = False
        cmdstart.Enabled = False
    End Sub

    Sub arrpicpcard()
        picpcard(1) = picp1
        picpcard(2) = picp2
        picpcard(3) = picp3
        picpcard(4) = picp4
        picpcard(5) = picp5
    End Sub

    Sub arrpicdcard()
        picdcard(1) = picd1
        picdcard(2) = picd2
        picdcard(3) = picd3
        picdcard(4) = picd4
        picdcard(5) = picd5
    End Sub

    Sub arrpicpscard()
        picpscard(1) = picps1
        picpscard(2) = picps2
        picpscard(3) = picps3
        picpscard(4) = picps4
        picpscard(5) = picps5
    End Sub

    Private Sub frm21_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        arrpicpcard()
        arrpicdcard()
        arrpicpscard()
        ws1 = 0
        ws2 = 0
        name1 = ""
        ip1a = 1000
        Me.Left = 0
        Me.Top = 0
        bet = 0
        Dim oFile As System.IO.File
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                If i = 1 Then
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(1).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(1).pname)
                        frmt10.lstpoints.Items.Add(scores(1).point)
                        lstnames.Items.Add(scores(i).pname)
                        lstpoint.Items.Add(scores(i).point)
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = txtscores.Text + vbCrLf + LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(i).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(i).pname)
                        frmt10.lstpoints.Items.Add(scores(i).point)
                        lstnames.Items.Add(scores(i).pname)
                        lstpoint.Items.Add(scores(i).point)
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        ascore = i
    End Sub

    Private Sub cmdquit_Click(sender As Object, e As EventArgs) Handles cmdquit.Click
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
        oWrite.WriteLine(txtscores.Text)
        oWrite.Close()
        End
    End Sub

    Private Sub cmdstart_Click(sender As Object, e As EventArgs) Handles cmdstart.Click
        If name1 = "" Then
            name1 = UCase(Trim(InputBox("What is your name?(must have only 3 characters)", "Player 1 name", "ace")))
            If Len(Trim(name1)) <> 3 Then
                MsgBox("You can only have 3 characters in your name)")
                name1 = ""
            Else
                lstnames.Items.Add(name1)
                lstpoint.Items.Add("1000")
            End If
            p1a = 1000
        End If
        If name1 <> "" Then
            cmdstart.Text = "Deal"
        End If
        ip1a = p1a
        If bet <> 0 Then
            i = 1
            For Me.x = 1 To 4
                For Me.y = 1 To 13
                    deck(i).vcard = y
                    If y = 11 Or y = 12 Or y = 13 Then
                        deck(i).rvc = 10
                    ElseIf y = 1 Then
                        deck(i).rvc = 11
                    Else
                        deck(i).rvc = y
                    End If
                    deck(i).suit = x
                    i = i + 1
                Next
            Next
            For Me.y = 1 To 2
                deck(i).vcard = 14
                deck(i).suit = 14
                i = i + 1
            Next
            For Me.i = 1 To 54
                lstdeck.Items.Add(deck(i).vcard.ToString + " - " + deck(i).suit.ToString + " - " + deck(i).rvc.ToString)
            Next
            lstdeck.Items.Clear()
            For Me.i = 1 To 54
                Randomize()
                rpos = Int(Rnd() * 54) + 1
                temp = deck(i)
                deck(i) = deck(rpos)
                deck(rpos) = temp
                lstdeck.Items.Add(deck(i).vcard.ToString + " - " + deck(i).suit.ToString + " - " + deck(i).rvc.ToString)
            Next
            For Me.i = 1 To 2
                If deck(i).vcard <> 14 Then
                    If deck(i).suit = 1 Then
                        s = "c"
                    ElseIf deck(i).suit = 2 Then
                        s = "d"
                    ElseIf deck(i).suit = 3 Then
                        s = "h"
                    ElseIf deck(i).suit = 4 Then
                        s = "s"
                    End If
                    path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + deck(i).vcard.ToString + s + ".gif"
                Else
                    path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                    If deck(1).vcard = 14 Then
                        If deck(2).rvc = 10 Or deck(2).rvc < 10 Then
                            deck(1).rvc = 11
                        Else
                            deck(1).rvc = 10
                        End If
                    End If
                    If deck(2).vcard = 14 Then
                        If deck(1).rvc = 10 Or deck(1).rvc < 10 Then
                            deck(2).rvc = 11
                        Else
                            deck(2).rvc = 10
                        End If
                    End If
                End If
                picpcard(i).Load(path)
                pcard(i) = deck(i)
            Next
            path = "E:\arko\Computer Programming 2\Card Images\cardimages\nb.gif"
            picdcard(1).Load(path)
            If deck(4).vcard <> 14 Then
                If deck(4).suit = 1 Then
                    s = "c"
                ElseIf deck(4).suit = 2 Then
                    s = "d"
                ElseIf deck(4).suit = 3 Then
                    s = "h"
                ElseIf deck(4).suit = 4 Then
                    s = "s"
                End If
                path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + deck(4).vcard.ToString + s + ".gif"
            Else
                path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                If deck(3).rvc <> 11 Then
                    deck(4).rvc = 11
                Else
                    deck(4).rvc = 10
                End If
                deck(4).rvc = 11
            End If
            picd2.Load(path)
            For Me.i = 1 To 2
                dcard(i) = deck(i + 2)
            Next
            ccard = 2
            enableall()
            If pcard(1).rvc <> pcard(2).rvc Then
                cmdsplit.Enabled = False
            End If
            lblpcardval.Text = "Total Value of Your Cards:" + (pcard(1).rvc + pcard(2).rvc).ToString
            cmdincrease.Enabled = False
            cmddecrease.Enabled = False
        End If
        If ccard = 2 Then
            cmdstart.Enabled = False
        End If
        If deck(1).rvc + deck(2).rvc = 21 Then
            MsgBox("You win Blackjack!" + vbCrLf + "You get $" + bet.ToString + ".00")
            ip1a = ip1a + bet * 1.5
            lblmoney.Text = ip1a.ToString
            bet = 0
            lblbet.Text = ""
            enableall()
            For Me.i = 1 To 5
                picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            Next
            cscore = Val(lblmoney.Text)
            lstpoint.Items(lstpoint.Items.Count - 1) = cscore
            txtscores.Clear()
            For Me.i = 0 To lstnames.Items.Count - 1
                If i = 0 Then
                    txtscores.Text = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                Else
                    txtscores.Text = txtscores.Text + vbCrLf + lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                End If
            Next
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
        End If
        lblpname.Text = name1
        lblmoney.Text = ip1a.ToString
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
        oWrite.WriteLine(txtscores.Text)
        oWrite.Close()
        txtscores.Clear()
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                If i = 1 Then
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(1).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(1).pname)
                        frmt10.lstpoints.Items.Add(scores(1).point)
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = txtscores.Text + vbCrLf + LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(i).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(i).pname)
                        frmt10.lstpoints.Items.Add(scores(i).point)
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        ascore = i
    End Sub

    Private Sub cmdincrease_Click(sender As Object, e As EventArgs) Handles cmdincrease.Click
        bet = bet + 50
        p1a = Val(lblmoney.Text)
        If bet > ip1a Then
            MsgBox(UCase(name1) + " does not have enough money")
            bet = bet - 50
        Else
            p1a = p1a - 50
        End If
        lblbet.Text = bet.ToString
        lblmoney.Text = p1a.ToString
    End Sub

    Private Sub cmddecrease_Click(sender As Object, e As EventArgs) Handles cmddecrease.Click
        bet = bet - 50
        If bet < 0 Then
            MsgBox(UCase(name1) + " needs to put in more money")
            bet = bet + 50
        Else
            p1a = p1a + 50
        End If
        lblbet.Text = bet.ToString
        lblmoney.Text = p1a.ToString
    End Sub

    Private Sub cmdhit_Click(sender As Object, e As EventArgs) Handles cmdhit.Click
        cardt = 0
        ccard = ccard + 1
        pcard(ccard) = deck(ccard + 2)
        If pcard(ccard).vcard <> 14 Then
            If pcard(ccard).suit = 1 Then
                s = "c"
            ElseIf pcard(ccard).suit = 2 Then
                s = "d"
            ElseIf pcard(ccard).suit = 3 Then
                s = "h"
            ElseIf pcard(ccard).suit = 4 Then
                s = "s"
            End If
            path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + pcard(ccard).vcard.ToString + s + ".gif"
        Else
            path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
            For Me.i = 1 To ccard - 1
                cardt = cardt + pcard(i).rvc
            Next
            pcard(ccard).rvc = 21 - cardt
            If pcard(ccard).rvc > 11 Then
                pcard(ccard).rvc = 11
            ElseIf pcard(ccard).rvc < 1 Then
                pcard(ccard).rvc = 1
            End If
        End If
        picpcard(ccard).Load(path)
        For Me.i = 0 To ccard
            cardt = cardt + pcard(i).rvc
        Next
        lblpcardval.Text = "Total Value of Your Cards:" + cardt.ToString
        If cardt > 21 Then
            aced = "no"
            jokerd = "no"
            For Me.i = 1 To ccard
                If pcard(i).vcard = 1 And pcard(i).rvc = 11 Then
                    aced = "yes"
                    acet = i
                End If
            Next
            For Me.i = 1 To ccard
                If pcard(i).vcard = 14 And pcard(i).rvc > 1 Then
                    jokerd = "yes"
                    jokert = i
                End If
            Next
            If aced = "no" And jokerd = "no" Then
                MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                lblbet.Text = "0"
                lblmoney.Text = ip1a.ToString
                For Me.i = 1 To 5
                    picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                Next
                enableall()
                bet = 0
                cscore = Val(lblmoney.Text)
                lstpoint.Items(lstpoint.Items.Count - 1) = cscore
                txtscores.Clear()
                For Me.i = 0 To lstnames.Items.Count - 1
                    If i = 0 Then
                        txtscores.Text = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                    Else
                        txtscores.Text = txtscores.Text + vbCrLf + lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                    End If
                Next
                Dim oFile As System.IO.File
                Dim oWrite As System.IO.StreamWriter
                oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
                oWrite.WriteLine(txtscores.Text)
                oWrite.Close()
                Dim oRead As System.IO.StreamReader
                Dim LineIn As String
                i = 1
                frmt10.lstnames.Items.Clear()
                frmt10.lstpoints.Items.Clear()
                oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
                While oRead.Peek <> -1
                    LineIn = oRead.ReadLine()
                    If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                        If i = 1 Then
                            If Len(Trim(LineIn)) <> 0 Then
                                txtscores.Text = LineIn
                                frmt10.lstall.Items.Add(LineIn)
                                scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                                scores(1).point = Val(Mid(LineIn, 4, 5))
                                frmt10.lstnames.Items.Add(scores(1).pname)
                                frmt10.lstpoints.Items.Add(scores(1).point)
                                i = i + 1
                            End If
                        Else
                            If Len(Trim(LineIn)) <> 0 Then
                                txtscores.Text = txtscores.Text + vbCrLf + LineIn
                                frmt10.lstall.Items.Add(LineIn)
                                scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                                scores(i).point = Val(Mid(LineIn, 4, 5))
                                frmt10.lstnames.Items.Add(scores(i).pname)
                                frmt10.lstpoints.Items.Add(scores(i).point)
                                i = i + 1
                            End If
                        End If
                    End If
                End While
                oRead.Close()
                ascore = i
            ElseIf aced = "yes" Then
                pcard(acet).rvc = 1
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                lblpcardval.Text = cardt.ToString
            ElseIf jokerd = "yes" Then
                pcard(jokert).rvc = 0
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                pcard(jokert).rvc = 21 - cardt
                If pcard(jokert).rvc > 11 Then
                    pcard(jokert).rvc = 11
                ElseIf pcard(jokert).rvc < 1 Then
                    pcard(jokert).rvc = 1
                    MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                    lblbet.Text = "0"
                    lblmoney.Text = ip1a.ToString
                    For Me.i = 1 To 5
                        picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    Next
                    enableall()
                    bet = 0
                End If
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                If cardt = 21 Then
                    MsgBox("You win")
                    cardt = 0
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
                    ip1a = ip1a + bet * 2
                    lblbet.Text = "0"
                    lblmoney.Text = ip1a.ToString
                    For Me.i = 1 To 5
                        picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    Next
                    enableall()
                    cscore = Val(lblmoney.Text)
                    lstpoint.Items(lstpoint.Items.Count - 1) = cscore
                    txtscores.Clear()
                    For Me.i = 0 To lstnames.Items.Count - 1
                        If i = 0 Then
                            txtscores.Text = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                        Else
                            txtscores.Text = txtscores.Text + vbCrLf + lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                        End If
                    Next
                    Dim oFile As System.IO.File
                    Dim oWrite As System.IO.StreamWriter
                    oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
                    oWrite.WriteLine(txtscores.Text)
                    oWrite.Close()
                    Dim oRead As System.IO.StreamReader
                    Dim LineIn As String
                    i = 1
                    frmt10.lstnames.Items.Clear()
                    frmt10.lstpoints.Items.Clear()
                    oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
                    While oRead.Peek <> -1
                        LineIn = oRead.ReadLine()
                        If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                            If i = 1 Then
                                If Len(Trim(LineIn)) <> 0 Then
                                    txtscores.Text = LineIn
                                    frmt10.lstall.Items.Add(LineIn)
                                    scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                                    scores(1).point = Val(Mid(LineIn, 4, 5))
                                    frmt10.lstnames.Items.Add(scores(1).pname)
                                    frmt10.lstpoints.Items.Add(scores(1).point)
                                    i = i + 1
                                End If
                            Else
                                If Len(Trim(LineIn)) <> 0 Then
                                    txtscores.Text = txtscores.Text + vbCrLf + LineIn
                                    frmt10.lstall.Items.Add(LineIn)
                                    scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                                    scores(i).point = Val(Mid(LineIn, 4, 5))
                                    frmt10.lstnames.Items.Add(scores(i).pname)
                                    frmt10.lstpoints.Items.Add(scores(i).point)
                                    i = i + 1
                                End If
                            End If
                        End If
                    End While
                    oRead.Close()
                    ascore = i
                End If
                lblpcardval.Text = cardt.ToString
            End If
        ElseIf cardt = 21 Then
            MsgBox("Congradulation you got 21")
            ip1a = ip1a + bet * 2
            lblbet.Text = "0"
            lblmoney.Text = ip1a.ToString
            For Me.i = 1 To 5
                picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            Next
            enableall()
            bet = 0
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
            cscore = Val(lblmoney.Text)
            lstpoint.Items(lstpoint.Items.Count - 1) = cscore
            txtscores.Clear()
            For Me.i = 0 To lstnames.Items.Count - 1
                If i = 0 Then
                    txtscores.Text = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                Else
                    txtscores.Text = txtscores.Text + vbCrLf + lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
                End If
            Next
            Dim oFile As System.IO.File
            Dim oWrite As System.IO.StreamWriter
            oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
            oWrite.WriteLine(txtscores.Text)
            oWrite.Close()
            Dim oRead As System.IO.StreamReader
            Dim LineIn As String
            i = 1
            frmt10.lstnames.Items.Clear()
            frmt10.lstpoints.Items.Clear()
            oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
            While oRead.Peek <> -1
                LineIn = oRead.ReadLine()
                If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                    If i = 1 Then
                        If Len(Trim(LineIn)) <> 0 Then
                            txtscores.Text = LineIn
                            frmt10.lstall.Items.Add(LineIn)
                            scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                            scores(1).point = Val(Mid(LineIn, 4, 5))
                            frmt10.lstnames.Items.Add(scores(1).pname)
                            frmt10.lstpoints.Items.Add(scores(1).point)
                            i = i + 1
                        End If
                    Else
                        If Len(Trim(LineIn)) <> 0 Then
                            txtscores.Text = txtscores.Text + vbCrLf + LineIn
                            frmt10.lstall.Items.Add(LineIn)
                            scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                            scores(i).point = Val(Mid(LineIn, 4, 5))
                            frmt10.lstnames.Items.Add(scores(i).pname)
                            frmt10.lstpoints.Items.Add(scores(i).point)
                            i = i + 1
                        End If
                    End If
                End If
            End While
            oRead.Close()
            ascore = i
        Else
            cmdsplit.Enabled = False
        End If
    End Sub

    Private Sub cmdstand_Click(sender As Object, e As EventArgs) Handles cmdstand.Click
        cardd = 0
        cardt = 0
        For Me.i = 1 To ccard
            cardt = cardt + pcard(i).rvc
        Next
        For Me.i = 0 To adcard
            cardd = cardd + dcard(i).rvc
        Next
        adcard = 2
        If dcard(1).rvc + dcard(2).rvc = 21 Then
            insure = MsgBox("Do you want insurence?", vbYesNo, "Insurence")
            If insure = vbYes Then
                ip1a = ip1a + bet / 2
            End If
        End If
        If cardd < 17 Then
            cardd = 0
            Do While cardd < 17
                adcard = adcard + 1
                dcard(adcard) = deck(adcard + 10)
                For Me.i = 1 To adcard
                    If dcard(i).vcard <> 14 Then
                        If dcard(i).suit = 1 Then
                            s = "c"
                        ElseIf dcard(i).suit = 2 Then
                            s = "d"
                        ElseIf dcard(i).suit = 3 Then
                            s = "h"
                        ElseIf dcard(i).suit = 4 Then
                            s = "s"
                        End If
                        path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + dcard(i).vcard.ToString + s + ".gif"
                    Else
                        path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                        If dcard(1).rvc <> 11 Then
                            dcard(i).rvc = 11
                        Else
                            dcard(i).rvc = 10
                        End If
                    End If
                    picdcard(i).Load(path)
                Next
                For Me.i = 0 To adcard
                    cardd = cardd + dcard(i).rvc
                Next
                If adcard = 5 Then
                    Exit Do
                End If
            Loop
        End If
        cardd = 0
        For Me.i = 0 To adcard
            cardd = cardd + dcard(i).rvc
        Next
        lbldcardval.Text = cardd.ToString
        ip1a = Val(lblmoney.Text)
        bet = Val(lblbet.Text)
        If cardt > 21 Then
            MsgBox("you bust")
        ElseIf cardd > 21 Then
            aced = "no"
            For Me.i = 1 To ccard
                If dcard(i).vcard = 1 And dcard(i).rvc = 11 Then
                    aced = "yes"
                    acet = i
                End If
            Next
            If aced = "no" Then
                MsgBox("Dealer bust" + vbCrLf + vbCrLf + "you win")
                ip1a = ip1a + bet * 2
                lblbet.Text = "0"
                lblmoney.Text = ip1a.ToString
                For Me.i = 1 To 5
                    picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                Next
                enableall()
                bet = 0
            Else
                dcard(i).rvc = 1
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                lblpcardval.Text = cardt.ToString
            End If
        ElseIf cardt = 21 Then
            MsgBox("Congradulations you got 21" + vbCrLf + "You get $" + bet.ToString + ".00")
            ip1a = ip1a + bet * 2
        ElseIf cardd = 21 And cardt <> 21 Then
            MsgBox("Dealer gets 21")
        ElseIf cardt > cardd Then
            MsgBox("Congradulations you win" + vbCrLf + "You get $" + bet.ToString + ".00")
            ip1a = ip1a + bet * 2
        ElseIf cardd > cardt And cardd < 21 Then
            MsgBox("You lose! No Chicken dinner for you" + vbCrLf + "You lose $" + bet.ToString + ".00")
        End If
        bet = 0
        lblmoney.Text = ip1a.ToString
        lblbet.Text = bet.ToString
        enableall()
        lbldcardval.Text = ""
        For Me.i = 1 To 5
            picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
        Next
        cscore = Val(lblmoney.Text)
        lstpoint.Items(lstpoint.Items.Count - 1) = cscore
        txtscores.Clear()
        For Me.i = 0 To lstnames.Items.Count - 1
            If i = 0 Then
                txtscores.Text = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
            Else
                txtscores.Text = txtscores.Text + vbCrLf + lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
            End If
        Next
        Dim oFile As System.IO.File
        Dim oWrite As System.IO.StreamWriter
        oWrite = oFile.CreateText("E:\arko\Computer Programming 2 projects\21s.txt")
        oWrite.WriteLine(txtscores.Text)
        oWrite.Close()
        Dim oRead As System.IO.StreamReader
        Dim LineIn As String
        i = 1
        frmt10.lstnames.Items.Clear()
        frmt10.lstpoints.Items.Clear()
        oRead = oFile.OpenText("E:\arko\Computer Programming 2 projects\21s.txt")
        While oRead.Peek <> -1
            LineIn = oRead.ReadLine()
            If Mid(LineIn, 1, 1) <> "0" Or Mid(LineIn, 1, 1) <> " " Then
                If i = 1 Then
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(1).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(1).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(1).pname)
                        frmt10.lstpoints.Items.Add(scores(1).point)
                        i = i + 1
                    End If
                Else
                    If Len(Trim(LineIn)) <> 0 Then
                        txtscores.Text = txtscores.Text + vbCrLf + LineIn
                        frmt10.lstall.Items.Add(LineIn)
                        scores(i).pname = UCase(Trim(Mid(LineIn, 1, 3)))
                        scores(i).point = Val(Mid(LineIn, 4, 5))
                        frmt10.lstnames.Items.Add(scores(i).pname)
                        frmt10.lstpoints.Items.Add(scores(i).point)
                        i = i + 1
                    End If
                End If
            End If
        End While
        oRead.Close()
        ascore = i
    End Sub

    Private Sub cmddouble_Click(sender As Object, e As EventArgs) Handles cmddouble.Click
        bet = bet * 2
        lblbet.Text = bet.ToString
        lblmoney.Text = (Val(lblmoney.Text) - bet / 2).ToString
        cmddouble.Enabled = False
    End Sub

    Private Sub cmdfold_Click(sender As Object, e As EventArgs) Handles cmdfold.Click
        bet = Val(lblbet.Text)
        ip1a = ip1a + bet
        enableall()
        ccard = 0
        For Me.i = 1 To 5
            pcard(i).rvc = 0
            pcard(i).suit = 0
            pcard(i).vcard = 0
            dcard(i).rvc = 0
            dcard(i).suit = 0
            dcard(i).vcard = 0
            pscard(i).rvc = 0
            pscard(i).suit = 0
            pscard(i).vcard = 0
            picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
        Next
        bet = 0
        lblmoney.Text = ip1a.ToString
        lblbet.Text = bet.ToString
    End Sub

    Private Sub cmdsplit_Click(sender As Object, e As EventArgs) Handles cmdsplit.Click
        cmdhit.Enabled = False
        cmdstand.Enabled = False
        cmddouble.Enabled = False
        p1a = p1a - bet
        bet = bet * 2
        pscard(1) = pcard(2)
        pcard(2) = deck(5)
        pscard(2) = deck(6)
        ccard = ccard + 2
        If pcard(2).suit = 1 Then
            s = "c"
        ElseIf pcard(2).suit = 2 Then
            s = "d"
        ElseIf pcard(2).suit = 3 Then
            s = "h"
        ElseIf pcard(2).suit = 4 Then
            s = "s"
        End If
        picpcard(2).Load("E:\arko\Computer Programming 2\Card Images\cardimages\" + pcard(2).vcard.ToString + s + ".gif")
        If pcard(2).suit = 1 Then
            s = "c"
        ElseIf pcard(2).suit = 2 Then
            s = "d"
        ElseIf pcard(2).suit = 3 Then
            s = "h"
        ElseIf pcard(2).suit = 4 Then
            s = "s"
        End If
        If pscard(1).vcard = 14 Then
            picpscard(1).Load("E:\arko\Computer Programming 2\Card Images\cardimages\j.gif")
        Else
            picpscard(1).Load("E:\arko\Computer Programming 2\Card Images\cardimages\" + pscard(1).vcard.ToString + s + ".gif")
        End If
        If pscard(2).vcard = 14 Then
            picpscard(2).Load("E:\arko\Computer Programming 2\Card Images\cardimages\j.gif")
        Else
            picpscard(2).Load("E:\arko\Computer Programming 2\Card Images\cardimages\" + pscard(2).vcard.ToString + s + ".gif")
        End If
        ccard = 2
        scard = 2
        lblbet.Text = bet.ToString
        lblmoney.Text = p1a.ToString
        cmdhits1.Visible = False
        cmdstands1.Visible = False
        cmdhits2.Visible = False
        cmdstands2.Visible = False
        cmdsplit.Enabled = False
        cmddouble.Enabled = False
        cmdhits1.Visible = True
        cmdhits2.Visible = True
        cmdstands1.Visible = True
        cmdstands2.Visible = True
    End Sub

    Private Sub cmdscores_Click(sender As Object, e As EventArgs) Handles cmdscores.Click
        frmt10.Show()
        For Me.i = 0 To lstnames.Items.Count - 1
            frmt10.lstnames.Items(i) = lstnames.Items(i).ToString
            frmt10.lstpoints.Items(i) = lstpoint.Items(i).ToString
            frmt10.lstall.Items(i) = lstnames.Items(i).ToString + " " + lstpoint.Items(i).ToString
        Next
        Me.Hide()
    End Sub

    Private Sub cmdhits1_Click(sender As Object, e As EventArgs) Handles cmdhits1.Click
        cardt = 0
        ccard = ccard + 1
        pcard(ccard) = deck(ccard + 2)
        If pcard(ccard).vcard <> 14 Then
            If pcard(ccard).suit = 1 Then
                s = "c"
            ElseIf pcard(ccard).suit = 2 Then
                s = "d"
            ElseIf pcard(ccard).suit = 3 Then
                s = "h"
            ElseIf pcard(ccard).suit = 4 Then
                s = "s"
            End If
            path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + pcard(ccard).vcard.ToString + s + ".gif"
        Else
            path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
            For Me.i = 1 To ccard - 1
                cardt = cardt + pcard(i).rvc
            Next
            pcard(ccard).rvc = 21 - cardt
            If pcard(ccard).rvc > 11 Then
                pcard(ccard).rvc = 11
            ElseIf pcard(ccard).rvc < 1 Then
                pcard(ccard).rvc = 1
            End If
        End If
        picpcard(ccard).Load(path)
        For Me.i = 0 To ccard
            cardt = cardt + pcard(i).rvc
        Next
        lblpcardval.Text = "Total Value of Your Cards:" + cardt.ToString
        If cardt > 21 Then
            aced = "no"
            jokerd = "no"
            For Me.i = 1 To ccard
                If pcard(i).vcard = 1 And pcard(i).rvc = 11 Then
                    aced = "yes"
                    acet = i
                End If
            Next
            For Me.i = 1 To ccard
                If pcard(i).vcard = 14 And pcard(i).rvc > 1 Then
                    jokerd = "yes"
                    jokert = i
                End If
            Next
            If aced = "no" And jokerd = "no" Then
                MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                cmdhits1.Enabled = False
                cmdstands1.Enabled = False
            ElseIf aced = "yes" Then
                pcard(acet).rvc = 1
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                lblpcardval.Text = cardt.ToString
            ElseIf jokerd = "yes" Then
                pcard(jokert).rvc = 0
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                pcard(jokert).rvc = 21 - cardt
                If pcard(jokert).rvc > 11 Then
                    pcard(jokert).rvc = 11
                ElseIf pcard(jokert).rvc < 1 Then
                    pcard(jokert).rvc = 1
                    MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                End If
                cardt = 0
                For Me.i = 0 To ccard
                    cardt = cardt + pcard(i).rvc
                Next
                If cardt = 21 Then
                    MsgBox("You win")
                    ip1a = ip1a + bet * 2
                    My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
                End If
                lblpcardval.Text = cardt.ToString
            End If
        ElseIf cardt = 21 Then
            MsgBox("Congradulation you got 21")
            ip1a = ip1a + bet * 2
            My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
            cmdhits1.Enabled = False
            cmdstands1.Enabled = False
        Else
            cmdsplit.Enabled = False
            cmddouble.Enabled = False
        End If
    End Sub

    Private Sub cmdhits2_Click(sender As Object, e As EventArgs) Handles cmdhits2.Click
        If cmdhits1.Enabled = False Then
            cardt = 0
            ccard = ccard + 1
            pscard(ccard) = deck(ccard + 2)
            If pscard(ccard).vcard <> 14 Then
                If pscard(ccard).suit = 1 Then
                    s = "c"
                ElseIf pscard(ccard).suit = 2 Then
                    s = "d"
                ElseIf pscard(ccard).suit = 3 Then
                    s = "h"
                ElseIf pscard(ccard).suit = 4 Then
                    s = "s"
                End If
                path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + pscard(ccard).vcard.ToString + s + ".gif"
            Else
                path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                For Me.i = 1 To ccard - 1
                    cardt = cardt + pscard(i).rvc
                Next
                pscard(ccard).rvc = 21 - cardt
                If pscard(ccard).rvc > 11 Then
                    pscard(ccard).rvc = 11
                ElseIf pscard(ccard).rvc < 1 Then
                    pscard(ccard).rvc = 1
                End If
            End If
            picpscard(ccard).Load(path)
            For Me.i = 0 To ccard
                cardt = cardt + pscard(i).rvc
            Next
            If cardt > 21 Then
                aced = "no"
                jokerd = "no"
                For Me.i = 1 To ccard
                    If pscard(i).vcard = 1 And pscard(i).rvc = 11 Then
                        aced = "yes"
                        acet = i
                    End If
                Next
                For Me.i = 1 To ccard
                    If pscard(i).vcard = 14 And pscard(i).rvc > 1 Then
                        jokerd = "yes"
                        jokert = i
                    End If
                Next
                If aced = "no" And jokerd = "no" Then
                    MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                    lblbet.Text = "0"
                    lblmoney.Text = ip1a.ToString
                    For Me.i = 1 To 5
                        picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    Next
                    enableall()
                    bet = 0
                ElseIf aced = "yes" Then
                    pscard(acet).rvc = 1
                    cardt = 0
                    For Me.i = 0 To ccard
                        cardt = cardt + pscard(i).rvc
                    Next
                ElseIf jokerd = "yes" Then
                    pscard(jokert).rvc = 0
                    cardt = 0
                    For Me.i = 0 To ccard
                        cardt = cardt + pscard(i).rvc
                    Next
                    pscard(jokert).rvc = 21 - cardt
                    If pscard(jokert).rvc > 11 Then
                        pscard(jokert).rvc = 11
                    ElseIf pscard(jokert).rvc < 1 Then
                        pscard(jokert).rvc = 1
                        MsgBox("you bust" + vbCrLf + vbCrLf + "you lose")
                        lblbet.Text = "0"
                        lblmoney.Text = ip1a.ToString
                        For Me.i = 1 To 5
                            picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                            picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                            picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        Next
                        enableall()
                        bet = 0
                    End If
                    cardt = 0
                    For Me.i = 0 To ccard
                        cardt = cardt + pscard(i).rvc
                    Next
                    If cardt = 21 Then
                        MsgBox("You win")
                        cardt = 0
                        My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
            AudioPlayMode.WaitToComplete)
                        ip1a = ip1a + bet * 2
                        lblbet.Text = "0"
                        lblmoney.Text = ip1a.ToString
                        For Me.i = 1 To 5
                            picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                            picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                            picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        Next
                        enableall()
                    End If
                    lblpcardval.Text = cardt.ToString
                End If
            ElseIf cardt = 21 Then
                MsgBox("Congradulation you got 21")
                ip1a = ip1a + bet * 2
                lblbet.Text = "0"
                lblmoney.Text = ip1a.ToString
                For Me.i = 1 To 5
                    picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                Next
                enableall()
                bet = 0
                My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
            AudioPlayMode.WaitToComplete)
            Else
                cmdsplit.Enabled = False
                cmddouble.Enabled = False
            End If
        Else
            MsgBox("You need to finish the first row before moving on")
        End If
    End Sub

    Private Sub cmdstands1_Click(sender As Object, e As EventArgs) Handles cmdstands1.Click
        cardt = 0
        cardd = 0
        For Me.i = 1 To ccard
            cardt = cardt + pcard(i).rvc
        Next
        For Me.i = 0 To adcard
            cardd = cardd + dcard(i).rvc
        Next
        adcard = 2
        If cardd < 17 Then
            cardd = 0
            Do While cardd < 17
                adcard = adcard + 1
                dcard(adcard) = deck(adcard + 10)
                For Me.i = 1 To adcard
                    If dcard(i).vcard <> 14 Then
                        If dcard(i).suit = 1 Then
                            s = "c"
                        ElseIf dcard(i).suit = 2 Then
                            s = "d"
                        ElseIf dcard(i).suit = 3 Then
                            s = "h"
                        ElseIf dcard(i).suit = 4 Then
                            s = "s"
                        End If
                        path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + dcard(i).vcard.ToString + s + ".gif"
                    Else
                        path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                        If dcard(1).rvc <> 11 Then
                            dcard(i).rvc = 11
                        Else
                            dcard(i).rvc = 10
                        End If
                    End If
                    'picdcard(i).Load(path)
                Next
                For Me.i = 0 To adcard
                    cardd = cardd + dcard(i).rvc
                Next
                If adcard = 5 Then
                    Exit Do
                End If
            Loop
        End If
        cardd = 0
        For Me.i = 0 To adcard
            cardd = cardd + dcard(i).rvc
        Next
        'lbldcardval.Text = cardd.ToString
        ip1a = Val(lblmoney.Text)
        bet = Val(lblbet.Text)
        If cardt > 21 Then
            MsgBox("you bust")
        ElseIf cardd > 21 Then
            aced = "no"
            For Me.i = 1 To ccard
                If dcard(i).vcard = 1 And dcard(i).rvc = 11 Then
                    aced = "yes"
                    acet = i
                End If
            Next
            If aced = "no" Then
                MsgBox("Dealer bust" + vbCrLf + "you win")
                ws1 = 1
            Else
                dcard(i).rvc = 1
                cardd = 0
                For Me.i = 0 To ccard
                    cardd = cardd + dcard(i).rvc
                Next
                lbldcardval.Text = cardt.ToString
            End If
        ElseIf cardt = 21 Then
            MsgBox("Congradulations you got 21" + vbCrLf + "You get $" + bet.ToString + ".00")
            ws1 = 1
        ElseIf cardd = 21 And cardt <> 21 Then
            MsgBox("Dealer gets 21")
        ElseIf cardt > cardd Then
            MsgBox("Congradulations you win" + vbCrLf + "You get $" + bet.ToString + ".00")
            ws1 = 1
        ElseIf cardd > cardt And cardd < 21 Then
            MsgBox("You lose! No Chicken dinner for you" + vbCrLf + "You lose $" + bet.ToString + ".00")
        End If
        cmdhits1.Enabled = False
        cmdstands1.Enabled = False

    End Sub

    Private Sub cmdstands2_Click(sender As Object, e As EventArgs) Handles cmdstands2.Click
        If cmdhits1.Enabled = False Then
            cardt = 0
            cardd = 0
            For Me.i = 1 To ccard
                cardt = cardt + pcard(i).rvc
            Next
            For Me.i = 0 To adcard
                cardd = cardd + dcard(i).rvc
                If dcard(i).vcard <> 14 Then
                    If dcard(i).suit = 1 Then
                        s = "c"
                    ElseIf dcard(i).suit = 2 Then
                        s = "d"
                    ElseIf dcard(i).suit = 3 Then
                        s = "h"
                    ElseIf dcard(i).suit = 4 Then
                        s = "s"
                    End If
                    path = "E:\arko\Computer Programming 2\Card Images\cardimages\" + dcard(i).vcard.ToString + s + ".gif"
                Else
                    path = "E:\arko\Computer Programming 2\Card Images\cardimages\j.gif"
                    If dcard(1).rvc <> 11 Then
                        dcard(i).rvc = 11
                    Else
                        dcard(i).rvc = 10
                    End If
                End If
                picdcard(i + 1).Load(path)
            Next
            lbldcardval.Text = cardd.ToString
            If cardt > 21 Then
                MsgBox("you bust")
            ElseIf cardd > 21 Then
                aced = "no"
                For Me.i = 1 To ccard
                    If dcard(i).vcard = 1 And dcard(i).rvc = 11 Then
                        aced = "yes"
                        acet = i
                    End If
                Next
                If aced = "no" Then
                    MsgBox("Dealer bust" + vbCrLf + vbCrLf + "you win")
                    ws2 = 1
                    lblbet.Text = "0"
                    lblmoney.Text = ip1a.ToString
                    For Me.i = 1 To 5
                        picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                        picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                    Next
                    enableall()
                    bet = 0
                Else
                    dcard(i).rvc = 1
                    cardd = 0
                    For Me.i = 0 To adcard
                        cardd = cardd + dcard(i).rvc
                    Next
                    lbldcardval.Text = cardt.ToString
                    For Me.i = 1 To ccard
                        cardt = cardt + pcard(i).rvc
                    Next
                    If cardt = 21 Then
                        ws2 = 1
                    ElseIf cardt > cardd And cardt < 22 Then
                        ws2 = 1
                    ElseIf cardd > 21 Then
                        ws2 = 1
                    End If
                End If
            ElseIf cardt = 21 Then
                MsgBox("Congradulations you got 21" + vbCrLf + "You get $" + bet.ToString + ".00")
                ip1a = ip1a + bet
                My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
            ElseIf cardd = 21 And cardt <> 21 Then
                MsgBox("Dealer gets 21")
            ElseIf cardt > cardd Then
                MsgBox("Congradulations you win" + vbCrLf + "You get $" + bet.ToString + ".00")
                ip1a = ip1a + bet
                My.Computer.Audio.Play("E:\arko\Computer Programming 2 projects\winning.wav",
        AudioPlayMode.WaitToComplete)
            ElseIf cardd > cardt And cardd < 21 Then
                MsgBox("You lose! No Chicken dinner for you" + vbCrLf + "You lose $" + bet.ToString + ".00")
            End If
            If ws1 = 1 And ws2 <> 1 Then
                ip1a = ip1a + bet
            ElseIf ws2 = 1 And ws1 <> 1 Then
                ip1a = ip1a + bet
            ElseIf ws1 = 1 And ws2 = 1 Then
                ip1a = ip1a + bet * 2
            ElseIf ws1 = 0 And ws2 = 0 Then
                bet = 0
            End If
            bet = 0
            lblbet.Text = bet.ToString
            cmdhits2.Enabled = False
            cmdstands2.Enabled = False
            If aced = "yes" Then
                cmdhits1.Enabled = True
                cmdstands1.Enabled = True
            End If
            lblmoney.Text = ip1a.ToString
            enableall()
            For Me.i = 1 To 5
                picpcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picpscard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
                picdcard(i).Load("E:\arko\Computer Programming 2 projects\reset.jpg")
            Next
        Else
            MsgBox("You need to finish the first row before moving on")
        End If
    End Sub
End Class
