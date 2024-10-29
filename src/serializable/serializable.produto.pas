unit serializable.produto;

interface

type
  TProduto = class
  private
    FnItem: Integer;
    FcProd: String;
    FcEAN: String;
    FxProd: String;
    FNCM: String;
    FEXTIPI: String;
    FCFOP: String;
    FuCom: String;
    FqCom: Currency;
    FvUnCom: Currency;
    FvProd: Currency;
    FcEANTrib: String;
    FuTrib: String;
    FqTrib: Currency;
    FvUnTrib: Currency;
    FvOutro: Currency;
    FvFrete: Currency;
    FvSeg: Currency;
    FvDesc: Currency;
    FCEST: String;
    FcBarra: String;
    FcBarraTrib: String;
  public
    [JSONProp('item')]
    property nItem: Integer read FnItem write FnItem;
    [JSONProp('codigo')]
    property cProd: String read FcProd write FcProd;
    [JSONProp('ean')]
    property cEAN: String read FcEAN write FcEAN;
    [JSONProp('descricao')]
    property xProd: String read FxProd write FxProd;
    [JSONProp('ncm')]
    property NCM: String read FNCM write FNCM;
    [JSONProp('extipi')]
    property EXTIPI: String read FEXTIPI write FEXTIPI;
    [JSONProp('cfop')]
    property CFOP: String read FCFOP write FCFOP;
    [JSONProp('unidade')]
    property uCom: String read FuCom write FuCom;
    [JSONProp('quantidade')]
    property qCom: Currency read FqCom write FqCom;
    [JSONProp('valorUnitario')]
    property vUnCom: Currency read FvUnCom write FvUnCom;
    [JSONProp('valor')]
    property vProd: Currency read FvProd write FvProd;
    [JSONProp('outro')]
    property vOutro: Currency read FvOutro write FvOutro;
    [JSONProp('frete')]
    property vFrete: Currency read FvFrete write FvFrete;
    [JSONProp('seguranca')]
    property vSeg: Currency read FvSeg write FvSeg;
    [JSONProp('desconto')]
    property vDesc: Currency read FvDesc write FvDesc;
    [JSONProp('cest')]
    property CEST: String read FCEST write FCEST;
    [JSONProp('codigoBarras')]
    property cBarra: String read FcBarra write FcBarra;
  end;

implementation

end.
