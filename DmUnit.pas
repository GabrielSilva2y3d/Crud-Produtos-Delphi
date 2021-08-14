unit DmUnit;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    PGconnection: TFDConnection;
    DSprodutos: TDataSource;
    TBprodutos: TFDTable;
    TBprodutosid: TIntegerField;
    TBprodutosnome: TWideStringField;
    TBprodutosdescricao: TWideMemoField;
    TBprodutospreco: TFloatField;
    TBprodutosestoque: TIntegerField;
    TBprodutosfornecedor: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MainUnit;

{$R *.dfm}

end.
