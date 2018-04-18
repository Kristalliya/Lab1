unit UDie;

interface

type
  IDie = class
    procedure roll;virtual;abstract;
    function getFaceValue: Integer;virtual;abstract;
  end;

  TDie = class(IDie)
  const
    MAX = 6;
  private
    faceValue: Integer;
  public
    procedure roll;override;
    function getFaceValue: Integer;override;
  published
    constructor create;
  end;

implementation

{ TDie }

constructor TDie.create;
begin
  roll;
end;

function TDie.getFaceValue:integer;
begin
  result:=faceValue;
end;

procedure TDie.roll;
begin
  faceValue:=random(MAX)+1;
end;

end.
