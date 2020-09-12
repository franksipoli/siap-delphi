object FRM_A001ADAT: TFRM_A001ADAT
  Left = 107
  Top = 30
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Atos do Poder Executivo Municipal'
  ClientHeight = 496
  ClientWidth = 622
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008888
    8444844488888888718710888888888884448444888888887187188888888888
    8444844488888888018018888888888884448444888888881181188888888888
    8444844480088888118118888888888884448444800888887187188108888888
    8444844480088888007008810888888884448444800888874444478108888888
    8444844480088887444447810888888187447444800888174444478108888811
    74444444701881174444407108888888744444447117887CCCCCC07001888844
    744444447878800CCC4CC078188888447444444474488CC4CCCCC40088888844
    8444444474488CC4CC4CC4C0888888447444544484488CC4CCCCC4C088888844
    4447574474488CC4CC0CC4C0888888744448584444488CC4CC0CCC0088888884
    444F5F4444788CC4C080CC0788888884444F5F4444888CCCC7F70C0888888884
    444F5F4444888CCC0FCF0C0888888884444F5F44478887CC0FCF0C0888888888
    448FFF447888887C0C0C00888888888888880888888888888010888888888888
    8880108888888887011107888888888888711178888888800111008888888888
    8801110888888888001008888888888888000008888888880000088888888888
    8870007888888888800088888888888888870788888888888777888888888888
    8888888888888888888888888888888888888888888888888888888888880000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 584
    Top = 0
    Width = 38
    Height = 496
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object BTN_Alterar: TSpeedButton
      Left = 1
      Top = 130
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_AlterarClick
    end
    object BTN_Cancelar: TSpeedButton
      Left = 1
      Top = 190
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_CancelarClick
    end
    object BTN_LOCALIZAR: TSpeedButton
      Left = 1
      Top = 9
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_LOCALIZARClick
    end
    object BTN_IMPRIMIR: TSpeedButton
      Left = 1
      Top = 250
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_IMPRIMIRClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 281
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Sair'
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
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = BTN_SAIRClick
    end
    object BTN_AVANCAR: TSpeedButton
      Left = 1
      Top = 39
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_AVANCARClick
    end
    object BTN_RETROCEDER: TSpeedButton
      Left = 1
      Top = 69
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_RETROCEDERClick
    end
    object BTN_Excluir: TSpeedButton
      Left = 1
      Top = 220
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_ExcluirClick
    end
    object BTN_Gravar: TSpeedButton
      Left = 1
      Top = 160
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Layout = blGlyphTop
      Margin = 2
      OnClick = BTN_GravarClick
    end
    object SpeedButton10: TSpeedButton
      Left = 1
      Top = 340
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Ficha Funcional'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object SpeedButton11: TSpeedButton
      Left = 1
      Top = 310
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grupo Familiar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      Visible = False
    end
    object BTN_Incluir: TSpeedButton
      Left = 1
      Top = 99
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_IncluirClick
    end
    object SpeedButton13: TSpeedButton
      Left = 1
      Top = 429
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      Visible = False
    end
    object SpeedButton14: TSpeedButton
      Left = 1
      Top = 369
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton15: TSpeedButton
      Left = 1
      Top = 399
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      Visible = False
    end
    object SpeedButton5: TSpeedButton
      Left = 1
      Top = 459
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 245
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Identificação do Ato  '
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
    object Label9: TLabel
      Left = 151
      Top = 14
      Width = 53
      Height = 13
      Caption = '  Nº do Ato'
    end
    object Label17: TLabel
      Left = 11
      Top = 14
      Width = 61
      Height = 13
      Caption = '  Tipo do Ato'
    end
    object Label6: TLabel
      Left = 248
      Top = 14
      Width = 68
      Height = 13
      Caption = '  Data Criação'
    end
    object Label8: TLabel
      Left = 11
      Top = 54
      Width = 40
      Height = 13
      Caption = '  Súmula'
    end
    object Label10: TLabel
      Left = 11
      Top = 115
      Width = 430
      Height = 13
      Caption = 
        '  O Prefeito Municipal de Guaratuba, Estado do Paraná, no uso de' +
        ' suas atribuições legais,'
    end
    object Label11: TLabel
      Left = 11
      Top = 199
      Width = 44
      Height = 13
      Caption = '  Resolve'
    end
    object Label12: TLabel
      Left = 445
      Top = 199
      Width = 70
      Height = 13
      Caption = '  Dt Publicação'
    end
    object Label13: TLabel
      Left = 106
      Top = 199
      Width = 77
      Height = 13
      Caption = '  Efeitos a partir'
    end
    object Label20: TLabel
      Left = 191
      Top = 199
      Width = 107
      Height = 13
      Caption = '  Veículo de Publicação'
    end
    object Label1: TLabel
      Left = 401
      Top = 199
      Width = 37
      Height = 13
      Caption = '  Edição'
    end
    object Label2: TLabel
      Left = 531
      Top = 199
      Width = 18
      Height = 13
      Caption = '  Pg'
    end
    object Label3: TLabel
      Left = 334
      Top = 14
      Width = 88
      Height = 13
      Caption = '  Nome do Arquivo'
    end
    object DBE_cNroAto: TDBEdit
      Left = 149
      Top = 28
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'CNROATO'
      DataSource = DTM_A001ADAT.DTS_069
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBD_dDtCriacao: TDBDateEdit
      Left = 246
      Top = 28
      Width = 85
      Height = 21
      DataField = 'DDTCRIACAO'
      DataSource = DTM_A001ADAT.DTS_069
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 2
    end
    object DBM_cSumula: TDBMemo
      Left = 9
      Top = 68
      Width = 549
      Height = 42
      DataField = 'CSUMULA'
      DataSource = DTM_A001ADAT.DTS_069
      TabOrder = 4
    end
    object DBM_CATRIBU: TDBMemo
      Left = 9
      Top = 129
      Width = 549
      Height = 65
      DataField = 'CATRIBUI'
      DataSource = DTM_A001ADAT.DTS_069
      TabOrder = 5
    end
    object DBD_dDtPublic: TDBDateEdit
      Left = 443
      Top = 213
      Width = 85
      Height = 21
      DataField = 'DDTPUBLIC'
      DataSource = DTM_A001ADAT.DTS_069
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 10
    end
    object DBD_dDtEfeitos: TDBDateEdit
      Left = 104
      Top = 213
      Width = 85
      Height = 21
      DataField = 'DDTEFEITOS'
      DataSource = DTM_A001ADAT.DTS_069
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 7
    end
    object DBL_nIdTbxTat: TRxDBLookupCombo
      Left = 9
      Top = 28
      Width = 140
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXTAT'
      DataSource = DTM_A001ADAT.DTS_069
      LookupField = 'NIDTBXTAT'
      LookupDisplay = 'CDESCRITAT'
      LookupSource = DTM_A001ADAT.DTS_071
      TabOrder = 0
    end
    object DBL_nIdTbxRsv: TRxDBLookupCombo
      Left = 9
      Top = 213
      Width = 95
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXRSV'
      DataSource = DTM_A001ADAT.DTS_069
      LookupField = 'NIDTBXRSV'
      LookupDisplay = 'CDESCRIRSV'
      LookupSource = DTM_A001ADAT.DTS_070
      TabOrder = 6
    end
    object DBL_nIdTbxVpb: TRxDBLookupCombo
      Left = 189
      Top = 213
      Width = 209
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXVPB'
      DataSource = DTM_A001ADAT.DTS_069
      LookupField = 'NIDTBXVPB'
      LookupDisplay = 'CDESCRIVPB'
      LookupSource = DTM_A001ADAT.DTS_072
      TabOrder = 8
    end
    object DBE_nEdicao: TDBEdit
      Left = 398
      Top = 213
      Width = 45
      Height = 21
      DataField = 'NEDICAO'
      DataSource = DTM_A001ADAT.DTS_069
      TabOrder = 9
    end
    object DBE_nPagEdicao: TDBEdit
      Left = 528
      Top = 213
      Width = 30
      Height = 21
      DataField = 'NPAGEDICAO'
      DataSource = DTM_A001ADAT.DTS_069
      TabOrder = 11
    end
    object DBE_cNomeArq: TRxDBComboEdit
      Left = 331
      Top = 28
      Width = 227
      Height = 21
      DataField = 'CNOMEARQ'
      DataSource = DTM_A001ADAT.DTS_069
      Glyph.Data = {
        D6000000424DD60000000000000076000000280000000E0000000C0000000100
        0400000000006000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D0000000000D
        DD00D00777777770DD00D0F0777777770D00D0FF077777777000D0FFF0000000
        0000D0FFFFFFFF0DDD00D0FFF000000DDD00DD000DDDDDDDDD00DDDDDDDDDD00
        0D00DDDDDDDDDDD00D00DDDDDD0DDD0D0D00DDDDDDD000DDDD00}
      NumGlyphs = 1
      TabOrder = 3
      OnButtonClick = DBE_cNomeArqButtonClick
    end
  end
  object PGC_MvtAto: TPageControlEx
    Left = 10
    Top = 267
    Width = 568
    Height = 219
    Cursor = crHandPoint
    ActivePage = TBS_Concessao
    HotTrack = True
    Images = IML_MvtAto
    TabOrder = 2
    object TBS_Concessao: TTabSheet
      Caption = 'Concessão'
      object LMDPanelFill1: TLMDPanelFill
        Left = 0
        Top = 0
        Width = 568
        Height = 198
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object LMDPanelFill4: TLMDPanelFill
          Left = 2
          Top = 2
          Width = 564
          Height = 17
          UseDockManager = False
          Align = alTop
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Lançamentos de Concessão'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = clWhite
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 0
          object BTN_PrimeiroReg: TSpeedButton
            Left = 466
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Primeiro Registro'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              04000000000068000000C40E0000C40E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777770770777700077770070077770007770600607777000770660660000
              0000706606666666000006606666666600007066066666660000770660660000
              0000777060060777700077770070077770007777707707777000777777777777
              7000}
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_Retroceder2: TSpeedButton
            Left = 486
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Anterior'
            Enabled = False
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
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_Avancar2: TSpeedButton
            Left = 526
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Próximo'
            Enabled = False
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
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_UltimoReg: TSpeedButton
            Left = 546
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Último Registro'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777707707777700077770070077770007777060060777000000006606607
              7000066666660660700006666666606600000666666606607000000006606607
              7000777706006077700077770070077770007777077077777000777777777777
              7000}
            Layout = blGlyphBottom
            Margin = 0
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_DetCcs: TSpeedButton
            Left = 506
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Detalhes da Movimentação'
            Enabled = False
            Flat = True
            Glyph.Data = {
              D6020000424DD6020000000000003600000028000000100000000E0000000100
              180000000000A0020000C40E0000C40E0000000000000000000000FF0000FF00
              007F00403F00747B60BFBFBFC7CFC7979F8F2E7F2C00FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF00000000800000808080DFDFDFC0C0C0808080FF
              FFFF8F8F8F00000000FF0000FF0000FF0000FF0000FF0000FF00007F00800000
              808080C0C0C0DFDFDFFFFFFFFFFFFF808000DFDFDF00000000000000FF0000FF
              0000FF0000FF0000FF00485720A0A0A0DFDFDFFFFFFFDFDFDFC0C0C0BFBFBFDF
              DFDFDFDFDF00000000FF0000FF0000FF0000FF0000FF0000FF00687760FFFFFF
              FFFFFFFFFFFFDFDFDFFFFFFFFFFFFFC0C0C06F6F5F00FF0000FF000000000000
              0000000000FF0000FF00909090C0C0C0FFFFFFFFFFFF808080C0C0C0FFFFFFC0
              C0C040604000FF00000000000000800000800000000000000000CFCFCFC0C0C0
              808080C0C0C0BF7FBF800080000000000000A0A0A00000008080808080800000
              00800000FF000000800025A5255FDF5F7F7F7FB7B7B753535320402060806090
              6090BFA7BFEFEFEF7F7F7F7F7F7F4040404000003F0000009F0000FF0000FF00
              00FF0000000000800000FF0000FF0000800070307000000000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0020102000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF00209F2080008000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000DF0080008000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000800080008000000000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000800080008000800000FF0000FF0000FF00}
            Layout = blGlyphBottom
            Margin = 0
            ParentShowHint = False
            ShowHint = True
          end
        end
        object DBG_Ccs: TDBGrid
          Left = 2
          Top = 19
          Width = 564
          Height = 177
          Align = alClient
          Color = 14281964
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Title.Caption = ' Grupo de Movimento'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = ' Tipo de Movimento'
              Width = 353
              Visible = True
            end>
        end
      end
    end
    object TBS_Revogacao: TTabSheet
      Caption = 'Revogação'
      ImageIndex = 1
      object LMDPanelFill3: TLMDPanelFill
        Left = 0
        Top = 0
        Width = 568
        Height = 198
        UseDockManager = False
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object LMDPanelFill5: TLMDPanelFill
          Left = 2
          Top = 2
          Width = 564
          Height = 17
          UseDockManager = False
          Align = alTop
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Lançamentos de Revogação'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = clWhite
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 0
          object BTN_PrimeiroReg2: TSpeedButton
            Left = 466
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Primeiro Registro'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              04000000000068000000C40E0000C40E00001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777770770777700077770070077770007770600607777000770660660000
              0000706606666666000006606666666600007066066666660000770660660000
              0000777060060777700077770070077770007777707707777000777777777777
              7000}
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_Retroceder3: TSpeedButton
            Left = 486
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Anterior'
            Enabled = False
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
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_Avancar3: TSpeedButton
            Left = 526
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Próximo'
            Enabled = False
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
            Layout = blGlyphBottom
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_UltimoReg2: TSpeedButton
            Left = 546
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Último Registro'
            Enabled = False
            Flat = True
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7000777707707777700077770070077770007777060060777000000006606607
              7000066666660660700006666666606600000666666606607000000006606607
              7000777706006077700077770070077770007777077077777000777777777777
              7000}
            Layout = blGlyphBottom
            Margin = 0
            ParentShowHint = False
            ShowHint = True
          end
          object BTN_DetRvg: TSpeedButton
            Left = 506
            Top = 1
            Width = 19
            Height = 17
            Cursor = crHandPoint
            Hint = 'Detalhes da Movimentação'
            Enabled = False
            Flat = True
            Glyph.Data = {
              D6020000424DD6020000000000003600000028000000100000000E0000000100
              180000000000A0020000C40E0000C40E0000000000000000000000FF0000FF00
              007F00403F00747B60BFBFBFC7CFC7979F8F2E7F2C00FF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF00000000800000808080DFDFDFC0C0C0808080FF
              FFFF8F8F8F00000000FF0000FF0000FF0000FF0000FF0000FF00007F00800000
              808080C0C0C0DFDFDFFFFFFFFFFFFF808000DFDFDF00000000000000FF0000FF
              0000FF0000FF0000FF00485720A0A0A0DFDFDFFFFFFFDFDFDFC0C0C0BFBFBFDF
              DFDFDFDFDF00000000FF0000FF0000FF0000FF0000FF0000FF00687760FFFFFF
              FFFFFFFFFFFFDFDFDFFFFFFFFFFFFFC0C0C06F6F5F00FF0000FF000000000000
              0000000000FF0000FF00909090C0C0C0FFFFFFFFFFFF808080C0C0C0FFFFFFC0
              C0C040604000FF00000000000000800000800000000000000000CFCFCFC0C0C0
              808080C0C0C0BF7FBF800080000000000000A0A0A00000008080808080800000
              00800000FF000000800025A5255FDF5F7F7F7FB7B7B753535320402060806090
              6090BFA7BFEFEFEF7F7F7F7F7F7F4040404000003F0000009F0000FF0000FF00
              00FF0000000000800000FF0000FF0000800070307000000000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0020102000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF00209F2080008000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000DF0080008000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF0000FF0000FF0000FF0000FF0000FF0000FF0000800080008000000000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
              FF0000FF0000FF0000800080008000800000FF0000FF0000FF00}
            Layout = blGlyphBottom
            Margin = 0
            ParentShowHint = False
            ShowHint = True
          end
        end
        object DBG_Rvg: TDBGrid
          Left = 2
          Top = 19
          Width = 564
          Height = 177
          Align = alClient
          Color = 14281964
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Title.Alignment = taCenter
              Title.Caption = 'Tipo de Ato Revogado'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              Title.Alignment = taCenter
              Title.Caption = 'Nº Ato Revogado'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = '  Movimento Revogado'
              Width = 316
              Visible = True
            end>
        end
      end
    end
  end
  object LMDPanelFill2: TLMDPanelFill
    Left = 12
    Top = 249
    Width = 565
    Height = 17
    UseDockManager = False
    Alignment = agTopCenter
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = 'Movimentações do Ato'
    FillObject.Style = sfGradient
    FillObject.Gradient.Color = clWhite
    FillObject.Gradient.ColorCount = 100
    FillObject.Gradient.EndColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FontFX.Style = tdSunken
    ParentFont = False
    TabOrder = 3
  end
  object DelSysMenuItems1: TDelSysMenuItems
    SysMenuItems = [smMove]
    Left = 762
    Top = 1
  end
  object IML_MvtAto: TImageList
    Left = 212
    Top = 153
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF000000000000000000000000000000FF000000
      FF000000FF0000000000000000007F7F7F00000000007F7F7F00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF007F7F7F00000000007F7F7F000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF00000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF000000FF00000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF000000800000000000000080000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000000000000000FF000000
      FF000000FF0000000000000000007F7F7F00000000007F7F7F00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F800FFFF00000000F800FFFF00000000
      2000C631000000000000E223000000000000F007000000000000F88F00000000
      0000FC1F000000000000FE3F000000000000FC1F000000000000F80F00000000
      E000F00700000000F800E22300000000F800C63100000000F801FFFF00000000
      F803FFFF00000000F807FFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    Filter = 'Documentos(*.doc)|*.doc'
    Left = 410
    Top = 60
  end
end
