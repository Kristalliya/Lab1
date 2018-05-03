unit UProductDescription;

interface

uses ItemID, Money;

type
  IProductDescription = class
    Procedure ProductDescription(id: TItemID; price: TMoney;
      description: string);virtual;abstract;
    function getItemId: TItemID;virtual;abstract;
    function getPrice: TMoney;virtual;abstract;
    function getDescription: string;virtual;abstract;
  end;

  TProductDescription = class(IProductDescription)
  private
    id: TItemID;
    price: TMoney;
    description: String;
  public
    Procedure ProductDescription(id: TItemID; price: TMoney;
      description: String);override;
    function getItemid: TItemID;override;
    function getPrice: TMoney;override;
    function getDescription: string;override;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: string;
begin
  result:=description;
end;

function TProductDescription.getItemId: TItemID;
begin
  result:=id;
end;

function TProductDescription.getPrice: TMoney;
begin
  result:=price;
end;

procedure TProductDescription.ProductDescription(id: TItemID; price: TMoney;
  description: String);
begin
  self.id:=id;
  self.price:=price;
  self.description:=description;
end;

end.
