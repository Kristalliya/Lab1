unit USalesLineItem;

interface
uses
  UProductDescription,Money;
type
  TSalesLineItem=class
private
  quantity:integer;
  description:TProductDescription;
public
  procedure SalesLineItem(desc:TProductDescription; quantity:integer);
  function getSubTotal:TMoney;
end;

implementation

{ TSalesLineItem }

function TSalesLineItem.getSubTotal: TMoney;
begin
  result:=description.getPrice*quantity;
end;

procedure TSalesLineItem.SalesLineItem(desc: TProductDescription;
  quantity: integer);
begin
  self.description:=desc;
  self.quantity:=quantity;
end;

end.
