inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  ClientHeight = 550
  ClientWidth = 1024
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 1024
  ExplicitHeight = 550
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopMouseDown
    ExplicitTop = -3
    object Lblview: TLabel
      AlignWithMargins = True
      Left = 52
      Top = 7
      Width = 65
      Height = 25
      Margins.Top = 9
      Margins.Bottom = 7
      Caption = 'lblView'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pnlTopMouseDown
    end
    object btnExit: TSpeedButton
      Left = 944
      Top = 0
      Width = 80
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 15
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '[ SAIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 6711039
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnExitClick
      ExplicitLeft = 560
    end
    object pnlLogo: TPanel
      Left = 0
      Top = 0
      Width = 49
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Color = 5395026
      ParentBackground = False
      TabOrder = 0
      object imgLogo: TImage
        Left = 0
        Top = 0
        Width = 49
        Height = 41
        Align = alLeft
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          002808060000008CFEB86D000000017352474200AECE1CE9000005FE49444154
          78DAED975B4CD37714C7FF15B93A981BB86091616020D0B2C50EE4A2994218D7
          2A4E92255C124820F185A00FBCF0A05179F0C1909010E2AB83096617A7131C14
          28B07153AE817293250CCBE4228880DC61EC7BDAD3D994366BF78259FA4F4E7A
          DAFFEF7F7E9FFF39E777CEA94878C72FD15E035801AD807B0D6005B402EE3580
          2580EE908F216E105B83753B90BF202B9059C84BC822640DB2ADB76E3F3FAFB3
          23F0FAE7FCB9A5B7761FC4197298F77E8F6DCDF1FA2943C01377EFDE8DF4F0F0
          908A44A203FF90EDEC085B5B5BC2FCFCFCE6F0F0F0427B7BBBBAB6B6F6D9C6C6
          C6EFB8AD86CC433679B913445A535313656F6F2FD16C20120DA4A5A529272626
          54FC82BA8B9CE0191E1E1E7AF3E6CD10AC134336C6C6C6063232321A70EFA921
          60C2C8C8488A9F9FDF29E8EF1BF1F6366FF0727272722C2F2FAFA7BCBCBC0DDF
          69E3577CDF05726A656525D5D1D1F1243FD7121818583E3434D4CC5ED75DF610
          BF848484C4AAAAAA78E8BE1491C1C1C11689445201FDB1216012003301781AFA
          410E2B796683C3BB8F4348FA023C3B9C9999595D5A5A5A8DEFA31C6E7AB133CB
          CBCB994E4E4EA7D96E93BFBFFF1DD86EA4E70C01131313CF5556569E871E0859
          07602300BF81FED014E019DE68BDAEAEEEE5F4F4F40B1717974578C1C9C7C747
          8CDF3FE2F04CCDCDCDD57B7979DD03503B7B471FF00CDB6D34016807F191CBE5
          671F3D7A74017A10EDA952A99A828282EEFC1B20856A2136367644A1507440FF
          03E2909292F259595959888D8D8D0787BB0D1B942344F5D0A739E92D024488E5
          783ED95240DA682E2E2EAE07094F867BE961C8E7ADADADE790D8C7F9D99E9C9C
          9CEF4B4A4A285FC6F990FC170F12A094D209808DE602CE02B0138075D03B216F
          20C77182BF8E8E8E0EE77CECCDCDCDFDA1B8B8B88ABD6C0848F69B030202CA51
          019A8DE4A03700E30078167A007BD07C4084B80B21A6233F446BC562B10CA731
          0E3929E503D406D87BF5F5F54A415BB70C434CB9AA426A28C7C7C7552823CB7A
          FBD13D715858584861616118744FC8AA25808B972F5F7ED6D1D1D1EFECEC3C23
          954A9D2F5DBA74CCD3D3338073F44FAC57207C3F51A8214B460E097954577867
          85B7F5922EAA0A549C0FB3D09E4BE60212009597D782B6C6ADF366073934D34B
          4B4B4FA2A2A27EE9ECEC6CC5F71782B64B1802D2A66B9C1EF4B9C37BEAF6DDCF
          769DD8A30B96006EB251FAB4A153CCEB677B7B7BDBB3B2B21E777777535EA979
          9D6004F080B0BBD5D9B23D816DBA0B6F5B9DD91ED4199EA0BC10B47D95C2E080
          B6F75C269329FAFBFB1F70685FB3678C016A7230353555A956ABA9E3AC220FED
          51E46D796F37CAC15BB76E8542D7942E73013586B3B3B39B5056A66262627C8B
          8A8AE8E41EA5B7ECEAEA6A0B0D0DFD797B7BFB37BDF01A03343CC54B7A1EA4F0
          7AA193C4A193C8A11FA348980BA8311C1F1F7FAFBABA7A00BAB752A94C8C8C8C
          FC02BA2B79F6DAB56B8AEBD7AF9311AA918B2600E932AC83BA1CA45CF6056012
          B73A8BCA0C5D4D002C05201D026778211A3977C1C1C14153A4D7D7D7BB119E07
          C847AA93E3C2EE5E6C0A507751FEF9A39324A19310A0BFA51E6C45A1FE16855A
          C99B7F7AE3C68DA42B57AEC408DA9AF50A702D087525462F7A8949CE5D4B0025
          F0E057F0E03981A719730129473A005801C01A413BA01EC20815012839D6D028
          F5219DE0828202C5D5AB5775A1A6DA76DA4C404748103C980C0F520EFA086614
          EA0C06A4047E8A105720C40AF60EFD76149DE34B7497F3388D14EA9DCDCDCDAE
          8888881F510F6B39174F9A396E11A004AD2E995BDD277C8A4D0E0BF17A032B79
          E2093CF81D1CF8ABA02D39544AA83ECA30D19C4F4F4FA7173944A718339C2238
          38F8E1EAEA2AD53B99C1C0DA8C51ADC2C8C0AA1B16E20128E71CA479B0D9D4C0
          1A82C924D2D5D55502EF8850AB063131378C8E8ED2297EC36BC88B627777F713
          172F5EA4FE49B56B0DCBFBEFDFBFDFD8D7D74780DEF9F9F9517676769A911F76
          5498761A303B1A8EFCE40437CC9832BCEC490EF1F6CCCC8CEAF6EDDB46477E77
          4E7E57FE9DBCA61676FFD9A1E4A6A1F508E403F6ACAE5B5008E9249BF3A7892E
          7B8EC211CE69B265F24FD33B795901AD807B7D5901FFF7807F039ACA5556F72E
          A33F0000000049454E44AE426082}
        OnMouseDown = pnlTopMouseDown
        ExplicitLeft = -3
        ExplicitTop = -6
      end
      object ShapeTop: TShape
        AlignWithMargins = True
        Left = 47
        Top = 11
        Width = 2
        Height = 19
        Margins.Left = 0
        Margins.Top = 11
        Margins.Right = 0
        Margins.Bottom = 11
        Align = alRight
        Brush.Color = clBlack
        Pen.Color = 1031129
        ExplicitLeft = 44
        ExplicitTop = 10
        ExplicitHeight = 21
      end
    end
  end
  object pnlFooter: TPanel
    Left = 0
    Top = 509
    Width = 1024
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 1
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 914
      Top = 0
      Width = 110
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
      ExplicitLeft = 924
    end
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 374
      Top = 0
      Width = 110
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovoClick
      ExplicitLeft = 413
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 509
      Top = 0
      Width = 110
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditarClick
      ExplicitLeft = 533
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 644
      Top = 0
      Width = 110
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
      ExplicitLeft = 653
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 779
      Top = 0
      Width = 110
      Height = 41
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      GroupIndex = 1
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semilight'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 773
    end
  end
  object pnlCenter: TPanel
    Left = 0
    Top = 41
    Width = 1024
    Height = 468
    Align = alClient
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 2
    object cardpanel_listas: TCardPanel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 1018
      Height = 468
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = card_cadastro
      BevelOuter = bvNone
      Caption = 'cardpanel_listas'
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnCardChange = cardpanel_listasCardChange
      object card_pesquisa: TCard
        Left = 0
        Top = 0
        Width = 1018
        Height = 468
        Caption = 'card_pesquisa'
        CardIndex = 0
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1018
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Color = 13487565
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 80
            Height = 30
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object SearchBox2: TSearchBox
            Left = 16
            Top = 52
            Width = 985
            Height = 29
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui sua pesquisa!'
          end
        end
        object DBG_pesquisa: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 105
          Width = 1008
          Height = 358
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_COD'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Cliente'
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
              Visible = True
            end>
        end
      end
      object card_cadastro: TCard
        Left = 0
        Top = 0
        Width = 1018
        Height = 468
        Caption = 'card_cadastro'
        CardIndex = 1
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1018
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = 13487565
          ParentBackground = False
          TabOrder = 0
          object Label1: TLabel
            Left = 24
            Top = 15
            Width = 82
            Height = 30
            Caption = 'Cadastro'
            Font.Charset = ANSI_CHARSET
            Font.Color = 4144959
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  object dsDados: TDataSource
    Left = 960
    Top = 448
  end
end
