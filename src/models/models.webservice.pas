unit models.webservice;

interface

uses
  models.contracts;

type
  TWebService = class(TInterfacedObject, IWebService)
  private
    FParent: IConfiguracoes;


    constructor Create(Parent: IConfiguracoes);
  public
    class function New(Parent: IConfiguracoes): IWebService;

    function UF(Value: String): IWebService; overload;
    function UF: String; overload;
    function Ambiente(Value: Integer): IWebService; overload;
    function Ambiente: Integer; overload;
    function Visualizar(Value: Boolean): IWebService; overload;
    function Visualizar: Boolean; overload;
    function Salvar(Value: Boolean): IWebService; overload;
    function Salvar: Boolean; overload;
    function AjustaAguardaConsultaRet(Value: Boolean): IWebService; overload;
    function AjustaAguardaConsultaRet: Boolean; overload;
    function AguardarConsultaRet(Value: Integer): IWebService; overload;
    function AguardarConsultaRet: Integer; overload;
    function Tentativas(Value: Integer): IWebService; overload;
    function Tentativas: Integer; overload;
    function IntervaloTentativas(Value: Integer): IWebService; overload;
    function IntervaloTentativas: Integer; overload;
    function TimeOut(Value: Integer): IWebService; overload;
    function TimeOut: Integer; overload;
    function ProxyHost(Value: String): IWebService; overload;
    function ProxyHost: String; overload;
    function ProxyPort(Value: String): IWebService; overload;
    function ProxyPort: String; overload;
    function ProxyUser(Value: String): IWebService; overload;
    function ProxyUser: String; overload;
    function ProxyPass(Value: String): IWebService; overload;
    function ProxyPass: String; overload;
    function &End: IConfiguracoes;
  end;

implementation

{ TWebService<T> }

function TWebService.AguardarConsultaRet: Integer;
begin
  Result := 0;//FParent.Infra.ReadInteger('WebService', 'AguardarConsultaRet', Result);
end;

function TWebService.AguardarConsultaRet(Value: Integer): IWebService;
begin
  Result := self;
  FParent.Infra.WriteInteger('WebService', 'AguardarConsultaRet', Value);
end;

function TWebService.AjustaAguardaConsultaRet(
  Value: Boolean): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteBool('WebService', 'AjustaAguardaConsultaRet', Value);
end;

function TWebService.AjustaAguardaConsultaRet: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('WebService', 'AjustaAguardaConsultaRet', Result);
end;

function TWebService.Ambiente(Value: Integer): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteInteger('WebService', 'Ambiente', Value);
end;

function TWebService.Ambiente: Integer;
begin
  Result := 0;//FParent.Infra.ReadInteger('WebService', 'Ambiente', Result);
end;

constructor TWebService.Create(Parent: IConfiguracoes);
begin
  FParent := Parent;
end;

function TWebService.&End: IConfiguracoes;
begin
  Result := FParent;
end;

function TWebService.IntervaloTentativas: Integer;
begin
  Result := 0;//FParent.Infra.ReadInteger('WebService', 'IntervaloTentativas', Result);
end;

function TWebService.IntervaloTentativas(Value: Integer): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteInteger('WebService', 'IntervaloTentativas', Value);
end;

class function TWebService.New(Parent: IConfiguracoes): IWebService;
begin
  Result := Self.Create(Parent);
end;

function TWebService.ProxyHost: String;
begin
  Result := '';//FParent.Infra.ReadString('WebService', 'ProxyHost', Result);
end;

function TWebService.ProxyHost(Value: String): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteString('WebService', 'ProxyHost', Value);
end;

function TWebService.ProxyPass: String;
begin
  Result := '';//FParent.Infra.ReadString('WebService', 'ProxyPass', Result);
end;

function TWebService.ProxyPass(Value: String): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteString('WebService', 'ProxyPass', Value);
end;

function TWebService.ProxyPort: String;
begin
  FParent.Infra.ReadString('WebService', 'ProxyPort', Result);
end;

function TWebService.ProxyPort(Value: String): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteString('WebService', 'ProxyPort', Value);
end;

function TWebService.ProxyUser(Value: String): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteString('WebService', 'ProxyUser', Value);
end;

function TWebService.ProxyUser: String;
begin
  Result := '';//FParent.Infra.ReadString('WebService', 'ProxyUser', Result);
end;

function TWebService.Salvar: Boolean;
begin
  Result := False;//FParent.Infra.ReadBool('WebService', 'Salvar', Result);
end;

function TWebService.Salvar(Value: Boolean): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteBool('WebService', 'Salvar', Value);
end;

function TWebService.Tentativas(Value: Integer): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteInteger('WebService', 'Tentativas', Value);
end;

function TWebService.Tentativas: Integer;
begin
  Result := 5;//FParent.Infra.ReadInteger('WebService', 'Tentativas', Result);
end;

function TWebService.TimeOut(Value: Integer): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteInteger('WebService', 'TimeOut', Value);
end;

function TWebService.TimeOut: Integer;
begin
  Result := 5000;//FParent.Infra.ReadInteger('WebService', 'TimeOut', Result);
end;

function TWebService.UF: String;
begin
  Result := 'SP';//FParent.Infra.ReadString('WebService', 'UF', Result);
end;

function TWebService.UF(Value: String): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteString('WebService', 'UF', Value);
end;

function TWebService.Visualizar: Boolean;
begin
  Result := FAlse;//FParent.Infra.ReadBool('WebService', 'Visualizar', Result);
end;

function TWebService.Visualizar(Value: Boolean): IWebService;
begin
  Result := Self;
  FParent.Infra.WriteBool('WebService', 'Visualizar', Value);
end;

end.
