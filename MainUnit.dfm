object Form1: TForm1
  Left = -4754
  Top = -2726
  Caption = 'Registro de Produtos'
  ClientHeight = 450
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 251
    Height = 29
    Caption = 'Registro de Produtos'
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
    Top = 152
    Width = 102
    Height = 13
    Caption = 'Descri'#231#227'o do Produto'
  end
  object Label4: TLabel
    Left = 16
    Top = 288
    Width = 39
    Height = 13
    Caption = 'Estoque'
  end
  object Label5: TLabel
    Left = 16
    Top = 352
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 200
    Top = 288
    Width = 27
    Height = 13
    Caption = 'Pre'#231'o'
  end
  object Label8: TLabel
    Left = 180
    Top = 309
    Width = 14
    Height = 14
    Caption = 'R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 105
    Top = 309
    Width = 49
    Height = 14
    Caption = 'Unidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 496
    Top = 88
    Width = 92
    Height = 13
    Caption = 'Buscar por produto'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 109
    Width = 251
    Height = 21
    DataField = 'nome'
    DataSource = DM.DSprodutos
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 171
    Width = 312
    Height = 102
    DataField = 'descricao'
    DataSource = DM.DSprodutos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 307
    Width = 89
    Height = 21
    Hint = 
      'Insira o pre'#231'o do produto, utilize "," para separar as casas dec' +
      'imais.'
    DataField = 'preco'
    DataSource = DM.DSprodutos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 307
    Width = 83
    Height = 21
    Hint = 
      'Insira a quantidade de produtos em estoque, apenas n'#250'meros s'#227'o p' +
      'ermitidos.'
    DataField = 'estoque'
    DataSource = DM.DSprodutos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 371
    Width = 299
    Height = 21
    DataField = 'fornecedor'
    DataSource = DM.DSprodutos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 352
    Top = 152
    Width = 361
    Height = 263
    DataSource = DM.DSprodutos
    TabOrder = 5
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
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 92
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
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Width = 124
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 408
    Width = 320
    Height = 35
    Hint = 
      'Controle de registro, aqui voc'#234' pode adicionar(+), retirar(-) e ' +
      'editar(^) os produtos. Para confirmar o registro clique em ('#10003'), ' +
      'para negar clique em (X).'
    DataSource = DM.DSprodutos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object Busca: TEdit
    Left = 442
    Top = 107
    Width = 207
    Height = 21
    TabOrder = 7
    OnChange = BuscaChange
  end
end
