VERSION 5.00
Begin VB.Form frmprofile 
   BackColor       =   &H8000000C&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Profile Picture"
   ClientHeight    =   3795
   ClientLeft      =   6120
   ClientTop       =   6120
   ClientWidth     =   6975
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3795
   ScaleWidth      =   6975
   Begin VB.TextBox txtdep 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   180
      TabIndex        =   17
      Text            =   "txtdep"
      Top             =   2520
      Width           =   1815
   End
   Begin VB.TextBox txtsaltype 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4320
      TabIndex        =   16
      Text            =   "txtsaltype"
      Top             =   1440
      Width           =   1755
   End
   Begin VB.HScrollBar hsbempos 
      Height          =   435
      Left            =   1380
      TabIndex        =   13
      Top             =   3180
      Width           =   4275
   End
   Begin VB.CommandButton cmdnext 
      Caption         =   "Next"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5700
      TabIndex        =   12
      Top             =   3060
      Width           =   1155
   End
   Begin VB.CommandButton cmdpre 
      Caption         =   "Previous"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   11
      Top             =   3060
      Width           =   1215
   End
   Begin VB.TextBox txtsalery 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   9
      Text            =   "txtsalery"
      Top             =   1440
      Width           =   1695
   End
   Begin VB.TextBox txtage 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4380
      TabIndex        =   7
      Text            =   "txtage"
      Top             =   2460
      Width           =   1815
   End
   Begin VB.TextBox txtgen 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   5
      Text            =   "txtgen"
      Top             =   2520
      Width           =   1695
   End
   Begin VB.TextBox txtlname 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4260
      TabIndex        =   3
      Text            =   "txtlname"
      Top             =   480
      Width           =   1755
   End
   Begin VB.TextBox txtfname 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   2520
      TabIndex        =   2
      Text            =   "txtfname"
      Top             =   480
      Width           =   1635
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Dependets"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   5
      Left            =   360
      TabIndex        =   15
      Top             =   2100
      Width           =   1380
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Salery Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   4
      Left            =   4380
      TabIndex        =   14
      Top             =   1080
      Width           =   1500
   End
   Begin VB.Label lblpos 
      AutoSize        =   -1  'True
      Caption         =   "pos"
      Height          =   195
      Left            =   6060
      TabIndex        =   10
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Salery"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   3
      Left            =   2820
      TabIndex        =   8
      Top             =   1020
      Width           =   780
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Age"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   2
      Left            =   4740
      TabIndex        =   6
      Top             =   2040
      Width           =   525
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Gender"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   1
      Left            =   2520
      TabIndex        =   4
      Top             =   2040
      Width           =   960
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Last Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   4440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "First Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Index           =   0
      Left            =   2640
      TabIndex        =   0
      Top             =   120
      Width           =   1365
   End
   Begin VB.Image imgprofile 
      Height          =   1815
      Left            =   120
      Stretch         =   -1  'True
      Top             =   120
      Width           =   2295
   End
   Begin VB.Menu mnuback 
      Caption         =   "Back"
   End
End
Attribute VB_Name = "frmprofile"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdnext_Click()
page = page + 1
If page > frmemployee.lstem.ListCount Then
page = 1
End If
txtage.Text = Str(arremploy(page).age)
txtgen.Text = arremploy(page).gender
txtfname.Text = arremploy(page).firstname
txtlname.Text = arremploy(page).lastname
txtsalery.Text = Str(arremploy(page).salery)
rpic = 1
Randomize
rpic = Int(Rnd * 4) + 1
If rpic = 1 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person1.jpg")
ElseIf rpic = 2 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person2.jpg")
ElseIf rpic = 3 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person3.jpg")
ElseIf rpic = 4 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person4.jpg")
End If
txtage.Text = arremploy(page).age
txtfname.Text = arremploy(page).firstname
txtlname.Text = arremploy(page).lastname
txtgen.Text = arremploy(page).gender
txtsalery.Text = arremploy(page).salery
txtsaltype.Text = arremploy(page).saltype
txtdep.Text = arremploy(page).dep
hsbempos.Value = page
End Sub

Private Sub cmdpre_Click()
page = page - 1
If page < 1 Then
page = frmemployee.lstem.ListCount + 1
End If
rpic = 1
Randomize
rpic = Int(Rnd * 4) + 1
If rpic = 1 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person1.jpg")
ElseIf rpic = 2 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person2.jpg")
ElseIf rpic = 3 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person3.jpg")
ElseIf rpic = 4 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person4.jpg")
End If
txtage.Text = arremploy(page).age
txtfname.Text = arremploy(page).firstname
txtlname.Text = arremploy(page).lastname
txtsalery.Text = arremploy(page).salery
txtgen.Text = arremploy(page).gender
txtsaltype.Text = arremploy(page).saltype
txtdep.Text = arremploy(page).dep
hsbempos.Value = page
End Sub

Private Sub Form_Load()
   On Error GoTo Form_Load_Error

hsbempos.Min = 1
hsbempos.Max = frmemployee.lstem.ListCount
hsbempos.Value = frmemployee.lstem.ListIndex + 1
hsbempos.SmallChange = 1
hsbempos.LargeChange = 10

   On Error GoTo 0
   Exit Sub

Form_Load_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmprofile"
End Sub

Private Sub hsbempos_Change()
page = hsbempos.Value
If page < 1 Then
page = frmemployee.lstem.ListCount + 1
End If
rpic = 1
Randomize
rpic = Int(Rnd * 4) + 1
If rpic = 1 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person1.jpg")
ElseIf rpic = 2 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person2.jpg")
ElseIf rpic = 3 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person3.jpg")
ElseIf rpic = 4 Then
    frmprofile.imgprofile.Picture = LoadPicture("F:\arko\Computer Programming 2 projects\employee\person4.jpg")
End If
txtage.Text = arremploy(page).age
txtfname.Text = arremploy(page).firstname
txtlname.Text = arremploy(page).lastname
txtsalery.Text = arremploy(page).salery
txtgen.Text = arremploy(page).gender
txtsaltype.Text = arremploy(page).saltype
txtdep.Text = arremploy(page).dep
End Sub

Private Sub mnuback_Click()
frmemployee.lstem.List(pos - 1) = arremploy(pos).firstname + "  " + arremploy(pos).lastname + "  " + arremploy(pos).gender + "  " + Str(arremploy(pos).age) + "  " + Str(arremploy(pos).salery) + arremploy(pos).saltype + " " + Str(arremploy(pos).dep)
frmemployee.mnusave.Enabled = True
frmemployee.mnuregsave.Enabled = True
frmprofile.Hide
End Sub

Private Sub txtage_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    arremploy(pos).age = Val(txtage.Text)
End If
End Sub

Private Sub txtfname_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    arremploy(pos).firstname = txtfname.Text
End If
End Sub

Private Sub txtgen_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    arremploy(pos).gender = txtgen.Text
End If
End Sub

Private Sub txtlname_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    arremploy(pos).lastname = txtlname.Text
End If
End Sub

Private Sub txtsalery_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    arremploy(pos).salery = Val(txtsalery.Text)
End If
End Sub
