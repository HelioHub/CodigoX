unit Model.CEP;

interface

type
  TCEPAPI = class
  private
    flogradouro : String;
    fbairro     : String;
    fcomplemento: String;
    flocalidade : String;
    fuf         : String;

    destructor Destroy; override;
  protected
  public
    constructor Create;

    property logradouro : String  read flogradouro  write flogradouro;
    property bairro     : String  read fbairro      write fbairro;
    property complemento: String  read fcomplemento write fcomplemento;
    property localidade : String  read flocalidade  write flocalidade;
    property uf         : String  read fuf          write fuf;
  end;

implementation

{ TCEPAPI }

constructor TCEPAPI.Create;
begin

end;

destructor TCEPAPI.Destroy;
begin

  inherited;
end;

end.
