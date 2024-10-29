unit models.ide;

interface

uses
  System.SysUtils,
  System.IniFiles,
  models.contracts;

type
  TIde = class(TInterfacedObject, IIde)
  private
    FIni: TIniFile;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IIde;

    function modelo(Value: integer = 65): IIde; overload;
    function modelo: integer; overload;
    function nNF(Value: String): IIde; overload;
    function nNF: String; overload;
    function cNF(Value: String): IIde; overload;
    function cNF: String; overload;
    function dEmi(Value: TDateTime): IIde; overload;
    function dEmi: TDateTime; overload;
    function dSaiEnt(Value: TDateTime): IIde; overload;
    function dSaiEnt: TDateTime; overload;
    function hSaiEnt(Value: TDateTime): IIde; overload;
    function hSaiEnt: TDateTime; overload;
    function tpNF(Value: integer): IIde; overload;
    function tpNF: integer; overload;
    function tpEmis(Value: integer): IIde; overload;
    function tpEmis: integer; overload;
    function tpAmb(Value: integer): IIde; overload;
    function tpAmb: integer; overload;
    function finNFe(Value: integer): IIde; overload;
    function finNFe: integer; overload;
    function tpImp(Value: integer): IIde; overload;
    function tpImp: integer; overload;
    function indFinal(Value: integer): IIde; overload;
    function indFinal: integer; overload;
    function indPres(Value: integer): IIde; overload;
    function indPres: integer; overload;
    function indIntermed(Value: integer): IIde; overload;
    function indIntermed: integer; overload;
  end;

implementation

{ TIde }

function TIde.cNF: String;
begin
  FIni.ReadString('IDE', 'cNF', Result);
end;

constructor TIde.Create;
begin
  var LPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))+'conf.ini';
  FIni := TIniFile.Create(LPath);
end;

function TIde.cNF(Value: String): IIde;
begin
  Result := Self;
  FIni.WriteString('IDE', 'cNF', Value);
end;

function TIde.dEmi(Value: TDateTime): IIde;
begin
  Result := Self;
  FIni.WriteDateTime('IDE', 'dEmi', Value);
end;

function TIde.dEmi: TDateTime;
begin
  FIni.ReadDateTime('IDE', 'dEmi', Result);
end;

destructor TIde.Destroy;
begin
  FIni.Free;
  inherited;
end;

function TIde.dSaiEnt(Value: TDateTime): IIde;
begin
  Result := Self;
  FIni.WriteDateTime('IDE', 'dSaiEnt', Value);
end;

function TIde.dSaiEnt: TDateTime;
begin
  FIni.ReadDateTime('IDE', 'dSaiEnt', Result);
end;

function TIde.finNFe: integer;
begin
  FIni.ReadInteger('IDE', 'finNFe', Result);
end;

function TIde.finNFe(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'finNFe', Value);
end;

function TIde.hSaiEnt(Value: TDateTime): IIde;
begin
  Result := Self;
  FIni.WriteDateTime('IDE', 'hSaiEnt', Value);
end;

function TIde.hSaiEnt: TDateTime;
begin
  FIni.ReadDateTime('IDE', 'hSaiEnt', Result);
end;

function TIde.indFinal: integer;
begin
  FIni.ReadInteger('IDE', 'indFinal', Result);
end;

function TIde.indFinal(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'indFinal', Value);
end;

function TIde.indIntermed(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'indIntermed', Value);
end;

function TIde.indIntermed: integer;
begin
  FIni.ReadDateTime('IDE', 'indIntermed', Result);
end;

function TIde.indPres(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'indPres', Value);
end;

function TIde.indPres: integer;
begin
  FIni.ReadInteger('IDE', 'indPres', Result);
end;

function TIde.modelo: integer;
begin
  Result := 65;//FIni.ReadInteger('IDE', 'modelo', Result);
end;

function TIde.modelo(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'modelo', Value);
end;

class function TIde.New: IIde;
begin
  Result := Self.Create;
end;

function TIde.nNF: String;
begin
  Result := '123';//FIni.ReadString('IDE', 'nNF', Result);
end;

function TIde.nNF(Value: String): IIde;
begin
  Result := Self;
  FIni.WriteString('IDE', 'nNF', Value);
end;

function TIde.tpAmb: integer;
begin
  Result := 1;//FIni.ReadInteger('IDE', 'tpAmb', Result);
end;

function TIde.tpAmb(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'tpAmb', Value);
end;

function TIde.tpEmis(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'tpEmis', Value);
end;

function TIde.tpEmis: integer;
begin
  Result := 1;//FIni.ReadInteger('IDE', 'tpEmis', Result);
end;

function TIde.tpImp: integer;
begin
  FIni.ReadInteger('IDE', 'tpImp', Result);
end;

function TIde.tpImp(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'tpImp', Value);
end;

function TIde.tpNF: integer;
begin
  FIni.ReadInteger('IDE', 'tpNF', Result);
end;

function TIde.tpNF(Value: integer): IIde;
begin
  Result := Self;
  FIni.WriteInteger('IDE', 'tpNF', Value);
end;

end.
