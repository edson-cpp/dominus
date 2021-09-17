program mariae;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, frm_prin, cs_form;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Mariae ERP - Enterprise Resources Planning';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmPrin, frmPrin);
  Application.Run;
end.

