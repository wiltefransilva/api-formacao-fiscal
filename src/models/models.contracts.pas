unit models.contracts;

interface

uses
  System.IniFiles;

type
  IConfiguracoes = interface;

  ICertificado = interface
    function URL(Value: String): ICertificado; overload;
    function URL: String; overload;
    function Caminho(Value: String): ICertificado; overload;
    function Caminho: String; overload;
    function Senha(Value: String): ICertificado; overload;
    function Senha: String; overload;
    function Serie(Value: String): ICertificado; overload;
    function Serie: String; overload;
    function &End: IConfiguracoes;
  end;

  IWebService = interface
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

  IArquivo = interface
    function Salvar(Value: Boolean): IArquivo; overload;
    function Salvar: Boolean; overload;
    function SepararPorMes(Value: Boolean): IArquivo; overload;
    function SepararPorMes: Boolean; overload;
    function AdicionarLiteral(Value: Boolean): IArquivo; overload;
    function AdicionarLiteral: Boolean; overload;
    function EmissaoPathNFe(Value: Boolean): IArquivo; overload;
    function EmissaoPathNFe: Boolean; overload;
    function SalvarEvento(Value: Boolean): IArquivo; overload;
    function SalvarEvento: Boolean; overload;
    function SepararPorCNPJ(Value: Boolean): IArquivo; overload;
    function SepararPorCNPJ: Boolean; overload;
    function SepararPorModelo(Value: Boolean): IArquivo; overload;
    function SepararPorModelo: Boolean; overload;
    function PathSchemas(Value: String): IArquivo; overload;
    function PathSchemas: String; overload;
    function PathNFe(Value: String): IArquivo; overload;
    function PathNFe: String; overload;
    function PathInu(Value: String): IArquivo; overload;
    function PathInu: String; overload;
    function PathEvento(Value: String): IArquivo; overload;
    function PathEvento: String; overload;
    function PathMensal(Value: String): IArquivo; overload;
    function PathMensal: String; overload;
    function PathSalvar(Value: String): IArquivo; overload;
    function PathSalvar: String; overload;
    function &End: IConfiguracoes;
  end;

  IConfiguracoes = interface
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

  IIde = interface
    ['{7478B69D-4B2B-4DB5-B302-81187AD4F453}']
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

  IEmitente = interface
    ['{0F182973-06DD-4921-A526-1EEB85416B2D}']
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

  IDestinatario = interface
    ['{49EDC0A5-9EA7-4901-A23D-72B289056B1E}']
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

  IFactoryModels = interface
    ['{F3C739F2-CF54-445E-9B6B-4CD19CA5A28B}']
    function Configuracoes: IConfiguracoes;
    function Ide: IIde;
    function Emitente: IEmitente;
    function Destinatario: IDestinatario;
  end;

implementation

end.
