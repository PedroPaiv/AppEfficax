unit conection.Inter;

interface

uses
  Data.FireDACJSONReflect;

Type

  IConection = interface

//    function GetInstance: IConection;
    function Get(pSql: string): TFDJSONDataSets;
  end;

implementation

end.
