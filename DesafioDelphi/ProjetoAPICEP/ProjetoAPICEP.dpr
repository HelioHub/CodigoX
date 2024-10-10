program ProjetoAPICEP;

uses
  Vcl.Forms,
  View.APICEP in 'View.APICEP.pas' {Form1},
  Controller.APICEP in 'Controller.APICEP.pas' {DMAPICEP: TDataModule},
  Model.CEP in 'Model.CEP.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMAPICEP, DMAPICEP);
  Application.Run;
end.
