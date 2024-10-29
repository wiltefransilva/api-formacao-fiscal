unit infra.arquivos;

interface

uses
  System.SysUtils,
  infra.contracts,
  IniFiles;

type
  TInfra = class(TInterfacedObject, IInfra)
  private
    FPath: String;

    constructor Create;
  public
    class function New: IInfra;

    function LerDados: IInfra;
    function GravarDados: IInfra;
  end;

implementation

{ TInfra }

constructor TInfra.Create;
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))+'conf.ini';
end;

function TInfra.GravarDados: IInfra;
begin
  var LArquivo := TIniFile.Create(FPath);
  try

  finally
    LArquivo.free;
  end;
end;

function TInfra.LerDados: IInfra;
begin

end;

class function TInfra.New(Conf: IConfiguracoes): IInfra;
begin
  Result := Self.Create(COnf);
end;

end.
