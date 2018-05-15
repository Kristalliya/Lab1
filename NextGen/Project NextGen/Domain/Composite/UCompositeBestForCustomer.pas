unit UCompositeBestForCustomer;

interface

uses UCompositePricingStrategy, Money, USale;

type
  TCompositeBestForCustomer = class(TCompositePricingStrategy)
  public
    function getTotal(sale:TSale):TMoney;override;
  end;

implementation

{ TCompositeBestForCustomer }

function TCompositeBestForCustomer.getTotal(sale: TSale): TMoney;
var lowestTotal:TMoney;        // 478
begin
 { lowestTotal:=integer.max;
  for ISalePricingStrategy strat in pricingStrategies
  begin
    total := strat.getTotal(sale);
    lowestTotal = min(total, lowestTotal);
  end;
  result:=lowestTotal;   }
end;

end.

