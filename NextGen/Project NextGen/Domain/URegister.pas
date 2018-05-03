unit URegister;

interface

uses UProductCatalog,USale,UProductDescription, Money, ItemID;

type
  TRegister1 = class
  private
    catalog: TProductCatalog;
    currentSale:TSale;
  published
    constructor create(catalog:TProductCatalog);
  public
    procedure endSale;
    procedure enterItem(id:TItemID;quantity:integer);
    procedure makeNewSale;
    procedure makePayment(cashTendered:TMoney);
    function getTotalSale:TMoney;
  end;

implementation

{ TRegister }

constructor TRegister1.create(catalog: TProductCatalog);
begin
  self.catalog:=catalog;
end;

procedure TRegister1.endSale;
begin
  currentSale.becomeComplete;
end;

procedure TRegister1.enterItem(id: TItemID; quantity: integer);
var
  desc:TProductDescription;
begin
  desc:=TProductDescription.Create;
  desc:=catalog.getProductDescription(id);
  currentSale.makeLineItem(desc,quantity);
end;

function TRegister1.getTotalSale: TMoney;
begin
   result:=currentSale.getTotal;
end;

procedure TRegister1.makeNewSale;
begin
  currentSale:=TSale.create;
end;

procedure TRegister1.makePayment(cashTendered: TMoney);
begin
  currentSale.makePayment(cashTendered);
end;

end.
