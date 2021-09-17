unit cs_inicad;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, frm_clientes;

type TDynamicStringArray = array of String;

procedure funcoes(funcao: String; params: TDynamicStringArray);

implementation

procedure funcoes(funcao: String; params: TDynamicStringArray);
var
    Clientes: TfrmClientes;
begin
    if funcao = 'cadcli' then
    begin
        Clientes := TfrmClientes.Create(nil);
        Clientes.Show;
    end;
end;

end.

