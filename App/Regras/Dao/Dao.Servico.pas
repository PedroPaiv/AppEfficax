unit Dao.Servico;

interface

uses
  dao.inter, model.base, conection.inter, conection.factory, Data.FireDACJSONReflect;

type

  TServicoDao = class(TInterfacedObject, IDao)
  private
    FBase : TBase;

    procedure InsertMongo;
    procedure UpdateMongo;
    procedure PostSql;

    function GetMongo(aCampo, aBusca: string): TFDJSONDataSets;
  public

    Destructor Destroy; override;
    procedure Insert(Model: TBase);
    procedure Delete(Model: TBase);
    procedure Update(Model: TBase);
    function Get(aCampo, aBusca: string): TFDJSONDataSets;

  end;

implementation

uses
  FireDAC.Phys.MongoDBWrapper, Conection.Mongo, Model.Servico,
  FireDAC.Phys.MongoDBDataSet;

{ TServicoDao }

procedure TServicoDao.Delete(Model: TBase);
begin

end;

destructor TServicoDao.Destroy;
begin

  inherited;
end;

function TServicoDao.Get(aCampo, aBusca: string): TFDJSONDataSets;
begin
  if (TBancoFactory.GetInstance is TBancoMongo) then
    rESULT := GetMongo(aCampo, aBusca)
  else
    rESULT := GetMongo(aCampo, aBusca);
end;

function TServicoDao.GetMongo(aCampo, aBusca: string): TFDJSONDataSets;
begin
  Result := TBancoMongo(TBancoFactory).Get(aCampo, aBusca, 'SERVICO');
end;

procedure TServicoDao.Insert(Model: TBase);
begin
  FBase := Model;
  if (TBancoFactory.GetInstance is TBancoMongo) then
    InsertMongo
  else
    PostSql;
end;

procedure TServicoDao.InsertMongo;
var
  oDoc: TMongoDocument;
begin
  with TServico(FBase) do
  begin
    try
      oDoc := TBancoMongo(TBancoFactory.GetInstance).Env.NewDoc;
      // construindo um novo documento
      oDoc
        .Add('ID' , id)
        .Add('Descricao', Descricao)
          //      .BeginObject('endereco')
        .Add('Valor', Valor);
          //      .EndObject
      // Inserindo-o na colecao
      TBancoMongo(TBancoFactory.GetInstance).Con[TBancoDados.Nome][FBase.TabelaNome].Insert(oDoc)
    finally
      oDoc.Free;
    end;
  end;
end;

procedure TServicoDao.PostSql;
begin

end;

procedure TServicoDao.Update(Model: TBase);
begin
  FBase := Model;
  if (TBancoFactory.GetInstance is TBancoMongo) then
    UpdateMongo
  else
    PostSql;
end;

procedure TServicoDao.UpdateMongo;
begin
  // conexão
  with TServico(FBase) do
  begin
  TBancoMongo(TBancoFactory.GetInstance).Con[TBancoDados.Nome][FBase.TabelaNome].update()
  // critérios
    .Match
      .Add('id', ID)
    .&End
    // alterações
    .Modify
      .&Set
        .Field('Descricao', Descricao)
        .Field('Valor', Valor)
      .&End
    .&End
  .Exec;
  end;
end;

end.
