unit m_bitbtn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, Buttons;

type

  { TMariaeBitBtn }

  TMariaeBitBtn = class(TBitBtn)
  private

  protected

  public
    constructor Create(MOwner: TComponent); override;

  published

  end;

procedure Register;

implementation

procedure Register;
begin
    {$I m_bitbtn_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeBitBtn]);
end;

{ TMariaeBitBtn }

constructor TMariaeBitBtn.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.ParentFont := False;
    Self.ParentShowHint := False;
    Self.Font.Bold := True;
    Self.Margin := 4;
    Self.ShowHint := True;
    Self.Spacing := 4;
    Self.Height := 28;
    Self.Width := 88;
end;

end.
