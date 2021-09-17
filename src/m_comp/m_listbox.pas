unit m_listbox;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeListBox }

  TMariaeListBox = class(TListBox)
  private
      FChanged: Boolean;
      procedure SetChanged(AValue: Boolean);

  protected

  public
    constructor Create(MOwner: TComponent); override;
    procedure EditingDone; override;
    procedure OnEditingDone;
    procedure ResetChanged;

  published
    property Changed: Boolean read FChanged write SetChanged;

  end;

procedure Register;

implementation

procedure Register;
begin
    {$I m_listbox_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeListBox]);
end;

{ TMariaeListBox }

procedure TMariaeListBox.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeListBox.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.MultiSelect := True;
end;

procedure TMariaeListBox.EditingDone;
begin
    inherited EditingDone;
    Self.SetChanged(True);
end;

procedure TMariaeListBox.OnEditingDone;
begin
    Self.SetChanged(True);
end;

procedure TMariaeListBox.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
