unit UITaxCalculatorAdapter;

interface

uses
  USale,UTaxLineItems,SysUtils, Generics.Collections,Generics.Defaults;
type
  TITaxCalculatorAdapter = class
  public
    function getTaxes(Sale: TSale): TList<TTaxLineItems>; virtual; abstract;
  end;

implementation

end.

