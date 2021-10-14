unit UnitType_techn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, StdCtrls, Mask, DBCtrls, Grids;

type
  TFormType_techn = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormType_techn: TFormType_techn;

implementation

uses UnitDB;

{$R *.dfm}


procedure TFormType_techn.Button1Click(Sender: TObject);
begin
DBModule.ADOType_techn.Insert;
DBEdit1.SetFocus;
end;

procedure TFormType_techn.Button2Click(Sender: TObject);
begin
DBModule.ADOType_techn.Post;

end;

procedure TFormType_techn.Button3Click(Sender: TObject);
begin
if application.MessageBox(Pchar('Вы действительно хотите удалить запись в таблице?  '),'Внимание!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADOType_techn.delete;
    end;
end;

procedure TFormType_techn.Button4Click(Sender: TObject);
begin
DBModule.ADOType_techn.Cancel;
end;

procedure TFormType_techn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FormDestroy(FormType_techn);
end;

procedure TFormType_techn.FormDestroy(Sender: TObject);
begin
FormType_techn:=nil;
end;

end.
