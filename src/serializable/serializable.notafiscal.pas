unit serializable.notafiscal;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  serializable.ide,
  serializable.produto,
  serializable.total, serializable.pagamento, serializable.infadic,
  serializable.infIntermed;

type
  TNotaFiscal = class
  private
    Fide: TIde;
    Fproduto: TObjectList<TProduto>;
    FTotal: TTotal;
    Fpagamento: TObjectList<TPagamento>;
    FInfAdic: TInfAdic;
    FinfIntermed: TinfIntermed;
  public
    constructor Create;
    destructor Destroy; override;

    property ide: TIde read Fide write Fide;
    property produto: TObjectList<TProduto> read Fproduto write Fproduto;
    property Total: TTotal read FTotal write FTotal;
    property pagamento: TObjectList<TPagamento> read Fpagamento write Fpagamento;
    property InfAdic: TInfAdic read FInfAdic write FInfAdic;
    property infIntermed: TinfIntermed read FinfIntermed write FinfIntermed;
  end;

implementation

{ TNotaFiscal }

constructor TNotaFiscal.Create;
begin
  Fide := TIde.Create;
  Fproduto := TObjectList<TProduto>.Create;
  FTotal := TTotal.Create;
  Fpagamento := TObjectList<TPagamento>.Create;
  FInfAdic := TInfAdic.Create;
  FinfIntermed := TinfIntermed.Create;
end;

destructor TNotaFiscal.Destroy;
begin
  Fide.Free;
  Fproduto.Free;
  FTotal.Free;
  Fpagamento.Free;
  FInfAdic.Free;
  FinfIntermed.Free;
  inherited;
end;

end.
