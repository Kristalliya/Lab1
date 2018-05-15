unit USAPAccountingAdapter;

interface

uses UIAccountingAdapter, USale, UPayment;

type
  TSAPAccountingAdapter = class(TIAccountingAdapter)
  public
    procedure postReceivable(CreditPayment: TPayment); override;
    procedure postSale(Sale: TSale); override;
  end;

implementation

{ TSAPAccountingAdapter }

procedure TSAPAccountingAdapter.postReceivable(CreditPayment: TPayment);
begin
  //
end;

procedure TSAPAccountingAdapter.postSale(Sale: TSale);
begin
  //
end;

end.

