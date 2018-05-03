unit USquare;

interface
type
  TSquare = class;

  ISquare = class
    procedure setNextSquare(s: TSquare);virtual;abstract;
    function getNetxSquare: TSquare;virtual;abstract;
    function getName: string;virtual;abstract;
    function getIndex: integer;virtual;abstract;
    function landedOn: TSquare;virtual;abstract;
  end;

  TSquare = class(ISquare)
  private
    name: string;
    nextSquare: TSquare;
    index: integer;
  published
    constructor create(name: string; index: integer);
  public
    procedure setNextSquare(s: TSquare);override;
    function getNetxSquare: TSquare;override;
    function getName: string;override;
    function getIndex: integer;override;
    function landedOn: TSquare;override;
  end;

implementation

{ TSquare }

constructor TSquare.create(name: string; index: integer);
begin
  self.name:=name;
  self.index:=index;
end;

function TSquare.getIndex: integer;
begin
  result:=index;
end;

function TSquare.getName: string;
begin
  result:=name;
end;

function TSquare.getNetxSquare: Tsquare;
begin
  result:=nextSquare;
end;

function TSquare.landedOn: TSquare;
begin
  //landedOn//
end;

procedure TSquare.setNextSquare(s: Tsquare);
begin
  nextSquare:=s;
end;


end.
