unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Service.conexao, Provider.constants, View.clientes,
  View.base.listas, View.base, View.fornecedores, Provider.conversao,
  View.produtos;

type
  TViewprincipal = class(TForm)
    pnlBottom: TPanel;
    pnlExitbtn: TPanel;
    btnExit: TSpeedButton;
    pnlLicensing: TPanel;
    pnlDesktop: TPanel;
    pnlHeader: TPanel;
    pnlSystemInfo: TPanel;
    lblNomeSistema: TLabel;
    pnlUserInfo: TPanel;
    pnlLineTop: TPanel;
    imgUser: TImage;
    pnlMenu: TPanel;
    pnlShape: TPanel;
    ShapeMenu: TShape;
    pnlMenuData: TPanel;
    btnClientes: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnConfig: TSpeedButton;
    btnProdutos: TSpeedButton;
    imgYuser: TImage;
    Label2: TLabel;
    lblLicenca: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imgCenter: TImage;
    Label6: TLabel;
    Label7: TLabel;
    btnCaixa: TSpeedButton;
    pnlImgUser: TPanel;
    procedure btnExitClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlHeaderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure imgUserMouseEnter(Sender: TObject);
    procedure imgYuserMouseLeave(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
  private
    procedure GETshapepos (Sender: TObject);
  public
    { Public declarations }
  end;

var
  Viewprincipal: TViewprincipal;

implementation

{$R *.dfm}



procedure TViewprincipal.btnCaixaClick(Sender: TObject);
begin
  GETshapepos(Sender);
  ShapeMenu.Visible := True;
end;

procedure TViewprincipal.btnClientesClick(Sender: TObject);
begin
  GETshapepos(Sender);
  ShapeMenu.Visible := True;
  ViewClientes := TViewClientes.Create(self);
  try
    ViewClientes.Tag := PessoaToInt(tpCliente);
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewprincipal.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewprincipal.btnFornecedoresClick(Sender: TObject);
begin
  GETshapepos(Sender);
  ShapeMenu.Visible := True;
  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    ViewFornecedores.Tag := PessoaToInt(TpFornecedor);
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewprincipal.btnProdutosClick(Sender: TObject);
begin
  GETshapepos(Sender);
  ShapeMenu.Visible := True;
  ViewProdutos := TViewProdutos.Create(self);
  try
    ViewProdutos.sTELA := TelasToStr(tpProduto);
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewprincipal.btnConfigClick(Sender: TObject);
begin
  GETshapepos(Sender);
  ShapeMenu.Visible := True;
end;

procedure TViewprincipal.FormShow(Sender: TObject);
begin
  lblLicenca.Caption := sRAZAOempresa;
end;

procedure TViewprincipal.GETshapepos(Sender: TObject);
begin
    ShapeMenu.Top := 0;
    ShapeMenu.Left := 0;
    ShapeMenu.Height := TSpeedButton(Sender).Height;
    ShapeMenu.Top := TSpeedButton(Sender).Top;
    ShapeMenu.Repaint;
end;

procedure TViewprincipal.imgUserMouseEnter(Sender: TObject);
begin
  imgUser.Visible:= false; imgYuser.Visible:= true;
end;

procedure TViewprincipal.imgYuserMouseLeave(Sender: TObject);
begin
  imgUser.Visible:= true; imgYuser.Visible:= false;
end;

procedure TViewprincipal.pnlHeaderMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
