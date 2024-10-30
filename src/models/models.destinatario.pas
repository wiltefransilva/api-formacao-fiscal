unit models.destinatario;

interface

uses
  System.SysUtils,
  System.IniFiles,
  models.contracts;

type
  TDestinatario = class( TInterfacedObject, IDestinatario )
  private
    FIni: TIniFile;
    Constructor Create;
    Destructor Destroy; override;
  public
    class function New: IDestinatario;
    function CNPJCPF: string; overload;
    function CNPJCPF( AValue: string ): IDestinatario; overload;
    function IE: string; overload;
    function IE( AValue: string ): IDestinatario; overload;
    function ISUF: string; overload;
    function ISUF( AValue: string ): IDestinatario; overload;
    function xNome: string; overload;
    function xNome( AValue: string ): IDestinatario; overload;
    function Fone: string; overload;
    function Fone( AValue: string ): IDestinatario; overload;
    function CEP: Integer; overload;
    function CEP( AValue: Integer ): IDestinatario; overload;
    function xLgr: string; overload;
    function xLgr( AValue: string ): IDestinatario; overload;
    function nro: string; overload;
    function nro( AValue: string ): IDestinatario; overload;
    function xCpl: string; overload;
    function xCpl( AValue: string ): IDestinatario; overload;
    function xBairro: string; overload;
    function xBairro( AValue: string ): IDestinatario; overload;
    function cMun: Integer; overload;
    function cMun( AValue: Integer ): IDestinatario; overload;
    function xMun: string; overload;
    function xMun( AValue: string ): IDestinatario; overload;
    function UF: string; overload;
    function UF( AValue: string ): IDestinatario; overload;
    function cPais: Integer; overload;
    function cPais( AValue: Integer ): IDestinatario; overload;
    function xPais: string; overload;
    function xPais( AValue: string ): IDestinatario; overload;
  end;

implementation

{ TDestinatario }

function TDestinatario.CEP: Integer;
begin
  FIni.ReadInteger('DESTINATARIO', 'CEP', Result);
end;

function TDestinatario.CEP(AValue: Integer): IDestinatario;
begin
  Result := Self;
  FIni.WriteInteger('DESTINATARIO', 'CEP', AValue);
end;

function TDestinatario.cMun: Integer;
begin
  FIni.ReadInteger('DESTINATARIO', 'cMun', Result);
end;

function TDestinatario.cMun(AValue: Integer): IDestinatario;
begin
  Result := Self;
  FIni.WriteInteger('DESTINATARIO', 'cMun', AValue);
end;

function TDestinatario.CNPJCPF(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'CNPJCPF', AValue);
end;

function TDestinatario.CNPJCPF: string;
begin
  FIni.ReadString('DESTINATARIO', 'CNPJCPF', Result);
end;

function TDestinatario.cPais: Integer;
begin
  FIni.ReadInteger('DESTINATARIO', 'cPais', Result);
end;

function TDestinatario.cPais(AValue: Integer): IDestinatario;
begin
  Result := Self;
  FIni.WriteInteger('DESTINATARIO', 'cPais', AValue);
end;

constructor TDestinatario.Create;
begin
  var LPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))+'conf.ini';
  FIni := TIniFile.Create(LPath);
end;

destructor TDestinatario.Destroy;
begin

  inherited;
end;

function TDestinatario.Fone: string;
begin
  FIni.ReadString('DESTINATARIO', 'Fone', Result);
end;

function TDestinatario.Fone(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'Fone', AValue);
end;

function TDestinatario.IE(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'IE', AValue);
end;

function TDestinatario.IE: string;
begin
  FIni.ReadString('DESTINATARIO', 'IE', Result);
end;

function TDestinatario.ISUF: string;
begin
  FIni.ReadString('DESTINATARIO', 'ISUF', Result);
end;

function TDestinatario.ISUF(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'ISUF', AValue);
end;

class function TDestinatario.New: IDestinatario;
begin
  Result := Self.Create;
end;

function TDestinatario.nro: string;
begin
  FIni.ReadString('DESTINATARIO', 'nro', Result);
end;

function TDestinatario.nro(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'nro', AValue);
end;

function TDestinatario.UF(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'UF', AValue);
end;

function TDestinatario.UF: string;
begin
  FIni.ReadString('DESTINATARIO', 'UF', Result);
end;

function TDestinatario.xBairro: string;
begin
  FIni.ReadString('DESTINATARIO', 'xBairro', Result);
end;

function TDestinatario.xBairro(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xBairro', AValue);
end;

function TDestinatario.xCpl: string;
begin
  FIni.ReadString('DESTINATARIO', 'xCpl', Result);
end;

function TDestinatario.xCpl(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xCpl', AValue);
end;

function TDestinatario.xLgr: string;
begin
  FIni.ReadString('DESTINATARIO', 'xLgr', Result);
end;

function TDestinatario.xLgr(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xLgr', AValue);
end;

function TDestinatario.xMun: string;
begin
  FIni.ReadString('DESTINATARIO', 'xMun', Result);
end;

function TDestinatario.xMun(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xMun', AValue);
end;

function TDestinatario.xNome: string;
begin
  FIni.ReadString('DESTINATARIO', 'xNome', Result);
end;

function TDestinatario.xNome(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xNome', AValue);
end;

function TDestinatario.xPais(AValue: string): IDestinatario;
begin
  Result := Self;
  FIni.WriteString('DESTINATARIO', 'xPais', AValue);
end;

function TDestinatario.xPais: string;
begin
  FIni.ReadString('DESTINATARIO', 'xPais', Result);
end;

end.
