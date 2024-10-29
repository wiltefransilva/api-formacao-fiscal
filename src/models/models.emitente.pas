unit models.emitente;

interface

uses
  System.SysUtils,
  System.IniFiles,
  models.contracts;

type
  TEmitente = class(TInterfacedObject, IEmitente)
  private
    FIni: TIniFile;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IEmitente;

    function CNPJCPF(Value: String): IEmitente; overload;
    function CNPJCPF: String; overload;
    function IE(Value: String): IEmitente; overload;
    function IE: String; overload;
    function xNome(Value: String): IEmitente; overload;
    function xNome: String; overload;
    function xFant(Value: String): IEmitente; overload;
    function xFant: String; overload;
    function fone(Value: String): IEmitente; overload;
    function fone: String; overload;
    function CEP(Value: Integer): IEmitente; overload;
    function CEP: Integer; overload;
    function xLgr(Value: String): IEmitente; overload;
    function xLgr: String; overload;
    function nro(Value: String): IEmitente; overload;
    function nro: String; overload;
    function xCpl(Value: String): IEmitente; overload;
    function xCpl: String; overload;
    function xBairro(Value: String): IEmitente; overload;
    function xBairro: String; overload;
    function xMun(Value: String): IEmitente; overload;
    function xMun: String; overload;
    function cMun(Value: Integer): IEmitente; overload;
    function cMun: Integer; overload;
    function UF(Value: String): IEmitente; overload;
    function UF: String; overload;
    function IEST(Value: String): IEmitente; overload;
    function IEST: String; overload;
    function CRT(Value: String): IEmitente; overload;
    function CRT: String; overload;
  end;

implementation

{ TEmitente }

function TEmitente.CEP: Integer;
begin
  FIni.ReadInteger('EMITENTE', 'CEP', Result);
end;

function TEmitente.cMun: Integer;
begin
  FIni.ReadInteger('EMITENTE', 'cMun', Result);
end;

function TEmitente.cMun(Value: Integer): IEmitente;
begin
  Result := Self;
  FIni.WriteInteger('EMITENTE', 'cMun', Value);
end;

function TEmitente.CEP(Value: Integer): IEmitente;
begin
  Result := Self;
  FIni.WriteInteger('EMITENTE', 'CEP', Value);
end;

function TEmitente.CNPJCPF: String;
begin
  FIni.ReadString('EMITENTE', 'CNPJCPF', Result);
end;

constructor TEmitente.Create;
begin
  var LPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))+'conf.ini';
  FIni := TIniFile.Create(LPath);
end;

function TEmitente.CNPJCPF(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'CNPJCPF', Value);
end;

function TEmitente.CRT: String;
begin
  FIni.ReadString('EMITENTE', 'CRT', Result);
end;

destructor TEmitente.Destroy;
begin
  FIni.Free;
  inherited;
end;

function TEmitente.CRT(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'CRT', Value);
end;

function TEmitente.fone: String;
begin
  FIni.ReadString('EMITENTE', 'fone', Result);
end;

function TEmitente.fone(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'fone', Value);
end;

function TEmitente.IE: String;
begin
  FIni.ReadString('EMITENTE', 'IE', Result);
end;

function TEmitente.IE(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'IE', Value);
end;

function TEmitente.IEST: String;
begin
  FIni.ReadString('EMITENTE', 'IEST', Result);
end;

function TEmitente.IEST(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'IEST', Value);
end;

class function TEmitente.New: IEmitente;
begin
  Result := Self.Create;
end;

function TEmitente.nro: String;
begin
  FIni.ReadString('EMITENTE', 'nro', Result);
end;

function TEmitente.nro(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'nro', Value);
end;

function TEmitente.UF: String;
begin
  FIni.ReadString('EMITENTE', 'UF', Result);
end;

function TEmitente.UF(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'UF', Value);
end;

function TEmitente.xBairro(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xBairro', Value);
end;

function TEmitente.xBairro: String;
begin
  FIni.ReadString('EMITENTE', 'xBairro', Result);
end;

function TEmitente.xCpl(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xCpl', Value);
end;

function TEmitente.xCpl: String;
begin
  FIni.ReadString('EMITENTE', 'xCpl', Result);
end;

function TEmitente.xFant(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xFant', Value);
end;

function TEmitente.xFant: String;
begin
  FIni.ReadString('EMITENTE', 'xFant', Result);
end;

function TEmitente.xLgr(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xLgr', Value);
end;

function TEmitente.xLgr: String;
begin
  FIni.ReadString('EMITENTE', 'xLgr', Result);
end;

function TEmitente.xMun: String;
begin
  FIni.ReadString('EMITENTE', 'xMun', Result);
end;

function TEmitente.xMun(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xMun', Value);
end;

function TEmitente.xNome(Value: String): IEmitente;
begin
  Result := Self;
  FIni.WriteString('EMITENTE', 'xNome', Value);
end;

function TEmitente.xNome: String;
begin
  FIni.ReadString('EMITENTE', 'xNome', Result);
end;

end.
