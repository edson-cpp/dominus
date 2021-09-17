unit m_maskedit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, MaskEdit, StdCtrls;

type

  { TMariaeMaskEdit }

  TMariaeMaskEdit = class(TMaskEdit)
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
  {$I m_maskedit_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeMaskEdit]);
end;

{ TMariaeMaskEdit }

procedure TMariaeMaskEdit.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeMaskEdit.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.CharCase := ecUppercase;
end;

procedure TMariaeMaskEdit.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeMaskEdit.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
