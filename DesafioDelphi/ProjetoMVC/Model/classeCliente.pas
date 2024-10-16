unit classeCliente;

interface

uses
  Dialogs;

type
  TCliente = class
  private
    // atributos da classe
    FCodigo: integer;
    FNome: string;
    FCPF: string;
  public
    // métodos públicos da classe
    constructor Create;
    procedure Salvar(const objetoCliente: TCliente);

    // propriedades da classe (semelhante aos getters and setters)
    property Codigo: integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property CPF: string read FCPF write FCPF;
  end;

implementation

uses
  SysUtils;

{ TCliente }

constructor TCliente.Create;
begin
  // inicialização dos valores do objeto
  FCodigo := 0;
  FNome   := '';
end;

procedure TCliente.Salvar(const objetoCliente: TCliente);
begin
  // a rotina para salvar o cliente no banco de dados deve ser escrita aqui

  MessageDlg('Informações do cliente na camada Model: ' + sLineBreak + sLineBreak +
             'Codigo: ' + objetoCliente.Codigo.ToString + sLineBreak +
             'Nome: '   + objetoCliente.Nome + sLineBreak +
             'CPF: '    + objetoCliente.FCPF,
             mtInformation, [mbOK], 0);
end;

end.
