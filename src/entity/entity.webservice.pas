unit entity.webservice;

interface

type
  TWebservice = class
  private
    FUF: String;
    FAmbiente: Integer;
    FVisualizar: Boolean;
    FSalvar: Boolean;
    FAjustaAguardaConsultaRet: Boolean;
    FAguardarConsultaRet: Integer;
    FTentativas: Integer;
    FIntervaloTentativas: Integer;
    FTimeOut: Integer;
    FProxyHost: String;
    FProxyPort: String;
    FProxyUser: String;
    FProxyPass: String;
  public
    property UF: String read FUF write FUF;
    property Ambiente: Integer read FAmbiente write FAmbiente;
    property Visualizar: Boolean read FVisualizar write FVisualizar;
    property Salvar: Boolean read FSalvar write FSalvar;
    property AjustaAguardaConsultaRet: Boolean read FAjustaAguardaConsultaRet write FAjustaAguardaConsultaRet;
    property AguardarConsultaRet: Integer read FAguardarConsultaRet write FAguardarConsultaRet;
    property Tentativas: Integer read FTentativas write FTentativas;
    property IntervaloTentativas: Integer read FIntervaloTentativas write FIntervaloTentativas;
    property TimeOut: Integer read FTimeOut write FTimeOut;
    property ProxyHost: String read FProxyHost write FProxyHost;
    property ProxyPort: String read FProxyPort write FProxyPort;
    property ProxyUser: String read FProxyUser write FProxyUser;
    property ProxyPass: String read FProxyPass write FProxyPass;
  end;

implementation

end.
