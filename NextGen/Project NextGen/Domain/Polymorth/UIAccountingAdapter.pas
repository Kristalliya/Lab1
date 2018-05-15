unit UIAccountingAdapter;

interface

uses USale,UPayment;

type
  TIAccountingAdapter = class
  public
    procedure postReceivable(CreditPayment:TPayment); virtual; abstract;
    procedure postSale(Sale:TSale);virtual; abstract;
  end;

implementation

end.

