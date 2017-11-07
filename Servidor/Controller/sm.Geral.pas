unit sm.Geral;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, Model.Base, fact.Dao,
  Data.FireDACJSONReflect;

type
  TsmGeral = class(TDSServerModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    fdqProdutos: TFDQuery;
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;

    function GetProduto(vFiltro: string): TFDJSONDataSets;
    procedure PutProduto;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TsmGeral.EchoString(Value: string): string;
begin
  Result := Value;
end;

procedure TsmGeral.FDConnection1BeforeConnect(Sender: TObject);
begin
//Antes de Conectar
//FDPhysMySQLDriverLink1.VendorLib := 'C:\Program Files (x86)\EasyPHP-Devserver-17\eds-binaries\dbserver\mysql5717x86x170718104507\lib\libmysql.dll'
end;

function TsmGeral.GetProduto(vFiltro: string): TFDJSONDataSets;
begin
  TDaoFactory.Get(rProduto, vfiltro);
end;

procedure TsmGeral.PutProduto;
begin
  FDConnection1.Connected := true;
  fdqProdutos.Open();
end;

function TsmGeral.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

