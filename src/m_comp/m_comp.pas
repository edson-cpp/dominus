{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit m_comp;

{$warn 5023 off : no warning about unused units}
interface

uses
    m_checkbox, m_combobox, m_button, m_bitbtn, m_memo, m_stringgrid, 
    m_dbgrid, m_label, m_listbox, m_radiogroup, m_page, m_pagecontrol, 
    m_shape, m_panel, m_spinedit, m_floatspinedit, m_edit, m_drawgrid, 
    m_radiobutton, m_maskedit, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('m_checkbox', @m_checkbox.Register);
  RegisterUnit('m_combobox', @m_combobox.Register);
  RegisterUnit('m_button', @m_button.Register);
  RegisterUnit('m_bitbtn', @m_bitbtn.Register);
  RegisterUnit('m_memo', @m_memo.Register);
  RegisterUnit('m_stringgrid', @m_stringgrid.Register);
  RegisterUnit('m_dbgrid', @m_dbgrid.Register);
  RegisterUnit('m_label', @m_label.Register);
  RegisterUnit('m_listbox', @m_listbox.Register);
  RegisterUnit('m_radiogroup', @m_radiogroup.Register);
  RegisterUnit('m_page', @m_page.Register);
  RegisterUnit('m_pagecontrol', @m_pagecontrol.Register);
  RegisterUnit('m_shape', @m_shape.Register);
  RegisterUnit('m_panel', @m_panel.Register);
  RegisterUnit('m_spinedit', @m_spinedit.Register);
  RegisterUnit('m_floatspinedit', @m_floatspinedit.Register);
  RegisterUnit('m_edit', @m_edit.Register);
  RegisterUnit('m_drawgrid', @m_drawgrid.Register);
  RegisterUnit('m_radiobutton', @m_radiobutton.Register);
  RegisterUnit('m_maskedit', @m_maskedit.Register);
end;

initialization
  RegisterPackage('m_comp', @Register);
end.
