object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1080' '#1078#1091#1088#1085#1072#1083' '#1090#1077#1093#1085#1080#1082#1080
  ClientHeight = 472
  ClientWidth = 627
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1080#1084#1077#1102#1097#1077#1081#1089#1103' '#1090#1077#1093#1085#1080#1082#1080
      object Label1: TLabel
        Left = 16
        Top = 258
        Width = 48
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object Label2: TLabel
        Left = 16
        Top = 285
        Width = 83
        Height = 13
        Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
      end
      object Label3: TLabel
        Left = 16
        Top = 312
        Width = 18
        Height = 13
        Caption = #1058#1080#1087
      end
      object DBGrid1: TDBGrid
        Left = -4
        Top = 0
        Width = 611
        Height = 249
        DataSource = DBModule.DataTechn
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 129
        Top = 255
        Width = 478
        Height = 21
        DataField = 'name'
        DataSource = DBModule.DataTechn
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 129
        Top = 282
        Width = 478
        Height = 21
        DataField = 'characterstc'
        DataSource = DBModule.DataTechn
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 129
        Top = 309
        Width = 478
        Height = 21
        DataField = 'id_type_techn'
        DataSource = DBModule.DataTechn
        KeyField = 'id_type_techn'
        ListField = 'name_type'
        ListSource = DBModule.DataType_techn2
        TabOrder = 3
      end
      object Button1: TButton
        Left = 16
        Top = 336
        Width = 129
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 184
        Top = 336
        Width = 113
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 328
        Top = 336
        Width = 139
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 496
        Top = 336
        Width = 111
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 7
        OnClick = Button4Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1077#1093#1085#1080#1082#1072', '#1085#1072#1093#1086#1076#1103#1097#1072#1103#1089#1103' '#1085#1072' '#1088#1077#1084#1086#1085#1090#1077
      ImageIndex = 1
      object Label4: TLabel
        Left = 8
        Top = 250
        Width = 42
        Height = 13
        Caption = #1058#1077#1093#1085#1080#1082#1072
      end
      object Label5: TLabel
        Left = 8
        Top = 282
        Width = 36
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object Label6: TLabel
        Left = 8
        Top = 309
        Width = 56
        Height = 13
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      end
      object Label7: TLabel
        Left = 8
        Top = 339
        Width = 65
        Height = 13
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1105#1084#1072
      end
      object Label8: TLabel
        Left = 8
        Top = 366
        Width = 90
        Height = 13
        Caption = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 0
        Width = 611
        Height = 241
        DataSource = DBModule.DataRemont
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 121
        Top = 247
        Width = 478
        Height = 21
        DataField = 'id_tech'
        DataSource = DBModule.DataRemont
        KeyField = 'id_techn'
        ListField = 'name'
        ListSource = DBModule.DataTechn2
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 121
        Top = 274
        Width = 478
        Height = 21
        DataField = 'id_status'
        DataSource = DBModule.DataRemont
        KeyField = 'id_status'
        ListField = 'status_rem'
        ListSource = DBModule.DataStatus2
        TabOrder = 2
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 121
        Top = 301
        Width = 478
        Height = 21
        DataField = 'id_sotrud'
        DataSource = DBModule.DataRemont
        KeyField = 'id_sotr'
        ListField = 'FIO'
        ListSource = DBModule.DataSotrud
        TabOrder = 3
      end
      object Button5: TButton
        Left = 3
        Top = 393
        Width = 81
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 145
        Top = 393
        Width = 88
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 5
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 408
        Top = 393
        Width = 82
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 520
        Top = 393
        Width = 79
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 7
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 281
        Top = 393
        Width = 88
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 8
        OnClick = Button9Click
      end
      object DBEdit3: TDBEdit
        Left = 121
        Top = 358
        Width = 145
        Height = 21
        DataField = 'data_konechn'
        DataSource = DBModule.DataRemont
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 121
        Top = 331
        Width = 145
        Height = 21
        DataField = 'data_priema'
        DataSource = DBModule.DataRemont
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1086#1080#1089#1082' '#1080' '#1086#1090#1095#1105#1090#1099' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 3
        Top = 0
        Width = 611
        Height = 241
        DataSource = DBModule.DataSRemont
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 247
        Width = 611
        Height = 145
        Caption = #1055#1086#1080#1089#1082
        TabOrder = 1
        object Label9: TLabel
          Left = 106
          Top = 120
          Width = 16
          Height = 13
          Caption = #1086#1090':'
        end
        object Label10: TLabel
          Left = 379
          Top = 120
          Width = 17
          Height = 13
          Caption = #1076#1086':'
        end
        object CheckBox1: TCheckBox
          Left = 3
          Top = 24
          Width = 97
          Height = 17
          Caption = #1058#1077#1093#1085#1080#1082#1072
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 3
          Top = 53
          Width = 97
          Height = 17
          Caption = #1057#1090#1072#1090#1091#1089
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 3
          Top = 86
          Width = 97
          Height = 17
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          TabOrder = 2
        end
        object CheckBox4: TCheckBox
          Left = 3
          Top = 117
          Width = 97
          Height = 17
          Caption = #1044#1072#1090#1072
          TabOrder = 3
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 106
          Top = 82
          Width = 495
          Height = 21
          DataField = 'id_sotrud'
          DataSource = DBModule.DataRemont
          KeyField = 'id_sotr'
          ListField = 'FIO'
          ListSource = DBModule.DataSotrud
          TabOrder = 4
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 106
          Top = 49
          Width = 495
          Height = 21
          DataField = 'id_status'
          DataSource = DBModule.DataRemont
          KeyField = 'id_status'
          ListField = 'status_rem'
          ListSource = DBModule.DataStatus2
          TabOrder = 5
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 106
          Top = 19
          Width = 495
          Height = 21
          DataField = 'id_tech'
          DataSource = DBModule.DataRemont
          KeyField = 'id_techn'
          ListField = 'name'
          ListSource = DBModule.DataTechn2
          TabOrder = 6
        end
        object MaskEdit1: TMaskEdit
          Left = 138
          Top = 115
          Width = 182
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 7
          Text = '  .  .    '
        end
        object MaskEdit2: TMaskEdit
          Left = 419
          Top = 115
          Width = 182
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 8
          Text = '  .  .    '
        end
      end
      object Button10: TButton
        Left = 3
        Top = 393
        Width = 122
        Height = 25
        Caption = #1055#1086#1080#1089#1082
        TabOrder = 2
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 262
        Top = 393
        Width = 137
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 3
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 504
        Top = 393
        Width = 110
        Height = 25
        Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1076#1072#1085#1085#1086#1084#1091
        TabOrder = 4
        OnClick = Button12Click
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 560
    Top = 65520
  end
  object MainMenu1: TMainMenu
    Left = 592
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N4: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1080#1087#1086#1074' '#1090#1077#1093#1085#1080#1082#1080
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1093' '#1079#1072' '#1088#1077#1084#1086#1085#1090' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1089#1090#1072#1090#1091#1089#1086#1074
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = #1046#1091#1088#1085#1072#1083' '#1079#1072#1082#1072#1079#1086#1074
      OnClick = N7Click
    end
    object N2: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
