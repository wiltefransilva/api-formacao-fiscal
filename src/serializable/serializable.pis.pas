unit serializable.pis;

interface

uses
  GBJSON.Attributes;

type
  TPIS = class
  private
    FCST: Integer;
    FvBC: Currency;
    FpPIS: Currency;
    FvPIS: Currency;
    FqBCProd: Currency;
    FvAliqProd: Currency;
  public
    property CST: Integer read FCST write FCST;
    property vBC: Currency read FvBC write FvBC;
    property pPIS: Currency read FpPIS write FpPIS;
    property vPIS: Currency read FvPIS write FvPIS;
    property qBCProd: Currency read FqBCProd write FqBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
  end;

implementation

end.
