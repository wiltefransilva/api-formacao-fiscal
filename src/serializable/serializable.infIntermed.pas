unit serializable.infIntermed;

interface

type
  TinfIntermed = class
  private
    FCNPJ: String;
    FidCadIntTran: String;
  public
    property CNPJ: String read FCNPJ write FCNPJ;
    property idCadIntTran: String read FidCadIntTran write FidCadIntTran;
  end;

implementation

end.
