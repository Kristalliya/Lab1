unit URegularSquare;

interface
uses USquare;

type
  TRegularSquare=class(TSquare)
  public
    function landedOn:TSquare; override;
  end;
implementation

{ TRegularSquare }

function TRegularSquare.landedOn: TSquare;
begin
  ////
end;

end.
