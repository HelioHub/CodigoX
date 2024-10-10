program Visitor;

uses
  Vcl.Forms,
  ViewVisitor in 'View\ViewVisitor.pas' {FormVisitorPattern};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVisitorPattern, FormVisitorPattern);
  Application.Run;
end.
