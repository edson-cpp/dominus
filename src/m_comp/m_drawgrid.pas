unit m_drawgrid;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Grids;

type

  { TMariaeDrawGrid }

  TMariaeDrawGrid = class(TDrawGrid)
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
    {$I m_drawgrid_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeDrawGrid]);
end;

{ TMariaeDrawGrid }

procedure TMariaeDrawGrid.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeDrawGrid.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.FixedCols := 0;
    Self.DefaultRowHeight := 20;
end;

procedure TMariaeDrawGrid.EditingDone;
begin
    inherited EditingDone;
    Self.SetChanged(True);
end;

procedure TMariaeDrawGrid.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
