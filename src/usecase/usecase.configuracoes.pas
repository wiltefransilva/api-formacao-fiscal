unit usecase.configuracoes;

interface

uses
  servidor.components;

type
  TUseCaseConfiguracoes = class
  private
    FComponent: IComponent;
  protected
    procedure ConfiturarCertificado;
    procedure ConfSSLib;
    procedure ConfArquivo;
  public
    constructor Create(Comp: IComponent);

    function ConfigurarComponente: TUseCaseConfiguracoes;
  end;

implementation

uses
  System.SysUtils,
  ACBrDFeSSL,
  blcksock,
  pcnConversao;

procedure TUseCaseConfiguracoes.ConfArquivo;
begin
//  FComponent.AcbrNFe.Configuracoes.Arquivos.Salvar           := FConfiguracoes.Arquivo.Salvar;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.SepararPorMes    := FConfiguracoes.Arquivo.SepararPorMes;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.AdicionarLiteral := FConfiguracoes.Arquivo.AdicionarLiteral;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.EmissaoPathNFe   := FConfiguracoes.Arquivo.EmissaoPathNFe;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.SalvarEvento     := FConfiguracoes.Arquivo.SalvarEvento;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.SepararPorCNPJ   := FConfiguracoes.Arquivo.SepararPorCNPJ;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.SepararPorModelo := FConfiguracoes.Arquivo.SepararPorModelo;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathSchemas      := FConfiguracoes.Arquivo.PathSchemas;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathNFe          := FConfiguracoes.Arquivo.PathNFe;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathInu          := FConfiguracoes.Arquivo.PathInu;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathEvento       := FConfiguracoes.Arquivo.PathEvento;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathMensal       := FConfiguracoes.Arquivo.PathMensal;
//  FComponent.AcbrNFe.Configuracoes.Arquivos.PathSalvar       := FConfiguracoes.Arquivo.PathSalvar;
end;

function TUseCaseConfiguracoes.ConfigurarComponente: TUseCaseConfiguracoes;
begin
  ConfiturarCertificado;
  ConfSSLib;
  ConfArquivo;

//  var Ok: Boolean;
//  FComponent.AcbrNFe.DANFE.TipoDANFE := StrToTpImp(OK, IntToStr(FConfiguracoes.TipoDANFE + 1));
//  FComponent.AcbrNFe.DANFE.Logo := FConfiguracoes.Logo;
//  FComponent.AcbrNFe.DANFE.PathPDF := FConfiguracoes.PathPDF;
end;

procedure TUseCaseConfiguracoes.ConfiturarCertificado;
begin
//  FComponent.AcbrNFe.Configuracoes.Certificados.URLPFX      := FConfiguracoes.Certificado.URL;
//  FComponent.AcbrNFe.Configuracoes.Certificados.ArquivoPFX  := FConfiguracoes.Certificado.Caminho;
//  FComponent.AcbrNFe.Configuracoes.Certificados.Senha       := FConfiguracoes.Certificado.Senha;
//  FComponent.AcbrNFe.Configuracoes.Certificados.NumeroSerie := FConfiguracoes.Certificado.Serie;
end;

procedure TUseCaseConfiguracoes.ConfSSLib;
begin
//  FComponent.AcbrNFe.Configuracoes.Geral.SSLLib := TSSLLib(FConfiguracoes.SSLLib);
//  FComponent.AcbrNFe.Configuracoes.Geral.SSLCryptLib   := TSSLCryptLib(FConfiguracoes.SSLCryptLib);
//  FComponent.AcbrNFe.Configuracoes.Geral.SSLHttpLib    := TSSLHttpLib(FConfiguracoes.SSLHttpLib);
//  FComponent.AcbrNFe.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(FConfiguracoes.SSLXmlSignLib);
//  FComponent.AcbrNFe.SSL.SSLType := TSSLType(FConfiguracoes.SSLType);
end;

constructor TUseCaseConfiguracoes.Create(Comp: IComponent);
begin
  FComponent := Comp;
//  FConfiguracoes := COnf;
end;

end.
