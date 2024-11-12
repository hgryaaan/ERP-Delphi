inherited ViewClientes: TViewClientes
  Tag = 1
  Caption = 'ViewClientes'
  TextHeight = 15
  inherited pnlTop: TPanel
    Height = 44
    ExplicitHeight = 44
    inherited Lblview: TLabel
      Left = 54
      Top = 9
      Width = 68
      Height = 28
      Margins.Left = 5
      Margins.Right = 0
      Align = alLeft
      Caption = 'Clientes'
      Color = clWhite
      Font.Name = 'Segoe UI Semibold'
      ParentColor = False
      ExplicitLeft = 54
      ExplicitTop = 9
      ExplicitWidth = 68
    end
    inherited btnExit: TSpeedButton
      Height = 44
      ExplicitLeft = 944
      ExplicitHeight = 44
    end
    inherited pnlLogo: TPanel
      Height = 44
      ExplicitHeight = 44
      inherited imgLogo: TImage
        Height = 44
        ExplicitHeight = 44
      end
      inherited ShapeTop: TShape
        Height = 22
        ExplicitHeight = 22
      end
    end
  end
  inherited pnlCenter: TPanel
    Top = 44
    Height = 465
    ExplicitTop = 44
    ExplicitHeight = 465
    inherited cardpanel_listas: TCardPanel
      Height = 465
      ExplicitHeight = 465
      inherited card_pesquisa: TCard
        Height = 465
        ExplicitHeight = 465
        inherited DBG_pesquisa: TDBGrid
          Height = 355
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          OnDblClick = btnEditarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_COD'
              ReadOnly = True
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Cliente'
              Width = 398
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 367
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        Height = 465
        ExplicitHeight = 465
        object Label3: TLabel [0]
          Left = 32
          Top = 106
          Width = 55
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtCodigo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [1]
          Left = 120
          Top = 106
          Width = 129
          Height = 21
          Caption = 'Nome do Cliente'
          FocusControl = edtRazao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [2]
          Left = 506
          Top = 106
          Width = 114
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = edtFantasia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [3]
          Left = 835
          Top = 106
          Width = 66
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtTelefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [4]
          Left = 32
          Top = 173
          Width = 82
          Height = 21
          Caption = 'CNPJ / CPF'
          FocusControl = edtCNPJCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel [5]
          Left = 272
          Top = 173
          Width = 107
          Height = 21
          Caption = 'Registro Geral'
          FocusControl = edtIERG
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [6]
          Left = 32
          Top = 245
          Width = 90
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = edtOBS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited Panel2: TPanel
          inherited Label1: TLabel
            Width = 190
            Caption = 'Cadastro de Clientes'
            ExplicitWidth = 190
          end
        end
        object edtCodigo: TDBEdit
          Left = 32
          Top = 133
          Width = 66
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_COD'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtRazao: TDBEdit
          Left = 120
          Top = 133
          Width = 361
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtFantasia: TDBEdit
          Left = 506
          Top = 133
          Width = 303
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtTelefone: TDBEdit
          Left = 835
          Top = 133
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtCNPJCPF: TDBEdit
          Left = 32
          Top = 200
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtIERG: TDBEdit
          Left = 272
          Top = 200
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtOBS: TDBEdit
          Left = 32
          Top = 272
          Width = 953
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceConexao.QRY_pessoa
    Left = 968
    Top = 432
  end
end
