object FormStatus: TFormStatus
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1091#1089#1099
  ClientHeight = 190
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 137
    Width = 36
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 431
    Height = 120
    DataSource = DBModule.DataStatus
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 72
    Top = 134
    Width = 367
    Height = 21
    DataField = 'status_rem'
    DataSource = DBModule.DataStatus
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 161
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 131
    Top = 161
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 247
    Top = 161
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 364
    Top = 161
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button4Click
  end
end
