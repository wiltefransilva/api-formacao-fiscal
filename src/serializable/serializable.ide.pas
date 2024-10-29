unit serializable.ide;

interface

uses
  GBJSON.Attributes;

type
  TIde = class
  private
    FindPag: Integer;
    FnatOp: String;
    Fserie: Integer;
    FnNF: Integer;
  public
    property natOp: String read FnatOp write FnatOp;
    property indPag: Integer read FindPag write FindPag;
    property serie: Integer read Fserie write Fserie;
    property nNF: Integer read FnNF write FnNF;
  end;

implementation

end.
