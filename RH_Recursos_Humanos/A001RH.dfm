object FRM_A001RH: TFRM_A001RH
  Left = 80
  Top = 12
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  Pessoa Pública'
  ClientHeight = 496
  ClientWidth = 621
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 584
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Alterar: TSpeedButton
      Left = 1
      Top = 130
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 190
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 1
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 1
      Top = 250
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 370
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
      Top = 40
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 1
      Top = 70
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 1
      Top = 220
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ExcluirClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 1
      Top = 160
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      OnClick = Btn_GravarClick
    end
    object BTN_CADDEP: TSpeedButton
      Left = 1
      Top = 280
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Histórico Funcional'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_CADDEPClick
    end
    object BTN_FICHAFUN: TSpeedButton
      Left = 1
      Top = 310
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_FICHAFUNClick
    end
    object Btn_Incluir: TSpeedButton
      Left = 1
      Top = 100
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object BTN_PGTOEFT: TSpeedButton
      Left = 1
      Top = 340
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_PGTOEFTClick
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 302
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Dados Cadastrais  '
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
    object Label5: TLabel
      Left = 119
      Top = 14
      Width = 278
      Height = 13
      Caption = '  Nome da Pessoa Pública ( Completo e sem abreviaturas )'
    end
    object Label8: TLabel
      Left = 533
      Top = 134
      Width = 22
      Height = 13
      Caption = ' Chg'
    end
    object Label39: TLabel
      Left = 107
      Top = 134
      Width = 75
      Height = 13
      Caption = '  Dt Nascimento'
    end
    object Label10: TLabel
      Left = 345
      Top = 174
      Width = 16
      Height = 13
      Caption = ' UF'
    end
    object Label11: TLabel
      Left = 12
      Top = 174
      Width = 103
      Height = 13
      Caption = '  Local do Nascimento'
    end
    object Label12: TLabel
      Left = 255
      Top = 134
      Width = 72
      Height = 13
      Caption = '  Nacionalidade'
    end
    object Label13: TLabel
      Left = 12
      Top = 254
      Width = 93
      Height = 13
      Caption = '  Grau de Instrução'
    end
    object Label14: TLabel
      Left = 12
      Top = 214
      Width = 61
      Height = 13
      Caption = '  Estado Civil'
    end
    object Label15: TLabel
      Left = 182
      Top = 214
      Width = 91
      Height = 13
      Caption = '  Nome do Cônjuge'
    end
    object Label16: TLabel
      Left = 108
      Top = 54
      Width = 228
      Height = 13
      Caption = '  Nome da Mãe ( Completo e sem abreviaturas )'
    end
    object Label20: TLabel
      Left = 33
      Top = 54
      Width = 40
      Height = 13
      Caption = 'Servidor'
    end
    object Label79: TLabel
      Left = 108
      Top = 94
      Width = 222
      Height = 13
      Caption = '  Nome do Pai ( Completo e sem abreviaturas )'
    end
    object Label9: TLabel
      Left = 190
      Top = 134
      Width = 34
      Height = 13
      Caption = '  Idade'
    end
    object Label35: TLabel
      Left = 368
      Top = 174
      Width = 57
      Height = 13
      Caption = '  Cor / Raça'
    end
    object Label3: TLabel
      Left = 495
      Top = 14
      Width = 27
      Height = 13
      Caption = ' Sexo'
    end
    object Label81: TLabel
      Left = 510
      Top = 174
      Width = 34
      Height = 13
      Caption = '  Defic.'
    end
    object Label24: TLabel
      Left = 12
      Top = 14
      Width = 55
      Height = 13
      Caption = '  Nº do CPF'
    end
    object Label2: TLabel
      Left = 523
      Top = 254
      Width = 34
      Height = 13
      Caption = 'Dep SF'
    end
    object Label22: TLabel
      Left = 486
      Top = 254
      Width = 33
      Height = 13
      Caption = 'Dep IR'
    end
    object Panel1: TPanel
      Left = 9
      Top = 68
      Width = 91
      Height = 101
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object IMG_SERVIDOR: TImage
        Left = 2
        Top = 2
        Width = 87
        Height = 97
        Align = alClient
        PopupMenu = PopupMenu
        Stretch = True
        OnDblClick = DBI_FFOTOSERDblClick
      end
      object STT_Foto: TStaticText
        Left = 31
        Top = 42
        Width = 29
        Height = 17
        Caption = 'Foto'
        TabOrder = 0
      end
    end
    object DED_NANOCHEG: TDBEdit
      Left = 528
      Top = 148
      Width = 30
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'NANOCHEG'
      DataSource = DTM_A001RH.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 9
    end
    object DBD_DDTNASC: TDBDateEdit
      Left = 105
      Top = 148
      Width = 85
      Height = 21
      DataField = 'DDTNASC'
      DataSource = DTM_A001RH.DTS_019
      CheckOnExit = True
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 6
      OnExit = DBD_DDTNASCExit
    end
    object DED_UFLOC: TDBEdit
      Left = 345
      Top = 188
      Width = 20
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14281964
      DataField = 'UFLOC'
      DataSource = DTM_A001RH.DTS_012
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DED_CNOMECONJ: TDBEdit
      Left = 182
      Top = 228
      Width = 376
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMECONJ'
      DataSource = DTM_A001RH.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DED_CNOMEMAE: TDBEdit
      Left = 105
      Top = 68
      Width = 453
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMEMAE'
      DataSource = DTM_A001RH.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DED_CNOMEPAI: TDBEdit
      Left = 105
      Top = 108
      Width = 453
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMEPAI'
      DataSource = DTM_A001RH.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DED_IDADE: TDBEdit
      Left = 190
      Top = 148
      Width = 65
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14281964
      DataField = 'LKP_IDADE'
      DataSource = DTM_A001RH.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBL_NIDTBXCOR: TRxDBLookupCombo
      Left = 365
      Top = 188
      Width = 145
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXCOR'
      DataSource = DTM_A001RH.DTS_019
      LookupField = 'NIDTBXCOR'
      LookupDisplay = 'CNOMECOR'
      LookupSource = DTM_A001RH.DTS_020
      TabOrder = 12
    end
    object DBL_NIDTBXNAC: TRxDBLookupCombo
      Left = 255
      Top = 148
      Width = 273
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXNAC'
      DataSource = DTM_A001RH.DTS_019
      LookupField = 'NIDTBXNAC'
      LookupDisplay = 'CNOMENAC'
      LookupSource = DTM_A001RH.DTS_023
      TabOrder = 8
    end
    object DBL_NIDTBXECI: TRxDBLookupCombo
      Left = 9
      Top = 228
      Width = 173
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXECI'
      DataSource = DTM_A001RH.DTS_019
      LookupField = 'NIDTBXECI'
      LookupDisplay = 'CNOMEECI'
      LookupSource = DTM_A001RH.DTS_021
      TabOrder = 14
      OnChange = DBL_NIDTBXECIChange
    end
    object DBC_CDEFICIENT: TRxDBComboBox
      Left = 510
      Top = 188
      Width = 48
      Height = 21
      Style = csDropDownList
      DataField = 'CDEFICIENT'
      DataSource = DTM_A001RH.DTS_019
      DropDownCount = 2
      EnableValues = False
      ItemHeight = 13
      Items.Strings = (
        'SIM'
        'NAO')
      TabOrder = 13
    end
    object CBE_CNOMELOC: TComboEdit
      Left = 9
      Top = 188
      Width = 336
      Height = 21
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
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnButtonClick = CBE_CNOMELOCButtonClick
      OnChange = CBE_CNOMELOCChange
      OnExit = CBE_CNOMELOCExit
      OnKeyDown = CBE_CNOMELOCKeyDown
    end
    object DBL_NIDTBXGRI: TRxDBLookupCombo
      Left = 9
      Top = 268
      Width = 475
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXGRI'
      DataSource = DTM_A001RH.DTS_019
      LookupField = 'NIDTBXGRI'
      LookupDisplay = 'CNOMEGRI'
      LookupSource = DTM_A001RH.DTS_022
      TabOrder = 16
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 117
      Top = 28
      Width = 376
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 14281964
      DataField = 'CNOMEGRL'
      DataSource = DTM_A001RH.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DED_CSEXO: TDBEdit
      Left = 493
      Top = 28
      Width = 65
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CSEXO'
      DataSource = DTM_A001RH.DTS_019
      TabOrder = 3
    end
    object DED_NDEPSF: TDBEdit
      Left = 521
      Top = 268
      Width = 37
      Height = 21
      Color = clWhite
      DataField = 'NDEPSF'
      DataSource = DTM_A001RH.DTS_029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object DED_NDEPIR: TDBEdit
      Left = 484
      Top = 268
      Width = 37
      Height = 21
      Color = clWhite
      DataField = 'NDEPIR'
      DataSource = DTM_A001RH.DTS_029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object CBE_CCPFCNPJ: TComboEdit
      Left = 9
      Top = 28
      Width = 108
      Height = 21
      ButtonHint = 'Pesquisar Logradouro'
      CharCase = ecUpperCase
      EditMask = '999\.999\.999\-99;0;'
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
      MaxLength = 14
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnButtonClick = CBE_NCEPButtonClick
      OnExit = CBE_CCPFCNPJExit
      OnKeyDown = CBE_CCPFCNPJKeyDown
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 313
    Width = 568
    Height = 173
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Dados Complementares  '
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
    TabOrder = 2
    object PGC_ENDDOC: TPageControlEx
      Left = 9
      Top = 22
      Width = 549
      Height = 141
      Cursor = crHandPoint
      ActivePage = TBS_ENDERECO
      HotTrack = True
      Images = IMl_Servidor
      TabOrder = 0
      OnDrawTab = PGC_ENDDOCDrawTab
      object TBS_ENDERECO: TTabSheet
        Caption = 'Endereço'
        ImageIndex = 2
        object LMDSimplePanel2: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 549
          Height = 120
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          Color = clSilver
          TabOrder = 0
          object Label18: TLabel
            Left = 82
            Top = 4
            Width = 61
            Height = 13
            Caption = '  Logradouro'
          end
          object Label23: TLabel
            Left = 2
            Top = 44
            Width = 43
            Height = 13
            Caption = '  Número'
          end
          object Label26: TLabel
            Left = 87
            Top = 44
            Width = 71
            Height = 13
            Caption = '  Complemento'
          end
          object Label27: TLabel
            Left = 292
            Top = 44
            Width = 34
            Height = 13
            Caption = '  Bairro'
          end
          object Label28: TLabel
            Left = 167
            Top = 84
            Width = 16
            Height = 13
            Caption = ' UF'
          end
          object Label29: TLabel
            Left = 2
            Top = 4
            Width = 55
            Height = 13
            Caption = '  Nº do CEP'
          end
          object Label30: TLabel
            Left = 2
            Top = 84
            Width = 56
            Height = 13
            Caption = '  Localidade'
          end
          object Label31: TLabel
            Left = 188
            Top = 84
            Width = 21
            Height = 13
            Caption = 'DDD'
          end
          object Label1: TLabel
            Left = 229
            Top = 84
            Width = 18
            Height = 13
            Caption = 'Res'
          end
          object Label7: TLabel
            Left = 289
            Top = 84
            Width = 15
            Height = 13
            Caption = 'Cel'
          end
          object Label135: TLabel
            Left = 349
            Top = 84
            Width = 21
            Height = 13
            Caption = 'Com'
          end
          object Label136: TLabel
            Left = 393
            Top = 84
            Width = 34
            Height = 13
            Caption = '  e-mail'
          end
          object DED_CNUMERO: TDBEdit
            Left = 0
            Top = 58
            Width = 85
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CNUMERO'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DED_CCOMPLEMEN: TDBEdit
            Left = 85
            Top = 58
            Width = 205
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CCOMPLEMEN'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DED_CNOMEBAI: TDBEdit
            Left = 290
            Top = 58
            Width = 259
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14281964
            DataField = 'CNOMEBAI'
            DataSource = DTM_A001RH.DTS_013
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DED_CSIGLAUF: TDBEdit
            Left = 165
            Top = 98
            Width = 21
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14281964
            DataField = 'CSIGLAUF'
            DataSource = DTM_A001RH.DTS_013
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object CBE_NCEP: TComboEdit
            Left = 0
            Top = 18
            Width = 80
            Height = 21
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
            NumGlyphs = 1
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnButtonClick = CBE_NCEPButtonClick
            OnChange = CBE_NCEPChange
            OnExit = CBE_NCEPExit
            OnKeyDown = CBE_NCEPKeyDown
            OnKeyPress = CBE_NCEPKeyPress
          end
          object DED_CNOMELOC_1: TDBEdit
            Left = 0
            Top = 98
            Width = 165
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14281964
            DataField = 'CNOMELOC'
            DataSource = DTM_A001RH.DTS_013
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DED_CNOMELOG: TDBEdit
            Left = 79
            Top = 18
            Width = 470
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14281964
            DataField = 'CNOMELOG'
            DataSource = DTM_A001RH.DTS_013
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DED_CDDD: TDBEdit
            Left = 187
            Top = 98
            Width = 23
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = 14281964
            DataField = 'CDDD'
            DataSource = DTM_A001RH.DTS_013
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DED_CTELRES: TDBEdit
            Left = 211
            Top = 98
            Width = 60
            Height = 21
            Color = clWhite
            DataField = 'CTELRES'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = DED_CTELRESEnter
            OnExit = DED_CTELRESExit
          end
          object DED_CTELCELULA: TDBEdit
            Left = 271
            Top = 98
            Width = 60
            Height = 21
            Color = clWhite
            DataField = 'CTELCELULA'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DED_CTELCOM: TDBEdit
            Left = 331
            Top = 98
            Width = 60
            Height = 21
            Color = clWhite
            DataField = 'CTELCOM'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnEnter = DED_CTELRESEnter
            OnExit = DED_CTELRESExit
          end
          object DED_CEMAIL: TDBEdit
            Left = 391
            Top = 98
            Width = 158
            Height = 21
            CharCase = ecLowerCase
            Color = clWhite
            DataField = 'CEMAIL'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
        end
      end
      object TBS_DOCUMENTACAO: TTabSheet
        Caption = 'Documentação'
        ImageIndex = 3
        object LMDSimplePanel6: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 549
          Height = 120
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          Color = clSilver
          TabOrder = 0
          object Label44: TLabel
            Left = 2
            Top = 4
            Width = 55
            Height = 13
            Caption = '  Nº do CPF'
          end
          object Label45: TLabel
            Left = 87
            Top = 4
            Width = 50
            Height = 13
            Caption = '  Nº do RG'
          end
          object Label46: TLabel
            Left = 443
            Top = 4
            Width = 16
            Height = 13
            Caption = ' UF'
          end
          object Label47: TLabel
            Left = 200
            Top = 4
            Width = 75
            Height = 13
            Caption = '  Orgão Emissor'
          end
          object Label48: TLabel
            Left = 465
            Top = 4
            Width = 73
            Height = 13
            Caption = '  Dt de Emissão'
          end
          object Label51: TLabel
            Left = 4
            Top = 44
            Width = 46
            Height = 13
            Caption = 'Cart Trab'
          end
          object Label52: TLabel
            Left = 57
            Top = 44
            Width = 24
            Height = 13
            Caption = 'Série'
          end
          object Label49: TLabel
            Left = 228
            Top = 44
            Width = 80
            Height = 13
            Caption = '  Título de Eleitor'
          end
          object Label50: TLabel
            Left = 311
            Top = 44
            Width = 15
            Height = 13
            Caption = ' Zn'
          end
          object Label53: TLabel
            Left = 336
            Top = 44
            Width = 20
            Height = 13
            Caption = ' Sec'
          end
          object Label54: TLabel
            Left = 119
            Top = 84
            Width = 69
            Height = 13
            Caption = '  Nº da C.N.H.'
          end
          object Label55: TLabel
            Left = 193
            Top = 84
            Width = 17
            Height = 13
            Caption = 'Cat'
          end
          object Label56: TLabel
            Left = 214
            Top = 84
            Width = 54
            Height = 13
            Caption = '  Valida Até'
          end
          object Label57: TLabel
            Left = 3
            Top = 84
            Width = 72
            Height = 13
            Caption = '  Reservista Nº'
          end
          object Label58: TLabel
            Left = 362
            Top = 44
            Width = 87
            Height = 13
            Caption = '  Nº do PIS/PASEP'
          end
          object Label59: TLabel
            Left = 466
            Top = 44
            Width = 76
            Height = 13
            Caption = ' Cadastrado em'
          end
          object Label17: TLabel
            Left = 298
            Top = 84
            Width = 93
            Height = 13
            Caption = '  Sigla Cons. Classe'
          end
          object Label19: TLabel
            Left = 424
            Top = 84
            Width = 92
            Height = 13
            Caption = '  Nro. Cons. Classe'
          end
          object Label4: TLabel
            Left = 106
            Top = 44
            Width = 16
            Height = 13
            Caption = ' UF'
          end
          object Label6: TLabel
            Left = 147
            Top = 44
            Width = 57
            Height = 13
            Caption = '  Emitida em'
          end
          object DED_CCPFCNPJ: TDBEdit
            Left = 0
            Top = 18
            Width = 85
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CCPFCNPJ'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = DED_CCPFCNPJEnter
            OnExit = DED_CCPFCNPJExit
          end
          object DED_RGIE: TDBEdit
            Left = 85
            Top = 18
            Width = 115
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CRGIE'
            DataSource = DTM_A001RH.DTS_016
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBD_DDTEMIRG: TDBDateEdit
            Left = 463
            Top = 18
            Width = 86
            Height = 21
            DataField = 'DDTEMIRG'
            DataSource = DTM_A001RH.DTS_019
            CheckOnExit = True
            Color = clWhite
            NumGlyphs = 2
            TabOrder = 4
            OnExit = DBD_DDTEMIRGExit
          end
          object DED_NCARTTRAB: TDBEdit
            Left = 0
            Top = 58
            Width = 55
            Height = 21
            DataField = 'NCARTTRAB'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DED_CSERIETRAB: TDBEdit
            Left = 55
            Top = 58
            Width = 47
            Height = 21
            DataField = 'CSERIETRAB'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DED_NTITELEIT: TDBEdit
            Left = 229
            Top = 58
            Width = 80
            Height = 21
            DataField = 'NTITELEIT'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DED_NZONELEIT: TDBEdit
            Left = 309
            Top = 58
            Width = 25
            Height = 21
            DataField = 'NZONELEIT'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DED_NSECELEIT: TDBEdit
            Left = 334
            Top = 58
            Width = 30
            Height = 21
            DataField = 'NSECELEIT'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DED_NNROCNH: TDBEdit
            Left = 116
            Top = 98
            Width = 75
            Height = 21
            DataField = 'NNROCNH'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object DED_CCATCNH: TDBEdit
            Left = 191
            Top = 98
            Width = 20
            Height = 21
            DataField = 'CCATCNH'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object DED_CVALCNH: TDBDateEdit
            Left = 211
            Top = 98
            Width = 85
            Height = 21
            DataField = 'DVALCNH'
            DataSource = DTM_A001RH.DTS_019
            CheckOnExit = True
            Color = clWhite
            NumGlyphs = 2
            TabOrder = 17
            OnExit = DBD_DDTEMIRGExit
          end
          object DED_NNROCSM: TDBEdit
            Left = 0
            Top = 98
            Width = 116
            Height = 21
            DataField = 'NNROCSM'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object DED_CPIS: TDBEdit
            Left = 364
            Top = 58
            Width = 99
            Height = 21
            DataField = 'CPIS'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnEnter = DED_CPISEnter
            OnExit = DED_CPISExit
          end
          object DBD_DDATAPIS: TDBDateEdit
            Left = 463
            Top = 58
            Width = 86
            Height = 21
            DataField = 'DDATAPIS'
            DataSource = DTM_A001RH.DTS_019
            CheckOnExit = True
            Color = clWhite
            NumGlyphs = 2
            TabOrder = 13
            OnExit = DBD_DDTEMIRGExit
          end
          object DBL_NIDTBXERG: TRxDBLookupCombo
            Left = 200
            Top = 18
            Width = 240
            Height = 21
            DropDownCount = 8
            Color = clWhite
            DataField = 'NIDTBXERG'
            DataSource = DTM_A001RH.DTS_019
            LookupField = 'NIDTBXERG'
            LookupDisplay = 'CNOMEEMIRG'
            LookupSource = DTM_A001RH.DTS_024
            TabOrder = 2
          end
          object DED_CUFEMIRG: TDBEdit
            Left = 440
            Top = 18
            Width = 23
            Height = 21
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'CUFEMIRG'
            DataSource = DTM_A001RH.DTS_019
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DED_CSIGCONCLA: TDBEdit
            Left = 296
            Top = 98
            Width = 126
            Height = 21
            DataField = 'CSIGCONCLA'
            DataSource = DTM_A001RH.DTS_029
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object DED_CNRCONSCLA: TDBEdit
            Left = 422
            Top = 98
            Width = 127
            Height = 21
            DataField = 'CNRCONSCLA'
            DataSource = DTM_A001RH.DTS_029
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
          object DBL_CUF: TRxDBLookupCombo
            Left = 102
            Top = 58
            Width = 42
            Height = 21
            DropDownCount = 8
            DataField = 'CUFCARTTRB'
            DataSource = DTM_A001RH.DTS_019
            LookupField = 'CSIGLAUF'
            LookupDisplay = 'CSIGLAUF'
            LookupSource = DTM_A001RH.DTS_015
            TabOrder = 7
          end
          object DBD_DEMICATTRB: TDBDateEdit
            Left = 144
            Top = 58
            Width = 85
            Height = 21
            DataField = 'DEMICATTRB'
            DataSource = DTM_A001RH.DTS_019
            Color = clWhite
            NumGlyphs = 2
            TabOrder = 8
          end
        end
      end
    end
  end
  object IMl_Servidor: TImageList
    Left = 398
    Top = 17
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00F7FFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      000000000000000000006B6B6B0039393900525252004A4A4A004A4A4A004242
      420042424200393939005A5A5A00000000008400840084008400840084008400
      8400840084008400840084008400000000000000000000000000000000005200
      290084008400840084008400840084008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000F7F7F700D6D6E700CECE
      E700CECEE700CECEE7004A4A5A005A5A6B008484940084848C0094949400C6C6
      C600CECECE00BDBDBD003131310063634A008400840084008400840084005200
      520000000000000000000021290000FFFF0000B5AD0000FFFF0000FFFF00004A
      520052005200840084008400840084008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000008400C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000094949C00B5B50000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000DEDE000042423900B5B5
      BD00BDBDBD00ADADB50031311000D6D600008400840084008400840084002121
      210010101000006B84000084840000DED6000094AD000084840000848400006B
      840021212100840084008400840084008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60084848C0042425200BDBD0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000D6D60000212118004242
      420039393900B5B5BD0031311000D6D60000840084005200290010101000004A
      52000084840000FFFF0000DED600008484000094AD0000B5AD0000B5AD000084
      8400006B8400101010005200290084008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6002929100052522900BDBD0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000D6D6000031310000A5A5
      2900A5A53900B5B5CE0029291800CECE00008400840008080800080808000084
      840000DED60000FFFF0000FFFF0000FFFF0000B5AD0000848400008484000084
      840000848400080808000808080084008400C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6005252210084843900B5B50000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000CECE000042420000E7E7
      4A00E7E76B00636352007B7B0800FFFF00005200290000DED60000FFFF0000B5
      AD0000B5AD0000FFFF0000FFFF0000DED60000DED60000FFFF0000FFFF0000B5
      AD0000B5AD0000848400006B840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6005252210084843100A5A50000DEDE
      0000DEDE0000DEDE0000DEDE0000DEDE0000EFEF0000BDBD0000212108002121
      0800A5A521009C9C9C009C9C9C0094949C005200290000DED60000FFFF0000B5
      AD0000B5AD0000B5AD0000B5D60000DED60000DED60000FFFF0000FFFF0000B5
      AD000094AD0000848400006B840000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60052522100DEDE52007B7B21006363
      180063631800636321006363210063631800393900006B6B2900C6C66B005252
      2900949429000000000000000000000000005200290000DED60000FFFF0000B5
      AD0000B5AD00008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000DE
      D60000B5AD0000848400006B840000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6004A4A1800F7F76B00F7F76B00F7F7
      6B00F7F76B00F7F76B00F7F76B00FFFF730042422100FFFF9400FFFF84004A4A
      21009C9C2900FFFFFF0000000000000000005200290000DED60000FFFF0000B5
      AD0000B5AD00008484000084840000B5AD0000FFFF00002129000021290000DE
      D6000084840000FFFF0000DED60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600737342007B7B3100848431008484
      3100848431007B7B31007B7B31008484390052521000FFFF8400FFFF84004242
      21004A4A1800FFFFFF0000000000000000005200290000DED60000FFFF000084
      840000848400008484000084840000B5AD0000FFFF0000FFFF0000FFFF0000B5
      AD0000B5AD0000FFFF0000DED60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000CECED6008484
      4200FFFF9400FFFF8C00FFFF7B00FFFF8C00FFFF8C00FFFF8C00FFFF7B006363
      4200000000000000000000000000000000005200290000DED60000FFFF0000B5
      AD000084840000848400008484000094AD0000B5AD0000B5AD0000B5AD0000B5
      AD0000DED60000848400006B840052005200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000CECED6007373
      5200CECE6300A5A56B006B6B52006B6B5200CEC66300BDBD5200B5B54A007373
      6B00F7F7FF000000000000000000000000008400840000215200004A520000DE
      D6000084840000DED60000DED6000084840000848400008484000084840000DE
      FF0000B5D600080808000808080084008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000000000000000C6C6
      CE00100810007B7B8400948C940008293100103942008484840084848400E7E7
      EF00FFFFFF0000000000000000000000000084008400080808000021290000FF
      FF0000B5AD000084840000848400008484000021290000DED60000FFFF0000FF
      FF00006B5200840084008400840084008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500C6C6C600BDBDBD00948C
      8C008C9494009CB5B5007B6B6B004A737300427B7B0000000000000000000000
      000000000000000000000000000000000000840084008400840084008400006B
      520000FFFF00008484000084840000B5AD0000B5AD0000FFFF0000FFFF000094
      AD0052005200840084008400840084008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00080000006BCECE00A5FF
      FF0084FFFF0084FFFF006BDEDE006B9C9C00C6B5B50000000000000000000000
      0000000000000000000000000000000000008400840084008400840084000021
      52000084840000B5AD0000B5AD000094AD000094AD0000B5AD0000B5AD00004A
      520052005200840084008400840084008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600395A5A000800000029424200295A
      5A00315A5A002963630039636300C6B5B5000000000000000000000000000000
      0000000000000000000000000000000000008400840084008400840084008400
      84005200520000215200004A2900002129000021290000212900002129008400
      840084008400840084008400840084008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C6008400000084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008400
      00008400000084000000C6C6C600C6C6C600C6C6C600C6C6C600000084008484
      840000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008400
      00008400000084000000C6C6C600C6C6C600C6C6C600C6C6C600000084000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008400
      0000840000008400000000000000C6C6C600C6C6C600C6C6C600000084000000
      8400C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD007B7B000000000000C6C6C600C6C6C600C6C6C600ADDE
      8400FFFF2900FFFF290029292900526B2900FFFF2900524A2900524A2900FFDE
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008400
      0000840000008400000000000000C6C6C600C6C6C600C6C6C600000000000000
      0000C6C6C60000008400C6C6C600C6C6C6000000000000000000000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B7B00BDBD
      BD00BDBDBD00BDBDBD007B7B000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B0000000000FFDE0000FFDE00004A4A4A00EFEFEF0018181800000000004A4A
      4A00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000008400
      0000840000008400000000000000C6C6C600C6C6C60084848400840000008400
      00008484840000008400C6C6C600C6C6C6000000000000000000848484000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      000000000000BDBDBD007B7B000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600636363000808080039393900CECECE00A5A5A5000808080094949400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000008400840000008400
      0000840000008400000000000000C6C6C6000000840084848400840000008400
      00000000000000008400C6C6C600C6C6C6000000000000000000000000008484
      8400FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B0000FFFF
      000000000000BDBDBD007B7B000000000000C6C6C600C6C6C600C6C6C600C6C6
      C60084848400080808006B6B6B00BDBDBD006B6B6B007B7B7B00636363008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084000000840000008400
      00008400000084000000C6C6C600C6C6C60000000000FF000000FF000000FF00
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000FFFFFF000000
      0000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B00007B7B
      000000000000FFFF0000FFFF000000000000C6C6C600C6C6C600C6C6C600C6C6
      C6004A4A4A000000000018181800E7E7E700E7E7E700D6D6D600212121004A4A
      4A00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084000000840000008400
      0000840000008400000084000000C6C6C600FF00000084000000FF000000FF00
      00008400000000000000C6C6C600C6C6C6000000000084848400000000000000
      0000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00007B7B00007B7B
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B00000000000000000010101000DEDEDE00DEDEDE00F7F7F700ADADAD004A4A
      4A00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084000000840000008484
      8400848484008400000084000000C6C6C600FF00000084000000FF000000FF00
      00008400000000000000C6C6C600C6C6C6000000000000000000848484000000
      00008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00007B7B0000FFFF0000FFFF00007B7B
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B00000000000000000094949400C6C6C600E7E7E700FF94AD00E7E7E700A5A5
      A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FFFF
      FF00FFFFFF008400000084000000C6C6C600FF00000084000000000000000000
      0000FF00000084848400C6C6C600C6C6C6000000000000000000000000008484
      840000000000000000008484840000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF00FFFFFF000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00007B7B0000FFFF0000FFFF00007B7B
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B00000000000000000008080800A5A5A500E7E7E700AD212900636363008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FFFF
      FF00FFFFFF008400000084000000C6C6C600FF000000FF000000FFFFFF00FFFF
      FF00FF000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      000000000000FFFFFF00FFFFFF008484840000000000FFFFFF00FFFFFF008484
      8400FF00FF00FFFFFF000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B0000000000000000006B6B6B00DEDEDE00DEDEDE00C6C6C60010101000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084000000FFFF
      FF00FFFFFF0084000000C6C6C600C6C6C600C6C6C600FF000000FF000000FF00
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF008484840000000000FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C6007B7B
      7B0000000000000000000000000000000000000000000000000010101000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C60084848400000084000000
      840084848400C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600636363002929290029292900292929002929290029292900C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      840000008400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD0000000000BDBDBD000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0080008000800080005500550080008000
      004955000000000000FFFF000092AA0000FFFF0000FFFF0000B6AA000092AA00
      00FFFF0000FFFF0000242B0000B6AA0000000000000000000000000000000000
      5500550000000000800080008000800080008000800080008000800080008000
      80008000800080008000800080008000FC010000800080008000000080008000
      8000000000000000000000000092AA000000000000FFFF00000000000092AA00
      0000000000FFFF000007000000B6AA0000030000000000000003000000000000
      C00F000000000000C007000080008000E007000080008000007F000080008000
      007F00008000800000FF00008000800000000000FDFFFFFF00000000F87FFC03
      00000000F03FC00000000000C00FC000000000005003000000000000C0010000
      000000000000000000000000A0010007000000009001000700000000EC130007
      00000000F003E01F00000000D803E01F00000000FC07E21F00000000EDFFE7FF
      00000000FDFF19FF00000000FB3F3FFF00000000000000000000000000000000
      000000000000}
  end
  object OPD_FotoSer: TOpenPictureDialog
    Filter = 'JPEGS (*.JPG)|*.jpg'
    Left = 359
    Top = 17
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 75
    Top = 78
    object InserirFigura: TMenuItem
      Caption = 'Carregar Figura'
      OnClick = DBI_FFOTOSERDblClick
    end
    object DeletarFigura: TMenuItem
      Caption = 'Deletar Figura'
      OnClick = DeletarFiguraClick
    end
  end
end
