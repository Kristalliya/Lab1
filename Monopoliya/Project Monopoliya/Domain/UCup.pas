unit UCup;

interface
uses UDie,SysUtils, Generics.Collections,Generics.Defaults;
type
  TCup = class
  public
    function getTotal(var dice:TList<TDie>): integer;
  end;
implementation

{ TCup }

function TCup.getTotal(var dice: TList<TDie>): integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to dice.count - 1 do
  begin
    dice.Items[i].roll;
    result:=result + dice.Items[i].getFaceValue;
  end;

end;

end.
