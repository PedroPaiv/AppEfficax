object smGeral: TsmGeral
  OldCreateOrder = False
  Height = 381
  Width = 534
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=orcamento'
      'User_Name=root'
      'Server=localhost'
      'DriverID=mySQL')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 40
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 336
    Top = 96
  end
  object fdqProdutos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produtos')
    Left = 120
    Top = 56
  end
end
