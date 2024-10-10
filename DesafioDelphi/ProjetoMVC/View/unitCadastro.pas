unit unitCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons;

type
  TfrmCadastroClientes = class(TForm)
    lblTitulo: TLabel;
    Panel: TPanel;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtCPF: TMaskEdit;
    Bevel: TBevel;
    btnSalvar: TBitBtn;
    lblInfo1: TLabel;
    lblInfo2: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses
  classeCliente, controleCliente;

{$R *.dfm}

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
var
  // vari�veis das camadas utilizadas na rotina
  objetoCliente: TCliente;
  objetoControle: TControleCliente;
begin
  // instancia��o dos objetos
  objetoCliente  := TCliente.Create; // classe Modelo
  objetoControle := TControleCliente.Create; // classe Controle
  try
    // preenchimento dos dados
    objetoCliente.Codigo := StrToIntDef(edtCodigo.Text, 0);
    objetoCliente.Nome   := Trim(edtNome.Text);
    objetoCliente.CPF    := edtCPF.Text;

    // chamada da rotina para grava��o
    objetoControle.Salvar(objetoCliente);

    edtCodigo.Clear;
    edtNome.Clear;
    edtCPF.Clear;
    edtCodigo.SetFocus;
  finally
    // libera��o dos objetos da mem�ria
    FreeAndNil(objetoCliente);
    FreeAndNil(objetoControle);
  end;
end;

procedure TfrmCadastroClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
