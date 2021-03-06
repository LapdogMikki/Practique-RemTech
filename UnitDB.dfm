object DBModule: TDBModule
  OldCreateOrder = False
  Height = 781
  Width = 667
  object ADORem_tech: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Rem_tech;Data Source=.\SQLEXPRESS;Use P' +
      'rocedure for Prepare=1;Auto Translate=True;Packet Size=4096;Work' +
      'station ID=.;Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 16
  end
  object ADOTechn: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Technika'
    Left = 80
    Top = 80
    object ADOTechnid_techn: TAutoIncField
      FieldName = 'id_techn'
      ReadOnly = True
      Visible = False
    end
    object ADOTechnname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object ADOTechncharacterstc: TStringField
      DisplayLabel = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
      FieldName = 'characterstc'
      Size = 100
    end
    object ADOTechnid_type_techn: TIntegerField
      FieldName = 'id_type_techn'
      Visible = False
    end
    object ADOTechntypetec: TStringField
      DisplayLabel = #1058#1080#1087
      FieldKind = fkLookup
      FieldName = 'typetec'
      LookupDataSet = ADOType_techn
      LookupKeyFields = 'id_type_techn'
      LookupResultField = 'name_type'
      KeyFields = 'id_techn'
      LookupCache = True
      Lookup = True
    end
  end
  object ADOType_techn: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Type_Techn'
    Left = 80
    Top = 136
    object ADOType_technid_type_techn: TAutoIncField
      FieldName = 'id_type_techn'
      ReadOnly = True
      Visible = False
    end
    object ADOType_technname_type: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
      FieldName = 'name_type'
    end
  end
  object ADOSotrud: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Sotrud'
    Left = 80
    Top = 184
    object ADOSotrudid_sotr: TAutoIncField
      FieldName = 'id_sotr'
      ReadOnly = True
      Visible = False
    end
    object ADOSotrudFIO: TStringField
      DisplayLabel = #1060#1048#1054
      FieldName = 'FIO'
      Size = 30
    end
    object ADOSotruddolzh: TStringField
      DisplayLabel = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      FieldName = 'dolzh'
      Size = 30
    end
    object ADOSotrudphone: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      FieldName = 'phone'
    end
  end
  object ADOStatus: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Status'
    Left = 80
    Top = 232
    object ADOStatusid_status: TAutoIncField
      FieldName = 'id_status'
      ReadOnly = True
      Visible = False
    end
    object ADOStatusstatus_rem: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1088#1077#1084#1086#1085#1090#1072
      FieldName = 'status_rem'
      Size = 30
    end
  end
  object DataTechn: TDataSource
    DataSet = ADOTechn
    Left = 160
    Top = 88
  end
  object DataType_techn: TDataSource
    DataSet = ADOType_techn
    Left = 160
    Top = 136
  end
  object DataSotrud: TDataSource
    DataSet = ADOSotrud
    Left = 160
    Top = 184
  end
  object DataStatus: TDataSource
    DataSet = ADOStatus
    Left = 152
    Top = 240
  end
  object DataRemont: TDataSource
    DataSet = ADORemont
    Left = 440
    Top = 48
  end
  object ADOStatus2: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Status'
    Left = 376
    Top = 152
  end
  object DataStatus2: TDataSource
    DataSet = ADOStatus2
    Left = 456
    Top = 160
  end
  object ADOTechn2: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Technika'
    Left = 376
    Top = 104
  end
  object DataTechn2: TDataSource
    DataSet = ADOTechn2
    Left = 456
    Top = 112
  end
  object ADOType_techn2: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Type_Techn'
    Left = 72
    Top = 288
    object ADOType_techn2id_type_techn: TAutoIncField
      FieldName = 'id_type_techn'
      ReadOnly = True
    end
    object ADOType_techn2name_type: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1080#1087#1072
      FieldName = 'name_type'
    end
  end
  object DataType_techn2: TDataSource
    DataSet = ADOType_techn2
    Left = 160
    Top = 288
  end
  object ADORemont: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Remont'
    Left = 368
    Top = 56
    object ADORemontid_zapr: TAutoIncField
      FieldName = 'id_zapr'
      ReadOnly = True
      Visible = False
    end
    object ADORemonttech: TStringField
      DisplayLabel = #1058#1077#1093#1085#1080#1082#1072
      FieldKind = fkLookup
      FieldName = 'tech'
      LookupDataSet = ADOTechn
      LookupKeyFields = 'id_techn'
      LookupResultField = 'name'
      KeyFields = 'id_tech'
      LookupCache = True
      Lookup = True
    end
    object ADORemontstatus: TStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkLookup
      FieldName = 'status'
      LookupDataSet = ADOStatus
      LookupKeyFields = 'id_status'
      LookupResultField = 'status_rem'
      KeyFields = 'id_status'
      LookupCache = True
      Lookup = True
    end
    object ADORemontsotrud: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'sotrud'
      LookupDataSet = ADOSotrud
      LookupKeyFields = 'id_sotr'
      LookupResultField = 'FIO'
      KeyFields = 'id_sotrud'
      LookupCache = True
      Lookup = True
    end
    object ADORemontid_tech: TIntegerField
      FieldName = 'id_tech'
      Visible = False
    end
    object ADORemontid_status: TIntegerField
      FieldName = 'id_status'
      Visible = False
    end
    object ADORemontid_sotrud: TIntegerField
      FieldName = 'id_sotrud'
      Visible = False
    end
    object ADORemontdata_priema: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1088#1080#1105#1084#1072
      FieldName = 'data_priema'
      Size = 10
    end
    object ADORemontdata_konechn: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103
      FieldName = 'data_konechn'
      Size = 10
    end
  end
  object DataSRemont: TDataSource
    DataSet = SQLRemont
    Left = 456
    Top = 264
  end
  object SQLRemont: TADOQuery
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Technika.name as ['#1058#1077#1093#1085#1080#1082#1072'], Status.status_rem as ['#1057#1090#1072#1090#1091#1089' ' +
        #1088#1077#1084#1086#1085#1090#1072'], Sotrud.FIO as ['#1057#1086#1090#1088#1091#1076#1085#1080#1082'], Remont.data_priema as ['#1044#1072#1090#1072 +
        ' '#1087#1088#1080#1105#1084#1072'], Remont.data_konechn as ['#1044#1072#1090#1072' '#1089#1076#1072#1095#1080']'
      'from Remont, Technika, Status, Sotrud'
      
        'where Technika.id_techn=Remont.id_tech and Sotrud.id_sotr=Remont' +
        '.id_sotrud and Status.id_status=Remont.id_status ')
    Left = 384
    Top = 264
  end
  object ADOSotrud2: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Sotrud'
    Left = 384
    Top = 208
  end
  object DataSotrud2: TDataSource
    DataSet = ADOSotrud2
    Left = 464
    Top = 216
  end
  object frxReporRem: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44014.272051412040000000
    ReportOptions.LastChange = 44251.037179027780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
    Top = 384
    Datasets = <
      item
        DataSet = frxDBDataOtchRem
        DataSetName = 'frxDBDataOtchRem'
      end
      item
        DataSet = frxDBDataOtchSotr
        DataSetName = 'frxDBDataOtchSotr'
      end
      item
        DataSet = frxDBDataOtchStat
        DataSetName = 'frxDBDataOtchStat'
      end
      item
        DataSet = frxDBDataOtchTech
        DataSetName = 'frxDBDataOtchTech'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 366.614410000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1057#8216#1057#8218' '#1056#1111#1056#1109' '#1057#1026#1056#181#1056#1112#1056#1109#1056#1029#1057#8218#1057#1107' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1105#1056#1108#1056#1105)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 41.574830000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#181#1057#8230#1056#1029#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 249.448980000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 434.645950000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#176#1057#8218#1057#1107#1057#1027)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 566.929500000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221'.'#1056#1111#1057#1026#1056#1105#1057#8216#1056#1112#1056#176)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 665.197280000000000000
          Top = 60.472480000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221'.'#1056#183#1056#176#1056#1030#1056#181#1057#1026#1057#8364#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataOtchRem
        DataSetName = 'frxDBDataOtchRem'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = #1058#1077#1093#1085#1080#1082#1072
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchRem."'#1056#1118#1056#181#1057#8230#1056#1029#1056#1105#1056#1108#1056#176'"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 396.850650000000000000
          Top = 7.559059999999988000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          DataField = #1057#1090#1072#1090#1091#1089' '#1088#1077#1084#1086#1085#1090#1072
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchRem."'#1056#1038#1057#8218#1056#176#1057#8218#1057#1107#1057#1027' '#1057#1026#1056#181#1056#1112#1056#1109#1056#1029#1057#8218#1056#176'"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 7.559059999999988000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchRem."'#1056#1038#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 582.047620000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1044#1072#1090#1072' '#1087#1088#1080#1105#1084#1072
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchRem."'#1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1105#1057#8216#1056#1112#1056#176'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 702.992580000000000000
          Top = 7.559059999999988000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchRem."'#1056#8221#1056#176#1057#8218#1056#176' '#1057#1027#1056#1169#1056#176#1057#8225#1056#1105'"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataOtchRem: TfrxDBDataset
    UserName = 'frxDBDataOtchRem'
    CloseDataSource = False
    DataSource = DataSRemont
    Left = 344
    Top = 328
  end
  object frxReportSotr: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44014.272051412040000000
    ReportOptions.LastChange = 44014.272051412040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 432
    Top = 384
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataOtchSotr: TfrxDBDataset
    UserName = 'frxDBDataOtchSotr'
    CloseDataSource = False
    DataSource = DataSRemont
    Left = 432
    Top = 320
  end
  object frxReportStat: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44014.272051412040000000
    ReportOptions.LastChange = 44014.287100763890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDataOtchSotr
        DataSetName = 'frxDBDataOtchSotr'
      end
      item
        DataSet = frxDBDataOtchRem
        DataSetName = 'frxDBDataOtchRem'
      end
      item
        DataSet = frxDBDataOtchStat
        DataSetName = 'frxDBDataOtchStat'
      end
      item
        DataSet = frxDBDataOtchTech
        DataSetName = 'frxDBDataOtchTech'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 207.874150000000000000
          Top = 26.456710000000000000
          Width = 419.527830000000000000
          Height = 34.015770000000010000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#176' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176' '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218#1056#176#1056#1112' '#1057#8222#1056#176#1056#177#1057#1026#1056#1105#1056#1108#1056#1105)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#181#1056#1169#1056#1111#1057#1026#1056#1105#1057#1039#1057#8218#1056#1105#1056#181'-'#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Top = 83.149660000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#1105#1057#1026#1056#181#1056#1108#1057#8218#1056#1109#1057#1026)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 445.984540000000000000
          Top = 83.149660000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1106#1056#1169#1057#1026#1056#181#1057#1027)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 627.401980000000000000
          Top = 83.149660000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1118#1056#181#1056#187#1056#181#1057#8222#1056#1109#1056#1029)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 109.606370000000000000
        Top = 185.196970000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataOtchSotr
        DataSetName = 'frxDBDataOtchSotr'
        RowCount = 0
        object frxDBDataOtchKlientnazvanie: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'nazvanie'
          DataSet = frxDBDataOtchSotr
          DataSetName = 'frxDBDataOtchSotr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchKlient."nazvanie"]')
          ParentFont = False
        end
        object frxDBDataOtchKlientdirector: TfrxMemoView
          Left = 215.433210000000000000
          Top = 11.338590000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'director'
          DataSet = frxDBDataOtchSotr
          DataSetName = 'frxDBDataOtchSotr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchKlient."director"]')
          ParentFont = False
        end
        object frxDBDataOtchKlientadress: TfrxMemoView
          Left = 430.866420000000000000
          Top = 11.338590000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'adress'
          DataSet = frxDBDataOtchSotr
          DataSetName = 'frxDBDataOtchSotr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchKlient."adress"]')
          ParentFont = False
        end
        object frxDBDataOtchKlienttelephon: TfrxMemoView
          Left = 627.401980000000000000
          Top = 11.338590000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'telephon'
          DataSet = frxDBDataOtchSotr
          DataSetName = 'frxDBDataOtchSotr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchKlient."telephon"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#1105)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 143.622140000000000000
          Top = 86.929190000000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 283.464750000000000000
          Top = 86.929190000000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#1026#1057#8218)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 434.645950000000000000
          Top = 86.929190000000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 608.504330000000000000
          Top = 86.929190000000040000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 113.385900000000000000
        Top = 317.480520000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataOtchStat
        DataSetName = 'frxDBDataOtchStat'
        RowCount = 0
        object frxDBDataOtchProdagadata_prod: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'data_prod'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."data_prod"]')
          ParentFont = False
        end
        object frxDBDataOtchTovarnaimenovanie: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559059999999988000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'naimenovanie'
          DataSet = frxDBDataOtchTech
          DataSetName = 'frxDBDataOtchTech'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchTovar."naimenovanie"]')
          ParentFont = False
        end
        object frxDBDataOtchSortsort: TfrxMemoView
          Left = 287.244280000000000000
          Top = 7.559059999999988000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'sort'
          DataSet = frxDBDataOtchRem
          DataSetName = 'frxDBDataOtchRem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchSort."sort"]')
          ParentFont = False
        end
        object frxDBDataOtchProdagakolvo: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.559059999999988000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'kolvo'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."kolvo"]')
          ParentFont = False
        end
        object frxDBDataOtchProdagasumma_prod: TfrxMemoView
          Left = 608.504330000000000000
          Top = 7.559059999999988000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'summa_prod'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."summa_prod"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataOtchStat: TfrxDBDataset
    UserName = 'frxDBDataOtchStat'
    CloseDataSource = False
    DataSource = DataSRemont
    Left = 520
    Top = 320
  end
  object frxDBDataOtchTech: TfrxDBDataset
    UserName = 'frxDBDataOtchTech'
    CloseDataSource = False
    DataSource = DataSRemont
    Left = 592
    Top = 296
  end
  object frxReportTech: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44014.272051412000000000
    ReportOptions.LastChange = 44014.315867685180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 368
    Datasets = <
      item
        DataSet = frxDBDataOtchSotr
        DataSetName = 'frxDBDataOtchSotr'
      end
      item
        DataSet = frxDBDataOtchStat
        DataSetName = 'frxDBDataOtchStat'
      end
      item
        DataSet = frxDBDataOtchRem
        DataSetName = 'frxDBDataOtchRem'
      end
      item
        DataSet = frxDBDataOtchTech
        DataSetName = 'frxDBDataOtchTech'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 411.968770000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#1109#1056#1030#1056#176#1057#1026#1057#8249', '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1057#8222#1056#176#1056#177#1057#1026#1056#1105#1056#1108#1056#1109#1056#8470)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 52.913420000000000000
          Top = 64.252010000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 234.330860000000000000
          Top = 64.252010000000000000
          Width = 219.212740000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8226#1056#1169#1056#1105#1056#1029#1056#1105#1057#8224#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1057#1026#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 90.708720000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataOtchTech
        DataSetName = 'frxDBDataOtchTech'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 49.133890000000000000
          Top = 64.252010000000010000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#187#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 234.330860000000000000
          Top = 64.252010000000010000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#1105)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 423.307360000000000000
          Top = 64.252010000000010000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 631.181510000000000000
          Top = 64.252010000000010000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
        end
        object frxDBDataOtchTovared_izm: TfrxMemoView
          Left = 253.228510000000000000
          Top = 7.559059999999988000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'ed_izm'
          DataSet = frxDBDataOtchTech
          DataSetName = 'frxDBDataOtchTech'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchTovar."ed_izm"]')
          ParentFont = False
        end
        object frxDBDataOtchProdagatovarnaimenovanie: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559059999999988000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataOtchTech
          DataSetName = 'frxDBDataOtchTech'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataOtchTovar."naimenovanie"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 83.149660000000000000
        ParentFont = False
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataOtchStat
        DataSetName = 'frxDBDataOtchStat'
        RowCount = 0
        object frxDBDataOtchKlientnazvanie: TfrxMemoView
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 185.196970000000000000
          Height = 41.574830000000000000
          DataField = 'nazvanie'
          DataSet = frxDBDataOtchSotr
          DataSetName = 'frxDBDataOtchSotr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchKlient."nazvanie"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataOtchProdagadata_prod: TfrxMemoView
          Left = 215.433210000000000000
          Top = 18.897650000000000000
          Width = 154.960730000000000000
          Height = 41.574830000000000000
          DataField = 'data_prod'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."data_prod"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataOtchProdagakolvo: TfrxMemoView
          Left = 400.630180000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 41.574830000000000000
          DataField = 'kolvo'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."kolvo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataOtchProdagasumma_prod: TfrxMemoView
          Left = 612.283860000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 41.574830000000000000
          DataField = 'summa_prod'
          DataSet = frxDBDataOtchStat
          DataSetName = 'frxDBDataOtchStat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataOtchProdaga."summa_prod"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object ADOFormZkz: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'FormirZakaz'
    Left = 104
    Top = 424
    object ADOFormZkzid_tech: TIntegerField
      FieldName = 'id_tech'
      Visible = False
    end
    object ADOFormZkzid_sotrud: TIntegerField
      FieldName = 'id_sotrud'
      Visible = False
    end
    object ADOFormZkztechn: TStringField
      DisplayLabel = #1058#1077#1093#1085#1080#1082#1072
      FieldKind = fkLookup
      FieldName = 'techn'
      LookupDataSet = ADOTechn_3
      LookupKeyFields = 'id_techn'
      LookupResultField = 'name'
      KeyFields = 'id_tech'
      LookupCache = True
      Lookup = True
    end
    object ADOFormZkzdata_zkz: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'data_zkz'
      EditMask = '!9999-99-99;1;_'
      Size = 10
    end
    object ADOFormZkzprice: TBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'price'
      Precision = 19
    end
    object ADOFormZkzsotrud: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'sotrud'
      LookupDataSet = ADOSotrud_3
      LookupKeyFields = 'id_sotr'
      LookupResultField = 'FIO'
      KeyFields = 'id_sotrud'
      LookupCache = True
      Lookup = True
    end
  end
  object ADOZkz: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Zakaz'
    Left = 104
    Top = 472
    object ADOZkzid_zkz: TIntegerField
      FieldName = 'id_zkz'
      Visible = False
    end
    object ADOZkzid_techn: TIntegerField
      FieldName = 'id_techn'
      Visible = False
    end
    object ADOZkzid_sotrud: TIntegerField
      FieldName = 'id_sotrud'
      Visible = False
    end
    object ADOZkztechn: TStringField
      DisplayLabel = #1058#1077#1093#1085#1080#1082#1072
      FieldKind = fkLookup
      FieldName = 'techn'
      LookupDataSet = ADOTechn_3
      LookupKeyFields = 'id_techn'
      LookupResultField = 'name'
      KeyFields = 'id_techn'
      Lookup = True
    end
    object ADOZkzdata_zkz: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'data_zkz'
      EditMask = '!9999-99-99;1;_'
      Size = 10
    end
    object ADOZkzprice: TBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'price'
      Precision = 19
    end
    object ADOZkzsotrud: TStringField
      DisplayLabel = #1054#1090#1074'.'#1089#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'sotrud'
      LookupDataSet = ADOSotrud_3
      LookupKeyFields = 'id_sotr'
      LookupResultField = 'FIO'
      KeyFields = 'id_sotrud'
      Lookup = True
    end
  end
  object ADOTechn_3: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Technika'
    Left = 104
    Top = 520
  end
  object ADOSotrud_3: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'Sotrud'
    Left = 104
    Top = 568
  end
  object DataFormZkz: TDataSource
    DataSet = ADOFormZkz
    Left = 184
    Top = 424
  end
  object DataZkz: TDataSource
    DataSet = ADOZkz
    Left = 184
    Top = 472
  end
  object DataTechn_3: TDataSource
    DataSet = ADOTechn_3
    Left = 184
    Top = 520
  end
  object DataSotrud_3: TDataSource
    DataSet = ADOSotrud_3
    Left = 184
    Top = 568
  end
  object DataQueryZakaz: TDataSource
    DataSet = ADOQZakaz
    Left = 248
    Top = 432
  end
  object ADOQZakaz: TADOQuery
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Technika.name as ['#1058#1077#1093#1085#1080#1082#1072'], Zakaz.data_zkz as ['#1044#1072#1090#1072' '#1079#1072#1082#1072#1079 +
        #1072'], Zakaz.price as ['#1062#1077#1085#1072'], Sotrud.FIO as ['#1057#1086#1090#1088#1091#1076#1085#1080#1082']'
      'from Zakaz, Sotrud, Technika'
      
        'where Technika.id_techn=Zakaz.id_techn and Sotrud.id_sotr=Zakaz.' +
        'id_sotrud')
    Left = 256
    Top = 384
  end
  object frxReportZkz: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44489.779782152800000000
    ReportOptions.LastChange = 44489.854489548610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 360
    Top = 584
    Datasets = <
      item
        DataSet = frxDBDataSotr2
        DataSetName = 'frxDBDataSotr2'
      end
      item
        DataSet = frxDBDataTech2
        DataSetName = 'frxDBDataTech2'
      end
      item
        DataSet = frxDBDataZkz
        DataSetName = 'frxDBDataZkz'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 173.858380000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataSotr2
        DataSetName = 'frxDBDataSotr2'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = #1058#1077#1093#1085#1080#1082#1072
          DataSet = frxDBDataTech2
          DataSetName = 'frxDBDataTech2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataTech2."'#1056#1118#1056#181#1057#8230#1056#1029#1056#1105#1056#1108#1056#176'"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
          DataSet = frxDBDataTech2
          DataSetName = 'frxDBDataTech2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataTech2."'#1056#8221#1056#176#1057#8218#1056#176' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176'"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = #1062#1077#1085#1072
          DataSet = frxDBDataTech2
          DataSetName = 'frxDBDataTech2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataTech2."'#1056#166#1056#181#1056#1029#1056#176'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 226.771800000000000000
          Top = 15.118120000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          DataSet = frxDBDataTech2
          DataSetName = 'frxDBDataTech2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataTech2."'#1056#1038#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108'"]')
          ParentFont = False
        end
      end
      object ReportTitle11: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo5: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 563.149970000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1057#8218#1057#8225#1057#8216#1057#8218' '#1056#1111#1056#1109' '#1056#183#1056#176#1056#1108#1057#1107#1056#1111#1056#187#1056#181#1056#1029#1056#1029#1057#8249#1056#1112' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105#1056#1112' '#1057#1027 +
              #1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030#1056#176#1056#1112)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Top = 64.252010000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#181#1057#8230'.'#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 253.228510000000000000
          Top = 64.252010000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1030'.'#1057#1027#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 468.661720000000000000
          Top = 68.031540000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 638.740570000000000000
          Top = 68.031540000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 56.692950000000000000
        Top = 287.244280000000000000
        Width = 793.701300000000000000
        object Memo10: TfrxMemoView
          Left = 393.071120000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109' '#1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169':')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 559.370440000000000000
          Top = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataSotr2."'#1056#166#1056#181#1056#1029#1056#176'">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 94.488250000000000000
        Top = 366.614410000000000000
        Width = 793.701300000000000000
        object Memo11: TfrxMemoView
          Left = 521.575140000000000000
          Top = 15.118120000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '__________________________________')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 521.575140000000000000
          Top = 49.133890000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '__________________________________')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 332.598640000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1030#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1056#8470' '#1057#8218#1056#181#1057#8230'.'#1056#1109#1057#8218#1056#1169#1056#181#1056#187#1056#1109#1056#1112)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 332.598640000000000000
          Top = 52.913420000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#181#1056#1169#1057#1027#1056#181#1056#1169#1056#176#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataZkz: TfrxDBDataset
    UserName = 'frxDBDataZkz'
    CloseDataSource = False
    DataSource = DataQueryZakaz
    Left = 360
    Top = 536
  end
  object frxReportFormZkz: TfrxReport
    Version = '4.2.45'
    DataSet = frxDBDataFormZkz
    DataSetName = 'frxDBDataFormZkz'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44489.779782152800000000
    ReportOptions.LastChange = 44489.850233437500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 616
    Datasets = <
      item
        DataSet = frxDBDatasetFormZkz2
        DataSetName = 'frxDBDataFormZkz2'
      end
      item
        DataSet = frxDBDataFormZkz
        DataSetName = 'frxDBDataFormZkz'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 162.519790000000000000
          Width = 442.205010000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1056#1115#1057#8218#1057#8225#1057#8216#1057#8218' '#1056#1111#1056#1109' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1057#1107' '#1056#183#1056#176#1056#1108#1057#1107#1056#1111#1056#1108#1056#1105' '#1057#8218#1056#181#1057#8230#1056#1029#1056#1105#1057#8225#1056#181#1057#1027#1056#1108#1056#1105 +
              #1056#1112' '#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030#1056#176#1056#1112)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 60.472480000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#181#1057#8230'.'#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Top = 60.472480000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 578.268090000000000000
          Top = 60.472480000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 68.031540000000000000
        Top = 170.078850000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDatasetFormZkz2
        DataSetName = 'frxDBDataFormZkz2'
        RowCount = 0
        object frxDBDataFormZkz2techn: TfrxMemoView
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'techn'
          DataSet = frxDBDatasetFormZkz2
          DataSetName = 'frxDBDataFormZkz2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataFormZkz2."techn"]')
          ParentFont = False
        end
        object frxDBDataFormZkz2sotrud: TfrxMemoView
          Left = 249.448980000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'sotrud'
          DataSet = frxDBDatasetFormZkz2
          DataSetName = 'frxDBDataFormZkz2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataFormZkz2."sotrud"]')
          ParentFont = False
        end
        object frxDBDataFormZkz2price: TfrxMemoView
          Left = 570.709030000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'price'
          DataSet = frxDBDatasetFormZkz2
          DataSetName = 'frxDBDataFormZkz2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataFormZkz2."price"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 60.472480000000000000
        Top = 298.582870000000000000
        Width = 793.701300000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 634.961040000000000000
          Top = 15.118120000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataFormZkz2."price">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 158.740260000000000000
        Top = 381.732530000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 298.582870000000000000
          Top = 11.338590000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1030#1056#181#1056#1169#1057#1107#1057#1035#1057#8240#1056#1105#1056#8470' '#1057#8218#1056#181#1057#8230'.'#1056#1109#1057#8218#1056#1169#1056#181#1056#187#1056#1109#1056#1112)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 502.677490000000000000
          Top = 11.338590000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '_______________________________________')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 298.582870000000000000
          Top = 52.913420000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#181#1056#1169#1057#1027#1056#181#1056#1169#1056#176#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Top = 52.913420000000000000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '_______________________________________')
          ParentFont = False
        end
      end
    end
  end
  object frxReportSotr2: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44489.779782152780000000
    ReportOptions.LastChange = 44489.779782152780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 584
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
  object frxReportTech2: TfrxReport
    Version = '4.2.45'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44489.779782152780000000
    ReportOptions.LastChange = 44489.779782152780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 520
    Top = 584
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataFormZkz: TfrxDBDataset
    UserName = 'frxDBDataFormZkz'
    CloseDataSource = False
    DataSource = DataFormZkz
    Left = 144
    Top = 624
  end
  object frxDBDataSotr2: TfrxDBDataset
    UserName = 'frxDBDataSotr2'
    CloseDataSource = False
    DataSource = DataQueryZakaz
    Left = 440
    Top = 536
  end
  object frxDBDataTech2: TfrxDBDataset
    UserName = 'frxDBDataTech2'
    CloseDataSource = False
    DataSource = DataQueryZakaz
    Left = 520
    Top = 536
  end
  object frxDBDatasetFormZkz2: TfrxDBDataset
    UserName = 'frxDBDataFormZkz2'
    CloseDataSource = False
    DataSource = DataFormZkz2
    Left = 144
    Top = 672
  end
  object frxReportFormZkz2: TfrxReport
    Version = '4.2.45'
    DataSet = frxDBDataFormZkz
    DataSetName = 'frxDBDataFormZkz'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44489.779782152800000000
    ReportOptions.LastChange = 44489.786129131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 664
    Datasets = <
      item
        DataSet = frxDBDatasetFormZkz2
        DataSetName = 'frxDBDataFormZkz2'
      end
      item
        DataSet = frxDBDataFormZkz
        DataSetName = 'frxDBDataFormZkz'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 98.267780000000000000
        Top = 170.078850000000000000
        Width = 793.701300000000000000
        Child = FormZakaz.Owner
        DataSet = frxDBDataFormZkz
        DataSetName = 'frxDBDataFormZkz'
        RowCount = 0
        object frxDBDataFormZkztechn: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'techn'
          DataSet = frxDBDataFormZkz
          DataSetName = 'frxDBDataFormZkz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataFormZkz."techn"]')
          ParentFont = False
        end
      end
      object Child1: TfrxChild
        Height = 41.574830000000000000
        Top = 291.023810000000000000
        Width = 793.701300000000000000
        object frxDBDataFormZkzdata_zkz: TfrxMemoView
          Left = 215.433210000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'data_zkz'
          DataSet = frxDBDataFormZkz
          DataSetName = 'frxDBDataFormZkz'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataFormZkz."data_zkz"]')
          ParentFont = False
        end
      end
    end
  end
  object ADOFormZkz2: TADOTable
    Active = True
    Connection = ADORem_tech
    CursorType = ctStatic
    TableName = 'FormirZakaz'
    Left = 112
    Top = 368
    object IntegerField1: TIntegerField
      FieldName = 'id_tech'
      Visible = False
    end
    object IntegerField2: TIntegerField
      FieldName = 'id_sotrud'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = #1058#1077#1093#1085#1080#1082#1072
      FieldKind = fkLookup
      FieldName = 'techn'
      LookupDataSet = ADOTechn_3
      LookupKeyFields = 'id_techn'
      LookupResultField = 'name'
      KeyFields = 'id_tech'
      LookupCache = True
      Lookup = True
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      FieldName = 'data_zkz'
      EditMask = '!9999-99-99;1;_'
      Size = 10
    end
    object BCDField1: TBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'price'
      Precision = 19
    end
    object StringField2: TStringField
      DisplayLabel = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      FieldKind = fkLookup
      FieldName = 'sotrud'
      LookupDataSet = ADOSotrud_3
      LookupKeyFields = 'id_sotr'
      LookupResultField = 'FIO'
      KeyFields = 'id_sotrud'
      LookupCache = True
      Lookup = True
    end
  end
  object DataFormZkz2: TDataSource
    DataSet = ADOFormZkz2
    Left = 192
    Top = 368
  end
end
