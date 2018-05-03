unit UPiece;

interface
uses USquare;
type
  IPiece = class
    function getLocation: TSquare;virtual;abstract;
    procedure setlocation(location: TSquare);virtual;abstract;
  end;

  TPiece = class(IPiece)
  private
    location: TSquare;
  published
    constructor create(location: TSquare);
  public
    function getLocation: TSquare;override;
    procedure setlocation(location: TSquare);override;
  end;

implementation

{ TPiece }

constructor TPiece.create(location:TSquare);
begin
  self.location:=location;
end;

function TPiece.getLocation: TSquare;
begin
  result:=location;
end;

procedure TPiece.setlocation(location: TSquare);
begin
  self.location:=location;
end;

end.
