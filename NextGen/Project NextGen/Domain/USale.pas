unit USale;

interface

uses Money, UPayment, UProductDescription, USalesLineItem, SysUtils,
  Generics.Collections, Generics.Defaults;

type
  ISale = class
    function getBalance: TMoney;virtual;abstract;
    procedure becomeComplete;virtual;abstract;
    function isComplete: Boolean;virtual;abstract;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);virtual;abstract;
    function getTotal: TMoney;virtual;abstract;
    procedure makePayment(cashTendered: TMoney);virtual;abstract;
  end;

  TSale = class( ISale)
  private
    lineItems: Tlist<TSalesLineItem>;
    Date: TDate;
    Complete: Boolean;
    Payment: TPayment;
  published
    constructor create;
  public
    function getBalance: TMoney;override;
    procedure becomeComplete;override;
    function isComplete: Boolean;override;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);override;
    function getTotal: TMoney;override;
    procedure makePayment(cashTendered: TMoney); override;
  end;

implementation
uses UITaxCalculatorAdapter;
{ TSale }

procedure TSale.becomeComplete;
begin
  Complete := true;
end;

constructor TSale.create;
begin
  lineitems:=TList<TSalesLineItem>.Create;
  Complete:=false;
  Payment := TPayment.create;
end;

function TSale.getBalance: TMoney;
begin
  result := Payment.getAmount - getTotal;
end;

function TSale.getTotal: TMoney;
var
  total, Subtotal: TMoney;
  SalesLineItem: TSalesLineItem;
  itax:TITaxCalculatorAdapter;
begin
  total := 0;
  Subtotal := 0;
  for SalesLineItem in lineItems do
  begin
    subTotal:=SalesLineItem.getSubTotal;
    total:=total+subtotal;
  end;
  result:=total;{-itax.getTaxes(};
end;

function TSale.isComplete: Boolean;
begin
  result:=Complete;
end;

procedure TSale.makeLineItem(desc: TProductDescription; quantity: integer);
var
  SalesLineItem:TSalesLineItem;
  i:integer;
begin
  SalesLineItem:=TSalesLineItem.Create;
  salesLineItem.SalesLineItem(desc,quantity);
  i:=LineItems.Add(SalesLineItem);
end;

procedure TSale.makePayment(cashTendered: TMoney);
begin
  Payment:=TPayment.Create;
  Payment.Payment(CashTendered);
end;

end.
