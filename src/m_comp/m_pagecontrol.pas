unit m_pagecontrol;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ComCtrls;

type

  { TMariaePageControl }

  TMariaePageControl = class(TPageControl)
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
    {$I m_pagecontrol_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaePageControl]);
end;

{ TMariaePageControl }

constructor TMariaePageControl.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
    TabIndex := 0;
end;

end.
