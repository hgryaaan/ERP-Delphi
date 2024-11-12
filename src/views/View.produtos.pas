unit View.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Provider.constants, Vcl.Imaging.pngimage, Provider.conversao, Service.conexao;

type
  TViewProdutos = class(TViewBaseListas)
    dsProduto2: TDataSource;
    Panel3: TPanel;
    DBG_detalhes: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNomeprod: TDBEdit;
    edtNomepop: TDBEdit;
    edtCodbarra: TDBEdit;
    edtRef: TDBEdit;
    edtNCM: TDBEdit;
    edtCod: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtCustoini: TDBEdit;
    Label11: TLabel;
    edtVendavista: TDBEdit;
    Label12: TLabel;
    edtVendaprazo: TDBEdit;
    Label13: TLabel;
    edtEstoque: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProduto2.DataSet.Edit;
end;

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceConexao.QRY_produto2.Open();
  ServiceConexao.QRY_produto2.Insert;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin
  inherited;
  dsDados.DataSet.Post;
  ServiceConexao.QRY_produto2.Edit;
  ServiceConexao.QRY_produto2PRO2_COD_PRO1.AsInteger := ServiceConexao.QRY_produto1PRO1_COD.AsInteger;
  ServiceConexao.QRY_produto2PRO2_FILIAL.AsInteger := iCODempresa;
  ServiceConexao.QRY_produto1PRO1_GRUPO.AsInteger := 1;
  ServiceConexao.QRY_produto1PRO1_GRUPO.AsInteger := 1;
  ServiceConexao.QRY_produto2PRO2_SITTRIBUTARIA.AsInteger := 1;
  ServiceConexao.QRY_produto2.Post;
  ShowMessage('salvo');
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //GETprodutos_detalhes(ServiceConexao.QRY_produto1PRO1_COD.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GETprodutos;
end;

end.
