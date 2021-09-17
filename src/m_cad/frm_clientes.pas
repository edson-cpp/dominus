unit frm_clientes;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, Buttons,
    StdCtrls, ExtCtrls, ActnList, DBGrids, EditBtn, MaskEdit, Menus, Grids,
    RTTIGrids, RTTICtrls, cs_cad, m_label, m_edit, m_combobox, m_button,
    m_maskedit, m_dbgrid, m_bitbtn, m_drawgrid, m_stringgrid, m_checkbox,
    m_memo, cs_util;

type

    { TfrmClientes }

    TfrmClientes = class(TclsFormcad)
        btnAlterarContato: TMariaeBitBtn;
        btnExcluirContato: TMariaeBitBtn;
        btnInserirContato: TMariaeBitBtn;
        imlEnder: TImageList;
        labOu1: TMariaeLabel;
        labTipoPessoa: TMariaeLabel;
        cbbTipoPessoa: TMariaeComboBox;
        cbbSitu: TMariaeComboBox;
        labAvisoCnpj: TMariaeLabel;
        cbbTipoEnder: TMariaeComboBox;
        cbbUF: TMariaeComboBox;
        cbbCidade: TMariaeComboBox;
        dbgEnder: TMariaeDBGrid;
        btnInserirEnder: TMariaeBitBtn;
        btnAlterarEnder: TMariaeBitBtn;
        btnExcluirEnder: TMariaeBitBtn;
        btnPrincipalEnder: TMariaeBitBtn;
        cbbChat: TMariaeComboBox;
        dbgContato: TMariaeDBGrid;
        chkOpc: TMariaeCheckBox;
        chkDebitos: TMariaeCheckBox;
        chkPendDoc: TMariaeCheckBox;
        chkImpPartNumber: TMariaeCheckBox;
        cbbCRT: TMariaeComboBox;
        cbbFormaPagto: TMariaeComboBox;
        cbbDestinacao: TMariaeComboBox;
        labObs: TMariaeLabel;
        memObs: TMariaeMemo;
        txtDescVendExterno: TMariaeEdit;
        txtDescRepres: TMariaeEdit;
        txtIdObsNF: TMariaeEdit;
        txtDescObsNF: TMariaeEdit;
        txtMarkup: TMariaeEdit;
        txtIdCondPagto: TMariaeEdit;
        txtDescTabPrecos: TMariaeEdit;
        txtDescAreaVendas: TMariaeEdit;
        txtDescCondPagto: TMariaeEdit;
        txtIdTransp: TMariaeEdit;
        txtIdVendedor: TMariaeEdit;
        txtIdVendExterno: TMariaeEdit;
        txtIdRepres: TMariaeEdit;
        txtIdTabPrecos: TMariaeEdit;
        txtIdAreaVendas: TMariaeEdit;
        txtDescTransp: TMariaeEdit;
        txtDescVendedor: TMariaeEdit;
        labTransp: TMariaeLabel;
        labDestinacao: TMariaeLabel;
        labMarkup: TMariaeLabel;
        labObsNF: TMariaeLabel;
        labTabPrecos: TMariaeLabel;
        labVendedor: TMariaeLabel;
        labVendExterno: TMariaeLabel;
        labRepres: TMariaeLabel;
        labCondPagto: TMariaeLabel;
        labAtualizadoEm: TMariaeLabel;
        labCRT: TMariaeLabel;
        labAreaVendas: TMariaeLabel;
        labFormaPagto: TMariaeLabel;
        txtDataFixaDia3: TMariaeEdit;
        txtRecBruta: TMariaeEdit;
        txtCredito: TMariaeEdit;
        txtTotalLcompras: TMariaeEdit;
        txtDispLcompras: TMariaeEdit;
        labUltCompra: TMariaeLabel;
        labRecBruta: TMariaeLabel;
        labCredito: TMariaeLabel;
        labLimiteCompras: TMariaeLabel;
        labTotalLcompras: TMariaeLabel;
        labDispLcompras: TMariaeLabel;
        txtConta: TMariaeEdit;
        mkeUltCompra: TMariaeMaskEdit;
        txtDataFixaDia2: TMariaeEdit;
        txtCodBanco: TMariaeEdit;
        txtAgencia: TMariaeEdit;
        txtRespCom: TMariaeEdit;
        txtRespFin: TMariaeEdit;
        txtFoneRespCom: TMariaeEdit;
        txtFoneRespFin: TMariaeEdit;
        txtDataFixaDia1: TMariaeEdit;
        txtDescBanco: TMariaeEdit;
        labFinanceiro: TMariaeLabel;
        labOu: TMariaeLabel;
        labConta: TMariaeLabel;
        labDataAbe: TMariaeLabel;
        labBanco: TMariaeLabel;
        labAgencia: TMariaeLabel;
        labRespCom: TMariaeLabel;
        labRespFin: TMariaeLabel;
        labFoneRespFin: TMariaeLabel;
        labFoneRespCom: TMariaeLabel;
        labDataFixCob: TMariaeLabel;
        mkeDataAbe: TMariaeMaskEdit;
        txtNome: TMariaeEdit;
        txtCargo: TMariaeEdit;
        txtCelular: TMariaeEdit;
        txtFone: TMariaeEdit;
        txtRamal: TMariaeEdit;
        txtEmail: TMariaeEdit;
        txtIdChat: TMariaeEdit;
        labNome: TMariaeLabel;
        labCargo: TMariaeLabel;
        labDtAdm: TMariaeLabel;
        labCelular: TMariaeLabel;
        labFone: TMariaeLabel;
        labRamal: TMariaeLabel;
        labEmail: TMariaeLabel;
        labChat: TMariaeLabel;
        pmiMovItens: TMenuItem;
        pmiListaClientes: TMenuItem;
        pmiMovVendas: TMenuItem;
        pmnRelatorio: TPopupMenu;
        txtComplem: TMariaeEdit;
        mkeDtAdm: TMariaeMaskEdit;
        txtTelefone: TMariaeEdit;
        txtContato: TMariaeEdit;
        txtPontoRef: TMariaeEdit;
        txtLogradouro: TMariaeEdit;
        txtNumero: TMariaeEdit;
        txtBairro: TMariaeEdit;
        labTipoEnder: TMariaeLabel;
        labTelefone: TMariaeLabel;
        labLogradouro: TMariaeLabel;
        lanNumero: TMariaeLabel;
        labComplem: TMariaeLabel;
        labPontoRef: TMariaeLabel;
        labUF: TMariaeLabel;
        labBairro: TMariaeLabel;
        labCep: TMariaeLabel;
        labContato: TMariaeLabel;
        mkeCep: TMariaeMaskEdit;
        txtEstadoCivil: TMariaeComboBox;
        txtSexo: TMariaeComboBox;
        txtInscest: TMariaeEdit;
        txtDataCadastro: TMariaeMaskEdit;
        txtCnpj: TMariaeMaskEdit;
        txtSite: TMariaeEdit;
        txtDataNascimento: TMariaeMaskEdit;
        txtFantasia: TMariaeEdit;
        txtRazao: TMariaeEdit;
        labSitu: TMariaeLabel;
        labDataCadastro: TMariaeLabel;
        labRazao: TMariaeLabel;
        labFantasia: TMariaeLabel;
        labCnpj: TMariaeLabel;
        labInscest: TMariaeLabel;
        labDataNascimento: TMariaeLabel;
        labSite: TMariaeLabel;
        labEstadoCivil: TMariaeLabel;
        labSexo: TMariaeLabel;
        txtNomeAbrev: TMariaeEdit;
        txtCodigo: TMariaeEdit;
        labCodigo: TMariaeLabel;
        labNomeAbrev: TMariaeLabel;
        panCodigo: TPanel;
        pgcClientes: TPageControl;
        tabIdent: TTabSheet;
        tabEnder: TTabSheet;
        tabCont: TTabSheet;
        tabCob: TTabSheet;
        tabCred: TTabSheet;
        tabFatur: TTabSheet;
        tabObs: TTabSheet;
        mkeAtualizadoEm: TMariaeMaskEdit;
        procedure tbnEditarClick(Sender: TObject);
        procedure tbnNovoClick(Sender: TObject);
        procedure tbnRelatorioClick(Sender: TObject);
        procedure TIListBox1EditingDone(Sender: TObject);
    private

    public

    end;

var
    frmClientes: TfrmClientes;

implementation

{$R *.lfm}

{ TfrmClientes }

procedure TfrmClientes.tbnEditarClick(Sender: TObject);
begin
  ShowMessage('Pressionado Ctrl+E');
end;

procedure TfrmClientes.tbnNovoClick(Sender: TObject);
begin
  ShowMessage('Pressionado Ctrl+N');
end;

procedure TfrmClientes.tbnRelatorioClick(Sender: TObject);
begin
    Self.tbnRelatorio.DropdownMenu.PopUp;
end;

procedure TfrmClientes.TIListBox1EditingDone(Sender: TObject);
begin
    ShowMessage('9');
end;

end.

