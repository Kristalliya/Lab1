unit UITax2;

interface
uses SysUtils,  Generics.Collections, Generics.Defaults,UITax,Money;
 type
  TITax2=class(TITax)
  public
   function getTax(Sales):TMoney;
  end;
implementation

end.
