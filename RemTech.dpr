program RemTech;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDB in 'UnitDB.pas' {DBModule: TDataModule},
  UnitSotrud in 'UnitSotrud.pas' {FormSotrud},
  UnitType_techn in 'UnitType_techn.pas' {FormType_techn},
  UnitStatus in 'UnitStatus.pas' {FormStatus};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDBModule, DBModule);
  Application.Run;
end.