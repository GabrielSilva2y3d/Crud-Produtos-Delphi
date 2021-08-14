object DM: TDM
  OldCreateOrder = False
  Height = 114
  Width = 258
  object PGconnection: TFDConnection
    Params.Strings = (
      'Database=loja'
      'User_Name=postgres'
      'Password=123'
      'Port=5433'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object DSprodutos: TDataSource
    DataSet = TBprodutos
    Left = 184
    Top = 40
  end
  object TBprodutos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = PGconnection
    CatalogName = 'loja'
    TableName = 'produtos'
    Left = 112
    Top = 40
    object TBprodutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TBprodutosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object TBprodutosdescricao: TWideMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      BlobType = ftWideMemo
    end
    object TBprodutospreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
    end
    object TBprodutosestoque: TIntegerField
      FieldName = 'estoque'
      Origin = 'estoque'
    end
    object TBprodutosfornecedor: TWideStringField
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Size = 50
    end
  end
end
