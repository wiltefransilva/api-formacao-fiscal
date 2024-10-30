program servidor;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  servidor.components in 'src\components\servidor.components.pas' {Componentes: TDataModule},
  entity.configuracoes in 'src\entity\entity.configuracoes.pas',
  entity.certificado in 'src\entity\entity.certificado.pas',
  entity.webservice in 'src\entity\entity.webservice.pas',
  entity.arquivo in 'src\entity\entity.arquivo.pas',
  models.contracts in 'src\models\models.contracts.pas',
  models.certificado in 'src\models\models.certificado.pas',
  models.webservice in 'src\models\models.webservice.pas',
  models.arquivos in 'src\models\models.arquivos.pas',
  models.configuracoes in 'src\models\models.configuracoes.pas',
  serializable.ide in 'src\serializable\serializable.ide.pas',
  serializable.produto in 'src\serializable\serializable.produto.pas',
  serializable.imposto in 'src\serializable\serializable.imposto.pas',
  serializable.icms in 'src\serializable\serializable.icms.pas',
  serializable.pis in 'src\serializable\serializable.pis.pas',
  serializable.pisst in 'src\serializable\serializable.pisst.pas',
  serializable.cofins in 'src\serializable\serializable.cofins.pas',
  serializable.cofinsst in 'src\serializable\serializable.cofinsst.pas',
  serializable.total in 'src\serializable\serializable.total.pas',
  serializable.icmstot in 'src\serializable\serializable.icmstot.pas',
  serializable.issqntot in 'src\serializable\serializable.issqntot.pas',
  serializable.rettrib in 'src\serializable\serializable.rettrib.pas',
  serializable.pagamento in 'src\serializable\serializable.pagamento.pas',
  serializable.notafiscal in 'src\serializable\serializable.notafiscal.pas',
  serializable.infadic in 'src\serializable\serializable.infadic.pas',
  serializable.obscont in 'src\serializable\serializable.obscont.pas',
  serializable.obsfisco in 'src\serializable\serializable.obsfisco.pas',
  serializable.infIntermed in 'src\serializable\serializable.infIntermed.pas',
  repository.contracts in 'src\repository\repository.contracts.pas',
  models.ide in 'src\models\models.ide.pas',
  models.emitente in 'src\models\models.emitente.pas',
  usecase.actions in 'src\usecase\usecase.actions.pas',
  serializable.response in 'src\serializable\serializable.response.pas',
  models.factory in 'src\models\models.factory.pas',
  routers.contracts in 'src\routers\routers.contracts.pas',
  routers.notafiscal in 'src\routers\routers.notafiscal.pas',
  helpers.serializable in 'src\helpers\helpers.serializable.pas',
  models.destinatario in 'src\models\models.destinatario.pas';

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  THorse
    .Use(jhonson);

  TNotaFiscalHorseRouter.New.RegisterRouter;

  THorse.Listen(9000);
end.
