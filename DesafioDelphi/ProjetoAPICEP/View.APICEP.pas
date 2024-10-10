unit View.APICEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    lblTitulo: TLabel;
    Panel: TPanel;
    Bevel: TBevel;
    lblInfo1: TLabel;
    lblAPICEP: TLabel;
    btnGetCEP: TBitBtn;
    edtCEP: TEdit;
    MmEndereco: TMemo;
    procedure btnGetCEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Controller.APICEP, Model.CEP;

procedure TForm1.btnGetCEPClick(Sender: TObject);
var
  ObjetoCEP : TCEPAPI;
begin
  ObjetoCEP := DMAPICEP.GetAPICEP(Trim(edtCEP.Text));

  MmEndereco.Clear;
  Try
    MmEndereco.lines.Add(ObjetoCEP.logradouro);
    MmEndereco.lines.Add(ObjetoCEP.complemento);
    MmEndereco.lines.Add(ObjetoCEP.bairro);
    MmEndereco.lines.Add(ObjetoCEP.localidade);
    MmEndereco.lines.Add(ObjetoCEP.uf);
  Finally
    ObjetoCEP.Free;
  End;

end;

end.
