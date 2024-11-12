inherited ViewFornecedores: TViewFornecedores
  Tag = 2
  Caption = 'ViewFornecedores'
  TextHeight = 15
  inherited pnlTop: TPanel
    inherited Lblview: TLabel
      Width = 123
      Caption = 'Fornecedores'
      ExplicitWidth = 123
    end
  end
  inherited pnlCenter: TPanel
    inherited cardpanel_listas: TCardPanel
      inherited card_pesquisa: TCard
        inherited DBG_pesquisa: TDBGrid
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
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 172
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 493
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        ExplicitTop = -3
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
            Tag = 2
            Width = 241
            Caption = 'Cadastro de Fornecedores'
            ExplicitWidth = 241
          end
        end
        object edtCodigo: TDBEdit
          Left = 32
          Top = 133
          Width = 66
          Height = 23
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
  end
end
