program RHsistema;

uses
  Vcl.Forms,
  View.principal in 'src\views\View.principal.pas' {Viewprincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Provider.constants in 'src\Providers\Provider.constants.pas',
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewClientes},
  View.fornecedores in 'src\views\View.fornecedores.pas' {ViewFornecedores},
  Provider.conversao in 'src\Providers\Provider.conversao.pas',
  View.produtos in 'src\views\View.produtos.pas' {ViewProdutos},
  View.mensagens in 'src\views\View.mensagens.pas' {ViewMensagens},
  View.Fundo in 'src\views\View.Fundo.pas' {ViewFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewprincipal, Viewprincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TViewBase, ViewBase);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.CreateForm(TViewFornecedores, ViewFornecedores);
  Application.CreateForm(TViewProdutos, ViewProdutos);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.
