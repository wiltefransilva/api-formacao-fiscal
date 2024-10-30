unit models.factory;

interface

uses
  models.contracts;

type
  TFactoryModels = class(TInterfacedObject, IFactoryModels)
  private
    FConfiguracoes: IConfiguracoes;
    FIde: IIde;
    FEmitente: IEmitente;
    FDestinatario: IDestinatario;
  public
    class function New: IFactoryModels;

    function Configuracoes: IConfiguracoes;
    function Ide: IIde;
    function Emitente: IEmitente;
    function Destinatario: IDestinatario;
  end;

implementation

uses
  models.configuracoes, models.emitente, models.ide, models.destinatario;


function TFactoryModels.Configuracoes: IConfiguracoes;
begin
  if not Assigned(FConfiguracoes) then
    FConfiguracoes := TConfiguracoes.new;
  Result := FConfiguracoes;
end;

function TFactoryModels.Destinatario: IDestinatario;
begin
  if not Assigned(FDestinatario) then
    FDestinatario := TDestinatario.new;
  Result := FDestinatario;
end;

function TFactoryModels.Emitente: IEmitente;
begin
  if not Assigned(FEmitente) then
    FEmitente := TEmitente.NEw;
  Result := FEmitente;
end;

function TFactoryModels.Ide: IIde;
begin
  if not Assigned(FIde) then
    FIde := TIde.new;
  Result := FIde;
end;

class function TFactoryModels.New: IFactoryModels;
begin
  Result := Self.Create;
end;

end.
