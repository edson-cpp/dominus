unit m_edit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeEdit }

  TMariaeEdit = class(TEdit)
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
    {$I m_edit_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeEdit]);
end;

{ TMariaeEdit }

procedure TMariaeEdit.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeEdit.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.CharCase := ecUppercase;
end;

procedure TMariaeEdit.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeEdit.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
