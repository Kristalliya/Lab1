unit UBoard;

interface

uses SysUtils, Classes, Generics.Collections, Generics.Defaults, USquare;

type
  IBoard = class
    procedure build(i: integer);virtual;abstract;
    procedure linksquares; virtual;abstract;
    procedure link(i: integer); virtual;abstract;
    function getSquare(start: TSquare; distance: integer): TSquare;virtual;abstract;
    function getStartSquare: TSquare;virtual;abstract;
    procedure buildsquares;virtual;abstract;
  end;

  TBoard = class(IBoard)
  const
    SIZE = 40;
  private
    squares: TList<TSquare>;
  public
    function getSquare(start: TSquare; distance: integer): TSquare;override;
    function getStartSquare: TSquare;override;
    procedure buildsquares;override;
    procedure build(i: integer);override;
    procedure linksquares;override;
    procedure link(i: integer);override;
  published
    constructor create;
  end;

implementation

{ TBoard }

procedure TBoard.buildsquares;
var
  i: integer;
begin
  squares := TList<TSquare>.create;
  for i := 0 to SIZE - 1 do
    build(i);
end;

constructor TBoard.create;
begin
  buildsquares;
  linksquares;
end;

procedure TBoard.build(i: integer);
var
  s: TSquare;
begin
  s := TSquare.create('Square ' + inttostr(i), i);
  squares.Add(s);
end;

function TBoard.getSquare(start: TSquare; distance: integer): TSquare;
var
  endIndex: integer;
begin
  endIndex := ((start.getIndex + distance)mod 40);
  if endIndex=0 then endIndex:=1;
  result := squares.Items[endIndex];
end;

function TBoard.getStartSquare: TSquare;
begin
  result := squares.First;
end;

procedure TBoard.link(i: integer);
var
  current, next: TSquare;
begin
  current := squares.Items[i];
  next := squares.Items[i];  ///////////i+1
  current.setNextSquare(next);
end;

procedure TBoard.linksquares;
var
  i: integer;
  First, last: TSquare;
begin
  for i := 0 to (SIZE - 1) do
    link(i);
  First := squares.First;
  last := squares.last;
  last.setNextSquare(First);
end;

end.
