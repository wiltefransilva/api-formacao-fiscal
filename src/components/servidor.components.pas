unit servidor.components;

interface

uses
  System.SysUtils,
  System.Classes,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFCeDANFeFPDF,
  ACBrBase,
  ACBrDFe,
  ACBrNFe;

type
  IComponent = interface
    ['{D421768F-DC1F-4DE2-8723-B9CE8C2FA949}']
    function ACBrNFe: TACBrNFe;
  end;

  TComponentes = class(TDataModule, IComponent)
    ACBrNFe1: TACBrNFe;
    ACBrNFCeDANFeFPDF1: TACBrNFCeDANFeFPDF;
  private
    { Private declarations }
  public
    function ACBrNFe: TACBrNFe;
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TComponentes }

function TComponentes.ACBrNFe: TACBrNFe;
begin
  Result := ACBrNFe1;
end;

end.
