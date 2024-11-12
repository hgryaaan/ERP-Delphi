inherited ViewProdutos: TViewProdutos
  TextHeight = 15
  inherited pnlTop: TPanel
    inherited Lblview: TLabel
      Width = 81
      Caption = 'Produtos'
      ExplicitWidth = 81
    end
  end
  inherited pnlCenter: TPanel
    inherited cardpanel_listas: TCardPanel
      ActiveCard = card_pesquisa
      inherited card_pesquisa: TCard
        inherited DBG_pesquisa: TDBGrid
          Height = 208
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          OnDblClick = btnEditarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PRO1_COD'
              Title.Caption = 'C'#243'digo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO1_NOMECOMPLETO'
              Title.Caption = 'Nome completo'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO1_NOMEPOPULAR'
              Title.Caption = 'Nome popular'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO1_CODBARRA'
              Title.Caption = 'C'#243'digo de barras'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO1_NCM'
              Title.Caption = 'NCM'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRO1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncias'
              Width = 300
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 318
          Width = 1018
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBG_detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1008
            Height = 140
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            DataSource = dsProduto2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRO2_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRO2_CUSTOINI'
                Title.Caption = 'Custo inicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRO2_VENDAVISTA'
                Title.Caption = 'Venda Vista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRO2_VENDAPRAZO'
                Title.Caption = 'Venda Prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRO2_ESTOQUE'
                Title.Caption = 'Estoque'
                Width = 50
                Visible = True
              end>
          end
        end
      end
      inherited card_cadastro: TCard
        object Label3: TLabel [0]
          Left = 33
          Top = 113
          Width = 56
          Height = 21
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [1]
          Left = 128
          Top = 113
          Width = 138
          Height = 21
          Caption = 'Nome do produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [2]
          Left = 464
          Top = 113
          Width = 111
          Height = 21
          Caption = 'Nome popular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [3]
          Left = 33
          Top = 193
          Width = 125
          Height = 21
          Caption = 'C'#243'digo de barra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [4]
          Left = 216
          Top = 193
          Width = 81
          Height = 21
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel [5]
          Left = 400
          Top = 193
          Width = 39
          Height = 21
          Caption = 'NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [6]
          Left = 25
          Top = 280
          Width = 80
          Height = 30
          Caption = 'Detalhes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4144959
          Font.Height = -21
          Font.Name = 'Segoe UI Semilight'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [7]
          Left = 33
          Top = 318
          Width = 97
          Height = 21
          Caption = 'Custo inicial'
          FocusControl = edtCustoini
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel [8]
          Left = 149
          Top = 318
          Width = 92
          Height = 21
          Caption = 'Venda Vista'
          FocusControl = edtVendavista
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel [9]
          Left = 266
          Top = 318
          Width = 96
          Height = 21
          Caption = 'Venda Prazo'
          FocusControl = edtVendaprazo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel [10]
          Left = 384
          Top = 318
          Width = 62
          Height = 21
          Caption = 'Estoque'
          FocusControl = edtEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semilight'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited Panel2: TPanel
          inherited Label1: TLabel
            Left = 25
            Top = 17
            ExplicitLeft = 25
            ExplicitTop = 17
          end
        end
        object edtNomeprod: TDBEdit
          Left = 128
          Top = 138
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtNomepop: TDBEdit
          Left = 464
          Top = 138
          Width = 300
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtCodbarra: TDBEdit
          Left = 33
          Top = 218
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO1_CODBARRA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtRef: TDBEdit
          Left = 216
          Top = 218
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtNCM: TDBEdit
          Left = 400
          Top = 218
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO1_NCM'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtCod: TDBEdit
          Left = 33
          Top = 138
          Width = 56
          Height = 23
          DataField = 'PRO1_COD'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object edtCustoini: TDBEdit
          Left = 35
          Top = 343
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO2_CUSTOINI'
          DataSource = dsProduto2
          TabOrder = 7
        end
        object edtVendavista: TDBEdit
          Left = 150
          Top = 343
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO2_VENDAVISTA'
          DataSource = dsProduto2
          TabOrder = 8
        end
        object edtVendaprazo: TDBEdit
          Left = 267
          Top = 343
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO2_VENDAPRAZO'
          DataSource = dsProduto2
          TabOrder = 9
        end
        object edtEstoque: TDBEdit
          Left = 384
          Top = 343
          Width = 101
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PRO2_ESTOQUE'
          DataSource = dsProduto2
          TabOrder = 10
        end
      end
    end
  end
  object dsProduto2: TDataSource [3]
    DataSet = ServiceConexao.QRY_produto2
    Left = 960
    Top = 448
  end
  inherited dsDados: TDataSource
    DataSet = ServiceConexao.QRY_produto1
    OnDataChange = dsDadosDataChange
    Top = 392
  end
end
