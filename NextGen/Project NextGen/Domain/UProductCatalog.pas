unit UProductCatalog;

interface
uses
  ItemID,Money,UProductDescription,sysUtils,Generics.Collections,Generics.Defaults;
type
  IProductCatalog = class
    Procedure ProductCatalog;virtual;abstract;
    function getProductDescription(id: TItemID): TProductDescription;virtual;abstract;
  end;

  TProductCatalog = class(IProductCatalog)
  private
    description: TDictionary<TItemID, TProductDescription>;
  published
    constructor create;
  public
    Procedure ProductCatalog;override;
    function getProductDescription(id: TItemID): TProductDescription;override;
  end;

implementation

{ TProductCatalog }

constructor TProductCatalog.create;
begin
  description:=TDictionary<TItemID,TProductDescription>.Create;
  ProductCatalog;
end;

function TProductCatalog.getProductDescription(
  id: TItemID): TProductDescription;
begin
  result:=description.Items[id];
end;

procedure TProductCatalog.ProductCatalog;
var
  id1,id2:TItemID;
  price:TMoney;
  desc:TProductDescription;
begin
  id1:=100;
  id2:=200;
  price:=3;
  desc:=TProductDescription.Create;
  desc.ProductDescription(id1,price,'товар1');
  description.Add(id1,desc);
  desc.ProductDescription(id2,price,'товар2');
  description.Add(id2,desc);
end;

end.
