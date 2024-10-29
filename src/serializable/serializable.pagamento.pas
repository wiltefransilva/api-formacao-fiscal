unit serializable.pagamento;

interface

uses
  GBJSON.Attributes;

type
  TPagamento = class
  private
    Fvalor: Currency;
    FtPag: Integer;
  public
    property tPag: Integer read FtPag write FtPag;
    property valor: Currency read Fvalor write Fvalor;
  end;

implementation

end.
