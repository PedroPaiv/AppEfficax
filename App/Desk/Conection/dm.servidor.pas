unit dm.servidor;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSClientRest, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
    FDMemTable1: TFDMemTable;
    FDLocalSQL1: TFDLocalSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
