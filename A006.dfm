object FRM_A006: TFRM_A006
  Left = 133
  Top = 31
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  Cadastro Geral de Pessoas'
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
  OnDestroy = FormDestroy
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
    TabOrder = 4
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
      Top = 280
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
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 138
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Identificação da Pessoa  '
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
    object Label4: TLabel
      Left = 141
      Top = 14
      Width = 242
      Height = 13
      Caption = '  Nome da Pessoa ( Completo e sem abreviaturas )'
    end
    object Label20: TLabel
      Left = 506
      Top = 14
      Width = 40
      Height = 13
      Caption = '  Pessoa'
    end
    object Lbl_CpfCnpj: TLabel
      Left = 11
      Top = 14
      Width = 90
      Height = 13
      Caption = '  Nº do CPF / CNPJ'
    end
    object Lbl_RgIE: TLabel
      Left = 11
      Top = 54
      Width = 147
      Height = 13
      Caption = '  Nº do RG / Inscrição Estadual'
    end
    object LBL_UF: TLabel
      Left = 162
      Top = 54
      Width = 16
      Height = 13
      Caption = ' UF'
    end
    object LBL_CNOMEEMIRG: TLabel
      Left = 197
      Top = 54
      Width = 75
      Height = 13
      Caption = '  Orgão Emissor'
    end
    object LBL_DDTEMIRG: TLabel
      Left = 476
      Top = 54
      Width = 73
      Height = 13
      Caption = '  Dt de Emissão'
    end
    object LBL_DDTNASC: TLabel
      Left = 93
      Top = 94
      Width = 75
      Height = 13
      Caption = '  Dt Nascimento'
    end
    object LBL_CNOMEMAE: TLabel
      Left = 180
      Top = 94
      Width = 228
      Height = 13
      Caption = '  Nome da Mãe ( Completo e sem abreviaturas )'
    end
    object LBL_CSEXO: TLabel
      Left = 12
      Top = 94
      Width = 30
      Height = 13
      Caption = '  Sexo'
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 139
      Top = 28
      Width = 365
      Height = 21
      DataField = 'CNOMEGRL'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = DED_CNOMEGRLExit
    end
    object DED_CRGIE: TDBEdit
      Left = 9
      Top = 68
      Width = 148
      Height = 21
      DataField = 'CRGIE'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = DED_CRGIEChange
    end
    object DBL_NIDTBXERG: TRxDBLookupCombo
      Left = 198
      Top = 68
      Width = 276
      Height = 21
      DropDownCount = 8
      Color = clWhite
      DataField = 'NIDTBXERG'
      DataSource = DTM_A006.DTS_019
      LookupField = 'NIDTBXERG'
      LookupDisplay = 'CNOMEEMIRG'
      LookupSource = DTM_A006.DTS_024
      TabOrder = 5
    end
    object DBD_DDTEMIRG: TDBDateEdit
      Left = 474
      Top = 68
      Width = 85
      Height = 21
      DataField = 'DDTEMIRG'
      DataSource = DTM_A006.DTS_019
      CheckOnExit = True
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 6
      OnExit = DBD_DDTNASCExit
    end
    object DBD_DDTNASC: TDBDateEdit
      Left = 92
      Top = 108
      Width = 85
      Height = 21
      DataField = 'DDTNASC'
      DataSource = DTM_A006.DTS_019
      CheckOnExit = True
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 8
      OnExit = DBD_DDTNASCExit
    end
    object DED_CNOMEMAE: TDBEdit
      Left = 177
      Top = 108
      Width = 382
      Height = 21
      Color = clWhite
      DataField = 'CNOMEMAE'
      DataSource = DTM_A006.DTS_019
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBC_CSEXO: TRxDBComboBox
      Left = 9
      Top = 108
      Width = 83
      Height = 21
      Style = csDropDownList
      DataField = 'CSEXO'
      DataSource = DTM_A006.DTS_019
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'MASCULINO'
        'FENIMINO')
      TabOrder = 7
      Values.Strings = (
        'M'
        'F')
    end
    object DBC_CUFEMIRG: TRxDBComboBox
      Left = 157
      Top = 68
      Width = 41
      Height = 21
      Style = csDropDownList
      DataField = 'CUFEMIRG'
      DataSource = DTM_A006.DTS_019
      EnableValues = False
      ItemHeight = 13
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      TabOrder = 4
    end
    object DED_CPESSOAFJ: TDBEdit
      Left = 504
      Top = 28
      Width = 55
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CPESSOAFJ'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = DED_CPESSOAFJChange
    end
    object CBE_CCPFCNPJ: TComboEdit
      Left = 9
      Top = 28
      Width = 130
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
      OnEnter = CBE_CCPFCNPJEnter
      OnExit = DED_CCPFCNPJExit
      OnKeyDown = CBE_CCPFCNPJKeyDown
      OnKeyPress = CBE_CCPFCNPJKeyPress
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 10
    Top = 145
    Width = 568
    Height = 58
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Contato  '
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
    object Lbl_res: TLabel
      Left = 179
      Top = 14
      Width = 18
      Height = 13
      Caption = 'Res'
    end
    object Label16: TLabel
      Left = 11
      Top = 14
      Width = 90
      Height = 13
      Caption = '  Nome de Contato'
    end
    object Label25: TLabel
      Left = 340
      Top = 14
      Width = 34
      Height = 13
      Caption = '  e-mail'
    end
    object Label2: TLabel
      Left = 137
      Top = 14
      Width = 21
      Height = 13
      Caption = 'DDD'
    end
    object Label1: TLabel
      Left = 241
      Top = 14
      Width = 15
      Height = 13
      Caption = 'Cel'
    end
    object Label6: TLabel
      Left = 298
      Top = 14
      Width = 21
      Height = 13
      Caption = 'Com'
    end
    object DED_CTELRES: TDBEdit
      Left = 158
      Top = 28
      Width = 60
      Height = 21
      Color = clWhite
      DataField = 'CTELRES'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
      OnEnter = DED_CTELRESEnter
      OnExit = DED_CTELRESExit
    end
    object DED_CCONTATO: TDBEdit
      Left = 9
      Top = 28
      Width = 125
      Height = 21
      Color = clWhite
      DataField = 'CCONTATO'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DED_CEMAIL: TDBEdit
      Left = 338
      Top = 28
      Width = 221
      Height = 21
      CharCase = ecLowerCase
      Color = clWhite
      DataField = 'CEMAIL'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DED_CDDD: TDBEdit
      Left = 134
      Top = 28
      Width = 24
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CDDD'
      DataSource = DTM_A006.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DED_CTELCELULA: TDBEdit
      Left = 218
      Top = 28
      Width = 60
      Height = 21
      Color = clWhite
      DataField = 'CTELCELULA'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DED_CTELCOM: TDBEdit
      Left = 278
      Top = 28
      Width = 60
      Height = 21
      Color = clWhite
      DataField = 'CTELCOM'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      OnEnter = DED_CTELRESEnter
      OnExit = DED_CTELRESExit
    end
  end
  object LMDGroupBox4: TLMDGroupBox
    Left = 10
    Top = 207
    Width = 568
    Height = 138
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Endereço  '
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
    object Label10: TLabel
      Left = 91
      Top = 14
      Width = 61
      Height = 13
      Caption = '  Logradouro'
    end
    object Label12: TLabel
      Left = 11
      Top = 54
      Width = 43
      Height = 13
      Caption = '  Número'
    end
    object Label13: TLabel
      Left = 96
      Top = 54
      Width = 71
      Height = 13
      Caption = '  Complemento'
    end
    object Label14: TLabel
      Left = 301
      Top = 54
      Width = 34
      Height = 13
      Caption = '  Bairro'
    end
    object Label17: TLabel
      Left = 316
      Top = 94
      Width = 16
      Height = 13
      Caption = ' UF'
    end
    object Label24: TLabel
      Left = 11
      Top = 14
      Width = 55
      Height = 13
      Caption = '  Nº do CEP'
    end
    object Label5: TLabel
      Left = 11
      Top = 94
      Width = 56
      Height = 13
      Caption = '  Localidade'
    end
    object Label32: TLabel
      Left = 336
      Top = 94
      Width = 25
      Height = 13
      Caption = '  País'
    end
    object DED_CNUMERO: TDBEdit
      Left = 9
      Top = 68
      Width = 85
      Height = 21
      Color = clWhite
      DataField = 'CNUMERO'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DED_CNUMEROKeyPress
    end
    object DED_CNOMELOC: TDBEdit
      Left = 9
      Top = 108
      Width = 305
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOC'
      DataSource = DTM_A006.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DED_CCOMPLEMEN: TDBEdit
      Left = 94
      Top = 68
      Width = 205
      Height = 21
      Color = clWhite
      DataField = 'CCOMPLEMEN'
      DataSource = DTM_A006.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DED_CNOMEBAI: TDBEdit
      Left = 299
      Top = 68
      Width = 260
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEBAI'
      DataSource = DTM_A006.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DED_CSIGLAUF: TDBEdit
      Left = 314
      Top = 108
      Width = 20
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CSIGLAUF'
      DataSource = DTM_A006.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CBE_NCEP: TComboEdit
      Left = 9
      Top = 28
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
    object DED_CNOMEPAIS: TDBEdit
      Left = 334
      Top = 108
      Width = 225
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEPAIS'
      DataSource = DTM_A006.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DED_CNOMELOG: TDBEdit
      Left = 89
      Top = 28
      Width = 470
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOG'
      DataSource = DTM_A006.DTS_013
      TabOrder = 1
      OnEnter = DED_CNOMELOGEnter
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 348
    Width = 568
    Height = 139
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Endereço de Correspondência  '
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
    TabOrder = 3
    object Label18: TLabel
      Left = 91
      Top = 14
      Width = 61
      Height = 13
      Caption = '  Logradouro'
    end
    object Label23: TLabel
      Left = 11
      Top = 54
      Width = 43
      Height = 13
      Caption = '  Número'
    end
    object Label26: TLabel
      Left = 96
      Top = 54
      Width = 71
      Height = 13
      Caption = '  Complemento'
    end
    object Label27: TLabel
      Left = 301
      Top = 54
      Width = 34
      Height = 13
      Caption = '  Bairro'
    end
    object Label28: TLabel
      Left = 316
      Top = 94
      Width = 16
      Height = 13
      Caption = ' UF'
    end
    object Label29: TLabel
      Left = 11
      Top = 14
      Width = 55
      Height = 13
      Caption = '  Nº do CEP'
    end
    object Label30: TLabel
      Left = 11
      Top = 94
      Width = 56
      Height = 13
      Caption = '  Localidade'
    end
    object Label31: TLabel
      Left = 336
      Top = 94
      Width = 25
      Height = 13
      Caption = '  País'
    end
    object BTN_TIRAEC: TSpeedButton
      Left = 67
      Top = 12
      Width = 21
      Height = 17
      Hint = 
        'Clique aqui para retirar o endereço '#13#10'de correspondência do cont' +
        'ribuinde'
      BiDiMode = bdLeftToRight
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A4A4AFF
        FFFFFFFFFF4A4A4AFFFFFFFF4A8E8E4AFFFFFFFF4A8E8E4AFFFFFFFF4A8E8E8E
        4AFFFF4A8E8E8E4AFFFFFFFFFF4A8E8E8E4A4A8E8E8E4AFFFFFFFFFFFFFF4A8E
        8E8E8E8E8E4AFFFFFFFFFFFFFFFFFF4A8E8E8E8E4AFFFFFFFFFFFFFFFFFFFF4A
        8E8E8E8E4AFFFFFFFFFFFFFFFFFF4A8E8E8E8E8E8E4AFFFFFFFFFFFFFF4A8E8E
        8E4A4A8E8E8E4AFFFFFFFFFF4A8E8E8E4AFFFF4A8E8E8E4AFFFFFFFF4A8E8E4A
        FFFFFFFF4A8E8E4AFFFFFFFF4A4A4AFFFFFFFFFFFF4A4A4AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      OnClick = BTN_TIRAECClick
    end
    object DED_CNUMEROEC: TDBEdit
      Left = 9
      Top = 68
      Width = 85
      Height = 21
      Color = clWhite
      DataField = 'CNUMEROEC'
      DataSource = DTM_A006.DTS_018
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = DED_CNUMEROKeyPress
    end
    object DED_COMPLEEC: TDBEdit
      Left = 94
      Top = 68
      Width = 205
      Height = 21
      Color = clWhite
      DataField = 'CCOMPLEEC'
      DataSource = DTM_A006.DTS_018
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DED_CNOMEBAI_1: TDBEdit
      Left = 299
      Top = 68
      Width = 260
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEBAI'
      DataSource = DTM_A006.DTS_013_01
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DED_CSIGLAUF_1: TDBEdit
      Left = 314
      Top = 108
      Width = 20
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CSIGLAUF'
      DataSource = DTM_A006.DTS_013_01
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CBE_NCEP_1: TComboEdit
      Left = 9
      Top = 28
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
      OnButtonClick = CBE_NCEP_1ButtonClick
      OnChange = CBE_NCEPChange
      OnExit = CBE_NCEP_1Exit
      OnKeyDown = CBE_NCEP_1KeyDown
      OnKeyPress = CBE_NCEPKeyPress
    end
    object DED_CNOMELOC_1: TDBEdit
      Left = 9
      Top = 108
      Width = 305
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOC'
      DataSource = DTM_A006.DTS_013_01
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DED_CNOMEPAIS_1: TDBEdit
      Left = 334
      Top = 108
      Width = 225
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEPAIS'
      DataSource = DTM_A006.DTS_013_01
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DED_CNOMELOG_1: TDBEdit
      Left = 89
      Top = 28
      Width = 470
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOG'
      DataSource = DTM_A006.DTS_013_01
      TabOrder = 1
    end
  end
end
