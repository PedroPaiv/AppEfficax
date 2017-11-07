object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 234
  Width = 319
  object DSRestConnection1: TDSRestConnection
    Host = 'localhost'
    Port = 8888
    LoginPrompt = False
    Left = 16
    Top = 16
    UniqueId = '{7D7DA147-139F-4C76-B082-4CF68FF64A0B}'
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    LocalSQL = FDLocalSQL1
    Left = 216
    Top = 144
  end
  object FDLocalSQL1: TFDLocalSQL
    DataSets = <>
    Left = 208
    Top = 32
  end
end
