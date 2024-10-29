unit models.arquivos;

interface

uses
  models.contracts;

type
  TArquivo = class(TInterfacedObject, IArquivo)
  private
    FParent: IConfiguracoes;

    constructor Create(Parent: IConfiguracoes);
  public
    class function New(Parent: IConfiguracoes): IArquivo;

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

implementation


function TArquivo.AdicionarLiteral: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('Arquivos', 'AdicionarLiteral', Result);
end;

function TArquivo.AdicionarLiteral(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'AdicionarLiteral', Value);
end;

constructor TArquivo.Create(Parent: IConfiguracoes);
begin
  FParent := Parent;
end;

function TArquivo.EmissaoPathNFe: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('Arquivos', 'EmissaoPathNFe', Result);
end;

function TArquivo.EmissaoPathNFe(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'EmissaoPathNFe', Value);
end;

function TArquivo.&End: IConfiguracoes;
begin
  Result := FParent;
end;

class function TArquivo.New(Parent: IConfiguracoes): IArquivo;
begin
  Result := Self.Create(Parent);
end;

function TArquivo.PathEvento: String;
begin
  Result := '';//FParent.Infra.ReadString('Arquivos', 'EmissaoPathNFe', Result);
end;

function TArquivo.PathEvento(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathEvento', Value);
end;

function TArquivo.PathInu(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathInu', Value);
end;

function TArquivo.PathInu: String;
begin
  Result := '';//FParent.Infra.ReadString('Arquivos', 'EmissaoPathNFe', Result);
end;

function TArquivo.PathMensal: String;
begin
  Result := '';//FParent.Infra.ReadString('Arquivos', 'EmissaoPathNFe', Result);
end;

function TArquivo.PathMensal(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathMensal', Value);
end;

function TArquivo.PathNFe: String;
begin
  Result := '';//FParent.Infra.ReadString('Arquivos', 'PathNFe', Result);
end;

function TArquivo.PathNFe(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathNFe', Value);
end;

function TArquivo.PathSalvar(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathSalvar', Value);
end;

function TArquivo.PathSalvar: String;
begin
  Result := 'C:\repositorio\ACBr-Full\Exemplos\ACBrDFe\ACBrNFe\Delphi\Logs';//FParent.Infra.ReadString('Arquivos', 'PathSalvar', Result);
end;

function TArquivo.PathSchemas(Value: String): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteString('Arquivos', 'PathSchemas', Value);
end;

function TArquivo.PathSchemas: String;
begin
  Result := 'C:\repositorio\ACBr-Full\Exemplos\ACBrDFe\Schemas\NFe';//FParent.Infra.ReadString('Arquivos', 'PathSchemas', Result);
end;

function TArquivo.Salvar(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'Salvar', Value);
end;

function TArquivo.Salvar: Boolean;
begin
  Result := False;//FParent.Infra.ReadBool('Arquivos', 'Salvar', Result);
end;

function TArquivo.SalvarEvento: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('Arquivos', 'SalvarEvento', Result);
end;

function TArquivo.SalvarEvento(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'SalvarEvento', Value);
end;

function TArquivo.SepararPorCNPJ: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('Arquivos', 'SepararPorCNPJ', Result);
end;

function TArquivo.SepararPorCNPJ(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'SepararPorCNPJ', Value);
end;

function TArquivo.SepararPorMes: Boolean;
begin
  Result := false;//FParent.Infra.ReadBool('Arquivos', 'SepararPorMes', Result);
end;

function TArquivo.SepararPorMes(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'SepararPorMes', Value);
end;

function TArquivo.SepararPorModelo(Value: Boolean): IArquivo;
begin
  Result := Self;
  FParent.Infra.WriteBool('Arquivos', 'SepararPorModelo', Value);
end;

function TArquivo.SepararPorModelo: Boolean;
begin
  Result := False;//FParent.Infra.ReadBool('Arquivos', 'SepararPorModelo', Result);
end;

end.
