object FormZakaz: TFormZakaz
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079#1099' '#1085#1072' '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1077' '#1082#1086#1084#1087#1083#1077#1082#1090#1091#1102#1097#1080#1093
  ClientHeight = 473
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 473
    Height = 457
    ActivePage = TabSheet2
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1082#1072#1079#1086#1074
      ExplicitLeft = 0
      ExplicitWidth = 395
      ExplicitHeight = 253
      object Label5: TLabel
        Left = 101
        Top = 318
        Width = 16
        Height = 13
        Caption = #1086#1090':'
      end
      object Label6: TLabel
        Left = 268
        Top = 318
        Width = 17
        Height = 13
        Caption = #1076#1086':'
      end
      object Label8: TLabel
        Left = 109
        Top = 326
        Width = 16
        Height = 13
        Caption = #1086#1090':'
        OnClick = Label9Click
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 451
        Height = 423
        TabOrder = 0
        OnClick = GroupBox1Click
        object Label1: TLabel
          Left = 19
          Top = 183
          Width = 42
          Height = 13
          Caption = #1058#1077#1093#1085#1080#1082#1072
        end
        object Label2: TLabel
          Left = 19
          Top = 229
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
          OnClick = Label2Click
        end
        object Label3: TLabel
          Left = 19
          Top = 272
          Width = 26
          Height = 13
          Caption = #1062#1077#1085#1072
        end
        object Label4: TLabel
          Left = 19
          Top = 313
          Width = 56
          Height = 13
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        end
        object DBGrid2: TDBGrid
          Left = 3
          Top = 16
          Width = 438
          Height = 161
          DataSource = DBModule.DataFormZkz
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Button1: TButton
          Left = 19
          Top = 361
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
        end
        object Button2: TButton
          Left = 181
          Top = 361
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
        object Button3: TButton
          Left = 100
          Top = 361
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 3
        end
        object Button4: TButton
          Left = 262
          Top = 361
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 4
        end
        object Button5: TButton
          Left = 181
          Top = 392
          Width = 156
          Height = 25
          Caption = #1042#1085#1077#1089#1090#1080' '#1076#1072#1085#1085#1099#1077' '#1074' '#1080#1089#1090#1086#1088#1080#1102
          TabOrder = 5
        end
        object Button6: TButton
          Left = 343
          Top = 392
          Width = 87
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1082#1072#1079
          TabOrder = 6
        end
        object Button7: TButton
          Left = 19
          Top = 392
          Width = 156
          Height = 25
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090
          TabOrder = 7
        end
        object Button8: TButton
          Left = 343
          Top = 361
          Width = 87
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 8
        end
        object ComboBox1: TComboBox
          Left = 100
          Top = 183
          Width = 237
          Height = 21
          ItemHeight = 13
          TabOrder = 9
          Text = 'ComboBox1'
        end
        object ComboBox2: TComboBox
          Left = 100
          Top = 310
          Width = 237
          Height = 21
          ItemHeight = 13
          TabOrder = 10
          Text = 'ComboBox1'
        end
        object DBEdit1: TDBEdit
          Left = 100
          Top = 226
          Width = 121
          Height = 21
          TabOrder = 11
        end
        object DBEdit2: TDBEdit
          Left = 100
          Top = 269
          Width = 121
          Height = 21
          TabOrder = 12
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1079#1072#1082#1072#1079#1086#1074
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitWidth = 481
      object GroupBox2: TGroupBox
        Left = 8
        Top = 3
        Width = 454
        Height = 422
        TabOrder = 0
        OnClick = GroupBox2Click
        object Label9: TLabel
          Left = 101
          Top = 318
          Width = 16
          Height = 13
          Caption = #1086#1090':'
          OnClick = Label9Click
        end
        object Label10: TLabel
          Left = 268
          Top = 318
          Width = 17
          Height = 13
          Caption = #1076#1086':'
        end
        object Label7: TLabel
          Left = 268
          Top = 350
          Width = 17
          Height = 13
          Caption = #1076#1086':'
        end
        object Label11: TLabel
          Left = 101
          Top = 350
          Width = 16
          Height = 13
          Caption = #1086#1090':'
          OnClick = Label9Click
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 24
          Width = 438
          Height = 209
          DataSource = DBModule.DataZkz
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Button9: TButton
          Left = 27
          Top = 388
          Width = 134
          Height = 24
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1088#1086#1089
          TabOrder = 1
        end
        object Button10: TButton
          Left = 189
          Top = 388
          Width = 75
          Height = 24
          Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '
          TabOrder = 2
        end
        object Button11: TButton
          Left = 304
          Top = 388
          Width = 134
          Height = 24
          Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1086#1090#1095#1105#1090
          TabOrder = 3
        end
        object CheckBox1: TCheckBox
          Left = 3
          Top = 239
          Width = 95
          Height = 17
          Caption = #1058#1077#1093#1085#1080#1082#1072
          TabOrder = 4
          OnClick = CheckBox1Click
        end
        object CheckBox3: TCheckBox
          Left = 3
          Top = 276
          Width = 95
          Height = 17
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          TabOrder = 5
        end
        object CheckBox4: TCheckBox
          Left = 3
          Top = 317
          Width = 95
          Height = 17
          Caption = #1044#1072#1090#1072
          TabOrder = 6
        end
        object MaskEdit1: TMaskEdit
          Left = 134
          Top = 315
          Width = 107
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 7
          Text = '  .  .    '
        end
        object MaskEdit2: TMaskEdit
          Left = 301
          Top = 315
          Width = 137
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 8
          Text = '  .  .    '
        end
        object ComboBox3: TComboBox
          Left = 134
          Top = 239
          Width = 307
          Height = 21
          ItemHeight = 13
          TabOrder = 9
          Text = 'ComboBox1'
          OnChange = ComboBox3Change
        end
        object ComboBox4: TComboBox
          Left = 134
          Top = 274
          Width = 307
          Height = 21
          ItemHeight = 13
          TabOrder = 10
          Text = 'ComboBox1'
        end
        object CheckBox2: TCheckBox
          Left = 3
          Top = 349
          Width = 95
          Height = 17
          Caption = #1062#1077#1085#1072
          TabOrder = 11
        end
        object Edit1: TEdit
          Left = 134
          Top = 347
          Width = 121
          Height = 21
          TabOrder = 12
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 301
          Top = 347
          Width = 121
          Height = 21
          TabOrder = 13
          Text = 'Edit1'
        end
      end
    end
  end
end
