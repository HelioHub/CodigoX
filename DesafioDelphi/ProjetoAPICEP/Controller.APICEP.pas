unit Controller.APICEP;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Model.CEP,
  Rest.JSON, System.Json;

type
  TDMAPICEP = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
  private
    { Private declarations }
    FCodigoCEP : String;
    FEnderecoCEP : TCEPAPI;
    procedure GetCEP;
  public
    { Public declarations }
    function GetAPICEP(sCEP : String) : TCEPAPI;
  end;

var
  DMAPICEP: TDMAPICEP;

Const cURLP1_1 = 'viacep.com.br/ws/';
      cURLP1_2 = '/json/';
      cURLP2_1 = 'cdn.apicep.com/file/apicep/';
      cURLP2_2 = '.json/';
      cURLP3_1 = 'cep.awesomeapi.com.br/json/';
      cURLP3_2 = '/json/';

implementation

{$R *.dfm}

{ TDMAPICEP }

function TDMAPICEP.GetAPICEP(sCEP: String): TCEPAPI;
begin
  if sCEP.IsEmpty then
    raise Exception.Create('Preencha o código do CEP.');

  FCodigoCEP := sCEP;
  GetCEP;
  Result := FEnderecoCEP;
end;


procedure TDMAPICEP.GetCEP;
var JSON : String;
    CEP : TCEPAPI;
    bExcept : Boolean;
begin
  bExcept := False;
  FEnderecoCEP := nil;
  try
    //ViaCep
    RESTClient1.BaseURL := cURLP1_1+FCodigoCEP+cURLP1_2;
    RESTRequest1.Execute;
  except on E: Exception do

     try
      //cdn.apicep
      RESTClient1.BaseURL := cURLP2_1+FCodigoCEP+cURLP2_2;
      RESTRequest1.Execute;
      JSON := RESTRequest1.Response.StatusText;
     except on E: Exception do

       try
        //cep.awesomeapi
        RESTClient1.BaseURL := cURLP3_1+FCodigoCEP;
        RESTRequest1.Execute;
       except on E: Exception do

          bExcept := True;

       end;

     end;

  end;
  if Not bExcept then
  begin
    JSON := RESTRequest1.Response.JSONValue.ToString;
    FEnderecoCEP := TJson.JsonToObject<TCEPAPI>(Trim(JSON));
  end;
end;

end.
