unit URegister;

interface

uses UProductCatalog,USale,UProductDescription, Money, ItemID;

type
  IRegister = class
    procedure endSale;virtual;abstract;
    procedure enterItem(id: TItemID; quantity: integer);virtual;abstract;
    procedure makeNewSale;virtual;abstract;
    procedure makePayment(cashTendered: TMoney);virtual;abstract;
  end;

  TRegister = class(IRegister)
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
  end;

implementation

{ TRegister }

constructor TRegister.create(catalog: TProductCatalog);
begin
  self.catalog:=catalog;
end;

procedure TRegister.endSale;
begin
  currentSale.becomeComplete;
end;

procedure TRegister.enterItem(id: TItemID; quantity: integer);
var
  desc:TProductDescription;
begin
  desc:=TProductDescription.Create;
  desc:=catalog.getProductDescription(id);
  currentSale.makeLineItem(desc,quantity);
end;

procedure TRegister.makeNewSale;
begin
  currentSale:=TSale.create;
end;

procedure TRegister.makePayment(cashTendered: TMoney);
begin
  currentSale.makePayment(cashTendered);
end;

end.
