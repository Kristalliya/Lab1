program Project1;

uses
  Vcl.Forms,
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
  UITaxCalculatorAdapter in 'Domain\Polymorth\UITaxCalculatorAdapter.pas',
  UTaxMasterAdapter in 'Domain\Polymorth\UTaxMasterAdapter.pas',
  UGoodAsGoldTaxProAdapter in 'Domain\Polymorth\UGoodAsGoldTaxProAdapter.pas',
  Unit2 in 'UI\Unit2.pas' {Form2},
  Unit1 in 'UI\Unit1.pas' {Form1},
  Unit3 in 'UI\Unit3.pas' {Form3},
  UAbsoluteDiscountPricingStrategy in 'Domain\Strategy\UAbsoluteDiscountPricingStrategy.pas',
  UISalePricingStrategy in 'Domain\Strategy\UISalePricingStrategy.pas',
  UPercentDiscountPricingStrategy in 'Domain\Strategy\UPercentDiscountPricingStrategy.pas',
  UServicesFactory in 'Domain\UServicesFactory.pas',
  UPricingStrategyFactory in 'Domain\UPricingStrategyFactory.pas',
  USAPAccountingAdapter in 'Domain\Polymorth\USAPAccountingAdapter.pas',
  UIInventoryAdapter in 'Domain\Polymorth\UIInventoryAdapter.pas',
  UICreditAuthorizationServiceAdapter in 'Domain\Polymorth\UICreditAuthorizationServiceAdapter.pas',
  UIAccountingAdapter in 'Domain\Polymorth\UIAccountingAdapter.pas',
  UGreatNorthernAccountingAdapter in 'Domain\Polymorth\UGreatNorthernAccountingAdapter.pas',
  UCompositeBestForCustomer in 'Domain\Composite\UCompositeBestForCustomer.pas',
  UCompositeBestForStore in 'Domain\Composite\UCompositeBestForStore.pas',
  UCompositePricingStrategy in 'Domain\Composite\UCompositePricingStrategy.pas',
  UPersistentStorage in 'src\UPersistentStorage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
