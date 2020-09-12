object FRM_A001AD: TFRM_A001AD
  Left = 224
  Top = 147
  ActiveControl = DED_CNOMEGRL
  BorderStyle = bsDialog
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
      Top = 360
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
    object Btn_RelFornec: TSpeedButton
      Left = 1
      Top = 295
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      NumGlyphs = 2
      OnClick = Btn_RelFornecClick
    end
    object Btn_Certificado: TSpeedButton
      Left = 1
      Top = 327
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      NumGlyphs = 2
      OnClick = Btn_CertificadoClick
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
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 225
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Identificação do Fornecedor  '
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
      Left = 11
      Top = 14
      Width = 68
      Height = 13
      Caption = '  CPF ou CNPJ'
    end
    object Label20: TLabel
      Left = 11
      Top = 54
      Width = 40
      Height = 13
      Caption = '  Pessoa'
    end
    object Label2: TLabel
      Left = 141
      Top = 14
      Width = 33
      Height = 13
      Caption = '  Nome'
    end
    object LBL_CNOMEFAN: TLabel
      Left = 99
      Top = 54
      Width = 77
      Height = 13
      Caption = '  Nome Fantasia'
    end
    object LBL_CRGIE: TLabel
      Left = 10
      Top = 179
      Width = 93
      Height = 13
      Caption = '  Inscrição Estadual'
    end
    object LBL_CINSMUNI: TLabel
      Left = 119
      Top = 179
      Width = 71
      Height = 13
      Caption = '  Ins. Municipal'
    end
    object Label6: TLabel
      Left = 441
      Top = 136
      Width = 48
      Height = 13
      Caption = '  Telefone'
    end
    object Label7: TLabel
      Left = 503
      Top = 136
      Width = 24
      Height = 13
      Caption = '  Fax'
    end
    object Label10: TLabel
      Left = 91
      Top = 95
      Width = 61
      Height = 13
      Caption = '  Logradouro'
    end
    object Label24: TLabel
      Left = 11
      Top = 95
      Width = 55
      Height = 13
      Caption = '  Nº do CEP'
    end
    object Label12: TLabel
      Left = 391
      Top = 95
      Width = 43
      Height = 13
      Caption = '  Número'
    end
    object Label13: TLabel
      Left = 441
      Top = 95
      Width = 71
      Height = 13
      Caption = '  Complemento'
    end
    object Label14: TLabel
      Left = 12
      Top = 136
      Width = 34
      Height = 13
      Caption = '  Bairro'
    end
    object Label17: TLabel
      Left = 395
      Top = 136
      Width = 16
      Height = 13
      Caption = ' UF'
    end
    object Label8: TLabel
      Left = 215
      Top = 136
      Width = 56
      Height = 13
      Caption = '  Localidade'
    end
    object LBL_CCODCNAE: TLabel
      Left = 210
      Top = 179
      Width = 197
      Height = 13
      Caption = '  Código da Atividade Econômica Principal'
    end
    object Label32: TLabel
      Left = 417
      Top = 136
      Width = 21
      Height = 13
      Caption = 'DDD'
    end
    object Label4: TLabel
      Left = 466
      Top = 54
      Width = 95
      Height = 13
      Caption = 'Validade Certificado'
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 140
      Top = 28
      Width = 421
      Height = 21
      DataField = 'CNOMEGRL'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CBE_CCPFCNPJ: TComboEdit
      Left = 9
      Top = 28
      Width = 131
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
      OnExit = CBE_CCPFCNPJExit
      OnKeyDown = CBE_CCPFCNPJKeyDown
      OnKeyPress = CBE_CCPFCNPJKeyPress
    end
    object DCB_CPEESOAFJ: TRxDBComboBox
      Left = 9
      Top = 68
      Width = 88
      Height = 21
      Style = csDropDownList
      DataField = 'CPESSOAFJ'
      DataSource = DTM_A001AD.DTS_016
      DropDownCount = 2
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'FISICA'
        'JURIDICA')
      ReadOnly = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '2')
    end
    object DED_CNOMEFAN: TDBEdit
      Left = 97
      Top = 68
      Width = 370
      Height = 21
      DataField = 'CFANTASIA'
      DataSource = DTM_A001AD.DTS_025
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DED_CRGIE: TDBEdit
      Left = 9
      Top = 193
      Width = 110
      Height = 21
      DataField = 'CRGIE'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object DED_CINSMUNICI: TDBEdit
      Left = 119
      Top = 193
      Width = 89
      Height = 21
      DataField = 'CINSMUNICI'
      DataSource = DTM_A001AD.DTS_025
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DED_FONEGRL: TDBEdit
      Left = 439
      Top = 150
      Width = 61
      Height = 21
      DataField = 'CTELCOM'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnEnter = DED_FONEGRLEnter
      OnExit = DED_FONEGRLExit
    end
    object DED_FAXGRL: TDBEdit
      Left = 500
      Top = 150
      Width = 61
      Height = 21
      DataField = 'CTELFAX'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnEnter = DED_FONEGRLEnter
      OnExit = DED_FONEGRLExit
    end
    object CBE_NCEP: TComboEdit
      Left = 9
      Top = 109
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
      MaxLength = 10
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnButtonClick = CBE_NCEPButtonClick
      OnChange = CBE_NCEPChange
      OnExit = CBE_NCEPExit
      OnKeyDown = CBE_NCEPKeyDown
      OnKeyPress = CBE_NCEPKeyPress
    end
    object DED_CNOMELOG: TDBEdit
      Left = 89
      Top = 109
      Width = 304
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOG'
      DataSource = DTM_A001AD.DTS_013
      TabOrder = 6
    end
    object DED_CNUMERO: TDBEdit
      Left = 393
      Top = 109
      Width = 48
      Height = 21
      Color = clWhite
      DataField = 'CNUMERO'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DED_CCOMPLEMEN: TDBEdit
      Left = 441
      Top = 109
      Width = 120
      Height = 21
      Color = clWhite
      DataField = 'CCOMPLEMEN'
      DataSource = DTM_A001AD.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DED_CNOMEBAI: TDBEdit
      Left = 10
      Top = 150
      Width = 202
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEBAI'
      DataSource = DTM_A001AD.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DED_CNOMELOC: TDBEdit
      Left = 212
      Top = 150
      Width = 180
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMELOC'
      DataSource = DTM_A001AD.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object DED_CSIGLAUF: TDBEdit
      Left = 392
      Top = 150
      Width = 22
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CSIGLAUF'
      DataSource = DTM_A001AD.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CBE_CCODCNAE: TComboEdit
      Left = 208
      Top = 193
      Width = 84
      Height = 21
      ButtonHint = 'Pesquisar Logradouro'
      CharCase = ecUpperCase
      EditMask = '!00.00-0/00;1;_'
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
      MaxLength = 10
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Text = '  .  - /  '
      OnButtonClick = CBE_NCEPButtonClick
      OnExit = CBE_CCODCNAEExit
    end
    object DED_CDESCCNAE: TDBEdit
      Left = 292
      Top = 193
      Width = 269
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CDESCCNAE'
      DataSource = DTM_A001AD.DTS_039
      TabOrder = 17
    end
    object DED_CDDD_1: TDBEdit
      Left = 414
      Top = 150
      Width = 25
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CDDD'
      DataSource = DTM_A001AD.DTS_013
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
    end
    object DBD_DDATVALIDAD: TDBDateEdit
      Left = 467
      Top = 68
      Width = 94
      Height = 21
      TabStop = False
      DataField = 'DDTVALIDAD'
      DataSource = DTM_A001AD.DTS_031
      ReadOnly = True
      NumGlyphs = 2
      TabOrder = 4
    end
  end
  object PGC_Fornecedor: TPageControlEx
    Left = 10
    Top = 236
    Width = 568
    Height = 251
    Cursor = crHandPoint
    ActivePage = TSH_CONTINFIN
    Images = IMl_Servidor
    TabOrder = 2
    TabStop = False
    OnDrawTab = PGC_FornecedorDrawTab
    object TSH_CONTINFIN: TTabSheet
      Caption = 'Contato e Informações Financeiras'
      ImageIndex = 2
      object LMDSimplePanel6: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 568
        Height = 230
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object Lbl_res: TLabel
          Left = 57
          Top = 41
          Width = 21
          Height = 13
          Caption = 'Com'
        end
        object Label25: TLabel
          Left = 12
          Top = 2
          Width = 90
          Height = 13
          Caption = '  Nome de Contato'
        end
        object Label28: TLabel
          Left = 354
          Top = 2
          Width = 34
          Height = 13
          Caption = '  e-mail'
        end
        object Label29: TLabel
          Left = 15
          Top = 41
          Width = 21
          Height = 13
          Caption = 'DDD'
        end
        object Label30: TLabel
          Left = 119
          Top = 41
          Width = 18
          Height = 13
          Caption = 'Fax'
        end
        object Label31: TLabel
          Left = 176
          Top = 41
          Width = 15
          Height = 13
          Caption = 'Cel'
        end
        object Label5: TLabel
          Left = 278
          Top = 104
          Width = 189
          Height = 13
          Caption = '  Detalhamento da Atividade Econômica'
        end
        object Label19: TLabel
          Left = 219
          Top = 41
          Width = 130
          Height = 13
          Caption = '  Certificado entregue para'
        end
        object Label22: TLabel
          Left = 8
          Top = 191
          Width = 87
          Height = 13
          Caption = '  Cpf Responsável'
        end
        object Label23: TLabel
          Left = 100
          Top = 191
          Width = 112
          Height = 13
          Caption = '  Nome do Responsável'
        end
        object DED_CTELFAX: TDBEdit
          Left = 97
          Top = 55
          Width = 60
          Height = 21
          Color = clWhite
          DataField = 'CTELFAXFOR'
          DataSource = DTM_A001AD.DTS_031
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 2
          OnEnter = DED_FONEGRLEnter
          OnExit = DED_FONEGRLExit
        end
        object DED_CCONTATO: TDBEdit
          Left = 11
          Top = 16
          Width = 341
          Height = 21
          Color = clWhite
          DataField = 'CCONTATFOR'
          DataSource = DTM_A001AD.DTS_031
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DED_CEMAIL: TDBEdit
          Left = 352
          Top = 16
          Width = 210
          Height = 21
          CharCase = ecLowerCase
          Color = clWhite
          DataField = 'CEMAILFOR'
          DataSource = DTM_A001AD.DTS_031
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DED_CDDD: TDBEdit
          Left = 11
          Top = 55
          Width = 26
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDDD'
          DataSource = DTM_A001AD.DTS_013
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DED_CTELCELULA: TDBEdit
          Left = 157
          Top = 55
          Width = 62
          Height = 21
          Color = clWhite
          DataField = 'CTELCELFOR'
          DataSource = DTM_A001AD.DTS_031
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DED_CTELCOM: TDBEdit
          Left = 37
          Top = 55
          Width = 60
          Height = 21
          Color = clWhite
          DataField = 'CTELCOMFOR'
          DataSource = DTM_A001AD.DTS_031
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 1
          OnEnter = DED_FONEGRLEnter
          OnExit = DED_FONEGRLExit
        end
        object LMDPanelFill1: TLMDPanelFill
          Left = 11
          Top = 102
          Width = 146
          Height = 21
          UseDockManager = False
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.StyleInner = bvLowered
          Bevel.Mode = bmCustom
          Caption = 'Total de empregados na data'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 13882323
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.Style = gstTopRightDiagonal
          FillObject.Gradient.EndColor = 16514043
          TabOrder = 11
        end
        object LMDPanelFill2: TLMDPanelFill
          Left = 11
          Top = 124
          Width = 146
          Height = 21
          UseDockManager = False
          Bevel.StyleInner = bvLowered
          Bevel.Mode = bmCustom
          Caption = 'Total de Técnicos na data'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 13882323
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.Style = gstTopRightDiagonal
          FillObject.Gradient.EndColor = 16514043
          TabOrder = 12
        end
        object LMDPanelFill3: TLMDPanelFill
          Left = 11
          Top = 146
          Width = 146
          Height = 21
          UseDockManager = False
          Bevel.StyleInner = bvLowered
          Bevel.Mode = bmCustom
          Caption = 'Capital Social'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 13882323
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.Style = gstTopRightDiagonal
          FillObject.Gradient.EndColor = 16514043
          TabOrder = 13
        end
        object LMDPanelFill4: TLMDPanelFill
          Left = 11
          Top = 168
          Width = 146
          Height = 21
          UseDockManager = False
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.StyleInner = bvLowered
          Bevel.Mode = bmCustom
          Caption = 'Faturamento Anual'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 13882323
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.Style = gstTopRightDiagonal
          FillObject.Gradient.EndColor = 16514043
          TabOrder = 14
        end
        object DED_NTOTEMPREG: TDBEdit
          Left = 159
          Top = 102
          Width = 111
          Height = 21
          DataField = 'NTOTEMPREG'
          DataSource = DTM_A001AD.DTS_031
          MaxLength = 10
          TabOrder = 6
        end
        object DED_NTOTTECNIC: TDBEdit
          Left = 159
          Top = 124
          Width = 111
          Height = 21
          DataField = 'NTOTTECNIC'
          DataSource = DTM_A001AD.DTS_031
          MaxLength = 10
          TabOrder = 7
        end
        object DED_NCAPSOCIAL: TDBEdit
          Left = 159
          Top = 146
          Width = 111
          Height = 21
          DataField = 'NCAPSOCIAL'
          DataSource = DTM_A001AD.DTS_031
          MaxLength = 16
          TabOrder = 8
        end
        object DED_NFATUANUAL: TDBEdit
          Left = 159
          Top = 168
          Width = 111
          Height = 21
          DataField = 'NFATUANUAL'
          DataSource = DTM_A001AD.DTS_031
          MaxLength = 16
          TabOrder = 9
        end
        object LMDPanelFill8: TLMDPanelFill
          Left = 9
          Top = 83
          Width = 552
          Height = 19
          UseDockManager = False
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = 'Informações Financeiras'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 15
        end
        object DBM_CATIVIDADE: TDBMemo
          Left = 276
          Top = 118
          Width = 285
          Height = 71
          DataField = 'CATIVIDADE'
          DataSource = DTM_A001AD.DTS_016
          MaxLength = 1900
          ScrollBars = ssVertical
          TabOrder = 10
          OnKeyPress = DBM_CATIVIDADEKeyPress
        end
        object DED_CPESSCERTF: TDBEdit
          Left = 219
          Top = 55
          Width = 343
          Height = 21
          DataField = 'CPESSCERTF'
          DataSource = DTM_A001AD.DTS_031
          TabOrder = 16
        end
        object DED_CCPFRESP: TDBEdit
          Left = 12
          Top = 204
          Width = 89
          Height = 21
          DataField = 'CCPFRESP'
          DataSource = DTM_A001AD.DTS_031
          TabOrder = 17
          OnExit = DED_CCPFRESPExit
        end
        object DED_CNOMERESP: TDBEdit
          Left = 102
          Top = 204
          Width = 460
          Height = 21
          DataField = 'CNOMERESP'
          DataSource = DTM_A001AD.DTS_031
          TabOrder = 18
        end
      end
    end
    object TSH_BANCOS: TTabSheet
      Cursor = crHandPoint
      Caption = 'Bancos'
      ImageIndex = 7
      object LMDSimplePanel2: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 568
        Height = 230
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object Label9: TLabel
          Left = 13
          Top = 26
          Width = 39
          Height = 13
          Caption = '  Código'
        end
        object Label11: TLabel
          Left = 82
          Top = 26
          Width = 35
          Height = 13
          Caption = '  Banco'
        end
        object Label15: TLabel
          Left = 384
          Top = 26
          Width = 59
          Height = 13
          Caption = '  Nº Agência'
        end
        object Label16: TLabel
          Left = 456
          Top = 26
          Width = 81
          Height = 13
          Caption = '  Conta Corrente'
        end
        object GRD_TBXBCO: TDBGrid
          Left = 11
          Top = 74
          Width = 548
          Height = 147
          DataSource = DTM_A001AD.DTS_038
          FixedColor = clSilver
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'LKP_CDESCBANCO'
              Title.Caption = 'Banco'
              Width = 269
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAGENCIA'
              Title.Caption = 'Nº Agência'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCONTCORRE'
              Title.Caption = 'Conta Corrente'
              Width = 155
              Visible = True
            end>
        end
        object LMDPanelFill5: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Cadastro de Conta Corrente'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 4
          object Btn_Retroceder1: TSpeedButton
            Left = 466
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
            Left = 494
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
          object Btn_Cancelar1: TSpeedButton
            Left = 366
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
            Left = 402
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
            Left = 338
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
            Left = 275
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
          object Btn_PrimeiroReg: TSpeedButton
            Left = 437
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_PrimeiroRegClick
          end
          object Btn_UltimoReg: TSpeedButton
            Left = 522
            Top = 0
            Width = 27
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_UltimoRegClick
          end
          object Btn_Alterar1: TSpeedButton
            Left = 303
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
        object DED_CDESCBANCO: TDBEdit
          Left = 80
          Top = 40
          Width = 303
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'LKP_CDESCBANCO'
          DataSource = DTM_A001AD.DTS_038
          TabOrder = 1
        end
        object DED_CAGENCIA: TDBEdit
          Left = 383
          Top = 40
          Width = 72
          Height = 21
          DataField = 'CAGENCIA'
          DataSource = DTM_A001AD.DTS_038
          TabOrder = 2
        end
        object DED_CCONTCORRE: TDBEdit
          Left = 455
          Top = 40
          Width = 104
          Height = 21
          DataField = 'CCONTCORRE'
          DataSource = DTM_A001AD.DTS_038
          TabOrder = 3
        end
        object CBE_NCODBANCO: TComboEdit
          Left = 11
          Top = 40
          Width = 69
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
          MaxLength = 5
          NumGlyphs = 1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnButtonClick = CBE_NCEPButtonClick
          OnExit = CBE_NCODBANCOExit
          OnKeyPress = CBE_NCEPKeyPress
        end
      end
    end
    object TSH_DOCUMEN: TTabSheet
      Caption = 'Documentação'
      ImageIndex = 6
      object LMDSimplePanel4: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 568
        Height = 230
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object DBG_DOC: TDBGrid
          Left = 6
          Top = 24
          Width = 558
          Height = 201
          DataSource = DTM_A001AD.DTS_034
          FixedColor = clSilver
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBG_DOCCellClick
          OnColEnter = DBG_DOCColEnter
          OnDrawColumnCell = DBG_DOCDrawColumnCell
          OnKeyDown = DBG_DOCKeyDown
          OnKeyPress = DBG_DOCKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'LKP_CDESCDOC'
              ReadOnly = True
              Title.Caption = 'Documento'
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CENTREGUE'
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Wingdings'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'E'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CDISPENSA'
              Font.Charset = SYMBOL_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Wingdings'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'D'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNUMDOC'
              Title.Alignment = taCenter
              Title.Caption = 'nº Documento'
              Width = 241
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DDATAVALID'
              Title.Alignment = taCenter
              Title.Caption = 'Validade'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSTATUS'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'ST'
              Width = 19
              Visible = True
            end>
        end
        object LMDPanelFill9: TLMDPanelFill
          Left = 7
          Top = 5
          Width = 556
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Documentação Exigida'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 1
          object Btn_Retroceder4: TSpeedButton
            Left = 468
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
              7000777777077777700077777700777770007777770607777000770000066077
              7000770666666607700077066666666070007706666666077000770000066077
              7000777777060777700077777700777770007777770777777000777777777777
              7000}
            OnClick = Btn_Avancar4Click
          end
          object Btn_PrimeiroReg3: TSpeedButton
            Left = 439
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_PrimeiroReg3Click
          end
          object Btn_UltimoReg3: TSpeedButton
            Left = 524
            Top = 0
            Width = 27
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_UltimoReg3Click
          end
        end
      end
    end
    object TSH_REFERCLI: TTabSheet
      Cursor = crHandPoint
      Caption = 'Referência de Clientes'
      ImageIndex = 1
      object LMDSimplePanel3: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 568
        Height = 230
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object Label21: TLabel
          Left = 14
          Top = 28
          Width = 69
          Height = 13
          Caption = '  Nome Cliente'
        end
        object Label26: TLabel
          Left = 12
          Top = 68
          Width = 56
          Height = 13
          Caption = '  Localidade'
        end
        object Label27: TLabel
          Left = 278
          Top = 68
          Width = 45
          Height = 13
          Caption = '  Contato'
        end
        object Label33: TLabel
          Left = 462
          Top = 68
          Width = 21
          Height = 13
          Caption = 'DDD'
        end
        object Label34: TLabel
          Left = 487
          Top = 68
          Width = 48
          Height = 13
          Caption = '  Telefone'
        end
        object Label3: TLabel
          Left = 254
          Top = 68
          Width = 16
          Height = 13
          Caption = ' UF'
        end
        object GRD_TAGRCL: TDBGrid
          Left = 11
          Top = 116
          Width = 549
          Height = 105
          DataSource = DTM_A001AD.DTS_036
          FixedColor = clSilver
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CNOMECLIRE'
              Width = 319
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCONTCLIRE'
              Width = 130
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFONECLIRE'
              Width = 66
              Visible = True
            end>
        end
        object LMDPanelFill6: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Clientes'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 6
          object Btn_Retroceder2: TSpeedButton
            Left = 466
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
            OnClick = Btn_Retroceder2Click
          end
          object Btn_Avancar2: TSpeedButton
            Left = 494
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
            OnClick = Btn_Avancar2Click
          end
          object Btn_Cancelar2: TSpeedButton
            Left = 366
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
            OnClick = Btn_Cancelar2Click
          end
          object btn_Excluir2: TSpeedButton
            Left = 402
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
            OnClick = btn_Excluir2Click
          end
          object Btn_Gravar2: TSpeedButton
            Left = 338
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
            OnClick = Btn_Gravar2Click
          end
          object Btn_Incluir2: TSpeedButton
            Left = 275
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
            OnClick = Btn_Incluir2Click
          end
          object Btn_PrimeiroReg1: TSpeedButton
            Left = 437
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_PrimeiroReg1Click
          end
          object Btn_UltimoReg1: TSpeedButton
            Left = 522
            Top = 0
            Width = 27
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_UltimoReg1Click
          end
          object Btn_Alterar2: TSpeedButton
            Left = 303
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
            OnClick = Btn_Alterar2Click
          end
        end
        object DED_CNOMECLIRE: TDBEdit
          Left = 11
          Top = 42
          Width = 550
          Height = 21
          DataField = 'CNOMECLIRE'
          DataSource = DTM_A001AD.DTS_036
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DED_CCONTCLIRE: TDBEdit
          Left = 276
          Top = 82
          Width = 184
          Height = 21
          DataField = 'CCONTCLIRE'
          DataSource = DTM_A001AD.DTS_036
          TabOrder = 2
        end
        object DED_CFONECLIRE: TDBEdit
          Left = 486
          Top = 82
          Width = 75
          Height = 21
          DataField = 'CFONECLIRE'
          DataSource = DTM_A001AD.DTS_036
          TabOrder = 4
          OnEnter = DED_FONEGRLEnter
          OnExit = DED_FONEGRLExit
        end
        object DED_CDDD_2: TDBEdit
          Left = 460
          Top = 82
          Width = 26
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDDD'
          DataSource = DTM_A001AD.DTS_012_01
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CBE_CNOMELOC: TComboEdit
          Left = 11
          Top = 82
          Width = 240
          Height = 21
          Color = 14281964
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
          TabOrder = 1
          OnButtonClick = CBE_NCEPButtonClick
          OnExit = CBE_CNOMELOCExit
        end
        object DED_CSIGLAUF_1: TDBEdit
          Left = 251
          Top = 82
          Width = 25
          Height = 21
          Color = 14281964
          DataField = 'UFLOC'
          DataSource = DTM_A001AD.DTS_012_01
          TabOrder = 7
        end
      end
    end
    object TSH_REFERFOR: TTabSheet
      Cursor = crHandPoint
      Caption = 'Referência de Fornecedores'
      ImageIndex = 2
      object LMDSimplePanel1: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 568
        Height = 230
        UseDockManager = False
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Color = clSilver
        TabOrder = 0
        object Label36: TLabel
          Left = 14
          Top = 28
          Width = 91
          Height = 13
          Caption = '  Nome Fornecedor'
        end
        object Label39: TLabel
          Left = 12
          Top = 68
          Width = 56
          Height = 13
          Caption = '  Localidade'
        end
        object Label40: TLabel
          Left = 278
          Top = 68
          Width = 45
          Height = 13
          Caption = '  Contato'
        end
        object Label41: TLabel
          Left = 462
          Top = 68
          Width = 21
          Height = 13
          Caption = 'DDD'
        end
        object Label42: TLabel
          Left = 488
          Top = 68
          Width = 48
          Height = 13
          Caption = '  Telefone'
        end
        object Label18: TLabel
          Left = 254
          Top = 68
          Width = 16
          Height = 13
          Caption = ' UF'
        end
        object GRD_TAGRFN: TDBGrid
          Left = 11
          Top = 116
          Width = 549
          Height = 105
          TabStop = False
          DataSource = DTM_A001AD.DTS_035
          FixedColor = clSilver
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CNOMEREFOR'
              Width = 319
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CCONTREFOR'
              Width = 130
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CFONEREFOR'
              Width = 66
              Visible = True
            end>
        end
        object LMDPanelFill7: TLMDPanelFill
          Left = 9
          Top = 5
          Width = 552
          Height = 19
          UseDockManager = False
          Alignment = agCenterLeft
          BackFX.AlphaBlend.Strength = 0.600000023841858
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          Caption = '  Fornecedores'
          FillObject.Style = sfGradient
          FillObject.Gradient.Color = 16053492
          FillObject.Gradient.ColorCount = 100
          FillObject.Gradient.EndColor = 10066329
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          FontFX.Style = tdSunken
          ParentFont = False
          TabOrder = 6
          object Btn_Retroceder3: TSpeedButton
            Left = 466
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
            OnClick = Btn_Retroceder3Click
          end
          object Btn_Avancar3: TSpeedButton
            Left = 494
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
            OnClick = Btn_Avancar3Click
          end
          object Btn_Cancelar3: TSpeedButton
            Left = 366
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
            OnClick = Btn_Cancelar3Click
          end
          object Btn_Excluir3: TSpeedButton
            Left = 402
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
            OnClick = Btn_Excluir3Click
          end
          object Btn_Gravar3: TSpeedButton
            Left = 338
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
            OnClick = Btn_Gravar3Click
          end
          object Btn_Incluir3: TSpeedButton
            Left = 275
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
            OnClick = Btn_Incluir3Click
          end
          object Btn_PrimeiroReg2: TSpeedButton
            Left = 437
            Top = 0
            Width = 28
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_PrimeiroReg2Click
          end
          object Btn_UltimoReg2: TSpeedButton
            Left = 522
            Top = 0
            Width = 27
            Height = 19
            Cursor = crHandPoint
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
            OnClick = Btn_UltimoReg2Click
          end
          object Btn_Alterar3: TSpeedButton
            Left = 303
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
            OnClick = Btn_Alterar3Click
          end
        end
        object DED_CNOMEREFOR: TDBEdit
          Left = 11
          Top = 42
          Width = 550
          Height = 21
          DataField = 'CNOMEREFOR'
          DataSource = DTM_A001AD.DTS_035
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DED_CCONTREFOR: TDBEdit
          Left = 276
          Top = 82
          Width = 184
          Height = 21
          DataField = 'CCONTREFOR'
          DataSource = DTM_A001AD.DTS_035
          TabOrder = 2
        end
        object DED_CFONEREFOR: TDBEdit
          Left = 486
          Top = 82
          Width = 75
          Height = 21
          DataField = 'CFONEREFOR'
          DataSource = DTM_A001AD.DTS_035
          TabOrder = 4
          OnEnter = DED_FONEGRLEnter
          OnExit = DED_FONEGRLExit
        end
        object DED_CDDD_3: TDBEdit
          Left = 460
          Top = 82
          Width = 26
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDDD'
          DataSource = DTM_A001AD.DTS_012
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CBE_CNOMELOC_1: TComboEdit
          Left = 11
          Top = 82
          Width = 240
          Height = 21
          Color = 14281964
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
          TabOrder = 1
          Text = 'CBE_CNOMELOC'
          OnButtonClick = CBE_NCEPButtonClick
          OnExit = CBE_CNOMELOCExit
        end
        object DED_CSIGLAUF_2: TDBEdit
          Left = 251
          Top = 82
          Width = 25
          Height = 21
          Color = 14281964
          DataField = 'UFLOC'
          DataSource = DTM_A001AD.DTS_012
          TabOrder = 7
        end
      end
    end
  end
  object IMl_Servidor: TImageList
    Left = 502
    Top = 17
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000000000006B6B6B0039393900525252004A4A4A004A4A4A004242
      420042424200393939005A5A5A00000000008400840084008400840084008400
      8400840084008400840084008400000000000000000000000000000000005200
      2900840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700D6D6E700CECE
      E700CECEE700CECEE7004A4A5A005A5A6B008484940084848C0094949400C6C6
      C600CECECE00BDBDBD003131310063634A008400840084008400840084005200
      520000000000000000000021290000FFFF0000B5AD0000FFFF0000FFFF00004A
      5200520052008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000094949C00B5B50000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000DEDE000042423900B5B5
      BD00BDBDBD00ADADB50031311000D6D600008400840084008400840084002121
      210010101000006B84000084840000DED6000094AD000084840000848400006B
      8400212121008400840084008400840084000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000BD
      BD0000BDBD0000000000000000000000000084848C0042425200BDBD0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000D6D60000212118004242
      420039393900B5B5BD0031311000D6D60000840084005200290010101000004A
      52000084840000FFFF0000DED600008484000094AD0000B5AD0000B5AD000084
      8400006B840010101000520029008400840000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BDBD000000
      000000FFFF0000BDBD0000000000000000002929100052522900BDBD0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000D6D6000031310000A5A5
      2900A5A53900B5B5CE0029291800CECE00008400840008080800080808000084
      840000DED60000FFFF0000FFFF0000FFFF0000B5AD0000848400008484000084
      8400008484000808080008080800840084000000000000000000000084000000
      8400000084000000840000008400000084000000840000008400000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BDBD000000000000FF
      FF000000000000FFFF0000000000000000005252210084843900B5B50000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000CECE000042420000E7E7
      4A00E7E76B00636352007B7B0800FFFF00005200290000DED60000FFFF0000B5
      AD0000B5AD0000FFFF0000FFFF0000DED60000DED60000FFFF0000FFFF0000B5
      AD0000B5AD0000848400006B8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD000000000000FFFF000000
      000000FFFF000000000000000000000000005252210084843100A5A50000DEDE
      0000DEDE0000DEDE0000DEDE0000DEDE0000EFEF0000BDBD0000212108002121
      0800A5A521009C9C9C009C9C9C0094949C005200290000DED60000FFFF0000B5
      AD0000B5AD0000B5AD0000B5D60000DED60000DED60000FFFF0000FFFF0000B5
      AD000094AD0000848400006B8400000000000000000000000000848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000840000008400000000000000000000000000000000000000
      0000000000000000000000BDBD0000BDBD000000000000FFFF000000000000FF
      FF000000000084848400FFFFFF000000000052522100DEDE52007B7B21006363
      180063631800636321006363210063631800393900006B6B2900C6C66B005252
      2900949429000000000000000000000000005200290000DED60000FFFF0000B5
      AD0000B5AD00008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000DE
      D60000B5AD0000848400006B8400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000840000000000000000000000000000BDBD0000BD
      BD0000BDBD0000BDBD00000000000000000000FFFF000000000000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000004A4A1800F7F76B00F7F76B00F7F7
      6B00F7F76B00F7F76B00F7F76B00FFFF730042422100FFFF9400FFFF84004A4A
      21009C9C2900FFFFFF0000000000000000005200290000DED60000FFFF0000B5
      AD0000B5AD00008484000084840000B5AD0000FFFF00002129000021290000DE
      D6000084840000FFFF0000DED600000000000000000000000000000000000000
      0000FFFFFF00FFFFFF008484840000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000BDBD000000000000FF
      FF000000000000FFFF0000BDBD0000FFFF000000000000FFFF00000000008484
      8400FFFFFF0084848400FFFFFF0000000000737342007B7B3100848431008484
      3100848431007B7B31007B7B31008484390052521000FFFF8400FFFF84004242
      21004A4A1800FFFFFF0000000000000000005200290000DED60000FFFF000084
      840000848400008484000084840000B5AD0000FFFF0000FFFF0000FFFF0000B5
      AD0000B5AD0000FFFF0000DED600000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000BDBD0000FFFF000000000000BDBD0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000CECED6008484
      4200FFFF9400FFFF8C00FFFF7B00FFFF8C00FFFF8C00FFFF8C00FFFF7B006363
      4200000000000000000000000000000000005200290000DED60000FFFF0000B5
      AD000084840000848400008484000094AD0000B5AD0000B5AD0000B5AD0000B5
      AD0000DED60000848400006B8400520052000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF008484840000000000000000000000
      000000000000FFFFFF0000000000000000000000000000FFFF0000FFFF0000BD
      BD0000FFFF0000BDBD0000FFFF0000FFFF000000000000000000FFFFFF008484
      8400FFFFFF0084848400FFFFFF00000000000000000000000000CECED6007373
      5200CECE6300A5A56B006B6B52006B6B5200CEC66300BDBD5200B5B54A007373
      6B00F7F7FF000000000000000000000000008400840000215200004A520000DE
      D6000084840000DED60000DED6000084840000848400008484000084840000DE
      FF0000B5D6000808080008080800840084000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000848484008484840000BDBD000000
      000000BDBD0000FFFF0000BDBD0000FFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6
      CE00100810007B7B8400948C940008293100103942008484840084848400E7E7
      EF00FFFFFF0000000000000000000000000084008400080808000021290000FF
      FF0000B5AD000084840000848400008484000021290000DED60000FFFF0000FF
      FF00006B52008400840084008400840084000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000BDBD0000FFFF0000BDBD0000FFFF0000000000FFFFFF008484
      8400FFFFFF0084848400FFFFFF0000000000B5B5B500C6C6C600BDBDBD00948C
      8C008C9494009CB5B5007B6B6B004A737300427B7B0000000000000000000000
      000000000000000000000000000000000000840084008400840084008400006B
      520000FFFF00008484000084840000B5AD0000B5AD0000FFFF0000FFFF000094
      AD00520052008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00848484000000
      000000BDBD0000FFFF0000BDBD0000FFFF000000000000000000FF000000FF00
      0000FF000000FF000000FF000000000000009CFFFF00080000006BCECE00A5FF
      FF0084FFFF0084FFFF006BDEDE006B9C9C00C6B5B50000000000000000000000
      0000000000000000000000000000000000008400840084008400840084000021
      52000084840000B5AD0000B5AD000094AD000094AD0000B5AD0000B5AD00004A
      5200520052008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF008484840000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000395A5A000800000029424200295A
      5A00315A5A002963630039636300C6B5B5000000000000000000000000000000
      0000000000000000000000000000000000008400840084008400840084008400
      84005200520000215200004A2900002129000021290000212900002129008400
      8400840084008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC010000FFFFFFFF80000000E01FFFE3
      80000000C00FFFC1000000008007FF81000000000003FF01000000000001FC00
      000000008000C00000070000C000800000030000E000280000030000F0004200
      C00F0000F8010000C0070000FC010080E0070000FE015000007F0000FF1F0080
      007F0000FFFF810000FF0000FFFFC0FF00000000FDFFFFFF00000000F87FFC03
      00000000F03FC00000000000C00FC000000000005003000000000000C0010000
      000000000000000000000000A0010007000000009001000700000000EC130007
      00000000F003E01F00000000D803E01F00000000FC07E21F00000000EDFFE7FF
      00000000FDFF19FF00000000FB3F3FFF00000000000000000000000000000000
      000000000000}
  end
end
