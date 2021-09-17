library m_cad;

{$mode objfpc}{$H+}

uses
    Forms, lazcontrols, runtimetypeinfocontrols, memdslaz, Interfaces, Classes,
    cs_form, cs_util, cs_cad, frm_clientes, cs_util_cad, dm_clientes, cs_inicad;

{$R *.res}
exports funcoes;

begin
    RequireDerivedFormResource:=True;
    Application.Title:='Mariae ERP - Módulo de Cadastros';
    Application.Initialize;
    Application.CreateForm(TfrmClientes, frmClientes);
    Application.Run;
end.

