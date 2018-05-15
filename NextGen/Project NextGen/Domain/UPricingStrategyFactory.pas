unit UPricingStrategyFactory;

interface

implementation

uses UISalePricingStrategy;
type
  TPricingStrategyFactory = class
  private
    instance:TPricingStrategyFactory;
    SalePricingStrategy:TISalePricingStrategy;
    SeniorPricingStrategy:TISalePricingStrategy;   ///стр 474 заменить
  public
    function getSalePricingStrategy():TISalePricingStrategy;
    function getSeniorPricingStrategy():TISalePricingStrategy;
    function getInstance():TPricingStrategyFactory;//static;
  end;
{ TPricingStrategyFactory }

function TPricingStrategyFactory.getInstance: TPricingStrategyFactory;
begin
  //
end;

function TPricingStrategyFactory.getSalePricingStrategy: TISalePricingStrategy;
var Name:string;
begin
  {if SalePricingStrategy=nil then
  begin
    Name:=SalePricingStrategy.ClassName;
    SalePricingStrategy := TISalePricingStrategy.ClassNameIs(name);
  end;}
  result:=SalePricingStrategy;
end;

function TPricingStrategyFactory.getSeniorPricingStrategy: TISalePricingStrategy;
begin
  //
end;

end.

