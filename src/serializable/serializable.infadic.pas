unit serializable.infadic;

interface

uses
  System.Generics.Collections,
  GBJSON.Attributes,
  serializable.obscont, serializable.obsfisco;

type
  TInfAdic = class
  private
    FinfCpl: String;
    FinfAdFisco: String;
    Fobscont: TObjectList<TobsCont>;
    FobsFisco: TObjectList<TobsFisco>;

    constructor Create;
    destructor Destroy; override;
  public
    property infCpl: String read FinfCpl write FinfCpl;
    property infAdFisco: String read FinfAdFisco write FinfAdFisco;
    property obscont: TObjectList<TobsCont> read Fobscont write Fobscont;
    property obsFisco: TObjectList<TobsFisco> read FobsFisco write FobsFisco;
  end;

implementation

{ TInfAdic }

constructor TInfAdic.Create;
begin
  Fobscont := TObjectList<TobsCont>.Create;
  FobsFisco := TObjectList<TobsFisco>.Create;
end;

destructor TInfAdic.Destroy;
begin
  Fobscont.Free;
  FobsFisco.Free;
  inherited;
end;

end.
