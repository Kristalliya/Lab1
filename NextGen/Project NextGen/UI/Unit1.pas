unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, URegister, UProductCatalog,
  Data.DB, Data.Win.ADODB, Unit3;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Register1:TRegister1;
    catalog:TProductCatalog;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var id:integer; qty:integer;
begin
  id:=StrToInt(Edit1.Text);
  qty:=StrToInt(Edit2.Text);
  Register1.enterItem(id,qty);
  Edit1.Text:='0';
  Edit2.Text:='0';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form3.Show;
 Form3.Edit1.Text := IntToStr(Register1.getTotalSale);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  catalog:=TProductCatalog.create;
  register1:=TRegister1.create(catalog);
  Register1.makeNewSale;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Edit1.Text:='0';
  Edit2.Text:='0';
  catalog:=TProductCatalog.create;
  Register1:=TRegister1.create(catalog);
  Register1.makeNewSale;
end;

end.
