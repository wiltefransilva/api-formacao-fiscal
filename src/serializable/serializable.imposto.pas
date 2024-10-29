unit serializable.imposto;

interface

uses
  GBJSON.Attributes,
  serializable.icms,
  serializable.pis,
  serializable.pisst,
  serializable.cofins,
  serializable.cofinsst;

type
  TImpostos = class
  private
    FvTotTrib: Currency;
    Ficms: TICMS;
    Fpis: TPIS;
    Fpisst: TPISST;
    Fcofins: TCOFINS;
    Fcofinsst: TCOFINSST;

    constructor Create;
    destructor Destroy; override;
  public
    property vTotTrib: Currency read FvTotTrib write FvTotTrib;
    property icms: TICMS read Ficms write Ficms;
    property pis: TPIS read Fpis write Fpis;
    property pisst: TPISST read Fpisst write Fpisst;
    property cofins: TCOFINS read Fcofins write Fcofins;
    property cofinsst: TCOFINSST read Fcofinsst write Fcofinsst;
  end;

implementation

{ TImpostos }

constructor TImpostos.Create;
begin
  Ficms := TICMS.Create;
end;

destructor TImpostos.Destroy;
begin
  Ficms.free;
  inherited;
end;

end.
