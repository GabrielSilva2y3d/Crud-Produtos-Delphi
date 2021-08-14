object LojaProdutos: TLojaProdutos
  Left = 0
  Top = 0
  Caption = 'Registro de Produtos'
  ClientHeight = 446
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 16
    Width = 309
    Height = 29
    Caption = 'REGISTRO DE PRODUTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 83
    Height = 13
    Caption = 'Nome do Produto'
  end
  object Label3: TLabel
    Left = 16
    Top = 190
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object Label5: TLabel
    Left = 168
    Top = 136
    Width = 39
    Height = 13
    Caption = 'Estoque'
  end
  object Label6: TLabel
    Left = 16
    Top = 352
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label7: TLabel
    Left = 21
    Top = 158
    Width = 13
    Height = 13
    Caption = 'R$'
  end
  object Label8: TLabel
    Left = 496
    Top = 67
    Width = 97
    Height = 13
    Caption = 'Filtrar Produtos por:'
  end
  object Label10: TLabel
    Left = 416
    Top = 94
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label11: TLabel
    Left = 512
    Top = 94
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label12: TLabel
    Left = 632
    Top = 93
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object DBGrid1: TDBGrid
    Left = 376
    Top = 139
    Width = 337
    Height = 298
    DataSource = DM.DSprodutos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'preco'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 107
    Width = 249
    Height = 21
    Hint = 'Insira o nome do produto'
    DataField = 'nome'
    DataSource = DM.DSprodutos
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 212
    Width = 321
    Height = 133
    DataField = 'descricao'
    DataSource = DM.DSprodutos
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 155
    Width = 97
    Height = 21
    Hint = 
      'Insira o pre'#231'o do produto, apenas numeros s'#227'o permitidos. (use "' +
      '," para separar as casas decimais.)'
    DataField = 'preco'
    DataSource = DM.DSprodutos
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 155
    Width = 97
    Height = 21
    Hint = 'Insira o estoque em unidades, apenas n'#250'meros s'#227'o permitidos.'
    DataField = 'estoque'
    DataSource = DM.DSprodutos
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 371
    Width = 249
    Height = 21
    DataField = 'fornecedor'
    DataSource = DM.DSprodutos
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 400
    Width = 340
    Height = 33
    DataSource = DM.DSprodutos
    Hints.Strings = (
      'Primeiro Produto'
      'Produto Anterior'
      'Pr'#243'ximo Produto'
      'Ultimo Produto'
      'Inserir Produto'
      'Deletar Produto'
      'Editar Produto'
      'Postar Produto'
      'Cancelar Produto'
      'Recarregar dados'
      'Aplicar Atualiza'#231#245'es'
      'Cancelar Atualiza'#231#245'es')
    TabOrder = 6
  end
  object BuscarNome: TEdit
    Left = 384
    Top = 113
    Width = 89
    Height = 21
    Hint = 'Escreva o nome do produto para ser encaminhado at'#233' ele.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnChange = BuscarNomeChange
  end
  object BuscarForn: TEdit
    Left = 496
    Top = 113
    Width = 89
    Height = 21
    Hint = 'Escreva o fornecedor do produto para ser encaminhado at'#233' ele'
    TabOrder = 8
    OnChange = BuscarFornChange
  end
  object BuscarCod: TEdit
    Left = 608
    Top = 112
    Width = 89
    Height = 21
    Hint = 'Escreva o c'#243'digo do produto para ser encaminhado at'#233' ele'
    TabOrder = 9
    OnChange = BuscarCodChange
  end
end
