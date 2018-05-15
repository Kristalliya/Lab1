unit UGreatNorthernAccountingAdapter;

interface

uses UIAccountingAdapter, USale, UPayment;

type
  TGreatNorthernAccountingAdapter = class(TIAccountingAdapter)
  public
    procedure postReceivable(CreditPayment: TPayment); override;
    procedure postSale(Sale: TSale); override;
  end;

implementation

{ TGreatNorthernAccountingAdapter }

procedure TGreatNorthernAccountingAdapter.postReceivable(
  CreditPayment: TPayment);
begin
  //
end;

procedure TGreatNorthernAccountingAdapter.postSale(Sale: TSale);
begin
  //
end;

end.

