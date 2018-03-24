unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, URegister, UProductCatalog;

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
  private
    Register:TRegister;
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
  id:=strtoint(Edit1.text);
  qty:=strToInt(Edit2.Text);
  Register.makeNewSale;
  Register.enterItem(id,qty);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  catalog:=TProductCatalog.create;
  register:=TRegister.create(catalog);
end;

end.
