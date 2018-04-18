unit UStore;

interface
uses UProductCatalog, URegister;
type
  IStore = class
    function getRegister: TRegister;virtual;abstract;
  end;

  TStore = class(IStore)
  private
    catalog: TProductCatalog;
    register1: TRegister;
  published
    constructor create;
  public
    function getRegister: TRegister;override;
  end;

implementation

{ TStore }

constructor TStore.create;
begin
  catalog:=TProductCatalog.create;
  register1:=TRegister.create(catalog);
end;

function TStore.getRegister: TRegister;
begin
  result:=register1;
end;

end.
