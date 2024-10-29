unit entity.certificado;

interface

type
  TCertificado = class
  private
    FURL: String;
    FCaminho: String;
    FSenha: String;
    FSerie: String;
  public
    property URL: String read FURL write FURL;
    property Caminho: String read FCaminho write FCaminho;
    property Senha: String read FSenha write FSenha;
    property Serie: String read FSerie write FSerie;
  end;

implementation

end.
