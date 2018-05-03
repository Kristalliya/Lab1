program Project1;

uses
  Vcl.Forms,
  Unit1 in 'UI\Unit1.pas' {Form1},
  UPayment in 'Domain\UPayment.pas',
  Money in 'src\Money.pas',
  UProductCatalog in 'Domain\UProductCatalog.pas',
  ItemID in 'src\ItemID.pas',
  UProductDescription in 'Domain\UProductDescription.pas',
  USalesLineItem in 'Domain\USalesLineItem.pas',
  USale in 'Domain\USale.pas',
  URegister in 'Domain\URegister.pas',
  UStore in 'Domain\UStore.pas',
  UConnect in 'src\UConnect.pas',
  UTaxLineItems in 'src\UTaxLineItems.pas',
  UITaxCalculatorAdapter in 'Domain\UITaxCalculatorAdapter.pas',
  UTaxMasterAdapter in 'Domain\UTaxMasterAdapter.pas',
  UGoodAsGoldTaxProAdapter in 'Domain\UGoodAsGoldTaxProAdapter.pas',
  Unit2 in 'UI\Unit2.pas' {Form2},
  Unit3 in 'UI\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
