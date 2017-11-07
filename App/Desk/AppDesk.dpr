program AppDesk;

uses
  System.StartUpCopy,
  FMX.Forms,
  view.teste in 'View\view.teste.pas' {Form4},
  view.Padrao in 'View\view.Padrao.pas' {frmCadPadrao},
  view.Busca in 'View\view.Busca.pas' {frmBusca},
  view.Cad.Produtos in 'View\view.Cad.Produtos.pas' {frmCadProd},
  view.Cad.User in 'View\view.Cad.User.pas' {frmCadUser},
  view.Cont.Os in 'View\view.Cont.Os.pas' {frmOs},
  view.Frm.Os in 'View\view.Frm.Os.pas' {frmFormOs},
  view.Main in 'View\view.Main.pas' {frmMain},
  view.Orcamento in 'View\view.Orcamento.pas' {frmOrcamento},
  view.Cad.Pessoa in 'View\view.Cad.Pessoa.pas',
  Classe.CItem in 'Class\Classe.CItem.pas',
  Classe.Cotacao in 'Class\Classe.Cotacao.pas',
  Classe.PContato in 'Class\Classe.PContato.pas',
  Classe.PEndereco in 'Class\Classe.PEndereco.pas',
  Classe.Pessoa in 'Class\Classe.Pessoa.pas',
  Classe.Produto in 'Class\Classe.Produto.pas',
  dm.Connection in 'Conection\dm.Connection.pas' {dmConnection: TDataModule},
  dm.servidor in 'Conection\dm.servidor.pas' {DataModule1: TDataModule},
  proxy.rest in 'Conection\proxy.rest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConnection, dmConnection);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
