unit m_panel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type
  TMariaePanel = class(TPanel)
  private

  protected

  public

  published

  end;

procedure Register;

implementation

procedure Register;
begin
  {$I m_panel_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaePanel]);
end;

end.
