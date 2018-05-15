unit UCompositePricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TCompositePricingStrategy = class(TISalePricingStrategy)
  public
    function add(ISalePricingStrategy: TISalePricingStrategy): TMoney;
    function getTotal(sale:TSale):TMoney;virtual; abstract;
  end;

implementation

{ TCompositePricingStrategy }

function TCompositePricingStrategy.add(
  ISalePricingStrategy: TISalePricingStrategy): TMoney;
begin
  //
end;

end.

