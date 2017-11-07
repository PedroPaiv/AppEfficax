unit fact.Dao;

interface
uses
  model.base, controler.int.dao, Data.FireDACJSONReflect;

Type


  TDaoFactory = class
    class function Get(vRegra: TRegra; vFiltro: string): TFDJSONDataSets;
  end;

implementation

uses
  dao.produto;

{ TDaoFactory }

class function TDaoFactory.Get(vRegra: TRegra; vFiltro: string): TFDJSONDataSets;
var
  Model : TDaoInterface;
begin
  case vRegra of
    rProduto:
      begin
        Model:= TProdutoDao.Create;
        Result := model.get(vfiltro);
      end;
    rCiente: ;
  end;

end;

end.
