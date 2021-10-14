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