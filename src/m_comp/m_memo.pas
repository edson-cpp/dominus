unit m_memo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeMemo }

  TMariaeMemo = class(TMemo)
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
    {$I m_memo_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeMemo]);
end;

{ TMariaeMemo }

procedure TMariaeMemo.SetChanged(AValue: Boolean);
begin
    if FChanged = AValue then Exit;
    FChanged := AValue;
end;

constructor TMariaeMemo.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.ScrollBars := ssAutoVertical;
end;

procedure TMariaeMemo.OnChange;
begin
    Self.SetChanged(True);
end;

procedure TMariaeMemo.ResetChanged;
begin
    Self.SetChanged(False);
end;

end.
