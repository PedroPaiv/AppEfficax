unit conection.factory;

interface

Uses
  conection.inter, conection.MySql;

Type

  TBancoTipo = (TpFirebird, TpMongo, TpMySql, TpSqlServer );

//  TBancoDados = class
//  private
//    class var FNome: string;
//    FTipo: TBancoTipo;
//    class procedure SetNome(const Value: string); static;
//    class procedure SetTipo(const Value: TBancoTipo); static;
//    class function getNome: string; static;
//    class function getTipo: TBancoTipo; static;
//
//  public
//    class property Tipo : TBancoTipo read getTipo write SetTipo;
//    class property Nome : string read getNome write SetNome;
//  end;


  TBancoFactory = class
  private
  class var _Instance : iConection;

  public
    class function GetInstance: IConection;
  end;

implementation

{ TBancoFactoy }

uses Conection.Firebird;

class function TBancoFactory.GetInstance : IConection;
var
  vBanco : TBancoTipo;
begin
  vBanco := TpMySql;

  case vBanco of
    TpMySql :
      _Instance := TBancoMySql.Create;

    TpMongo:
      ;

    tpfirebird:
       _Instance := TBancoFirebird.Create;
  end;
  Result := _Instance;
end;


end.
