unit m_shape;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type
  TMariaeShape = class(TShape)
  private

  protected

  public

  published

  end;

procedure Register;

implementation

procedure Register;
begin
  {$I m_shape_icon.lrs}
  RegisterComponents('Mariae Controls',[TMariaeShape]);
end;

end.
