unit URegister;

interface

uses UProductCatalog,USale,UProductDescription, Money, ItemID;

type
  IRegister = class
    procedure endSale;virtual;abstract;
    procedure enterItem(id: TItemID; quantity: integer);virtual;abstract;
    procedure makeNewSale;virtual;abstract;
    procedure makePayment(cashTendered: TMoney);virtual;abstract;
    function getTotalSale: TMoney;virtual;abstract;
  end;

  TRegister1 = class(IRegister)
  private
    catalog: TProductCatalog;
    currentSale: TSale;
  published
    constructor create(catalog: TProductCatalog);
  public
    procedure endSale;override;
    procedure enterItem(id: TItemID; quantity: integer);override;
    procedure makeNewSale;override;
    procedure makePayment(cashTendered: TMoney);override;
    function getTotalSale: TMoney;override;
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
