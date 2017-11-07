program Servidor;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  view.Principal in 'View\view.Principal.pas' {frmPrincipal},
  sm.Geral in 'Controller\sm.Geral.pas' {smGeral: TDSServerModule},
  wm.Geral in 'Controller\wm.Geral.pas' {wmGeral: TWebModule},
  Classe.CItem in '..\App\Desk\Class\Classe.CItem.pas',
  Classe.Cotacao in '..\App\Desk\Class\Classe.Cotacao.pas',
  Classe.PContato in '..\App\Desk\Class\Classe.PContato.pas',
  Classe.PEndereco in '..\App\Desk\Class\Classe.PEndereco.pas',
  Classe.Pessoa in '..\App\Desk\Class\Classe.Pessoa.pas',
  Classe.Produto in '..\App\Desk\Class\Classe.Produto.pas',
  Model.Base in '..\App\Desk\Class\Model.Base.pas',
  dao.Produto in '..\App\Regras\Dao\dao.Produto.pas',
  controler.int.Dao in '..\App\Regras\Controller\controler.int.Dao.pas',
  fact.Dao in '..\App\Regras\Controller\fact.Dao.pas',
  conection.factory in '..\App\Regras\Dao\conection.factory.pas',
  Conection.Firebird in '..\App\Regras\Dao\Conection.Firebird.pas',
  conection.Inter in '..\App\Regras\Dao\conection.Inter.pas',
  conection.MySql in '..\App\Regras\Dao\conection.MySql.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
