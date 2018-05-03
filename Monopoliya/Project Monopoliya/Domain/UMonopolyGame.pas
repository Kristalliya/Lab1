unit UMonopolyGame;

interface

uses UDie, UBoard, sysUtils, Generics.Collections, Generics.Defaults, Classes, UPlayer;

type
  TMonopolyGame = class
  const
    rounds_total = 20;
    players_total = 2;
  private
    players: Tlist<TPlayer>;
    board: TBoard;
    dice: TDie;
  public
    procedure PlayGame;
    function getPlayers: Tlist<TPlayer>;
    procedure playRound;
  published
    constructor create;
  end;

implementation

{ TMonopolyGame }

constructor TMonopolyGame.create;
var
  p: TPlayer;
begin
  dice := TDie.create;
  players := Tlist<TPlayer>.create;
  board := TBoard.create;
  p := TPlayer.create('Лошадь', dice, board);
  players.add(p);
  p := TPlayer.create('Автомобиль', dice, board);
  players.add(p);
end;

function TMonopolyGame.getPlayers: Tlist<TPlayer>;
begin
  result := players;
end;

procedure TMonopolyGame.PlayGame;
var
  i: Integer;
begin
  for i := 0 to rounds_total do
    playRound;
end;

procedure TMonopolyGame.playRound;
var
  player: TPlayer;
begin
  for player in players do
    player.takeTurn;
end;

end.
