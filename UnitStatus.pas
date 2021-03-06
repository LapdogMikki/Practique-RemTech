unit UnitStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, StdCtrls, Mask, DBCtrls, Grids;

type
  TFormStatus = class(TForm)
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
  FormStatus: TFormStatus;

implementation

uses UnitDB;

{$R *.dfm}

procedure TFormStatus.Button1Click(Sender: TObject);
begin
DBModule.ADOStatus.Insert;
DBEdit1.SetFocus;
end;

procedure TFormStatus.Button2Click(Sender: TObject);
begin
DBModule.ADOStatus.Post;

end;

procedure TFormStatus.Button3Click(Sender: TObject);
begin
 if application.MessageBox(Pchar('?? ????????????? ?????? ??????? ?????? ? ????????  '),'????????!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADOStatus.delete;
    end;
end;

procedure TFormStatus.Button4Click(Sender: TObject);
begin
   DBModule.ADOStatus.cancel;
end;

procedure TFormStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
 FormDestroy(FormStatus);
end;

procedure TFormStatus.FormDestroy(Sender: TObject);
begin
 FormStatus:=nil;
end;

end.
