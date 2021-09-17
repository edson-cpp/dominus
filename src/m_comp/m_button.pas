unit m_button;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeButton }

  TMariaeButton = class(TButton)
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
    {$I m_button_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeButton]);
end;

{ TMariaeButton }

constructor TMariaeButton.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    Self.Font.Bold := True;
end;

end.
