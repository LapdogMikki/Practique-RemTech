unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, XPMan, Grids, DBGrids, DBCtrls, StdCtrls,
  Mask;

type
  TFormMain = class(TForm)
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    N7: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure N7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation
uses UnitDB, UnitSotrud, UnitStatus, UnitType_techn, UnitZakaz;

{$R *.dfm}

procedure TFormMain.Button10Click(Sender: TObject);
begin
DBModule.SQLRemont.Active:=False;
DBModule.SQLRemont.SQL.Clear;
  DBModule.SQLRemont.SQL.Add('select Technika.name as [???????], Status.status_rem as [?????? ???????], Sotrud.FIO as [?????????], Remont.data_priema as [???? ??????], Remont.data_konechn as [???? ?????]');
  DBModule.SQLRemont.SQL.Add('from Remont, Technika, Status, Sotrud');
  DBModule.SQLRemont.SQL.Add('where Technika.id_techn=Remont.id_tech and Sotrud.id_sotr=Remont.id_sotrud and Status.id_status=Remont.id_status');
if CheckBox1.Checked=true then
    begin
    DBModule.SQLRemont.SQL.Add('and Remont.id_tech='+DBLookUpCombobox7.ListSource.DataSet.FieldByName('id_techn').AsString);
    end;
  if CheckBox2.Checked=true then
  begin
     DBModule.SQLRemont.SQL.Add('and Remont.id_status='+DBLookUpCombobox6.ListSource.DataSet.FieldByName('id_status').AsString);
  end;
  if CheckBox4.Checked=true then
    begin
      DBModule.SQLRemont.SQL.Add('and Remont.data_priema>='''+Maskedit1.Text+''' and Remont.data_konechn<='''+Maskedit2.Text+'''');
    end;
  if CheckBox3.Checked=true then
    begin
      DBModule.SQLRemont.SQL.Add('and Remont.id_sotrud='+DBLookUpCombobox5.ListSource.DataSet.FieldByName('id_sotr').AsString);
    end;
  DBModule.SQLRemont.Active:=True;
end;

procedure TFormMain.Button11Click(Sender: TObject);
begin
  DBModule.SQLRemont.Active:=False;
  DBModule.SQLRemont.SQL.Clear;
  DBModule.SQLRemont.SQL.Add('select Technika.name as [???????], Status.status_rem as [?????? ???????], Sotrud.FIO as [?????????], Remont.data_priema as [???? ??????], Remont.data_konechn as [???? ?????]');
  DBModule.SQLRemont.SQL.Add('from Remont, Technika, Status, Sotrud');
  DBModule.SQLRemont.SQL.Add('where Technika.id_techn=Remont.id_tech and Sotrud.id_sotr=Remont.id_sotrud and Status.id_status=Remont.id_status');
  DBModule.SQLRemont.Active:=True;
end;

procedure TFormMain.Button12Click(Sender: TObject);
begin
DBModule.frxReporRem.ShowReport;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
DBModule.ADOTechn.Insert;
DBEdit1.SetFocus;
end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
DBModule.ADOTechn.Post;
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
if application.MessageBox(Pchar('?? ????????????? ?????? ??????? ?????? ? ????????  '),'????????!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADOTechn.delete;
    end;
end;

procedure TFormMain.Button4Click(Sender: TObject);
begin
DBModule.ADOTechn.Cancel;
end;

procedure TFormMain.Button5Click(Sender: TObject);
begin
DBModule.ADORemont.Insert;
end;

procedure TFormMain.Button6Click(Sender: TObject);
begin
DBModule.ADORemont.Post;
end;

procedure TFormMain.Button7Click(Sender: TObject);
begin
if application.MessageBox(Pchar('?? ????????????? ?????? ??????? ?????? ? ????????  '),'????????!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADORemont.delete;
    end;
end;

procedure TFormMain.Button8Click(Sender: TObject);
begin
DBModule.ADORemont.Cancel;
end;

procedure TFormMain.Button9Click(Sender: TObject);
begin
DBModule.ADORemont.Edit;
end;





procedure TFormMain.N3Click(Sender: TObject);
begin
FormMain.Close;
end;

procedure TFormMain.N4Click(Sender: TObject);
begin
if assigned(FormType_techn) then
    begin
      Application.Title:='????????';
      ShowMessage('????? ??????? ??????????? ???????');
    end
  else
  Application.CreateForm(TFormType_techn, FormType_techn);
end;

procedure TFormMain.N5Click(Sender: TObject);
begin
if assigned(FormSotrud) then
    begin
      Application.Title:='????????';
      ShowMessage('????? ??????? ??????????? ???????');
    end
  else
  Application.CreateForm(TFormSotrud, FormSotrud);
end;

procedure TFormMain.N6Click(Sender: TObject);
begin
if assigned(FormStatus) then
    begin
      Application.Title:='????????';
      ShowMessage('????? ??????? ??????????? ???????');
    end
  else
  Application.CreateForm(TFormStatus, FormStatus);
end;


procedure TFormMain.N7Click(Sender: TObject);
begin
if assigned(FormZakaz) then
    begin
      Application.Title:='????????';
      ShowMessage('????? ??????? ??????? ???????');
    end
  else
  Application.CreateForm(TFormZakaz, FormZakaz);
end;


end.
