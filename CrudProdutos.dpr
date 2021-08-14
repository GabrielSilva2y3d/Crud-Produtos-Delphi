program CrudProdutos;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {LojaProdutos},
  RegistroDeProdutos in 'RegistroDeProdutos.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLojaProdutos, LojaProdutos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
