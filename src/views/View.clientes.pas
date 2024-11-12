unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Service.conexao, Vcl.WinXPanels, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  TViewClientes = class(TViewBaseListas)
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

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

end.
