unit serializable.cofins;

interface

uses
  GBJSON.Attributes;

type
  TCOFINS = class
  private
    FCST: Integer;
    FvBC: Currency;
    FpCOFINS: Currency;
    FvCOFINS: Currency;
    FqBCProd: Currency;
    FvAliqProd: Currency;
  public
    property CST: Integer read FCST write FCST;
    property vBC: Currency read FvBC write FvBC;
    property pCOFINS: Currency read FpCOFINS write FpCOFINS;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property qBCProd: Currency read FqBCProd write FqBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
  end;

implementation

end.
