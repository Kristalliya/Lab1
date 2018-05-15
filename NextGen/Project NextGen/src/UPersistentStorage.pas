unit UPersistentStorage;

interface

uses Classes;

type

  TPersistentStorage = class(TPersistent)
  public
    procedure SaveToStream(S: TStream);
    procedure LoadFromStream(S: TStream);
    procedure Assign(AObject: TPersistent); override;
  end;

  TSampleObject = class(TPersistentStorage)
  end;

implementation

type
  TTWriter = class(TWriter)
  end;

  TTReader = class(TReader)
  end;

  { TPersistentStorage }

procedure TPersistentStorage.Assign(AObject: TPersistent);
var M: TMemoryStream;
begin
  if AObject.InheritsFrom(TPersistentStorage) then
  begin
    M := TMemoryStream.Create;
    try
      TPersistentStorage(AObject).SaveToStream(M);
      M.Position := 0;
      LoadFromStream(M);
    finally
      M.Free;
    end;
  end
  else
    Inherited;
end;

procedure TPersistentStorage.LoadFromStream(S: TStream);
var R: TTReader;
begin
  R := TTReader.Create(S, 8192);
  try
    while not R.EndOfList do
      R.ReadProperty(Self);
    R.ReadListEnd;
  finally
    R.Free;
  end;
end;

procedure TPersistentStorage.SaveToStream(S: TStream);
var
  W: TTWriter;
begin
  W := TTWriter.Create(S, 8192);
  try
    W.WriteProperties(Self);
    W.WriteListEnd;
  finally
    W.Free;
  end;
end;

end.
