unit dao.Produto;

interface

uses
  model.Base, controler.int.dao, Data.FireDACJSONReflect, conection.factory;

type

  TProdutoDao = class(TInterfacedObject, TDaoInterface)
  public
    function Get(vFiltro: string): TFDJSONDataSets;

  end;

implementation


{ TProdutoDao }

function TProdutoDao.Get(vFiltro: string): TFDJSONDataSets;
var
  vPesquisa: string;
begin
  vPesquisa := 'select * from produtos';
  if vFiltro <> '' then
    vPesquisa := vPesquisa + ' where ' +vFiltro;
  Result := TBancoFactory.GetInstance.Get(vPesquisa);
end;

end.
