object Form18: TForm18
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1052#1091#1079#1099#1082#1072
  ClientHeight = 150
  ClientWidth = 827
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PopupMenu = Form3.PopupMenu1
  Position = poDesktopCenter
  TextHeight = 15
  object MediaPlayer1: TMediaPlayer
    Left = 296
    Top = 83
    Width = 85
    Height = 59
    EnabledButtons = [btPlay, btPause, btStop]
    VisibleButtons = [btPlay, btPause, btStop]
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    TabStop = False
    OnNotify = MediaPlayer1Notify
  end
  object RadioGroup1: TRadioGroup
    Tag = 1
    Left = 48
    Top = 8
    Width = 217
    Height = 134
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1084#1077#1083#1086#1076#1080#1102
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Pompadur'
    Font.Style = []
    Items.Strings = (
      #1084#1077#1083#1086#1076#1080#1103'1'
      #1084#1077#1083#1086#1076#1080#1103'2'
      #1084#1077#1083#1086#1076#1080#1103'3'
      #1084#1077#1083#1086#1076#1080#1103'4')
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object Button1: TButton
    Left = 711
    Top = 117
    Width = 108
    Height = 25
    Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Pompadur'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
