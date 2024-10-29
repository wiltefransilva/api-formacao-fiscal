unit serializable.cofinsst;

interface

uses
  GBJSON.Attributes;

type
  TCOFINSST = class
  private
    FvBC: Currency;
    FpCOFINS: Currency;
    FqBCProd: Currency;
    FvAliqProd: Currency;
    FvCOFINS: Currency;
    FindSomaCOFINSST: Integer;
  public
    property vBC: Currency read FvBC write FvBC;
    property pCOFINS: Currency read FpCOFINS write FpCOFINS;
    property qBCProd: Currency read FqBCProd write FqBCProd;
    property vAliqProd: Currency read FvAliqProd write FvAliqProd;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
    property indSomaCOFINSST: Integer read FindSomaCOFINSST write FindSomaCOFINSST;
  end;

implementation

end.
