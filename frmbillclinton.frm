VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "I thought this was funny.  No offense to anyone"
   ClientHeight    =   3195
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "NO!"
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   2160
      Width           =   855
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1200
      Top             =   2040
   End
   Begin VB.CommandButton Command1 
      Caption         =   "YES"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   2160
      UseMaskColor    =   -1  'True
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Should i, Bill Clinton, resign and leave public life in shame?"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   $"frmbillclinton.frx":0000
      Height          =   975
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Mousemove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Y < 200 Then
Command1.Top = Command1.Top + 50
End If
If X < 500 Then
Command1.Left = Command1.Left + 50
End If
If Y > 200 Then
Command1.Top = Command1.Top - 50
End If
If X > 500 Then
Command1.Left = Command1.Left - 50
End If
End Sub

Private Sub Command2_Click()
Unload Me
MsgBox ("Thanks for your honest vote of support!")
End Sub

Private Sub Timer1_Timer()
If Command1.Top > 2500 Then
Command1.Top = 10
End If
If Command1.Top < 10 Then
Command1.Top = 2500
End If
If Command1.Left > 3700 Then
Command1.Left = 10
End If
If Command1.Left < 10 Then
Command1.Left = 3500
End If
End Sub
