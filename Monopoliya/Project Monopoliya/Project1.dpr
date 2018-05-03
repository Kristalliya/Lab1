program Project1;



uses
  Vcl.Forms,
  USquare in 'Domain\USquare.pas',
  UPiece in 'Domain\UPiece.pas',
  UDie in 'Domain\UDie.pas',
  UBoard in 'Domain\UBoard.pas',
  UPlayer in 'Domain\UPlayer.pas',
  UMonopolyGame in 'Domain\UMonopolyGame.pas',
  Unit2 in 'UI\Unit2.pas' {Form2},
  Unit1 in 'UI\Unit1.pas' {Form1},
  UCup in 'Domain\UCup.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
