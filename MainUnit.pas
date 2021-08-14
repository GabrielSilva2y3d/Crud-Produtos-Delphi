unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Busca: TEdit;
    procedure BuscaChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DmUnit;

procedure TForm1.BuscaChange(Sender: TObject);
begin
  DM.TBprodutos.Locate('nome', Busca.Text, [loCaseInsensitive, loPartialKey]);

  if (Busca.Text = '') then
  begin
    DM.TBprodutos.Filtered := False;
    DM.TBprodutos.Filter := '';
  end
  else
  begin
    DM.TBprodutos.Filter := 'nome >= ' + QuotedStr(Busca.Text);
    DM.TBprodutos.Filtered := True;
  end;

end;

end.
