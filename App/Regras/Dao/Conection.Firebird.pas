unit Conection.Firebird;

interface
uses
  conection.inter, FireDAC.Comp.Client, Data.FireDACJSONReflect;

Type

  TBancoFirebird = class(TInterfacedObject, iConection)
  strict private
    class var _Instance : TBancoFirebird;
    class var Con       : TFDConnection;

  public
    function GetInstance: IConection;
    function Get(pSql: string): TFDJSONDataSets;


  end;


implementation

{ TBancoFirebird }


{ TBancoFirebird }

function TBancoFirebird.Get(pSql: string): TFDJSONDataSets;
begin

end;

function TBancoFirebird.GetInstance: IConection;
const
  STR_CONEXAO = 'DriverID=FB;Server=wanderleynot;Database=D:\Prog\SGE\DISTRIBUIR\DataBase\CRISTAL.FDB;User_name=SYSDBA;Password=masterkey';
Begin
  if _instance = nil then
  begin
    _instance                       := TBancoFirebird.Create;
    _instance.Con                   := TFDConnection.Create(nil);
    _Instance.Con.ConnectionString  := str_conexao;
    _instance.Con.Connected         := True;
  end;
  Result                          := _instance;
end;

end.
