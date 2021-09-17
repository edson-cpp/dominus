unit m_stringgrid;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Grids;

type

  { TMariaeStringGrid }

  TMariaeStringGrid = class(TStringGrid)
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
    {$I m_stringgrid_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeStringGrid]);
end;

{ TMariaeStringGrid }

procedure TMariaeStringGrid.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeStringGrid.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.FixedCols := 0;
    Self.DefaultRowHeight := 20;
end;

procedure TMariaeStringGrid.EditingDone;
begin
    inherited EditingDone;
    Self.SetChanged(True);
end;

procedure TMariaeStringGrid.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
