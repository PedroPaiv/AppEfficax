unit controler.int.Dao;

interface

uses
  model.BAse, Data.FireDACJSONReflect;
Type


  TDaoInterface = interface
  ['{41BFC076-C805-4C52-9D7E-99E6ACD7ACE5}']

    function Get(vFiltro: string): TFDJSONDataSets;

  end;

implementation

end.
