unit UStore;

interface
uses UProductCatalog, URegister;
type
  IStore = class
    function getRegister: TRegister1;virtual;abstract;
  end;

  TStore = class(IStore)
  private
    catalog: TProductCatalog;
    register1: TRegister1;
  published
    constructor create;
  public
    function getRegister: TRegister1;override;
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
