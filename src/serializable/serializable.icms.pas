unit serializable.icms;

interface

uses
  GBJSON.Attributes;

type
  TICMS = class
  private
    FCST: Integer;
    FCSOSN: Integer;
    Forig: Integer;
    FmodBC: Integer;
    FBaseCalculo: Currency;
    FvBC: Currency;
    FpICMS: Currency;
    FValorICMS: Currency;
    FvICMS: Currency;
    FmodBCST: Integer;
    FpMVAST: Currency;
    FpRedBCST: Currency;
    FvBCST: Currency;
    FpICMSST: Currency;
    FvICMSST: Currency;
    FpRedBC: Currency;
    FpCredSN: Currency;
    FvCredICMSSN: Currency;
    FvBCFCPST: Currency;
    FpFCPST: Currency;
    FvFCPST: Currency;
    FvBCSTRet: Currency;
    FpST: Currency;
    FvICMSSubstituto: Currency;
    FvICMSSTRet: Currency;
    FvBCFCPSTRet: Currency;
    FpFCPSTRet: Currency;
    FvFCPSTRet: Currency;
    FpRedBCEfet: Currency;
    FvBCEfet: Currency;
    FpICMSEfet: Currency;
    FvICMSEfet: Currency;
    FvICMSSTDeson: Currency;
    FmotDesICMSST: Integer;
    FpFCPDif: Currency;
    FvFCPDif: Currency;
    FvFCPEfet: Currency;
    FvBCUFDest: Currency;
    FpFCPUFDest: Currency;
    FpICMSUFDest: Currency;
    FpICMSInter: Currency;
    FpICMSInterPart: Currency;
    FvFCPUFDest: Currency;
    FvICMSUFDest: Currency;
    FvICMSUFRemet: Currency;
  public
    property CST: Integer read FCST write FCST;
    property CSOSN: Integer read FCSOSN write FCSOSN;
    property orig: Integer read Forig write Forig;
    property modBC: Integer read FmodBC write FmodBC;
    property BaseCalculo: Currency read FBaseCalculo write FBaseCalculo;
    property vBC: Currency read FvBC write FvBC;
    property pICMS: Currency read FpICMS write FpICMS;
    property ValorICMS: Currency read FValorICMS write FValorICMS;
    property vICMS: Currency read FvICMS write FvICMS;
    property modBCST: Integer read FmodBCST write FmodBCST;
    property pMVAST: Currency read FpMVAST write FpMVAST;
    property pRedBCST: Currency read FpRedBCST write FpRedBCST;
    property vBCST: Currency read FvBCST write FvBCST;
    property pICMSST: Currency read FpICMSST write FpICMSST;
    property vICMSST: Currency read FvICMSST write FvICMSST;
    property pRedBC: Currency read FpRedBC write FpRedBC;
    property pCredSN: Currency read FpCredSN write FpCredSN;
    property vCredICMSSN: Currency read FvCredICMSSN write FvCredICMSSN;
    property vBCFCPST: Currency read FvBCFCPST write FvBCFCPST;
    property pFCPST: Currency read FpFCPST write FpFCPST;
    property vFCPST: Currency read FvFCPST write FvFCPST;
    property vBCSTRet: Currency read FvBCSTRet write FvBCSTRet;
    property pST: Currency read FpST write FpST;
    property vICMSSubstituto: Currency read FvICMSSubstituto write FvICMSSubstituto;
    property vICMSSTRet: Currency read FvICMSSTRet write FvICMSSTRet;
    property vBCFCPSTRet: Currency read FvBCFCPSTRet write FvBCFCPSTRet;
    property pFCPSTRet: Currency read FpFCPSTRet write FpFCPSTRet;
    property vFCPSTRet: Currency read FvFCPSTRet write FvFCPSTRet;
    property pRedBCEfet: Currency read FpRedBCEfet write FpRedBCEfet;
    property vBCEfet: Currency read FvBCEfet write FvBCEfet;
    property pICMSEfet: Currency read FpICMSEfet write FpICMSEfet;
    property vICMSEfet: Currency read FvICMSEfet write FvICMSEfet;
    property vICMSSTDeson: Currency read FvICMSSTDeson write FvICMSSTDeson;
    property motDesICMSST: Integer read FmotDesICMSST write FmotDesICMSST;
    property pFCPDif: Currency read FpFCPDif write FpFCPDif;
    property vFCPDif: Currency read FvFCPDif write FvFCPDif;
    property vFCPEfet: Currency read FvFCPEfet write FvFCPEfet;
    property vBCUFDest: Currency read FvBCUFDest write FvBCUFDest;
    property pFCPUFDest: Currency read FpFCPUFDest write FpFCPUFDest;
    property pICMSUFDest: Currency read FpICMSUFDest write FpICMSUFDest;
    property pICMSInter: Currency read FpICMSInter write FpICMSInter;
    property pICMSInterPart: Currency read FpICMSInterPart write FpICMSInterPart;
    property vFCPUFDest: Currency read FvFCPUFDest write FvFCPUFDest;
    property vICMSUFDest: Currency read FvICMSUFDest write FvICMSUFDest;
    property vICMSUFRemet: Currency read FvICMSUFRemet write FvICMSUFRemet;
  end;

implementation

end.
