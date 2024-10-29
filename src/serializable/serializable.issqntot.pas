unit serializable.issqntot;

interface

uses
  GBJSON.Attributes;

type
  TISSQNtot = class
  private
    FvServ: Currency;
    FvBC: Currency;
    FvISS: Currency;
    FvPIS: Currency;
    FvCOFINS: Currency;
  public
    property vServ: Currency read FvServ write FvServ;
    property vBC: Currency read FvBC write FvBC;
    property vISS: Currency read FvISS write FvISS;
    property vPIS: Currency read FvPIS write FvPIS;
    property vCOFINS: Currency read FvCOFINS write FvCOFINS;
  end;

implementation

end.
