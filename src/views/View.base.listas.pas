unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Service.conexao, Vcl.Mask, Vcl.DBCtrls, Provider.constants,
  Vcl.Imaging.pngimage, Provider.conversao, View.mensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTop: TPanel;
    Lblview: TLabel;
    btnExit: TSpeedButton;
    pnlLogo: TPanel;
    imgLogo: TImage;
    pnlFooter: TPanel;
    pnlCenter: TPanel;
    cardpanel_listas: TCardPanel;
    card_pesquisa: TCard;
    Panel1: TPanel;
    Label2: TLabel;
    SearchBox2: TSearchBox;
    DBG_pesquisa: TDBGrid;
    btnExcluir: TSpeedButton;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    card_cadastro: TCard;
    Panel2: TPanel;
    Label1: TLabel;
    ShapeTop: TShape;
    dsDados: TDataSource;
    procedure pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure cardpanel_listasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);

  private
    { Private declarations }
  public
    var
      sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
    begin
    dsDados.DataSet.Cancel;
    cardpanel_listas.ActiveCard := card_pesquisa;
    end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
    cardpanel_listas.ActiveCard := card_cadastro;
    dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
    begin
        if Self.Tag > 0 then

          begin

          case Self.Tag of
           1: begin
              if TViewMensagens.Mensagem('Deseja deletar esse registro?', 'Alert', 'C', [mbNao, mbSim]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem ('Cliente deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
           end;

           2: begin
              if TViewMensagens.Mensagem('Deseja deletar esse registro?', 'Alert', 'C', [mbNao, mbSim]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem ('Fornecedor deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
           end;

           3: begin
              if TViewMensagens.Mensagem('Deseja deletar esse registro?', 'Alert', 'C', [mbNao, mbSim]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem ('Funcionário deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
           end;

          end;

          end
          else begin

          if sTELA = TelasToStr(tpProduto) then
            begin
              if TViewMensagens.Mensagem('Deseja deletar esse registro?', 'Alert', 'C', [mbNao, mbSim]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem ('Produto deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
            end;

            cardpanel_listas.ActiveCard := card_pesquisa;
          end;

      end;
end;

procedure TViewBaseListas.btnExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
    cardpanel_listas.ActiveCard := card_cadastro;
    dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
    if Self.Tag > 0 then
    begin

      ServiceConexao.QRY_pessoaPES_TIPOPESSOA.AsInteger := Self.Tag;
      ServiceConexao.QRY_pessoa.Post;

      case Self.Tag of
       1: begin
        TViewMensagens.Mensagem('cliente salvo', 'Salvar', 'I', [mbOk]);
       end;
       2: begin
        TViewMensagens.Mensagem('fornecedor salvo', 'Salvar', 'I', [mbOk]);
       end;
       3: begin
        TViewMensagens.Mensagem ('Funcionário salvo com sucesso!', 'Salvar', 'I', [mbOk]);
       end;

      end;

    end;

    cardpanel_listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.cardpanel_listasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if cardpanel_listas.ActiveCard = card_cadastro then
    SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  cardpanel_listas.ActiveCard := card_pesquisa;
  GETclientes_grid(self.Tag);
end;

procedure TViewBaseListas.pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
  begin
    inherited;
      ReleaseCapture;
      Perform(wm_SysCommand, sc_DragMove, 0);
  end;

end.
