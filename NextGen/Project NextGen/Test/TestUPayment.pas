unit TestUPayment;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Money, UPayment;

type
  // Test methods for class TPayment

  TestTPayment = class(TTestCase)
  strict private
    FPayment: TPayment;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  end;

implementation

procedure TestTPayment.SetUp;
begin
  FPayment := TPayment.Create;
end;

procedure TestTPayment.TearDown;
begin
  FPayment.Free;
  FPayment := nil;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPayment.Suite);
end.

