object dm4: Tdm4
  OldCreateOrder = False
  Left = 240
  Top = 197
  Height = 531
  Width = 264
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\visual rumah sak' +
      'it jiwa\Rumah Sakit Jiwa.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 48
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_pasien'
    Left = 40
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 32
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 112
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 184
    Top = 248
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 32
    Top = 320
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 104
    Top = 320
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_perawat'
    Left = 112
    Top = 120
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_kamar'
    Left = 176
    Top = 120
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_obat'
    Left = 40
    Top = 184
  end
  object ADOTable5: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tb_dokter'
    Left = 112
    Top = 184
  end
end
