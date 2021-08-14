unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TLojaProdutos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label7: TLabel;
    Label8: TLabel;
    BuscarNome: TEdit;
    Label10: TLabel;
    BuscarForn: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    BuscarCod: TEdit;
    procedure BuscarNomeChange(Sender: TObject);
    procedure BuscarFornChange(Sender: TObject);
    procedure BuscarCodChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LojaProdutos: TLojaProdutos;

implementation

{$R *.dfm}

uses RegistroDeProdutos;

procedure TLojaProdutos.BuscarFornChange(Sender: TObject);

begin
  DM.TBprodutos.Locate('fornecedor',BuscarForn.Text,[loPartialKey,loCaseInsensitive]);
  Exit;

  if(BuscarForn.Text = '') then begin
      DM.TBprodutos.Filtered := False;
      DM.TBprodutos.Filter := '';
  end
  else begin
      DM.TBprodutos.Filter := 'fornecedor >= ' + QuotedStr(BuscarForn.Text);
      DM.TBprodutos.Filtered := True;
  end;

end;

procedure TLojaProdutos.BuscarNomeChange(Sender: TObject);
begin
  DM.TBprodutos.Locate('nome',BuscarNome.Text,[loPartialKey,loCaseInsensitive]);
  Exit;

  if(BuscarNome.Text = '') then begin
      DM.TBprodutos.Filtered := False;
      DM.TBprodutos.Filter := '';
  end
  else begin
      DM.TBprodutos.Filter := 'nome >= ' + QuotedStr(BuscarNome.Text);
      DM.TBprodutos.Filtered := True;
  end;
end;

procedure TLojaProdutos.BuscarCodChange(Sender: TObject);
begin
    try
      DM.TBprodutos.Locate('id',BuscarCod.Text,[]);

      if(BuscarCod.Text = '') then begin
          DM.TBprodutos.Filtered := False;
          DM.TBprodutos.Filter := '';
      end
      else begin
          DM.TBprodutos.Filter := 'id >= ' + QuotedStr(BuscarCod.Text);
          DM.TBprodutos.Filtered := True;
      end;
    except
        on Exception do BuscarCod.Text := '0';
    end;
   ;
end;

end.
