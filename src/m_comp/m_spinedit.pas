unit m_spinedit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Spin;

type

  { TMariaeSpinEdit }

  TMariaeSpinEdit = class(TSpinEdit)
  private
      FChanged: Boolean;
      procedure SetChanged(AValue: Boolean);

  protected

  public
    constructor Create(MOwner: TComponent); override;
    procedure OnChange;
    procedure ResetChanged;

  published
    property Changed: Boolean read FChanged write SetChanged;

  end;

procedure Register;

implementation

procedure Register;
begin
    {$I m_spinedit_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeSpinEdit]);
end;

{ TMariaeSpinEdit }

procedure TMariaeSpinEdit.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeSpinEdit.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
end;

procedure TMariaeSpinEdit.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeSpinEdit.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
