unit Service.conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QRY_filial: TFDQuery;
    QRY_pessoa: TFDQuery;
    QRY_filialFIL_COD: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    QRY_pessoaPES_COD: TIntegerField;
    QRY_pessoaPES_RAZAO: TStringField;
    QRY_pessoaPES_FANTASIA: TStringField;
    QRY_pessoaPES_TELEFONE: TStringField;
    QRY_pessoaPES_CNPJCPF: TStringField;
    QRY_pessoaPES_IERG: TStringField;
    QRY_pessoaPES_OBSERVACAO: TStringField;
    QRY_pessoaPES_TIPOPESSOA: TIntegerField;
    QRY_produto1: TFDQuery;
    QRY_produto2: TFDQuery;
    QRY_produto1PRO1_COD: TIntegerField;
    QRY_produto1PRO1_NOMECOMPLETO: TStringField;
    QRY_produto1PRO1_NOMEPOPULAR: TStringField;
    QRY_produto1PRO1_CODBARRA: TStringField;
    QRY_produto1PRO1_REFERENCIA: TStringField;
    QRY_produto1PRO1_GRUPO: TIntegerField;
    QRY_produto1PRO1_SUBGRUPO: TIntegerField;
    QRY_produto1PRO1_NCM: TStringField;
    QRY_produto2PRO2_COD: TIntegerField;
    QRY_produto2PRO2_COD_PRO1: TIntegerField;
    QRY_produto2PRO2_FILIAL: TIntegerField;
    QRY_produto2PRO2_CUSTOINI: TFMTBCDField;
    QRY_produto2PRO2_VENDAVISTA: TFMTBCDField;
    QRY_produto2PRO2_VENDAPRAZO: TFMTBCDField;
    QRY_produto2PRO2_SITTRIBUTARIA: TIntegerField;
    QRY_produto2PRO2_ESTOQUE: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GETLicenca(Sender: TObject);
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
begin
  GETLicenca(Sender);
end;

procedure TServiceConexao.GETLicenca(Sender: TObject);
begin
  QRY_filial.Close;
  QRY_filial.Params[0].AsInteger := 1;
  QRY_filial.Open();

  iCODempresa := QRY_filialFIL_COD.AsInteger;
  sRAZAOempresa := QRY_filialFIL_RAZAO.AsString;
end;
end.
