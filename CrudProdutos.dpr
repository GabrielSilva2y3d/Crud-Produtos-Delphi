program CrudProdutos;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1} ,
  DmUnit in 'DmUnit.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
