unit conection.MySql;

interface
uses
//  conection.inter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
//  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
//  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.mysql,
//  FireDAC.Phys.Mysqldef, System.Rtti, System.JSON.Types, System.JSON.Readers,
//  System.JSON.BSON, System.JSON.Builders, FireDAC.Phys.MysqlWrapper,
//  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client,
//  Data.FireDACJSONReflect;

System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Model.Base, fact.Dao,
  Data.FireDACJSONReflect, conection.inter;

Type

  TBancoMySql = class(TInterfacedObject, iConection)
  private
//    var _Instance : TBancoMySql;
    var Con       : TFDConnection;
    Phys : TFDPhysMySQLDriverLink;

  public
    Constructor Create;
    function Get(pSql: string): TFDJSONDataSets;

  end;

implementation

uses
  Vcl.Forms;


{ TBancoMySql }

constructor TBancoMySql.Create;
const
  STR_CONEXAO = 'DriverID=mySQL; ' +
                'Server=localhost; ' +
                'Database=orcamento; ' +
                'User_name=root;';
Begin
//  if _instance = nil then
//  begin
//    _instance                       := TBancoMySql.Create;
    con                   := TFDConnection.Create(nil);
    Con.ConnectionString  := str_conexao;
    Con.LoginPrompt       := false;
    Phys := TFDPhysMySQLDriverLink.Create(nil);
    Phys.VendorLib := ExtractFilePath(application.ExeName) + 'dlls\libmysql.dll';
    Con.Connected         := True;
//  end;
end;

function TBancoMySql.Get(pSql: string): TFDJSONDataSets;
var
  Data: TFDQuery;
begin
  Result := TFDJSONDataSets.Create;
  if not(Assigned(data)) then
    data := TFDQuery.Create(nil)
  else
    Data := TFDQuery.Create(nil);
    Data.Connection := Con;

  data.SQL.Add(pSql);
  TFDJSONDataSetsWriter.ListAdd(Result, Data);
end;


end.
