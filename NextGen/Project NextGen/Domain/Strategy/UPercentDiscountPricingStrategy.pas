unit UPercentDiscountPricingStrategy;

interface
uses UISalePricingStrategy, Money, USale;

type
  TPercentDiscountPricingStrategy=class(TISalePricingStrategy)
  private
    percentage:TMoney;
  public
    function getTotal(sale:TSale):TMoney;override;
  end;
implementation

{ TPercentDiscountPricingStrategy }

function TPercentDiscountPricingStrategy.getTotal(sale: TSale): TMoney;
begin
  result:={ sale.getPreDiscountTotal()* } percentage;
end;

end.
