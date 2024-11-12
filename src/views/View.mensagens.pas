unit View.mensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, View.Fundo;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImages: TPanel;
    pnlText: TPanel;
    lblTitulo: TLabel;
    pnlTop: TPanel;
    memText: TMemo;
    pnlButtons: TPanel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgInfo: TImage;
    imgAlert: TImage;
    imgError: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(Texto: String; Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

    const
    LEFTBUTTONS : array[0..2] of integer = (258, 178, 97);

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrYes;
end;

class function TViewMensagens.Mensagem(Texto: String; Titulo: String; Tipo: Char;
  Botoes: array of TMyButtons): Boolean;
var
  i: integer;
begin
    ViewMensagens := TViewMensagens.Create(nil);
  try
    ViewMensagens.memText.Text := Texto;
    ViewMensagens.Caption := Titulo;

    for i:=0 to Length(Botoes)-1 do
    begin
      case (Botoes[i]) of
        mbOk: begin
                ViewMensagens.BtnOK.Visible := True;
                ViewMensagens.BtnOK.Left := LEFTBUTTONS[i];
              end;

        mbSim: begin
                 ViewMensagens.btnSim.Visible := True;
                 ViewMensagens.btnSim.Left := LEFTBUTTONS[i];
               end;

        mbNao: begin
                 ViewMensagens.BtnNao.Visible := True;
                 ViewMensagens.BtnNao.Left := LEFTBUTTONS[i];
               end;

        else begin
          ViewMensagens.BtnOK.Visible := True;
          ViewMensagens.BtnOK.Left := LEFTBUTTONS[i];
        end;
      end;
    end;

     case (Tipo) of
      'I': ViewMensagens.imgInfo.Visible := True;
      'C': ViewMensagens.imgAlert.Visible := True;
      'E': ViewMensagens.imgError.Visible := True;
      else
        ViewMensagens.imgInfo.Visible := True;
    end;

  ViewFundo.Show;
  ViewMensagens.ShowModal;
    case (ViewMensagens.ModalResult) of
      mrOk, mrYes : result := True;
      else
        result := False;
    end;

  finally
    if (ViewMensagens<>nil) then
      ViewFundo.Hide;
      FreeAndNil(ViewMensagens);
  end;

end;


end.
