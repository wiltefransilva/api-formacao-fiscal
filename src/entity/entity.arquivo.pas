unit entity.arquivo;

interface

type
  TArquivo = class
  private
    FSalvar: Boolean;
    FSepararPorMes: Boolean;
    FAdicionarLiteral: Boolean;
    FEmissaoPathNFe: Boolean;
    FSalvarEvento: Boolean;
    FSepararPorCNPJ: Boolean;
    FSepararPorModelo: Boolean;
    FPathSchemas: String;
    FPathNFe: String;
    FPathInu: String;
    FPathEvento: String;
    FPathMensal: String;
    FPathSalvar: String;
  public
    property Salvar: Boolean read FSalvar write FSalvar;
    property SepararPorMes: Boolean read FSepararPorMes write FSepararPorMes;
    property AdicionarLiteral: Boolean read FAdicionarLiteral write FAdicionarLiteral;
    property EmissaoPathNFe: Boolean read FEmissaoPathNFe write FEmissaoPathNFe;
    property SalvarEvento: Boolean read FSalvarEvento write FSalvarEvento;
    property SepararPorCNPJ: Boolean read FSepararPorCNPJ write FSepararPorCNPJ;
    property SepararPorModelo: Boolean read FSepararPorModelo write FSepararPorModelo;
    property PathSchemas: String read FPathSchemas write FPathSchemas;
    property PathNFe: String read FPathNFe write FPathNFe;
    property PathInu: String read FPathInu write FPathInu;
    property PathEvento: String read FPathEvento write FPathEvento;
    property PathMensal: String read FPathMensal write FPathMensal;
    property PathSalvar: String read FPathSalvar write FPathSalvar;
  end;

implementation

end.
