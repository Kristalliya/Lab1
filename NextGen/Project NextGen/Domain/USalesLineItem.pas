unit USalesLineItem;

interface
uses
  UProductDescription,Money;
type
  ISalesLineItem = class
    procedure SalesLineItem(desc: TProductDescription; quantity: integer);virtual;abstract;
    function getSubTotal: TMoney;virtual;abstract;
  end;

  TSalesLineItem = class(ISalesLineItem)
  private
    quantity: integer;
    description: TProductDescription;
  public
    procedure SalesLineItem(desc: TProductDescription; quantity: integer);override;
    function getSubTotal: TMoney;override;
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
