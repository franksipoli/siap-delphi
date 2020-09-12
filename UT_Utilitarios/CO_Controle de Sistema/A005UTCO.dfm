object FRM_A005UTCO: TFRM_A005UTCO
  Left = 98
  Top = 25
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
  OnCreate = FormCreate
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
    Height = 66
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Tabela  '
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
      Top = 17
      Width = 39
      Height = 13
      Caption = '  Código'
    end
    object Label2: TLabel
      Left = 73
      Top = 17
      Width = 38
      Height = 13
      Caption = '  Tabela'
    end
    object Label3: TLabel
      Left = 358
      Top = 17
      Width = 51
      Height = 13
      Caption = '  Aplicação'
    end
    object Label4: TLabel
      Left = 147
      Top = 17
      Width = 52
      Height = 13
      Caption = '  Descrição'
    end
    object DED_CNOMETBL: TDBEdit
      Left = 71
      Top = 32
      Width = 73
      Height = 21
      DataField = 'CNOMETBL'
      DataSource = DTM_A005UTCO.DTS_043
      TabOrder = 1
      OnExit = DED_CNOMETBLExit
    end
    object DED_CDESCRTBL: TDBEdit
      Left = 145
      Top = 32
      Width = 209
      Height = 21
      DataField = 'CDESCRTBL'
      DataSource = DTM_A005UTCO.DTS_043
      TabOrder = 2
    end
    object LKP_CNOMEFORM: TRxDBLookupCombo
      Left = 355
      Top = 32
      Width = 207
      Height = 21
      DropDownCount = 8
      DataField = 'CNOMEFORM'
      DataSource = DTM_A005UTCO.DTS_043
      LookupField = 'CNOMEFORM'
      LookupDisplay = 'CDESCAPLI'
      LookupSource = DTM_A005UTCO.DTS_041
      TabOrder = 3
    end
    object CBE_NIDTBL_T: TComboEdit
      Left = 9
      Top = 32
      Width = 61
      Height = 21
      Alignment = taRightJustify
      ButtonHint = 'Pesquisar Logradouro'
      CharCase = ecUpperCase
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00BFBFBFBFBFBF00000000000000BFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF0000000000000000
        0000BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF000000
        0000000000000000007F7F7F000000000000BFBFBF00BFBFBF7F7F7F00FFFFFF
        FFFFFFFFFFFFFFFF00FFFFFFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000
        7F7F7FBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFFBFBFBF0000007F000000
        00007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000BFBFBFBFBFBF00BFBF
        BF7F7F7FFFFFFFBFBFBF7F0000FF00007F00000000007F7F7F7F7F7FBFBFBFBF
        BFBF7F7F7FBFBFBF000000BFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F7FFF00
        00FF00007F00000000007F7F7FFFFF00BFBFBFBFBFBF7F7F7FBFBFBF000000BF
        BFBFBFBFBF00BFBFBF7F7F7F00FFFF7F7F00BFBFBF7F7F007F7F000000007F7F
        7FFFFF00FFFF00BFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF00BFBFBF7F7F7F
        FFFFFF7F7F00FFFFFFBFBFBF007F00007F000000007F7F7FBFBFBFBFBFBF7F7F
        7F000000BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F00FFFFFFBFBFBF
        FF00007F7F00BFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBF7F7F7FFFFFFFBFBFBF7F7F00FFFFFF7F7F00007F007F7F00BFBFBF
        FFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFF
        FFFFBFBFBF7F7F007F7F007F7F00BFBFBFFFFFFF00FFFFBFBFBF000000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF
        FFFF00FFFF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F7F7F00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFBFBFBFFFFFFF7F
        7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FF
        FFFFFFFFFFFFFFFFFFFF00FFFFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00}
      MaxLength = 5
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnButtonClick = CBE_NIDTBL_TButtonClick
      OnEnter = CBE_NIDTBL_TEnter
      OnExit = CBE_NIDTBL_TExit
    end
  end
  object PageControlEx1: TPageControlEx
    Left = 9
    Top = 74
    Width = 568
    Height = 413
    Cursor = crHandPoint
    ActivePage = TabSheet1
    Images = FRM_TELAPRI.Img_IconesDoSistema
    TabOrder = 2
    OnChange = PageControlEx1Change
    object TabSheet1: TTabSheet
      Caption = 'Campos da Tabela'
      ImageIndex = 38
      object LMDGroupBox3: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 392
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
        object GRD_CAMPOS: TDBGrid
          Left = 9
          Top = 27
          Width = 552
          Height = 359
          DataSource = DTM_A005UTCO.DTS_047
          FixedColor = clSilver
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NIDTBL_D'
              Title.Caption = 'Cod'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNOMECAMPO'
              Title.Caption = 'Nome'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTIPOCAMPO'
              Title.Caption = 'Tipo'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NTAMANHO'
              Title.Caption = 'Tam'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NDECIMAL'
              Title.Caption = 'Dec'
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTITULO'
              Title.Caption = 'Titulo'
              Width = 250
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NCODTABELA'
              Title.Alignment = taCenter
              Title.Caption = 'Tab'
              Width = 28
              Visible = True
            end>
        end
        object LMDPanelFill2: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 553
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Campos'
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
          TabOrder = 1
          object Btn_Retroceder1: TSpeedButton
            Left = 496
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
            OnClick = Btn_Retroceder1Click
          end
          object Btn_Avancar1: TSpeedButton
            Left = 524
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
            OnClick = Btn_Avancar1Click
          end
          object BTN_ADICIONA: TSpeedButton
            Left = 438
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
          object BTN_EXCLUIR2: TSpeedButton
            Left = 468
            Top = 0
            Width = 26
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
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Montagem Pesquisa'
      ImageIndex = 31
      object GroupBox: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 568
        Height = 392
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
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        object TRV_PESQUISA: TRzCheckTree
          Left = 9
          Top = 24
          Width = 552
          Height = 196
          CascadeChecks = True
          OnStateChange = TRV_PESQUISAStateChange
          Indent = 19
          SelectionPen.Color = clBtnShadow
          TabOrder = 0
        end
        object DBM_CSEQBROWSE: TDBMemo
          Left = 9
          Top = 246
          Width = 552
          Height = 140
          DataField = 'CSEQBROWSE'
          DataSource = DTM_A005UTCO.DTS_043
          TabOrder = 1
          OnKeyPress = DBM_CSEQBROWSEKeyPress
        end
        object LMDPanelFill1: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 553
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Selecione os Campos'
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
          TabOrder = 2
        end
        object LMDPanelFill3: TLMDPanelFill
          Left = 9
          Top = 227
          Width = 553
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Comandos da Pesquisa'
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
          TabOrder = 3
        end
      end
    end
  end
end
