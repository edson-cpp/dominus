unit m_radiogroup;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type
  TMariaeRadioGroup = class(TRadioGroup)
  private

  protected

  public

  published

  end;

procedure Register;

implementation

procedure Register;
begin
  {$I m_radiogroup_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeRadioGroup]);
end;

end.
