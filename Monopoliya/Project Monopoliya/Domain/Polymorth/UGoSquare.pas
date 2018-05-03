unit UGoSquare;

interface
uses USquare;

type
  TGoSquare=class(TSquare)
  public
    function landedOn:TSquare;override;
  end;

implementation

{ TGoSquare }

function TGoSquare.landedOn: TSquare;
begin
  ///
end;

end.
