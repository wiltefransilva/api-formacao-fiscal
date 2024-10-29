unit serializable.total;

interface

uses
  GBJSON.Attributes,
  serializable.icmstot,
  serializable.issqntot, serializable.rettrib;

type
  TTotal = class
  private
    Ficms: TICMSTot;
    Fissqntot: TISSQNTot;
    Frettrib: TRetTrib;

    constructor Create;
    destructor Destroy; override;
  public
    property icms: TICMSTot read Ficms write Ficms;
    property issqntot: TISSQNTot read Fissqntot write Fissqntot;
    property rettrib: TRetTrib read Frettrib write Frettrib;
  end;

implementation

{ TTotal }

constructor TTotal.Create;
begin
  Ficms := TICMSTot.Create;
  Fissqntot := TISSQNTot.Create;
  Frettrib := TRetTrib.Create;
end;

destructor TTotal.Destroy;
begin
  Ficms.Free;
  Fissqntot.Free;
  Frettrib.Free;
  inherited;
end;

end.
