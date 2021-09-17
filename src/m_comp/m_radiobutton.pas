unit m_radiobutton;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeRadioButton }

  TMariaeRadioButton = class(TRadioButton)
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
    {$I m_radiobutton_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeRadioButton]);
end;

{ TMariaeRadioButton }

procedure TMariaeRadioButton.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

procedure TMariaeRadioButton.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeRadioButton.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
