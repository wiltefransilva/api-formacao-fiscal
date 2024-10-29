unit serializable.response;

interface

uses
  GBJSON.Attributes;

type
  TResponse = class
  private
    Fmotivo: String;
    Fcreated: TDateTime;
    Fid: String;
    Fstatus: integer;
    Fambiente: string;
    Fchave: String;
    FcodigoMsg: Integer;
    Fprotocolo: String;
    Fmensagem: String;
    Frecibo: String;
    Fxml: String;
    Fpdf: String;
    Fevento: string;
  public
    [JSONProp('id')]
    property id: String read Fid write Fid;
    [JSONProp('ambiente')]
    property ambiente: string read Fambiente write Fambiente;
    [JSONProp('created')]
    property created: TDateTime read Fcreated write Fcreated;
    [JSONProp('status')]
    property status: integer read Fstatus write Fstatus;
    [JSONProp('motivo')]
    property motivo: String read Fmotivo write Fmotivo;
    [JSONProp('codigoMsg')]
    property codigoMsg: Integer read FcodigoMsg write FcodigoMsg;
    [JSONProp('mensagem')]
    property mensagem: String read Fmensagem write Fmensagem;
    [JSONProp('protocolo')]
    property protocolo: String read Fprotocolo write Fprotocolo;
    [JSONProp('recibo')]
    property recibo: String read Frecibo write Frecibo;
    [JSONProp('chave')]
    property chave: String read Fchave write Fchave;
    [JSONProp('xml')]
    property xml: String read Fxml write Fxml;
    [JSONProp('pdf')]
    property pdf: String read Fpdf write Fpdf;
    [JSONProp('evento')]
    property evento: string read Fevento write Fevento;
  end;

implementation

end.
