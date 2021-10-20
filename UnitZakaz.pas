unit UnitZakaz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, Mask, DBCtrls;

type
  TFormZakaz = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    Label10: TLabel;
    MaskEdit2: TMaskEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox2: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZakaz: TFormZakaz;

implementation

uses UnitDB;

{$R *.dfm}

procedure TFormZakaz.Button10Click(Sender: TObject);
begin
  DBModule.ADOQZakaz.Active:=False;
  DBModule.ADOQZakaz.SQL.Clear;
  DBModule.ADOQZakaz.SQL.Add('select Technika.name as [Техника], Zakaz.data_zkz as [Дата заказа], Zakaz.price as [Цена], Sotrud.FIO as [Сотрудник]');
  DBModule.ADOQZakaz.SQL.Add('from Zakaz, Technika, Sotrud');
  DBModule.ADOQZakaz.SQL.Add('where Technika.id_techn=Zakaz.id_techn and Sotrud.id_sotr=Zakaz.id_sotrud');
  DBModule.ADOQZakaz.Active:=True;
end;

procedure TFormZakaz.Button11Click(Sender: TObject);
begin
    DBModule.frxReportZkz.ShowReport;
end;

procedure TFormZakaz.Button1Click(Sender: TObject);
begin
  DBModule.ADOFormZkz.Insert;
end;

procedure TFormZakaz.Button2Click(Sender: TObject);
begin
if application.MessageBox(Pchar('Вы действительно хотите удалить запись в таблице?  '),'Внимание!!!',MB_OKCANCEL)=id_ok then
    begin
      DBModule.ADOFormZkz.delete;
    end;
     DBModule.ADOFormZkz2.Active:=False;
  DBModule.ADOFormZkz2.Active:=True;
end;

procedure TFormZakaz.Button3Click(Sender: TObject);
begin
  DBModule.ADOFormZkz.Post;
  DBModule.ADOFormZkz2.Active:=False;
  DBModule.ADOFormZkz2.Active:=True;
end;

procedure TFormZakaz.Button4Click(Sender: TObject);
begin
   DBModule.ADOFormZkz.Cancel;
end;

procedure TFormZakaz.Button5Click(Sender: TObject);
var i:integer;
begin
  DBModule.ADOFormZkz.First;
  for i:=0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
    begin
        DBModule.ADOZkz.Insert;
        DBModule.ADOZkz.FieldByName('id_techn').Value:=DBModule.ADOFormZkz.FieldbyName('id_tech').Value;
        DBModule.ADOZkz.FieldByName('id_sotrud').Value:=DBModule.ADOFormZkz.FieldbyName('id_sotrud').Value;
        DBModule.ADOZkz.FieldByName('data_zkz').Value:=DBModule.ADOFormZkz.FieldbyName('data_zkz').Value;
        DBModule.ADOZkz.FieldByName('price').Value:=DBModule.ADOFormZkz.FieldbyName('price').Value;
        DBModule.ADOZkz.Post;
        DBModule.ADOFormZkz.Next;
    end;
    DBModule.ADOQZakaz.Active:=False;
    DBModule.ADOQZakaz.Active:=True;
end;

procedure TFormZakaz.Button6Click(Sender: TObject);
var i:integer;
begin
if application.MessageBox(Pchar('Вы действительно хотите очистить таблицу?  '),'Внимание!!!',MB_OKCANCEL)=id_ok then
    begin
      for i := 0 to DBGrid2.DataSource.DataSet.RecordCount-1 do
         DBModule.ADOFormZkz.delete;
    end;
     DBModule.ADOFormZkz2.Active:=False;
    DBModule.ADOFormZkz2.Active:=True;
end;

procedure TFormZakaz.Button7Click(Sender: TObject);
begin
DBModule.frxReportFormZkz.ShowReport;
end;

procedure TFormZakaz.Button8Click(Sender: TObject);
begin
DBModule.ADOFormZkz.Edit;
end;

procedure TFormZakaz.Button9Click(Sender: TObject);
begin
  DBModule.ADOQZakaz.Active:=False;
  DBModule.ADOQZakaz.SQL.Clear;
  DBModule.ADOQZakaz.SQL.Add('select Technika.name as [Техника], Zakaz.data_zkz as [Дата заказа], Zakaz.price as [Цена], Sotrud.FIO as [Сотрудник]');
  DBModule.ADOQZakaz.SQL.Add('from Zakaz, Technika, Sotrud');
  DBModule.ADOQZakaz.SQL.Add('where Technika.id_techn=Zakaz.id_techn and Sotrud.id_sotr=Zakaz.id_sotrud');
  if CheckBox1.Checked=true then
    begin
    DBModule.ADOQZakaz.SQL.Add('and Zakaz.id_techn='+DBLookUpCombobox3.ListSource.DataSet.FieldByName('id_techn').AsString+'');
    end;
  if CheckBox3.Checked=true then
  begin
     DBModule.ADOQZakaz.SQL.Add('and Zakaz.id_sotrud='+DBLookUpCombobox4.ListSource.DataSet.FieldByName('id_sotr').AsString+'');
  end;
  if CheckBox4.Checked=true then
    begin
      DBModule.ADOQZakaz.SQL.Add('and Zakaz.data_zkz between'''+Maskedit1.Text+''' and '''+Maskedit2.Text+'''');
    end;
  if CheckBox2.Checked=true then
    begin
      DBModule.ADOQZakaz.SQL.Add('and Zakaz.price between'''+Edit1.Text+''' and '''+Edit2.Text+'''');
    end;


  DBModule.ADOQZakaz.Active:=True;
end;

procedure TFormZakaz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
FormDestroy(FormZakaz);
end;

procedure TFormZakaz.FormDestroy(Sender: TObject);
begin
FormZakaz:=nil;
end;

end.
