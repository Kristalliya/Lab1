program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUBoard in 'TestUBoard.pas',
  UBoard in '..\Domain\UBoard.pas',
  USquare in '..\Domain\USquare.pas',
  TestUDie in 'TestUDie.pas',
  UDie in '..\Domain\UDie.pas',
  TestUMonopolyGame in 'TestUMonopolyGame.pas',
  UMonopolyGame in '..\Domain\UMonopolyGame.pas',
  UPlayer in '..\Domain\UPlayer.pas',
  UPiece in '..\Domain\UPiece.pas',
  TestUPiece in 'TestUPiece.pas',
  TestUPlayer in 'TestUPlayer.pas',
  TestUSquare in 'TestUSquare.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

