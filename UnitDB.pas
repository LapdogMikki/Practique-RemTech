unit UnitDB;

interface

uses
  SysUtils, Classes, DB, ADODB, FMTBcd, SqlExpr, frxClass, frxDBSet;

type
  TDBModule = class(TDataModule)
    ADORem_tech: TADOConnection;
    ADOTechn: TADOTable;
    ADOType_techn: TADOTable;
    ADOSotrud: TADOTable;
    ADOStatus: TADOTable;
    DataTechn: TDataSource;
    DataType_techn: TDataSource;
    DataSotrud: TDataSource;
    DataStatus: TDataSource;
    DataRemont: TDataSource;
    ADOStatus2: TADOTable;
    DataStatus2: TDataSource;
    ADOTechn2: TADOTable;
    DataTechn2: TDataSource;
    ADOType_techn2: TADOTable;
    DataType_techn2: TDataSource;
    ADORemont: TADOTable;
    DataSRemont: TDataSource;
    SQLRemont: TADOQuery;
    ADOSotrud2: TADOTable;
    DataSotrud2: TDataSource;
    ADORemontid_zapr: TAutoIncField;
    ADORemontid_tech: TIntegerField;
    ADORemontid_status: TIntegerField;
    ADORemontid_sotrud: TIntegerField;
    ADORemontdata_priema: TWideStringField;
    ADORemontdata_konechn: TWideStringField;
    ADORemonttech: TStringField;
    ADORemontstatus: TStringField;
    ADORemontsotrud: TStringField;
    frxReporRem: TfrxReport;
    frxDBDataOtchRem: TfrxDBDataset;
    frxReportSotr: TfrxReport;
    frxDBDataOtchSotr: TfrxDBDataset;
    frxReportStat: TfrxReport;
    frxDBDataOtchStat: TfrxDBDataset;
    frxDBDataOtchTech: TfrxDBDataset;
    frxReportTech: TfrxReport;
    ADOTechnid_techn: TAutoIncField;
    ADOTechnname: TStringField;
    ADOTechncharacterstc: TStringField;
    ADOTechnid_type_techn: TIntegerField;
    ADOType_technid_type_techn: TAutoIncField;
    ADOType_technname_type: TStringField;
    ADOSotrudid_sotr: TAutoIncField;
    ADOSotrudFIO: TStringField;
    ADOSotruddolzh: TStringField;
    ADOSotrudphone: TStringField;
    ADOStatusid_status: TAutoIncField;
    ADOStatusstatus_rem: TStringField;
    ADOType_techn2id_type_techn: TAutoIncField;
    ADOType_techn2name_type: TStringField;
    ADOTechntypetec: TStringField;
    ADOFormZkz: TADOTable;
    ADOZkz: TADOTable;
    ADOTechn_3: TADOTable;
    ADOSotrud_3: TADOTable;
    DataFormZkz: TDataSource;
    DataZkz: TDataSource;
    DataTechn_3: TDataSource;
    DataSotrud_3: TDataSource;
    ADOFormZkzid_tech: TIntegerField;
    ADOFormZkzid_sotrud: TIntegerField;
    ADOFormZkzdata_zkz: TWideStringField;
    ADOFormZkzprice: TBCDField;
    ADOFormZkztechn: TStringField;
    ADOFormZkzsotrud: TStringField;
    ADOZkzid_zkz: TIntegerField;
    ADOZkzid_techn: TIntegerField;
    ADOZkzid_sotrud: TIntegerField;
    ADOZkzdata_zkz: TWideStringField;
    ADOZkzprice: TBCDField;
    ADOZkztechn: TStringField;
    ADOZkzsotrud: TStringField;
    DataQueryZakaz: TDataSource;
    ADOQZakaz: TADOQuery;
    frxReportZkz: TfrxReport;
    frxDBDataZkz: TfrxDBDataset;
    frxReportFormZkz: TfrxReport;
    frxReportSotr2: TfrxReport;
    frxReportTech2: TfrxReport;
    frxDBDataFormZkz: TfrxDBDataset;
    frxDBDataSotr2: TfrxDBDataset;
    frxDBDataTech2: TfrxDBDataset;
    frxDBDatasetFormZkz2: TfrxDBDataset;
    frxReportFormZkz2: TfrxReport;
    ADOFormZkz2: TADOTable;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    WideStringField1: TWideStringField;
    BCDField1: TBCDField;
    StringField2: TStringField;
    DataFormZkz2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBModule: TDBModule;

implementation

{$R *.dfm}




end.
