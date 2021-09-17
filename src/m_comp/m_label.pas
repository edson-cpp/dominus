unit m_label;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMariaeLabel }

  TMariaeLabel = class(TLabel)
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
    {$I m_label_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeLabel]);
end;

{ TMariaeLabel }

constructor TMariaeLabel.Create(MOwner: TComponent);
begin
    inherited Create(MOwner);
end;

end.
