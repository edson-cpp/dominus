unit m_checkbox;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeCheckBox }

  TMariaeCheckBox = class(TCheckBox)
  private
    FChanged: boolean;
    procedure SetChanged(AValue: boolean);

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
    {$I m_checkbox_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeCheckBox]);
end;

{ TMariaeCheckBox }

procedure TMariaeCheckBox.SetChanged(AValue: boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

procedure TMariaeCheckBox.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeCheckBox.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
