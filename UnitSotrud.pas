unit UnitSotrud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, StdCtrls, Mask, DBCtrls, Grids;

type
  TFormSotrud = class(TForm)
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSotrud: TFormSotrud;

implementation

uses UnitDB;

{$R *.dfm}

procedure TFormSotrud.Button1Click(Sender: TObject);
begin
DBModule.ADOSotrud.Insert;
DBEdit1.SetFocus;
end;

procedure TFormSotrud.Button2Click(Sender: TObject);
begin
DBModule.ADOSotrud.Post;

end;

procedure TFormSotrud.Button3Click(Sender: TObject);
begin
 if application.MessageBox(Pchar('?? ????????????? ?????? ??????? ?????? ? ????????  '),'????????!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADOSotrud.delete;
    end;
end;

procedure TFormSotrud.Button4Click(Sender: TObject);
begin
DBModule.ADOSotrud.Cancel;
end;

procedure TFormSotrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FormDestroy(FormSotrud);
end;

procedure TFormSotrud.FormDestroy(Sender: TObject);
begin
FormSotrud:=nil;
end;

end.
