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
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    Label10: TLabel;
    MaskEdit2: TMaskEdit;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
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
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupBox2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
