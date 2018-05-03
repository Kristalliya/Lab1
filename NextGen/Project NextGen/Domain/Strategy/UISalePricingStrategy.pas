unit UISalePricingStrategy;

interface
uses USale, Money;
type
  TISalePricingStrategy=class
  public
    function getTotal(s:TSale):TMoney;virtual;abstract;
  end;
implementation

end.
