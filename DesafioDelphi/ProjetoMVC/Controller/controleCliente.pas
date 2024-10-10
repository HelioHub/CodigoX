unit controleCliente;

interface

uses
  classeCliente;

type
  TControleCliente = class
  private
    // fun��o privada para validar o CPF do cliente
    function ValidarCPF(numCPF: string): boolean;
  public
    // procedimento para salvar o cliente
    procedure Salvar(const objetoCliente: TCliente);
  end;

implementation

uses
  StrUtils, SysUtils;

const
  cZero = 0;

{ TControleCliente }

procedure TControleCliente.Salvar(const objetoCliente: TCliente);
begin
  { para exemplificar utilizando exce��es para abortar a instru��o.
    Mas ideal um devido tratamento mais amig�vel,
    utilizando try..except com mensagens de aviso }

  if objetoCliente.Codigo = cZero then
    raise Exception.Create('Preencha o c�digo do cliente.');

  if objetoCliente.Nome.IsEmpty then
    raise Exception.Create('Preencha o nome do cliente.');

  if not (ValidarCPF(objetoCliente.CPF)) then
    raise Exception.Create('CPF inv�lido!');

  // se o objeto for v�lido, o m�todo Salvar � invocado
  objetoCliente.Salvar(objetoCliente);
end;

function TControleCliente.ValidarCPF(numCPF: string): boolean;
var
	cpf: string;
	x, total, dg1, dg2: Integer;
	ret: boolean;
begin
  ret := True;
  cpf := StringReplace(numCPF, '-', '', [rfReplaceAll]);
  cpf := StringReplace(cpf, '.', '', [rfReplaceAll]);
  if Trim(cpf) = '' then
    ret := False;
  for x := 1 to Length(numCPF) do
	  if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
		  ret := False;
  if ret then
	begin
	  ret := True;
	  cpf := '';
	  for x := 1 to Length(numCPF) do
		  if numCPF[x] in ['0'..'9'] then
			  cpf := cpf + numCPF[x];
	  if Length(cpf) <> 11 then
		  ret := False;
	  if ret then
		begin
		  //1� d�gito
		  total := 0;
		  for x := 1 to 9 do
			total := total + (StrToInt(cpf[x]) * x);
		  dg1 := total mod 11;
		  if dg1 = 10 then
			  dg1 := 0;
		  //2� d�gito
		  total := 0;
		  for x := 1 to 8 do
			  total := total + (StrToInt(cpf[x + 1]) * (x));
		  total := total + (dg1 * 9);
		  dg2 := total mod 11;
		  if dg2 = 10 then
			  dg2 := 0;
		  //Valida��o final
      if (dg1 = StrToInt(cpf[10])) and (dg2 = StrToInt(cpf[11])) then
        ret := True
      else
        ret := False;
		  //Inv�lidos
      case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',
       '55555555555','66666666666','77777777777','88888888888','99999999999']) of
      	0..9: ret := False;
			end;
		end
	  else
    begin
		  //Se n�o informado deixa passar
		  if cpf = '' then
			  ret := True;
    end;
	end;
  result := ret;
end;

end.
