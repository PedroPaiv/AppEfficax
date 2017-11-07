unit Dao.Inter;

interface

Uses
  Model.base, Data.FireDACJSONReflect;

Type
  IDao = interface
    function Get(aCampo, aBusca: string): TFDJSONDataSets;

    procedure Insert(Model: TBase);
    procedure Update(Model: TBase);
    procedure Delete(Model: TBase);

  end;

implementation

end.
