unit UTaxMasterAdapter;
interface
uses
  UITaxCalculatorAdapter, USale, UTaxLineItems, SysUtils, Generics.Collections, Generics.Defaults;
type
  TTaxMasterAdapter = class(TITaxCalculatorAdapter)
  public
    function getTaxes(Sale: TSale): TList<TTaxLineItems>; override;
  end;

implementation

{ TTaxMasterAdapter }

function TTaxMasterAdapter.getTaxes(Sale: TSale): TList<TTaxLineItems>;
begin

end;

end.

