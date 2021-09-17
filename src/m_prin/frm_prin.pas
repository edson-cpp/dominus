unit frm_prin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  TDynamicArray = array of string;

  { TfrmPrin }

  TfrmPrin = class(TForm)
    mniClientes: TMenuItem;
    mniCadastro: TMenuItem;
    mnuPrin: TMainMenu;
    procedure mniClientesClick(Sender: TObject);
  private

  public

  end;

  procedure funcoes(var funcao: String; params: TDynamicArray); external 'm_cad.dll';

var
  frmPrin: TfrmPrin;

implementation

{$R *.lfm}

{ TfrmPrin }

procedure TfrmPrin.mniClientesClick(Sender: TObject);
var
  params: TDynamicArray;
  funcao: String;
begin
    funcao := 'cadcli';
    params := TDynamicArray.Create('');
    funcoes(funcao, params);
end;

end.

