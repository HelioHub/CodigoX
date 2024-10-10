unit Item.Regra.Atacado;

interface

uses Interfaces;

Type
  TModelItemRegraAtacado = class(TInterfacedObject, iItemRegras, iVisitor)
    private
      FVisit : iItem;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iItemRegras;
      function PrecoVenda : Currency;
      function PrecoPromocao : Currency;
      function Visit(Value : iItem) : iItemRegras; //Visitante
      function Visitor: iVisitor;
  end;

implementation

const
  cDescontoItemPrecoPromocaoBD = 0.6;
  cDescontoItemPrecoVendaBD = 0.8;

{TModelItemRegraAtacado}

constructor TModelItemRegraAtacado.Create;
begin

end;

destructor TModelItemRegraAtacado.Destroy;
begin

  inherited;
end;

class function TModelItemRegraAtacado.New : iItemRegras;
begin
  Result := Self.Create;
end;

function TModelItemRegraAtacado.PrecoPromocao: Currency;
begin
  Result := (FVisit.PrecoUnitario * cDescontoItemPrecoPromocaoBD)
end;

function TModelItemRegraAtacado.PrecoVenda: Currency;
begin
  Result := (FVisit.PrecoUnitario * cDescontoItemPrecoVendaBD)
end;

function TModelItemRegraAtacado.Visit(Value: iItem): iItemRegras;
begin
  FVisit := Value;
  Result := Self;
end;

function TModelItemRegraAtacado.Visitor: iVisitor;
begin
  Result := Self;
end;

end.

