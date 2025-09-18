unit LIST_INFO;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TINFLECTION_LIST }

  TINFLECTION_LIST = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
  private

  public

  end;

var
  INFLECTION_LIST: TINFLECTION_LIST;

implementation

{$R *.lfm}

end.

