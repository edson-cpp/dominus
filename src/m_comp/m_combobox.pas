unit m_combobox;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeComboBox }

  TMariaeComboBox = class(TComboBox)
  private
    FChanged: boolean;
    procedure SetChanged(AValue: boolean);

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
    {$I m_combobox_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeComboBox]);
end;

{ TMariaeComboBox }

procedure TMariaeComboBox.SetChanged(AValue: boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeComboBox.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.Style := csOwnerDrawFixed;
    Self.ItemHeight := 17;
end;

procedure TMariaeComboBox.OnChange;
begin
     Self.SetChanged(True);
end;

procedure TMariaeComboBox.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
