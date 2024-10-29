unit entity.configuracoes;

interface

uses
  entity.certificado, entity.webservice, entity.arquivo;

type
  TConfiguracoes = class
  private
    FCertificado: TCertificado;
    FSSLLib: Integer;
    FSSLCryptLib: Integer;
    FSSLHttpLib: Integer;
    FSSLXmlSignLib: Integer;
    FAtualizarXMLCancelado: Boolean;
    FSalvar: Boolean;
    FExibirErroSchema: Boolean;
    FRetirarAcentos: Boolean;
    FFormatoAlerta: String;
    FFormaEmissao: Integer;
    FModeloDF: Integer;
    FVersaoDF: Integer;
    FIdCSC: String;
    FCSC: String;
    FVersaoQRCode: Integer;
    FSSLType: Integer;
    FTipoDANFE: Integer;
    FLogo: String;
    FPathPDF: String;
    FWebService: TWebService;
    FArquivo: TArquivo;
  public
    property Certificado: TCertificado read FCertificado write FCertificado;
    property SSLLib: Integer read FSSLLib write FSSLLib;
    property SSLCryptLib: Integer read FSSLCryptLib write FSSLCryptLib;
    property SSLHttpLib: Integer read FSSLHttpLib write FSSLHttpLib;
    property SSLXmlSignLib: Integer read FSSLXmlSignLib write FSSLXmlSignLib;
    property SSLType: Integer read FSSLType write FSSLType;
    property AtualizarXMLCancelado: Boolean read FAtualizarXMLCancelado write FAtualizarXMLCancelado;
    property Salvar: Boolean read FSalvar write FSalvar;
    property ExibirErroSchema: Boolean read FExibirErroSchema write FExibirErroSchema;
    property RetirarAcentos: Boolean read FRetirarAcentos write FRetirarAcentos;
    property FormatoAlerta: String read FFormatoAlerta write FFormatoAlerta;
    property FormaEmissao: Integer read FFormaEmissao write FFormaEmissao;
    property ModeloDF: Integer read FModeloDF write FModeloDF;
    property VersaoDF: Integer read FVersaoDF write FVersaoDF;
    property IdCSC: String read FIdCSC write FIdCSC;
    property CSC: String read FCSC write FCSC;
    property VersaoQRCode: Integer read FVersaoQRCode write FVersaoQRCode;
    property TipoDANFE: Integer read FTipoDANFE write FTipoDANFE;
    property Logo: String read FLogo write FLogo;
    property PathPDF: String read FPathPDF write FPathPDF;
    property WebService: TWebService read FWebService write FWebService;
    property Arquivo: TArquivo read FArquivo write FArquivo;
  end;

implementation

end.
