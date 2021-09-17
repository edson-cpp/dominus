unit m_dbgrid;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, DBGrids;

type

  { TMariaeDBGrid }

  TMariaeDBGrid = class(TDBGrid)
  private
      FChanged: Boolean;
      procedure SetChanged(AValue: Boolean);

  protected

  public
    constructor Create(MOwner: TComponent); override;
    procedure EditingDone; override;
    procedure ResetChanged;

  published
    property Changed: Boolean read FChanged write SetChanged;

  end;

procedure Register;

implementation

procedure Register;
begin
    {$I m_dbgrid_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeDBGrid]);
end;

{ TMariaeDBGrid }

procedure TMariaeDBGrid.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeDBGrid.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.FixedCols := 0;
    Self.ReadOnly := True;
    Self.Options := [dgTitles,dgIndicator,dgColumnResize,dgColumnMove,dgColLines,dgRowLines,dgAlwaysShowSelection,dgCancelOnExit,dgDblClickAutoSize,dgDisableDelete,dgDisableInsert,dgMultiselect,dgPersistentMultiSelect,dgRowSelect];
end;

procedure TMariaeDBGrid.EditingDone;
begin
    inherited EditingDone;
    Self.SetChanged(True);
end;

procedure TMariaeDBGrid.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
