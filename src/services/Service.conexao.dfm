object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\DATABASES\DATABASERH.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=WIN1252'
      'Protocol=TCPIP'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 544
    Top = 328
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 544
    Top = 392
  end
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from FILIAL where FIL_COD = :codigo')
    Left = 64
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialFIL_COD: TIntegerField
      FieldName = 'FIL_COD'
      Origin = 'FIL_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 100
    end
    object QRY_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 100
    end
  end
  object QRY_pessoa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from PESSOA  where PES_COD = :codigo    ')
    Left = 64
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_pessoaPES_COD: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_COD'
      Origin = 'PES_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_pessoaPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_pessoaPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_pessoaPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 100
    end
    object QRY_pessoaPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 100
    end
    object QRY_pessoaPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 100
    end
    object QRY_pessoaPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 100
    end
    object QRY_pessoaPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_produto1: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from PRODUTO1 where PRO1_COD = :codigo')
    Left = 216
    Top = 32
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1PRO1_COD: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRO1_COD'
      Origin = 'PRO1_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object QRY_produto1PRO1_NOMECOMPLETO: TStringField
      FieldName = 'PRO1_NOMECOMPLETO'
      Origin = 'PRO1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PRO1_NOMEPOPULAR: TStringField
      FieldName = 'PRO1_NOMEPOPULAR'
      Origin = 'PRO1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1PRO1_CODBARRA: TStringField
      FieldName = 'PRO1_CODBARRA'
      Origin = 'PRO1_CODBARRA'
      Size = 50
    end
    object QRY_produto1PRO1_REFERENCIA: TStringField
      FieldName = 'PRO1_REFERENCIA'
      Origin = 'PRO1_REFERENCIA'
      Size = 50
    end
    object QRY_produto1PRO1_GRUPO: TIntegerField
      FieldName = 'PRO1_GRUPO'
      Origin = 'PRO1_GRUPO'
    end
    object QRY_produto1PRO1_SUBGRUPO: TIntegerField
      FieldName = 'PRO1_SUBGRUPO'
      Origin = 'PRO1_SUBGRUPO'
    end
    object QRY_produto1PRO1_NCM: TStringField
      FieldName = 'PRO1_NCM'
      Origin = 'PRO1_NCM'
      Size = 10
    end
  end
  object QRY_produto2: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from PRODUTO2 where PRO2_COD = :codigo')
    Left = 216
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2PRO2_COD: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRO2_COD'
      Origin = 'PRO2_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRY_produto2PRO2_COD_PRO1: TIntegerField
      FieldName = 'PRO2_COD_PRO1'
      Origin = 'PRO2_COD_PRO1'
    end
    object QRY_produto2PRO2_FILIAL: TIntegerField
      FieldName = 'PRO2_FILIAL'
      Origin = 'PRO2_FILIAL'
    end
    object QRY_produto2PRO2_CUSTOINI: TFMTBCDField
      FieldName = 'PRO2_CUSTOINI'
      Origin = 'PRO2_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PRO2_VENDAVISTA: TFMTBCDField
      FieldName = 'PRO2_VENDAVISTA'
      Origin = 'PRO2_VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PRO2_VENDAPRAZO: TFMTBCDField
      FieldName = 'PRO2_VENDAPRAZO'
      Origin = 'PRO2_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PRO2_SITTRIBUTARIA: TIntegerField
      FieldName = 'PRO2_SITTRIBUTARIA'
      Origin = 'PRO2_SITTRIBUTARIA'
    end
    object QRY_produto2PRO2_ESTOQUE: TFMTBCDField
      FieldName = 'PRO2_ESTOQUE'
      Origin = 'PRO2_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
end
