object FRM_A003UTCO: TFRM_A003UTCO
  Left = 106
  Top = 16
  BorderStyle = bsNone
  ClientHeight = 496
  ClientWidth = 625
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 587
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 1
      Top = 103
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 1
      Top = 135
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 1
      Top = 167
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 1
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 1
      Top = 263
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 296
      Width = 32
      Height = 27
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Flat = True
      Glyph.Data = {
        BA060000424DBA06000000000000360400002800000019000000170000000100
        08000000000084020000C40E0000C40E00000001000000000000000000007B00
        0000FF000000007B00007B7B000000FF0000FFFF0000007B7B007B7B7B00BDBD
        BD0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0909090909090909080808090909090909090900000009090909090909090909
        0909090908040408090909090909090000000909090909090909090909090909
        0806060408090909090909000000090909090909090909090909090908060604
        0408090909090900000009090909090909090909090909090806060404040809
        0909090000000000000000000000000009090909080606040404000000000800
        0000090909090909090909000808080800060604040400080909090000000909
        0909090909080800090909090806060404040008090909000000090909090909
        0800040009090909080606040404000809090900000009090909090908000400
        0909090908060604040400080909090000000909090808080804040408090909
        0806040400040008090909000000090908080808080406040408090908060404
        0004000809090900000009040000000000040606040408090806060404040008
        0909090000000804060606060606060606040408080606040404000809090900
        0000080406060606060606060606040808060604040400080909090000000904
        0404040404040606060408090806060404040008090909000000090908080808
        0804060604080909080606040404000809090900000009090909090908040604
        0809090908060604040400080909090000000909090909090804040009090909
        0804060404040008090909000000090909090909080000000909090909080406
        0404000809090900000009090909090909090809090909090909090406040008
        0909090000000909090909090909080808080808080808000404000809090900
        000009090909090909090908080808080808080808080809090909000000}
      Margin = 1
      ParentBiDiMode = False
      OnClick = BTN_SAIRClick
    end
    object Btn_Avancar: TSpeedButton
      Left = 1
      Top = 39
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 1
      Top = 71
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 199
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 1
      Top = 231
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      OnClick = Btn_ExcluirClick
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 143
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Aplicação  '
    CaptionFont.Charset = ANSI_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 51
      Height = 13
      Caption = '  Aplicação'
    end
    object Label2: TLabel
      Left = 84
      Top = 16
      Width = 52
      Height = 13
      Caption = '  Descrição'
    end
    object Label3: TLabel
      Left = 434
      Top = 16
      Width = 75
      Height = 13
      Caption = '  Nome do Form'
    end
    object Label4: TLabel
      Left = 12
      Top = 95
      Width = 64
      Height = 13
      Caption = 'Tipo de Show'
    end
    object Label5: TLabel
      Left = 81
      Top = 95
      Width = 207
      Height = 13
      Caption = ' Titulo da Aplicação para Menu e Seqüência'
    end
    object Label6: TLabel
      Left = 403
      Top = 96
      Width = 96
      Height = 13
      Caption = '  Icone da Aplicação'
    end
    object Label11: TLabel
      Left = 133
      Top = 55
      Width = 53
      Height = 13
      Caption = '  Categoria'
    end
    object Label13: TLabel
      Left = 10
      Top = 55
      Width = 95
      Height = 13
      Caption = ' Grupo da Aplicação'
    end
    object LMDSimpleLabel1: TLMDSimpleLabel
      Left = 417
      Top = 68
      Width = 128
      Height = 28
      Alignment = agTopCenter
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MultiLine = True
      ParentColor = False
      ParentFont = False
      Caption = 'Aplicação Gerenciável por uma Aplicação Auxiliar'
      Options = []
    end
    object Label12: TLabel
      Left = 286
      Top = 55
      Width = 116
      Height = 13
      Caption = ' Perfil Base da Aplicação'
    end
    object DED_CNOMEUNIT: TDBEdit
      Left = 9
      Top = 30
      Width = 73
      Height = 21
      DataField = 'CNOMEUNIT'
      DataSource = DTM_A003UTCO.DTS_041
      TabOrder = 0
    end
    object DED_CDESCAPLI: TDBEdit
      Left = 82
      Top = 30
      Width = 350
      Height = 21
      DataField = 'CDESCAPLI'
      DataSource = DTM_A003UTCO.DTS_041
      TabOrder = 1
    end
    object DED_CCATEGORIA: TDBEdit
      Left = 132
      Top = 70
      Width = 153
      Height = 21
      DataField = 'CCATEGORIA'
      DataSource = DTM_A003UTCO.DTS_041
      TabOrder = 4
    end
    object DED_CTITAPLIC: TDBEdit
      Left = 78
      Top = 110
      Width = 280
      Height = 21
      DataField = 'CTITAPLIC'
      DataSource = DTM_A003UTCO.DTS_041
      TabOrder = 8
    end
    object DBC_CNOMEBMP: TRxDBComboEdit
      Left = 401
      Top = 110
      Width = 160
      Height = 21
      DataField = 'CNOMEBMP'
      DataSource = DTM_A003UTCO.DTS_041
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77007777777777777700700000000777770000B7B7B7B07777000B0B7B7B7B07
        77000BB0B7B7B7B077000FBB0000000077000BFB0B0B0B0777000FBFBFBFB007
        77000BFBFBF00077770070BFBF07777777007800008777777700777777777777
        77007777777777777700}
      NumGlyphs = 1
      TabOrder = 10
      OnButtonClick = DBC_CNOMEBMPButtonClick
    end
    object DBC_CSHOWFORM: TRxDBComboBox
      Left = 9
      Top = 110
      Width = 69
      Height = 21
      Style = csDropDownList
      DataField = 'CSHOWFORM'
      DataSource = DTM_A003UTCO.DTS_041
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Display'
        'Modal'
        'Normal')
      TabOrder = 7
      Values.Strings = (
        'D'
        'M'
        'N')
    end
    object DED_CNOMEFORM: TDBEdit
      Left = 432
      Top = 30
      Width = 129
      Height = 21
      DataField = 'CNOMEFORM'
      DataSource = DTM_A003UTCO.DTS_041
      TabOrder = 2
    end
    object DBC_NIDTBL_G: TRxDBLookupCombo
      Left = 9
      Top = 70
      Width = 123
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBL_G'
      DataSource = DTM_A003UTCO.DTS_041
      LookupField = 'NIDTBL_G'
      LookupDisplay = 'CNOMEGRUPO'
      LookupSource = DTM_A003UTCO.DTS_046
      TabOrder = 3
      OnKeyDown = DBC_NIDTBL_GKeyDown
    end
    object SPE_CSEQUENCIA: TRxSpinEdit
      Left = 358
      Top = 110
      Width = 43
      Height = 21
      Hint = 'Sequencia do Menu'
      Alignment = taCenter
      Decimal = 0
      EditorEnabled = False
      MaxValue = 99
      AutoSelect = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnBottomClick = SPE_CSEQUENCIABottomClick
      OnExit = SPE_CSEQUENCIAExit
    end
    object DBC_NAPLICAUX: TDBCheckBox
      Left = 544
      Top = 74
      Width = 15
      Height = 17
      DataField = 'NAPLICAUX'
      DataSource = DTM_A003UTCO.DTS_041
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      ValueChecked = 'Sim'
      ValueUnchecked = 'Não'
    end
    object DBL_NIDTBL_PB: TRxDBLookupCombo
      Left = 285
      Top = 70
      Width = 123
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBL_PB'
      DataSource = DTM_A003UTCO.DTS_041
      LookupField = 'NIDTBL_PB'
      LookupDisplay = 'CNOMEPER'
      LookupSource = DTM_A003UTCO.DTS_056
      TabOrder = 5
    end
  end
  object PageControlEx1: TPageControlEx
    Left = 9
    Top = 153
    Width = 568
    Height = 334
    ActivePage = TabSheet1
    Images = FRM_TELAPRI.Img_IconesDoSistema
    TabOrder = 2
    OnChange = PageControlEx1Change
    object TabSheet1: TTabSheet
      Caption = 'Objetos'
      ImageIndex = 13
      object LMDGroupBox2: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 313
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        CaptionParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        object LMDPanelFill5: TLMDPanelFill
          Left = 8
          Top = 5
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Objetos da Aplicação'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          FillObject.Alignment = agCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 0
          object Btn_Retroceder4: TSpeedButton
            Left = 495
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777077777700077777007777770007777060777777000777066000007
              7000770666666607700070666666660770007706666666077000777066000007
              7000777706077777700077777007777770007777770777777000777777777777
              7000}
            OnClick = Btn_Retroceder4Click
          end
          object Btn_Avancar4: TSpeedButton
            Left = 523
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777077777700077777700777770007777770607777000770000066077
              7000770666666607700077066666666070007706666666077000770000066077
              7000777777060777700077777700777770007777770777777000777777777777
              7000}
            OnClick = Btn_Avancar4Click
          end
          object BTN_EXCLUIR2: TSpeedButton
            Left = 463
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              EE000000424DEE000000000000007600000028000000100000000F0000000100
              0400000000007800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
              000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
              00F088888880FFFFFFF088888884444444448888888444444444888888888888
              888800000000888888880BBBBBB0888888880BBBBBB088888888000000008888
              888888888888888888888888888888888888}
            OnClick = BTN_EXCLUIR2Click
          end
          object BTN_ADICIONA: TSpeedButton
            Left = 431
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              EE000000424DEE000000000000007600000028000000100000000F0000000100
              04000000000078000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
              000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
              00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
              8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
              8888880BB088888888888800008888888888}
            OnClick = BTN_ADICIONAClick
          end
        end
        object DBG_APLICOBJETOS: TDBGrid
          Left = 9
          Top = 27
          Width = 551
          Height = 278
          DataSource = DTM_A003UTCO.DTS_042
          FixedColor = clSilver
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBG_APLICOBJETOSCellClick
          OnColEnter = DBG_APLICOBJETOSColEnter
          OnDrawColumnCell = DBG_APLICOBJETOSDrawColumnCell
          OnKeyDown = DBG_APLICOBJETOSKeyDown
          OnKeyPress = DBG_APLICOBJETOSKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CNOMEOBJ'
              ReadOnly = True
              Title.Caption = 'Nome do Objeto'
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHINT'
              ReadOnly = True
              Title.Caption = 'Hint'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CFUNCAO'
              Title.Caption = 'Função'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LREQUERIDO'
              Title.Caption = 'Requerido'
              Width = 52
              Visible = True
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Querys'
      ImageIndex = 38
      object LMDGroupBox3: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 313
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
        CaptionFont.Charset = ANSI_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = [fsBold]
        CaptionParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 10
          Top = 27
          Width = 69
          Height = 13
          Caption = '  Nome da Qry'
        end
        object Label8: TLabel
          Left = 10
          Top = 70
          Width = 38
          Height = 13
          Caption = '  Ordem'
        end
        object Label9: TLabel
          Left = 10
          Top = 111
          Width = 38
          Height = 13
          Caption = '  Tabela'
        end
        object Label10: TLabel
          Left = 307
          Top = 27
          Width = 60
          Height = 13
          Caption = '  Código Sql:'
        end
        object DBGrid3: TDBGrid
          Left = 9
          Top = 181
          Width = 551
          Height = 129
          DataSource = DTM_A003UTCO.DTS_045
          FixedColor = clSilver
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CTBLCOMPO'
              Title.Caption = 'Nome Qry'
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CORDER'
              Title.Caption = 'Ordem'
              Width = 305
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIDTBL_T'
              Title.Caption = 'Tabela'
              Width = 88
              Visible = True
            end>
        end
        object LMDPanelFill2: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Cadastro de Querys de Aplicação'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          FillObject.Alignment = agCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 5
          object BTN_RETROCEDER1: TSpeedButton
            Left = 495
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777077777700077777007777770007777060777777000777066000007
              7000770666666607700070666666660770007706666666077000777066000007
              7000777706077777700077777007777770007777770777777000777777777777
              7000}
            OnClick = BTN_RETROCEDER1Click
          end
          object BTN_AVANCAR1: TSpeedButton
            Left = 523
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777777077777700077777700777770007777770607777000770000066077
              7000770666666607700077066666666070007706666666077000770000066077
              7000777777060777700077777700777770007777770777777000777777777777
              7000}
            OnClick = BTN_AVANCAR1Click
          end
          object Btn_Cancelar1: TSpeedButton
            Left = 427
            Top = 1
            Width = 28
            Height = 18
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = Btn_Cancelar1Click
          end
          object Btn_Excluir1: TSpeedButton
            Left = 461
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              77777000000077777000000077777000000077770F0F0F0F0777700000007777
              0F0F0F0F07777000000077770F0F0F0F07777000000077770F0F0F0F07777000
              000077770F0F0F0F07777000000077770F0F0F0F07777000000077770F0F0F0F
              07777000000077770F0F0F0F07777000000077770F0F0F0F0777700000007777
              0F0F0F0F0777700000007770000000000077700000007770FFFFFFFFF0777000
              0000777700000000077770000000777777700077777770000000777777777777
              777770000000}
            OnClick = Btn_Excluir1Click
          end
          object Btn_Gravar1: TSpeedButton
            Left = 393
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
              007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
              00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
              0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
              007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
              00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
              0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
              007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
              7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
              0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
              007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
              00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
              007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
              00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
              007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
              00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
            OnClick = Btn_Gravar1Click
          end
          object Btn_Incluir1: TSpeedButton
            Left = 330
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              EE000000424DEE000000000000007600000028000000100000000F0000000100
              04000000000078000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
              000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
              00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
              8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
              8888880BB088888888888800008888888888}
            OnClick = Btn_Incluir1Click
          end
          object Btn_Alterar1: TSpeedButton
            Left = 358
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            NumGlyphs = 2
            OnClick = Btn_Alterar1Click
          end
        end
        object DED_CTBLCOMPO: TDBEdit
          Left = 9
          Top = 41
          Width = 289
          Height = 21
          DataField = 'CTBLCOMPO'
          DataSource = DTM_A003UTCO.DTS_045
          TabOrder = 0
        end
        object DED_CORDER: TDBEdit
          Left = 9
          Top = 84
          Width = 289
          Height = 21
          DataField = 'CORDER'
          DataSource = DTM_A003UTCO.DTS_045
          TabOrder = 1
        end
        object DBL_NIDTBL_T: TRxDBLookupCombo
          Left = 9
          Top = 125
          Width = 289
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBL_T'
          DataSource = DTM_A003UTCO.DTS_045
          LookupField = 'NIDTBL_T'
          LookupDisplay = 'CDESCRTBL'
          LookupSource = DTM_A003UTCO.DTS_043
          TabOrder = 2
        end
        object DBM_MSELECT: TDBMemo
          Left = 306
          Top = 41
          Width = 255
          Height = 105
          DataField = 'MSELECT'
          DataSource = DTM_A003UTCO.DTS_045
          TabOrder = 3
        end
        object LMDPanelFill3: TLMDPanelFill
          Left = 8
          Top = 161
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Tabelas da Aplicação'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          FillObject.Alignment = agCenter
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.ico'
    Filter = 'ico(*.ico)|*.ico'
    Left = 226
    Top = 288
  end
  object ImageList1: TImageList
    Left = 259
    Top = 288
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C31000000008C31000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004200420000000000000000000000000000000000000000
      000000008C31A029C056A02900008C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000420000E07F0042000000000000000000000000000000000000
      00008C31A029A0290042606BA0298C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000420000E07F0000E07F000000000000000000000000000000000000
      8C31A029A02900420042004200428C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000420000E07F0000E07F000000000000000000000000000000008C310000
      A029A02900420042004200420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      00420000E07F0000E07F000000000000000000008C31000000000000A029C056
      A0290042004200420042E71C0000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000420042004200420000
      0000E07F0000E07F000000000000000000008C31A029C056C056C056A0290000
      0042004200420042EF3DDE7BDE7BEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000420000E07F0000E07F0042
      E07F0000E07F000000000000000000000000A029CA566A6B6A6B6A6B606B606B
      004200420042E71C000000000000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07F0042E07F0000
      0042E07F00000000000000000000000000008C316A6BE07F606B606B6A6BCA56
      606B0042EF3DDE7BDE7BDE7BDE7BEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07FE07F0042E07F0042E07F
      E07F000000000000000000000000000000000042E07F606B606B606B606BE07F
      00420000EF3D0000000000000000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010421042004200000042E07F0042
      E07F0000000000000000000000000000000010424A56A029A029606B606B606B
      6A6B8C31EF3DDE7BDE7BDE7BDE7BEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000042E07F
      0042E07F00000000000000000000000000008C318C318C318C31A029606B606B
      606B0042EF3D0000000000000000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E07F104200000042E07F0042
      E07F000000000000000000000000000000000042CA6AE71CA029606B606B606B
      6A6B8C310A001F001F001F001F000A0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E07FE07F1042E07FE07F
      0000000000000000000000000000000000008C310042E07FCA6ACA6AE07F6A6B
      8C31000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000104200000000
      00000000000000000000000000000000000000008C310000E71CE71C00000000
      8C31000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008A18000000000000000000000000F75EB5561042AD35AD35AD35AD35
      AD35AD35AD35AD35AD35CE39EF3D945218630000BE7DD9701861B8607C65956C
      B36C165D9649964E7D6F00000000000000000000000000000000D0395C677E6B
      7E6B7D6B964E0000000000000000000000000000000000000000000000000000
      0000793A0F19000000000000000000000000CA564A5600420042004200420042
      00420042004200420042AA41AD353146734E00001C5DBD603D617F7DDF719E56
      BE6DDA68B870B15CDB7200000000000000000000000000007E6BDE7BBD779B73
      BD7BDD7BDD7BBE73F139E71C0000000000000000000000000000000000000000
      B9461D4F5025000000000000000000000000606BE07FE07FE07FE07FE07F606B
      606BE07FE07FE07FE07F607FAA41CE39524A00003E5D3F79DF751F665D6AFF77
      5F769F697F695A551F77000000000000000000000000DE77DE7BBA4A77159719
      D82577111932DD7BDE7B974EAD3500000000000000000000000090359129F431
      98421D4F363669108A180000000000000000606BE07FE07FE07FE07FE07FA029
      2029606BE07FE07FE07FE07F00421042D65A00001F6A7D5D5F769F72BF7FDD7F
      9F6A3F6ABF65FE5D3F6F00000000000000000000BE73DE7FB821981999151863
      FF7F981998197715BD77DE7B2A210000000000000000764A773E9846BA46FB4A
      3D535F57FB4A9846573A69100000000000006A6BE07FE07FE07FE07FE07FE71C
      A514606BE07FE07FE07F606BAD359452186300000000BE623F6E5C72FC725C63
      DF725F7ABE751A72000000000000000000001A5BFE7F19329819991999191932
      BB469919991998197715DE7B7E6B4208000000007746B84A1B537F5F3E57FA25
      192A7C36192A5F5BFC4E98460E1D00000000CA56606BE07FE07FE07FE07FC056
      C06AE07FE07FE07FE07F4A56EF3DF75E1863000000009A7EF45C65340348CB40
      F2707661BD620000000000000000000000009E6FDE7B7815B91999199919593E
      1D579915991999199819FB52DE7B640C00007646B84E5D5F9F639F639F63583A
      B200F008BF677F5F7F5F1D53B84669100000F75ECA6AE07FE07FE07FE07F0042
      C056E07FE07FE07F606BAA41945218631863000050464008030000582078015C
      402CCA300000000000000000000000000000FF7BFC52B919B91999199919B852
      FF7F7915991999199919D825FE7F964A0000974E3C5B9F6B9F679F679F67783E
      D30054159F679F639F639F631C5798428A181863CA56606BE07FE07F606B8014
      A029E07FE07FE07F4A561042F75E18631863965600080004001CC274E36CE06C
      C370002C0000000000000000000000000000FF7F9B42BA1DB91999199919B81D
      DE7FDF7799159919B919B91DFF7FB85200001A5B9F6BBF6BBF6BBF6BBF6B783E
      D30074199F679F679F679F637F63FA52EC241863F75ECA6AE07FE07FC0562104
      8014606BE07F606BAA419452186318631863C808210000006020407D607D617D
      C070A048CE45000000000000000000000000FF7FDC4EDB21BA1D991999199919
      B81DFF7F9E6B9919BA1DD921FF7FB75200003A5FBF6FBF6FBF6FBF6FBF6F7842
      D3007419BF6B9F6B9F679F679F673B5BEC2418631863CA56606BE07F00420000
      8014C06AE07FCA56EF3DF75E1863186318636404000400008020A07E407E207E
      007E405DAA45000000000000000000000000BF73FF7F1D2ADB1D593AFC529915
      99193C63FF7F9A19DB21BC46FF7F4B2500003B63DF73DF73DF73DF73DF73951D
      D3007419DF6FBF6BBF6BBF6BBF6F3B5B0D2918631863F75E6A6BE07F00420000
      8014C06A606BAA41734E1863186318631863AB31000845102110C57E057F227F
      E77E0049915E0000000000000000000000007E6BFF7F9F3A5E2E7846FF7FDC4E
      FA29FF7FBD77DB21DC21FF7FBE73000000005B6BDF77DF77DF77DF771B5BF431
      B32DF431DF73BF6FBF6FBF6FDF6F5C630000186318631863CA56606B606BA041
      0042606B4A56CE39F75E186318631863186300004000A50CC7186030C0344055
      8155A02C00000000000000000000000000000000FF7FFF7FDF429F365B67FE7F
      FE7FDE7F7E3A5F329F6BFF7F974E000000007C6BBD73FF7FFF7BFF7BDF77FF7B
      7E63FF77DF77DF73DF73FF7F9E6B35420000186318631863F75E6A6BE07FE07F
      E07F606B6B2DB5561863186318631863186300008E31A4104925F351B141A42C
      000C8D39000000000000000000000000000000001A5BFF7FFF7FBF635F573F4B
      FF46FF42FF46FF7FFF7F7E6B00000000000000009C6FDE77FF7FFF7BFF7B5119
      9815951DFF7BFF7BFF7FBE737D67000000001863186318631863CA56606BE07F
      E07F4A561042F75E1863186318631863186300000000AF39E8143A63FB52A714
      091D00000000000000000000000000000000000000001A5BDF7BFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F7D6B0000000000000000000000009C73DE7BFF7FFF7F974E
      2A00D952FF7FFF7FDE775C670000000000001863186318631863F75E6A6BE07F
      606B4A42B556186318631863186318631863000000000000000026216B250F4E
      00000000000000000000000000000000000000000000000000007E6BBE73FF7F
      FF7FBF777D6B000000000000000000000000000000000000DE77BD77DE7BFF7F
      FF7FFF7FDE7BBE73DE77000000000000000018631863186318631863D556C056
      CA56945218631863186318631863186318630000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005800580000000000000000000000000000
      00000000000000000000000000000000000000007F35DF083F015F057F0D3F11
      3F05FF04DF10BF3D0000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000005800580000000000000000
      0000000000000000000000000058005800000000000000000000000000000000
      FE7B000000000000000000000000000000000000DF001F027F02DF0A3F029F01
      9F025F02BF01BF00000000000000000000000000B3560000BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77FF7F000000000000005800580058000000000000
      0000000000000000000000580058000000000000000000000000000000002216
      C3113863000000000000000000000000000000007F01DF02DF06FF16DF2E1F47
      FF0ADF02BF023F01000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000005800580058005800000000
      0000000000000000005800580000000000000000000000000000000026264002
      00028B360000000000000000000000000000000000001F023F1B9F163F735F7B
      1F1B1F0FFF01DF2D000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F00000000000000000068005C005800580000
      0000000000000058005800000000000000000000000000000000D14E021A0002
      20022012000000000000000000000000000000000000FF113F13FF4A5F7F5F77
      5F2BDF0ABF0D0000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000005800580058
      000000580058005800000000000000000000000000000000D14E021A00020000
      A82EC001AE4200000000000000000000000000000000375B9F052766076E8B52
      3F06FF117F4E0000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000580060
      0060006400580000000000000000000000000000000000008419C21500000000
      00002416C51D000000000000000000000000000000000000A420E07DC07D8071
      9F41000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000060
      0060006C00000000000000000000000000000000000000000000000000000000
      000000002002882A00000000000000000000000000006B312059407E407E407E
      017AD66600000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000580068
      0064006C00740000000000000000000000000000000000000000000000000000
      000000002216E319314F0000000000000000000000002441207EA07EA07EA07E
      607E8C6E00000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F0000000000000000000000000070006C0068
      0000000000700074000000000000000000000000000000000000000000000000
      0000000000002216E319314F000000000000000000000045C07EE17E027F027F
      C07E696E00000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F00000000000000000000007C006C00740000
      000000000000007C007800000000000000000000000000000000000000000000
      00000000000000002216E319314F00000000000000006055417F447F437F437F
      437F896E00000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000780078007C00000000
      0000000000000000007800780000000000000000000000000000000000000000
      000000000000000000002216E319314F0000000000004049407A407A40762072
      4272ED6E00000000000000000000000000000000B35600000000000000000000
      00000000000000000000BB77FF7F000000000000007800780078000000000000
      0000000000000000000000000078000000000000000000000000000000000000
      000000000000000000000000A2150316000000000000C84D40590E7FA67A2172
      805DD36200000000000000000000000000000000B356B356B356B356B356B356
      B356B356B356B356B356B3560000000000000078007800780000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000021120000000000000000C15DD47F917FA57A
      6A66000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000078007800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E111000000000000586F636EA772AB6A
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FFE3FFC300000000
      FFC1FF8100000000FF81FF0100000000FF01FE0100000000FC01F80000000000
      C007800400000000800F000000000000281F001C00000000423F000000000000
      003F003C0000000000BF000000000000503F003C0000000000BF000000000000
      817F000000000000C0FF80FF00000000FFFFFFFFFFBF0000800FF01FFF3F0000
      800FE007FE3F0000800FC003F00F0000800F8003C0070000C01F000180030000
      C03F000100010000807F000100000000007F000100000000003F000100000000
      003F000100000000003F000300010000807F800300010000807F800780030000
      C0FFC00FC0070000F1FFF03FE00F0000FFFFFFFFFFFFFFFFFFFFFFFCFFFF801F
      C0039FF9FEFF801F80038FF3FC7F801F800387E7F87FC01F8003C3CFF07FC03F
      8003F11FE23FC03F8003F83FE73FE0FF8003FC7FFF9FC07F8003F83FFF8FC07F
      8003F19FFFC7C07F8003E3CFFFE3C07F8003C7E7FFF1C07F80038FFBFFF9C07F
      80071FFFFFFDE0FFFFFF3FFFFFFEE1FF00000000000000000000000000000000
      000000000000}
  end
end
