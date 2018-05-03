unit UGoodAsGoldTaxProAdapter;
interface
uses
  UITaxCalculatorAdapter, USale, UTaxLineItems,
  SysUtils, Generics.Collections, Generics.Defaults;
type
  TGoodAsGoldTaxProAdapter = class(TITaxCalculatorAdapter)
  public
    function getTaxes(Sale: TSale): TList<TTaxLineItems>; override;
  end;
implementation

{ TGoodAsGoldTaxProAdapter }

function TGoodAsGoldTaxProAdapter.getTaxes(Sale: TSale): TList<TTaxLineItems>;
begin

end;

end.

