unit UICreditAuthorizationServiceAdapter;

interface

uses UPayment,ItemID;

type
  TICreditAuthorizationServiceAdapter = class
  public
    procedure requestApproval(CreditPayment: TPayment; TerminallD, MerchantID:TItemID);
  end;

implementation

{ TICreditAuthorizationServiceAdapter }

procedure TICreditAuthorizationServiceAdapter.requestApproval
  (CreditPayment: TPayment; TerminallD, MerchantID:TItemID);
begin             //////TerminallD, MerchantID:TItemID
  //
end;

end.
