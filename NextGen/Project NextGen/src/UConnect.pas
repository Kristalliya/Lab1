unit UConnect;

interface
uses
 Data.DB, Data.Win.ADODB;
type
  TConnect=class
   private
    ADOConnection: TADOConnection;
    function GetAdoConnection:TAdoConnection;
    procedure  SetAdoConnection;
  end;

implementation

{ TConnect }

function TConnect.GetAdoConnection: TAdoConnection;
begin
  result:=ADOConnection;
end;

procedure TConnect.SetAdoConnection;
begin
  AdoConnection:=TAdoConnection.Create(nil);
  ADOConnection.ConnectionString :='Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User ID=user;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;SERVER=localhost;UID=user;PWD=1234;DATABASE=shop;PORT=3306";Initial Catalog=shop';
  ADOConnection.LoginPrompt := false;
  ADOConnection.Connected := true;
end;

end.
