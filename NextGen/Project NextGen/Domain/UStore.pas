unit UStore;

interface
uses UProductCatalog, URegister;
type
  TStore=class
  private
    catalog:TProductCatalog;
    register1:TRegister1;
  published
    constructor create;
  public
    function getRegister:TRegister1;
  end;
implementation

{ TStore }

constructor TStore.create;
begin
  catalog:=TProductCatalog.create;
  register1:=TRegister1.create(catalog);
end;

function TStore.getRegister: TRegister1;
begin
  result:=register1;
end;

end.
