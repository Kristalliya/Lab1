unit UServicesFactory;

interface

uses UIAccountingAdapter,UIInventoryAdapter,UITaxCalculatorAdapter,
SysUtils, Generics.Collections, Generics.Defaults;

type
  TServicesFactory = class
  private
  instance:TServicesFactory;
  accountingAdapter : TIAccountingAdapter;
  inventoruAdapter:TIInventoryAdapter;
  taxCalculatorAdapter:TITaxCalculatorAdapter;
  public
    function getAccountingAdapter():TIAccountingAdapter;
    function getInventoryAdapter():TIInventoryAdapter;
    function getTaxCalculatorAdapter():TITaxCalculatorAdapter;
    function getInstance():TServicesFactory;//static;
  end;

implementation

{ TServicesFactory }

function TServicesFactory.getAccountingAdapter: TIAccountingAdapter;
var Name:string;
begin
  //
end;

function TServicesFactory.getInstance: TServicesFactory;
begin
  if instance=nil then
    instance:=TServicesFactory.Create;
  result:=instance;
end;

function TServicesFactory.getInventoryAdapter: TIInventoryAdapter;
begin
  //
end;

function TServicesFactory.getTaxCalculatorAdapter: TITaxCalculatorAdapter;
begin
   {if taxCalculatorAdapter=nil then
  begin
    Name:=taxCalculatorAdapter.ClassName;
    taxCalculatorAdapter := TITaxCalculatorAdapter.;
  end;  }
  result:=taxCalculatorAdapter;
end;

end.
