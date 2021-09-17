unit cs_cad;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
    ComCtrls, Buttons, cs_form, LCLType, DBCtrls;

type

	{ TclsFormcad }

    TclsFormcad = class(TclsFormdef)
    imlFormcad: TImageList;
    stbFormcad: TStatusBar;
    tbrFormcad: TToolBar;
    tbnSep3: TToolButton;
    tbnSep2: TToolButton;
    tbnSep1: TToolButton;
    tbnRelatorio: TToolButton;
    tbnNovo: TToolButton;
    tbnEditar: TToolButton;
    tbnLocalizar: TToolButton;
    tbnExcluir: TToolButton;
    tbnPrimeiro: TToolButton;
    tbnAnterior: TToolButton;
    tbnProximo: TToolButton;
    tbnUltimo: TToolButton;
    tbnFechar: TToolButton;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbnFecharClick(Sender: TObject);
    function FoiAlterado: Boolean; virtual; abstract; //Retorna se foi alterado algum componente
    procedure Habilitar(Hab: Boolean); virtual; abstract; //Habilita ou desabilita os componentes
    procedure Limpar; virtual; abstract; //Restaura os componentes da tela ao seu estado original
    procedure Preencher; virtual; abstract; //Preenche os campos da tela com os valores obtidos da tabela
    procedure Salvar; virtual; abstract; //Procedure usada para preencher valores a serem gravados nas tabelas
    private

    public

    end;

var
    clsFormcad: TclsFormcad;

implementation

{$R *.lfm}

{ TclsFormcad }

procedure TclsFormcad.tbnFecharClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TclsFormcad.FormKeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
  if ssCtrl in Shift then
  begin
    Case Key Of
         VK_N: Self.tbnNovo.Click;
         VK_E: Self.tbnEditar.Click;
         VK_L: Self.tbnLocalizar.Click;
         VK_X: Self.tbnExcluir.Click;
         VK_R: Self.tbnRelatorio.Click;
         VK_HOME: Self.tbnPrimeiro.Click;
         VK_PRIOR: Self.tbnAnterior.Click;
         VK_NEXT: Self.tbnProximo.Click;
         VK_END: Self.tbnUltimo.Click;
         VK_F4: Self.tbnFechar.Click;
    end;
  end;
end;

end.

