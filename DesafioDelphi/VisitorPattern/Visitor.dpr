program Visitor;

uses
  Vcl.Forms,
  ViewVisitor in 'View\ViewVisitor.pas' {FormVisitorPattern},
  Interfaces in 'Model\Interfaces.pas',
  Item in 'Model\Item.pas',
  Item.Regra.Varejos in 'Model\Item.Regra.Varejos.pas',
  Item.Regra.Atacado in 'Model\Item.Regra.Atacado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVisitorPattern, FormVisitorPattern);
  Application.Run;
end.
