unit m_floatspinedit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Spin;

type

  { TMariaeFloatSpinEdit }

  TMariaeFloatSpinEdit = class(TFloatSpinEdit)
  private
      FChanged: Boolean;
      procedure SetChanged(AValue: Boolean);

  protected

  public
    procedure OnChange;
    procedure ResetChanged;

  published
    property Changed: Boolean read FChanged write SetChanged;

  end;

procedure Register;

implementation

procedure Register;
begin
    {$I m_floatspinedit_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeFloatSpinEdit]);
end;

{ TMariaeFloatSpinEdit }

procedure TMariaeFloatSpinEdit.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

procedure TMariaeFloatSpinEdit.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeFloatSpinEdit.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
