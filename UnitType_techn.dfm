object FormType_techn: TFormType_techn
  Left = 0
  Top = 0
  Caption = #1058#1080#1087#1099' '#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 202
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
    Width = 75
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 431
    Height = 120
    DataSource = DBModule.DataType_techn
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 134
    Width = 351
    Height = 21
    DataField = 'name_type'
    DataSource = DBModule.DataType_techn
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 169
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 131
    Top = 169
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 247
    Top = 169
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 364
    Top = 169
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button4Click
  end
end
