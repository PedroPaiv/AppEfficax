unit Dao.Factory;

interface

uses
  Model.Base, Dao.Inter, Data.FireDACJSONReflect;

Type
  TDaoFactory = class

  public
    class Function Get(Tabela, Campo, Busca: string): TFDJSONDataSets;
    CLASS function GetDao(FModel: TBase) : IDao;
  end;
implementation

{ TDaoFactory }

uses Dao.Servico, Model.Servico;


{ TDaoFactory }

class function TDaoFactory.Get(Tabela, Campo, Busca: string): TFDJSONDataSets;
var
  d : iDao;
begin
  if (tabela = 'servico') then
  begin
    d:= TServicoDao.Create;
    Result := d.Get(Campo, Busca);
  end else
    Result := TFDJSONDataSets.Create;
end;

class function TDaoFactory.GetDao(FModel: TBase): IDao;
begin
  if (FModel is TServico) then
    Result := Tservicodao.Create;
end;

end.
