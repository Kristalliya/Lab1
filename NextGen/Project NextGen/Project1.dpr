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
<<<<<<< HEAD
  UTaxLineItems in 'src\UTaxLineItems.pas',
  UITaxCalculatorAdapter in 'Domain\UITaxCalculatorAdapter.pas',
  UTaxMasterAdapter in 'Domain\UTaxMasterAdapter.pas',
  UGoodAsGoldTaxProAdapter in 'Domain\UGoodAsGoldTaxProAdapter.pas';
=======
  UITax in 'Domain\UITax.pas',
  UITax1 in 'src\UITax1.pas',
  UITax2 in 'src\UITax2.pas';
>>>>>>> 38a89c0887edaa1283a4ce93eecacca97d3159ac

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
