unit models.configuracoes;

interface

uses
  System.SysUtils,
  IniFiles,
  models.contracts;

type
  TConfiguracoes = class(TInterfacedObject, IConfiguracoes)
  private
    FPath: String;
    FIni: TIniFile;

    FCertificado: ICertificado;
    FWebService: IWebService;
    FArquivo: IArquivo;

    constructor Create;
    destructor Destroy; override;
  public
    class function New: IConfiguracoes;

    function Certificado: ICertificado;
    function SSLLib(Value: Integer): IConfiguracoes; overload;
    function SSLLib: Integer; overload;
    function SSLCryptLib(Value: Integer): IConfiguracoes; overload;
    function SSLCryptLib: Integer; overload;
    function SSLHttpLib(Value: Integer): IConfiguracoes; overload;
    function SSLHttpLib: Integer; overload;
    function SSLXmlSignLib(Value: Integer): IConfiguracoes; overload;
    function SSLXmlSignLib: Integer; overload;
    function SSLType(Value: Integer): IConfiguracoes; overload;
    function SSLType: Integer; overload;
    function AtualizarXMLCancelado(Value: Boolean): IConfiguracoes; overload;
    function AtualizarXMLCancelado: Boolean; overload;
    function Salvar(Value: Boolean): IConfiguracoes; overload;
    function Salvar: Boolean; overload;
    function ExibirErroSchema(Value: Boolean): IConfiguracoes; overload;
    function ExibirErroSchema: Boolean; overload;
    function RetirarAcentos(Value: Boolean): IConfiguracoes; overload;
    function RetirarAcentos: Boolean; overload;
    function FormatoAlerta(Value: String): IConfiguracoes; overload;
    function FormatoAlerta: String; overload;
    function FormaEmissao(Value: Integer): IConfiguracoes; overload;
    function FormaEmissao: Integer; overload;
    function ModeloDF(Value: Integer): IConfiguracoes; overload;
    function ModeloDF: Integer; overload;
    function VersaoDF(Value: Integer): IConfiguracoes; overload;
    function VersaoDF: Integer; overload;
    function IdCSC(Value: String): IConfiguracoes; overload;
    function IdCSC: String; overload;
    function CSC(Value: String): IConfiguracoes; overload;
    function CSC: String; overload;
    function VersaoQRCode(Value: Integer): IConfiguracoes; overload;
    function VersaoQRCode: Integer; overload;
    function TipoDANFE(Value: Integer): IConfiguracoes; overload;
    function TipoDANFE: Integer; overload;
    function Logo(Value: String): IConfiguracoes; overload;
    function Logo: String; overload;
    function PathPDF(Value: String): IConfiguracoes; overload;
    function PathPDF: String; overload;
    function WebService: IWebService;
    function Arquivo: IArquivo;
    function Infra: TIniFile;
  end;

implementation

uses
  models.arquivos, models.certificado, models.webservice;

{ TConfiguracoes }

function TConfiguracoes.Arquivo: IArquivo;
begin
  if not Assigned(FArquivo) then
    FArquivo := TArquivo.New(Self);
  Result := FArquivo;
end;

function TConfiguracoes.AtualizarXMLCancelado(Value: Boolean): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteBool('Configuracoes', 'AtualizarXMLCancelado',Value);
end;

function TConfiguracoes.AtualizarXMLCancelado: Boolean;
begin
  FIni.ReadBool('Configuracoes', 'AtualizarXMLCancelado', Result);
end;

function TConfiguracoes.Certificado: ICertificado;
begin
  if not Assigned(FCertificado) then
    FCertificado := TCertificado.New(Self);
  Result := FCertificado;
end;

constructor TConfiguracoes.Create;
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)))+'conf.ini';
  FIni := TIniFile.Create(FPath);
end;

function TConfiguracoes.CSC: String;
begin
  Result := '';//FIni.ReadString('Configuracoes', 'CSC', Result);
end;

destructor TConfiguracoes.Destroy;
begin
  FIni.Free;
  inherited;
end;

function TConfiguracoes.CSC(Value: String): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteString('Configuracoes', 'CSC',Value);
end;

function TConfiguracoes.ExibirErroSchema(Value: Boolean): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteBool('Configuracoes', 'ExibirErroSchema',Value);
end;

function TConfiguracoes.ExibirErroSchema: Boolean;
begin
  Result := True;//FIni.ReadBool('Configuracoes', 'ExibirErroSchema', Result);
end;

function TConfiguracoes.FormaEmissao(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'FormaEmissao',Value);
end;

function TConfiguracoes.FormaEmissao: Integer;
begin
  FIni.ReadInteger('Configuracoes', 'FormaEmissao', Result);
end;

function TConfiguracoes.FormatoAlerta(Value: String): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteString('Configuracoes', 'FormatoAlerta',Value);
end;

function TConfiguracoes.FormatoAlerta: String;
begin
  Result := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';FIni.ReadString('Configuracoes', 'FormatoAlerta', Result);
end;

function TConfiguracoes.IdCSC: String;
begin
  Result := '';//FIni.ReadString('Configuracoes', 'IdCSC', Result);
end;

function TConfiguracoes.Infra: TIniFile;
begin
  Result := FIni;
end;

function TConfiguracoes.IdCSC(Value: String): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteString('Configuracoes', 'IdCSC',Value);
end;

function TConfiguracoes.Logo(Value: String): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteString('Configuracoes', 'Logo',Value);
end;

function TConfiguracoes.Logo: String;
begin
  Result := '';//FIni.ReadString('Configuracoes', 'Logo', Result);
end;

function TConfiguracoes.ModeloDF: Integer;
begin
  Result := 1;//FIni.ReadInteger('Configuracoes', 'ModeloDF', Result);
end;

function TConfiguracoes.ModeloDF(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'ModeloDF',Value);
end;

class function TConfiguracoes.New: IConfiguracoes;
begin
  Result := Self.Create;
end;

function TConfiguracoes.PathPDF: String;
begin
  Result := '';//FIni.ReadString('Configuracoes', 'PathPDF', Result);
end;

function TConfiguracoes.PathPDF(Value: String): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteString('Configuracoes', 'PathPDF',Value);
end;

function TConfiguracoes.RetirarAcentos: Boolean;
begin
  Result := True;//FIni.ReadBool('Configuracoes', 'RetirarAcentos', Result);
end;

function TConfiguracoes.RetirarAcentos(Value: Boolean): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteBool('Configuracoes', 'RetirarAcentos',Value);
end;

function TConfiguracoes.Salvar(Value: Boolean): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteBool('Configuracoes', 'Salvar',Value);
end;

function TConfiguracoes.Salvar: Boolean;
begin
  Result := True;//FIni.ReadBool('Configuracoes', 'Salvar', Result);
end;

function TConfiguracoes.SSLCryptLib: Integer;
begin
  Result := 3;//FIni.ReadInteger('Configuracoes', 'SSLHttpLib', Result);
end;

function TConfiguracoes.SSLCryptLib(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'SSLCryptLib',Value);
end;

function TConfiguracoes.SSLHttpLib: Integer;
begin
  Result := 2;//FIni.ReadInteger('Configuracoes', 'SSLHttpLib', Result);
end;

function TConfiguracoes.SSLHttpLib(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'SSLHttpLib',Value);
end;

function TConfiguracoes.SSLLib(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'SSLLib',Value);
end;

function TConfiguracoes.SSLLib: Integer;
begin
  Result := 4;//FIni.ReadInteger('Configuracoes', 'SSLLib', Result);
end;

function TConfiguracoes.SSLType: Integer;
begin
  FIni.ReadInteger('Configuracoes', 'SSLType', Result);
end;

function TConfiguracoes.SSLType(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'SSLType',Value);
end;

function TConfiguracoes.SSLXmlSignLib: Integer;
begin
 Result := 4;//FIni.ReadInteger('Configuracoes', 'SSLXmlSignLib', Result);
end;

function TConfiguracoes.SSLXmlSignLib(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'SSLXmlSignLib',Value);
end;

function TConfiguracoes.TipoDANFE: Integer;
begin
  Result :=1;//FIni.ReadInteger('Configuracoes', 'TipoDANFE', Result);
end;

function TConfiguracoes.TipoDANFE(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'TipoDANFE',Value);
end;

function TConfiguracoes.VersaoDF: Integer;
begin
  Result := 3;//FIni.ReadInteger('Configuracoes', 'VersaoDF', Result);
end;

function TConfiguracoes.VersaoDF(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'VersaoDF',Value);
end;

function TConfiguracoes.VersaoQRCode(Value: Integer): IConfiguracoes;
begin
  Result := Self;
  FIni.WriteInteger('Configuracoes', 'VersaoQRCode',Value);
end;

function TConfiguracoes.VersaoQRCode: Integer;
begin
  Result := 2;//FIni.ReadInteger('Configuracoes', 'VersaoQRCode', Result);
end;

function TConfiguracoes.WebService: IWebService;
begin
  if not Assigned(FWebService) then
    FWebService := TWebService.New(Self);
  Result := FWebService;
end;

end.
