unit m_page;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type
  TMariaePage = class(TPage)
  private

  protected

  public

  published

  end;

procedure Register;

implementation

procedure Register;
begin
  {$I m_page_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaePage]);
end;

end.
