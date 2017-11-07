unit Conection.Base;

interface

uses
  conection.inter,  FireDAC.Comp.Client;


Type
  TBanco = class(TInterfacedObject, iConection)
  private
    var _Instance : TBanco;
    var Con       : TFDConnection;

  public
    function GetInstance: IConection; virtual; abstract;

  end;

implementation

end.
