unit ViewVisitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Interfaces;

type
  TFormVisitorPattern = class(TForm)
    lblTitulo: TLabel;
    Panel: TPanel;
    lblTipoVenda: TLabel;
    Bevel: TBevel;
    lblInfo1: TLabel;
    lblInfo2: TLabel;
    btnPrecoaVista: TBitBtn;
    btnPrecoPromocional: TBitBtn;
    cbTipoVenda: TComboBox;
    lblPrecoUnitario: TLabel;
    edtPrecoUnitario: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnPrecoaVistaClick(Sender: TObject);
    procedure btnPrecoPromocionalClick(Sender: TObject);
  private
    { Private declarations }
    FItem : iItem;
    function PrecoTipoVenda : iVisitor;
  public
    { Public declarations }
  end;

var
  FormVisitorPattern: TFormVisitorPattern;

implementation

{$R *.dfm}

uses Item, Item.Regra.Atacado, Item.Regra.Varejos;

{ TFormVisitorPattern }

procedure TFormVisitorPattern.btnPrecoaVistaClick(Sender: TObject);
begin
  ShowMessage(
    FormatCurr(
      'R$ #,##0.00',
      FItem
        .SetPrecoUnitario(StrToCurr(edtPrecoUnitario.Text))
        .Regras
        .Accept(PrecoTipoVenda)
        .PrecoVenda
    )
  );
end;

procedure TFormVisitorPattern.btnPrecoPromocionalClick(Sender: TObject);
begin
  ShowMessage(
    FormatCurr(
      'R$ #,##0.00',
      FItem
        .SetPrecoUnitario(StrToCurr(edtPrecoUnitario.Text))
        .Regras
        .Accept(PrecoTipoVenda)
        .PrecoPromocao
    )
  );
end;

procedure TFormVisitorPattern.FormCreate(Sender: TObject);
begin
  FItem := TModelItem.New;
end;

function TFormVisitorPattern.PrecoTipoVenda: iVisitor;
begin
  case cbTipoVenda.ItemIndex of
    0: Result := TModelItemRegraVarejo.New.Visitor;
    1: Result := TModelItemRegraAtacado.New.Visitor;
  end;
end;

end.
