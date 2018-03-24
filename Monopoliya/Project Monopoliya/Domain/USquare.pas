unit USquare;

interface
type
  TSquare=class
private
  name:string;
  nextSquare:TSquare;
  index:integer;
published constructor create(name:string;index:integer);
public
  procedure setNextSquare(s:Tsquare);
  function getNetxSquare:Tsquare;
  function getName:string;
  function getIndex:integer;
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

procedure TSquare.setNextSquare(s: Tsquare);
begin
  nextSquare:=s;
end;


end.
