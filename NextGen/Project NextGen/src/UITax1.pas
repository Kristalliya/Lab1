unit UITax1;

interface
uses SysUtils,  Generics.Collections, Generics.Defaults,UITax,Money;
 type
   TITax1=class(TITax)
 private

 public
   function getTax(Sales):TMoney;
 end;
implementation

end.
