unit serializable.pisst;

interface

uses
  GBJSON.Attributes;

type
  TPISST = class
  private
    FvBc: Currency;
    FpPis: Currency;
    FqBCProd: Currency;
    FvAliqProd: Currency;
    FvPIS: Currency;
    FIndSomaPISST: Currency;
  public
    property vBc: Currency read FvBc write FvBc;
    property pPis: Currency read FpPis write FpPis;
    property qBCProd: Currency read FqBCProd write FqBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
    property vPIS: Currency read FvPIS write FvPIS;
    property IndSomaPISST: Currency read FIndSomaPISST write FIndSomaPISST;
  end;

implementation

end.
