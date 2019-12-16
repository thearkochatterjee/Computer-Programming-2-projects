VERSION 5.00
Begin VB.Form frmcipher 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   1965
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9075
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1965
   ScaleWidth      =   9075
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtnum 
      Height          =   975
      Left            =   2700
      TabIndex        =   8
      Top             =   600
      Width           =   1815
   End
   Begin VB.TextBox txtcipher 
      Height          =   975
      Left            =   240
      TabIndex        =   7
      Top             =   600
      Width           =   1935
   End
   Begin VB.TextBox txtanswer 
      Height          =   975
      Left            =   5220
      TabIndex        =   6
      Top             =   600
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Quit"
      Height          =   495
      Left            =   7560
      TabIndex        =   2
      Top             =   1200
      Width           =   1155
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   435
      Left            =   7560
      TabIndex        =   1
      Top             =   720
      Width           =   1155
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Encode"
      Height          =   495
      Left            =   7560
      TabIndex        =   0
      Top             =   120
      Width           =   1155
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Answer"
      Height          =   195
      Left            =   5880
      TabIndex        =   5
      Top             =   60
      Width           =   525
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Rotate"
      Height          =   195
      Left            =   3300
      TabIndex        =   4
      Top             =   60
      Width           =   480
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Message"
      Height          =   195
      Left            =   780
      TabIndex        =   3
      Top             =   60
      Width           =   645
   End
End
Attribute VB_Name = "frmcipher"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub Command1_Click()
'*********YOU WILL NEED 3 TXTBOXES NAMED:(txtcipher, txtanswer, txtnum), _
'3 LABELS, AND 3 CMD BUTTONS THE LABELS AND CMD BUTTONS USE THE DEFAULT _
'NAMES***************
Dim size As Integer
Dim letter As Variant
Dim encrypt As String
Dim char As String
Dim codeasc As String
Dim ans() As String
Dim count As Variant
Dim box As Variant

txtanswer.Visible = False

'calls msgbox for useless rotation
If txtnum.Text = "26" Then
    MsgBox " A rotation of 26 gives you no rotation at all. Considering that there are 26 letters in the alphabet.", vbOKOnly, "ERROR"
    txtanswer.Text = "This is a wothless rotation" & "... " & UCase(txtcipher.Text)
    txtanswer.Visible = True
Exit Sub
End If
If txtnum.Text = "" And txtcipher.Text = "" Then
    MsgBox "Input some info.", vbInformation + vbOKOnly, "Missing Info."
Exit Sub
End If

'if the number of rotations box is an empty string alert user
If txtnum.Text = "" Then
    MsgBox "Input a number of rotations.", vbInformation + vbOKOnly, "Missing Info."
Exit Sub
End If

'alert user that 26 is the highest rotation number
If Val(txtnum.Text) > 26 Then
    MsgBox " Sorry can only rotate by the amount of letters in the alphabet.", vbInformation + vbOKOnly, "ERROR"
    txtnum.SetFocus  'puts focus back to rotations box for correction
    txtnum.Text = ""  'clears rotations box for correction
    Exit Sub  'if this is true stop program for correction and retry
End If
    
size = Len(txtcipher.Text) 'size = amount of letters in the typed in word

encrypt = "" 'encrypt is a empty string right now

ReDim ans(size) 'makes the size of the array the same as the number of letters in the word entered

box = Val(txtnum.Text) 'setting a variable to the rotations text box

For letter = 1 To size
    char = Mid(txtcipher.Text, letter, 1) 'checks each letter 1 by 1
    codeasc = Asc(char) 'gets the ascii code for each letter
    encrypt = codeasc + box 'variable that figures out what letter to go to depending on the following conditionals
   
If encrypt > 122 Then ' if the ascii code goes higher than 122...
    encrypt = (encrypt - Asc("z") + Asc("`")) ' take the ascii code for "z" 122 and take away the ascii code for the letter it is checking and add 96 "`" ascii number ( 97 ia ascii for "a")
End If

If encrypt < 97 Then 'for spaces that are typed in if under ascii 97 "a" then it must be a "space" ascii 32
    encrypt = Asc(" ")
End If

   count = Chr(encrypt)
   ans(size) = count

txtanswer.Text = txtanswer.Text + ans(size)

Next letter

txtanswer.Visible = True

txtcipher.Text = UCase(txtcipher.Text)

End Sub

Private Sub Command2_Click()
    
    'when this button is clicked it will clear the 3 text boxes and set focus back to txtcipher
    txtcipher.Text = ""
    txtcipher.SetFocus
    txtnum.Text = ""
    txtanswer.Text = ""
    txtanswer.Visible = False
End Sub

Private Sub Command3_Click()
'ends the program
    End
End Sub

Private Sub Form_Activate()
txtcipher.SetFocus
txtanswer.Visible = False 'makes txt box invisible
End Sub

