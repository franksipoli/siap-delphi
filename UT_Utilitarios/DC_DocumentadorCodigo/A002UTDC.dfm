object FRM_A002UTDC: TFRM_A002UTDC
  Left = 121
  Top = 24
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  Cadastro de Documenta��o dos C�digos'
  ClientHeight = 495
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
    Height = 495
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
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
    Height = 97
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Identifica��o da UNIT '
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
    object Label3: TLabel
      Left = 11
      Top = 14
      Width = 39
      Height = 13
      Caption = '  C�digo'
    end
    object Label4: TLabel
      Left = 66
      Top = 14
      Width = 70
      Height = 13
      Caption = '  Nome da Unit'
    end
    object Label12: TLabel
      Left = 11
      Top = 54
      Width = 33
      Height = 13
      Caption = '  Autor'
    end
    object Label13: TLabel
      Left = 175
      Top = 54
      Width = 28
      Height = 13
      Caption = ' In�cio'
    end
    object Label7: TLabel
      Left = 175
      Top = 14
      Width = 89
      Height = 13
      Caption = '  Descri��o da Unit'
    end
    object BTN_LOCAL: TSpeedButton
      Left = 258
      Top = 49
      Width = 28
      Height = 19
      Enabled = False
      Flat = True
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C30E0000C30E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
        60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
        B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
        1D007666280000450000013E450013286A006A39850085324A00040404000808
        08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
        5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
        840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
        0000000039009B00000000250000000049003B111100002F000000005D004517
        1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
        00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
        2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
        A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
        2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
        89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
        AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
        0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
        0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
        42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
        890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
        C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
        FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
        F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
        FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
        CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
        8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
        7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
        BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
        88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
        A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0F0F
        0F0E0E0E0E0E0E0E0E00000000000F0F0F0F0F0F0F110E110E110E110E000E0E
        0E000F0F0F0F0F0F0F0E0E0E0E0E0E0E0000000000000F0F0F0F0F0F0F110E11
        0E110E000E110E110E110F0F0F0F0F0F0F0E00000000000E0E00000000000F0F
        0F0F0F0F0F11000E0E0E000000000E0E0E000F0F0F0F0F0F0F0E00000000000E
        0E00000000000F0F0F0F0F0F00110E110E110E000E110E110E110F0F0F0F0F00
        02000E0E0E0E0E0E0000000000000F0F0F0F0F00020300110E110E110E000E0E
        0E000F0F0F0F0F00020203000E0E0E0E0E00000000000F0F0F0F000302020210
        00110E110E110E110E110F0F0F0F00010102101010000E0E0E0E0E0E0E0E0F0F
        0F0001010E0E10101010000F0F0F0F0F0F0F0F0F0001010E0E0E0E0000000F0F
        0F0F0F0F0F0F0F0001010E0E0E00000F0F0F0F0F0F0F0F0F0F0F0001010E0E0E
        000F0F0F0F0F0F0F0F0F0F0F0F0F00010E0E0E00100F0F0F0F0F0F0F0F0F0F0F
        0F0F0F000E0E00100F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F
        0F0F0F0F0F0F0F0F0F0F}
      OnClick = BTN_LOCALClick
    end
    object DED_NIDTBLUNI: TDBEdit
      Left = 8
      Top = 28
      Width = 55
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'NIDTBLUNI'
      DataSource = DTM_A001UTDC.DTS_049
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DED_CAUTOR: TDBEdit
      Left = 8
      Top = 68
      Width = 163
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CAUTOR'
      DataSource = DTM_A001UTDC.DTS_049
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBD_DDATADOC: TDBDateEdit
      Left = 173
      Top = 68
      Width = 85
      Height = 21
      DataField = 'DDATADOC'
      DataSource = DTM_A001UTDC.DTS_049
      CheckOnExit = True
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 4
    end
    object DED_CDESC: TDBEdit
      Left = 173
      Top = 28
      Width = 388
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CDESC'
      DataSource = DTM_A001UTDC.DTS_049
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DED_CCAMINHO: TDBEdit
      Left = 258
      Top = 67
      Width = 303
      Height = 21
      CharCase = ecUpperCase
      Color = 14281964
      DataField = 'CCAMINHO'
      DataSource = DTM_A001UTDC.DTS_049
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = DED_CCAMINHOKeyPress
    end
    object DBC_CNOMEUNIT: TRxDBComboEdit
      Left = 64
      Top = 28
      Width = 111
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMEUNIT'
      DataSource = DTM_A001UTDC.DTS_049
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
      OnButtonClick = DBC_CNOMEUNITButtonClick
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 10
    Top = 104
    Width = 568
    Height = 57
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Objetivo'
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
    object DBM_COBJETIVO: TDBMemo
      Left = 2
      Top = 15
      Width = 564
      Height = 40
      Align = alClient
      BorderStyle = bsNone
      Color = clSilver
      DataField = 'COBJETIVO'
      DataSource = DTM_A001UTDC.DTS_049
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBM_COBJETIVOKeyPress
    end
  end
  object LMDGroupBox4: TLMDGroupBox
    Left = 10
    Top = 164
    Width = 568
    Height = 329
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Cadastros '
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
    object Label2: TLabel
      Left = 11
      Top = 103
      Width = 26
      Height = 13
      Caption = '  Tipo'
    end
    object Label5: TLabel
      Left = 157
      Top = 102
      Width = 33
      Height = 13
      Caption = '  Nome'
    end
    object Label6: TLabel
      Left = 320
      Top = 103
      Width = 58
      Height = 13
      Caption = ' Atualiza��o'
    end
    object Label8: TLabel
      Left = 406
      Top = 103
      Width = 60
      Height = 13
      Caption = '  Atualizador'
    end
    object Label9: TLabel
      Left = 11
      Top = 140
      Width = 143
      Height = 13
      Caption = '  Nome das Vari�veis Publicas '
    end
    object Label10: TLabel
      Left = 12
      Top = 177
      Width = 143
      Height = 13
      Caption = '  Nome das Vari�veis Privadas'
    end
    object Label11: TLabel
      Left = 12
      Top = 213
      Width = 131
      Height = 13
      Caption = '  Nome das Vari�veis Locais'
    end
    object Label1: TLabel
      Left = 11
      Top = 250
      Width = 104
      Height = 13
      Caption = '  Descritivo do C�digo'
    end
    object DBG_DETALHE: TDBGrid
      Left = 8
      Top = 40
      Width = 552
      Height = 60
      Color = 14281964
      DataSource = DTM_A001UTDC.DTS_050
      FixedColor = clSilver
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CTIPO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOME'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDATAINI'
          Title.Alignment = taCenter
          Title.Caption = 'In�cio'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDATAATU'
          Title.Alignment = taCenter
          Title.Caption = 'Atualiza��o'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMEPRG'
          Title.Alignment = taCenter
          Title.Caption = 'Atualizador'
          Width = 146
          Visible = True
        end>
    end
    object LMDPanelFill5: TLMDPanelFill
      Left = 8
      Top = 17
      Width = 552
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = '  Fun��es e Procedimentos'
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
      TabOrder = 9
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
    object DBC_CTIPO: TDBComboBox
      Left = 8
      Top = 117
      Width = 145
      Height = 21
      DataField = 'CTIPO'
      DataSource = DTM_A001UTDC.DTS_050
      ItemHeight = 13
      Items.Strings = (
        'FUNCAO'
        'PROCEDIMENTO')
      TabOrder = 1
    end
    object DBE_CNOME: TDBEdit
      Left = 154
      Top = 117
      Width = 163
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOME'
      DataSource = DTM_A001UTDC.DTS_050
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBD_DDATAATU: TDBDateEdit
      Left = 318
      Top = 117
      Width = 85
      Height = 21
      DataField = 'DDATAATU'
      DataSource = DTM_A001UTDC.DTS_050
      CheckOnExit = True
      Color = clWhite
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBE_CNOMEPRG: TDBEdit
      Left = 403
      Top = 117
      Width = 158
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMEPRG'
      DataSource = DTM_A001UTDC.DTS_050
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBE_CVARPUB: TDBEdit
      Left = 8
      Top = 154
      Width = 553
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CVARPUB'
      DataSource = DTM_A001UTDC.DTS_050
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBE_CVARPRI: TDBEdit
      Left = 8
      Top = 191
      Width = 553
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CVARPRI'
      DataSource = DTM_A001UTDC.DTS_050
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBE_CVARLOC: TDBEdit
      Left = 8
      Top = 227
      Width = 553
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CVARLOC'
      DataSource = DTM_A001UTDC.DTS_050
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBM_CDESCRI: TDBMemo
      Left = 8
      Top = 264
      Width = 553
      Height = 61
      DataField = 'CDESCRI'
      DataSource = DTM_A001UTDC.DTS_050
      ScrollBars = ssVertical
      TabOrder = 8
      OnKeyPress = DBM_CDESCRIKeyPress
    end
  end
end
