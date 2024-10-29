unit infra.contracts;

interface

uses
  System.SysUtils,
  IniFiles;

type
  IInfra = interface
    function LerDados: IInfra;
    function GravarDados: IInfra;
  end;

implementation

end.
