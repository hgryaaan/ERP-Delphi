unit View.fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons, Service.conexao,
  Vcl.Imaging.pngimage;

type
  TViewFornecedores = class(TViewBaseListas)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtCodigo: TDBEdit;
    edtRazao: TDBEdit;
    edtFantasia: TDBEdit;
    edtTelefone: TDBEdit;
    edtCNPJCPF: TDBEdit;
    edtIERG: TDBEdit;
    edtOBS: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

end.
