object FRM_A036RH: TFRM_A036RH
  Left = 119
  Top = 15
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Cadastro de Cargos'
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
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBB00BBBB00BBB000000000000BBB00BBB
    B00BBBB00BBBB00000000000BBB00BBBB00BBBB00BBBBB000000000BBBB00BBB
    B00BBBB00BBBB000000000BBBBB00BBBBB00BBB000BBB0BBBB000BBBBBB00BBB
    BB000BB000B00BBBBBBBBBBBBBB00BBBBBB00BB000B00BBBBBBBBBBBBBB00BBB
    BBB000B00000BBBBBBBBBBBBBBB00BBBBBBB00000000BBBBBBBBBBBBBBB00BBB
    BBBB00000B00BBBBBBBBBBBBBBB00BBBBBBB00000B00BBBBBBBBBBBBBBB00BBB
    BBB00000000BBBBBBBBBBBBBBBB00BBBBBB00000000BBBBBBBBBBBBBBBB00BBB
    BBBB0B00000BBBBBBBBBBBBBBBB00BBBBBBB00B0000BBBBBBBBBBBBBBBB00BBB
    BBBB0000000BBBBBBBBBBBBBBBB00BBBBBBBB0000000BBBBBBBBBBBBBBB00BBB
    BBBBBBBBB0000BBBBBBBBBBBBBB00BBBBBBBBBBBBB000BBBBBBBBBBBBBB00BBB
    BBBBBBBBBB00BBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB0000000000000000000000000000000000000
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
    object BTN_INCLUIR: TSpeedButton
      Left = 1
      Top = 100
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Incluir'
      Flat = True
      Margin = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_INCLUIRClick
    end
    object BTN_ALTERAR: TSpeedButton
      Left = 1
      Top = 130
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Alterar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_ALTERARClick
    end
    object BTN_CANCELAR: TSpeedButton
      Left = 1
      Top = 190
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Cancelar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_CANCELARClick
    end
    object BTN_PESQUISAR: TSpeedButton
      Left = 1
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Pesquisar'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_PESQUISARClick
    end
    object BTN_IMPRIMIR: TSpeedButton
      Left = 1
      Top = 250
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_IMPRIMIRClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 340
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
      Top = 40
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Próximo'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_AVANCARClick
    end
    object BTN_RETROCEDER: TSpeedButton
      Left = 1
      Top = 70
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Anterior'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_RETROCEDERClick
    end
    object BTN_EXCLUIR: TSpeedButton
      Left = 1
      Top = 220
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Excluir'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_EXCLUIRClick
    end
    object BTN_GRAVAR: TSpeedButton
      Left = 1
      Top = 160
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Gravar'
      Flat = True
      Margin = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_GRAVARClick
    end
    object BTN_HORARIO: TSpeedButton
      Left = 1
      Top = 280
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Quadro de Horários'
      Flat = True
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0BFBFBFCFCFD0BDBDB70000002A14190B001D0A001D0F00150F00181A14
        45000000BABDBDCFCFCFBFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C2C1C2C9
        CDCA0000003739671C003B5800916800D76700D56300CD6C00D12B007E1A0041
        4D3333000000CDCDCDC1C1C1C0C0C0C0C0C0C0C0C0C2C1C2C0C0C00000007900
        B0380089320073370042391F4D432857341C4C16134222262F032646000F0F00
        090B1F1F15B2B2AEC5C5C6C0C0C0BFBFBFC9CEC90000008200B05900B9000000
        2225217A7C76F0F5ECF1FFED9F9684008880D2FFFF41FFFF00B0B1005C4E0000
        35000000CECEC9BFBFBFCFCFD00000007800B15900B70000008B9695DFDFDFFF
        FFFFFFFFFFF36BF3DB5AD54A7A6FDAD6D6A6FFFF00A09600174C3400950D006E
        000000CFCFCFBFBEB828365C320087000000888E8AFEFFFFFFFFFFFFFFFFFFFF
        FFFFEBFFFFF4FF5F5A582ECFCFA5FFFF00A6A50000000000643100554C3625BA
        BEBF808C734E00923F0093343C36D6D6D6EFEEEEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBDBDBD246B6B426E6E0144449191903B3C2E6900D419004B868C800000
        007F00D035033873756EF3F3F3E0E0E0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3E3232453D3D190D0DFFFFFF8C8F8D2706963300860000000000005C00B9
        201B1BD5D7D3E5EAEADFE0E0DEDEDEFAFAFAFFFFFFFFFFFFFFFFFFFFFFFF8484
        846E6E6EDDDEDDFFFFFFFFFFFF3827526400C614001E0000005D00B6201A21D5
        DDD9BA7676D9CECEDFE1E1DDDDDDFFFFFFE5E5E5000000EBEBEBFFFFFFFFFFFF
        FFF1FFEE65EEECF7E63E29596000C30000000000006100C11D1A26D5DCD7A35F
        5FD5CACAE0E2E2E7E7E7D3D3D3000000818181000000EEEEEEFFFFFFFFECFFEE
        65EEE7F7E64429586700CC0000000000006400C11C1B26D4D6D1E8EDEDE3E4E4
        EAEAEAD2D2D2000000ACACACFFFFFFBDBDBD0000008F8F8FFEFFFEFFFFFFFFFF
        FF4127536700D200000000000041009E15046D000000DEDEDED3D3D3C1C1C100
        0000ACACACE9E9E9DFDFDFFFFFFF8F8F8F000000FDFDFDFFFFFF0000007206B5
        5800900000000000003D008D40007E2A2C1CC3C3C39F9FA0000000A3A3A3ECEC
        ECE1E2E2DFE1E1DEDEDEFFFFFFFFFFFFFFFFFFE3E3E42F3A305800C71E003900
        0000B7BEB86636568200F8030067000000E6E6E4A6A6A6D6D6D6E3E4E4D5CACA
        DACFCFDFE0E0DDDDDDFFFFFFFFFFFF0000005F006A5D00DF2B3660BEBEB7D0CF
        D00000002200A09000FF170B7A000000C1C1C0DEDEDEE7EDEDA35F5FBB7676E4
        EAEAF3F3F3D8D9D70000007B0D837300E1290010000000CFCFD0BFBFBFCECECA
        0000002D00A79100FF030063000000656765D4D5D1D5DCD7D5DDD9D5D7D27577
        723539345B006A7300EF2E0020000000CCCECEBFBFBFC0C0C0C1C1C2D1D0C900
        00002200988000DF41007F15006D1F1C261D1A26211A21211B2427001F5D00C5
        6200DF280013000000CCD0D1C1C1C1C0C0C0C0C0C0C0C0C0C1C1C2CDCDCA0000
        006739563F008D3E00A26400C66100CA5D00BE5E00C26F00BD1F004034396100
        0000CCCDCDC1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFD0CFD0B7BDB8
        000000000000000000000000000000000000000000000000BDBDB7CFCFD0BFBF
        BFC0C0C0C0C0C0C0C0C0}
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_HORARIOClick
    end
    object SpeedButton11: TSpeedButton
      Left = 1
      Top = 310
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Histórico de Movimentação'
      Flat = True
      Glyph.Data = {
        A2010000424DA201000000000000760000002800000014000000190000000100
        0400000000002C01000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888880000888000000000000888880000880777777777770088880000880F
        B8B8B8B8B7008888000080FB8B8B8B8B80708888000080F8B8B8B8B870708888
        00000F8B8B8B8B8B0770888800000FFFFFFFFFF70F0088880000007777777777
        7F008888000080F8B87FF00F0FF08888000080FB8B800FFF0FF08888000080F8
        B00FFFFFF0FF08880000880FF7FFFFFFF0FFF0880000888000FFFF00FF0FFF08
        00008888880F00F0FF0F0088000088888800FFF0FFF088880000888800FFFFFF
        0FFF0888000088880FFFFFFF0FFFF088000088880FFFFFFFF0F0088800008888
        80FFFFFFF00888880000888880FFFFFFFF08888800008888880FFFFFFFF08888
        00008888880FFFFFFFFF0888000088888880FFFFFF0088880000888888880000
        008888880000}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton12: TSpeedButton
      Left = 1
      Top = 370
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton13: TSpeedButton
      Left = 1
      Top = 400
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      Visible = False
    end
    object SpeedButton14: TSpeedButton
      Left = 1
      Top = 430
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton15: TSpeedButton
      Left = 1
      Top = 460
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      Visible = False
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 482
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Detalhes  '
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
    object LMDGroupBox14: TLMDGroupBox
      Left = 8
      Top = 294
      Width = 552
      Height = 178
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Escolaridade para Ingresso  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 0
      object DBM_CGRADUACAO: TDBMemo
        Left = 0
        Top = 16
        Width = 552
        Height = 162
        DataField = 'CGRADUACAO'
        DataSource = DTM_A036RH.DTS_073
        TabOrder = 0
        OnKeyPress = DBM_CGRADUACAOKeyPress
      end
    end
    object GRP_CARGO: TLMDGroupBox
      Left = 8
      Top = 14
      Width = 552
      Height = 49
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Cargo  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 1
      object Label1: TLabel
        Left = 2
        Top = 14
        Width = 99
        Height = 13
        Caption = '  Descrição do Cargo'
      end
      object Label9: TLabel
        Left = 274
        Top = 14
        Width = 73
        Height = 13
        Caption = '  Tipo de Cargo'
      end
      object Label10: TLabel
        Left = 410
        Top = 14
        Width = 15
        Height = 13
        Caption = 'HM'
      end
      object Label11: TLabel
        Left = 390
        Top = 14
        Width = 13
        Height = 13
        Caption = 'HS'
      end
      object Label12: TLabel
        Left = 432
        Top = 14
        Width = 76
        Height = 13
        Caption = '  Tipo de Salário'
      end
      object DED_CDESCRICRG: TDBEdit
        Left = 0
        Top = 28
        Width = 272
        Height = 21
        DataField = 'CDESCRICRG'
        DataSource = DTM_A036RH.DTS_073
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBL_NIDTBXTCR: TRxDBLookupCombo
        Left = 272
        Top = 28
        Width = 113
        Height = 21
        DropDownCount = 8
        Color = clWhite
        DataField = 'NIDTBXTCR'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXTCR'
        LookupDisplay = 'CDESCRITCR'
        LookupSource = DTM_A036RH.DTS_095
        TabOrder = 1
      end
      object DED_NHORASMES: TDBEdit
        Left = 405
        Top = 28
        Width = 25
        Height = 21
        DataField = 'NHORASMES'
        DataSource = DTM_A036RH.DTS_073
        TabOrder = 3
      end
      object DED_NHORASSEM: TDBEdit
        Left = 385
        Top = 28
        Width = 20
        Height = 21
        DataField = 'NHORASSEM'
        DataSource = DTM_A036RH.DTS_073
        TabOrder = 2
      end
      object DBL_NIDTBXTSL: TRxDBLookupCombo
        Left = 430
        Top = 28
        Width = 122
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTBXTSL'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXTSL'
        LookupDisplay = 'CDESCRITSL'
        LookupSource = DTM_A036RH.DTS_150
        TabOrder = 4
        OnChange = DBL_NIDTBXSLRChange
      end
    end
    object GRP_VAGAS: TLMDGroupBox
      Left = 8
      Top = 186
      Width = 114
      Height = 49
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Vagas  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 2
      object Label18: TLabel
        Left = 2
        Top = 14
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label19: TLabel
        Left = 33
        Top = 14
        Width = 48
        Height = 13
        Caption = 'Ocupadas'
      end
      object Label20: TLabel
        Left = 86
        Top = 14
        Width = 26
        Height = 13
        Caption = ' Livre'
      end
      object DED_NTOTVAGAS: TDBEdit
        Left = 0
        Top = 28
        Width = 30
        Height = 21
        DataField = 'NTOTVAGAS'
        DataSource = DTM_A036RH.DTS_073
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CDB_NIDCADCRG: TRxDBComboEdit
        Left = 30
        Top = 28
        Width = 54
        Height = 21
        Hint = 'Servidores Alocados'
        TabStop = False
        Color = 14281964
        DataField = 'TOT'
        DataSource = DTM_A036RH.DTS_TOTCRGOCP
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
        TabOrder = 1
        OnButtonClick = CDB_NIDCADCRGButtonClick
      end
      object DED_CLC_CRGLIVRES: TDBEdit
        Left = 84
        Top = 28
        Width = 30
        Height = 21
        DataField = 'CLC_CRGLIVRES'
        DataSource = DTM_A036RH.DTS_TOTCRGOCP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GRP_GRUPO: TLMDGroupBox
      Left = 8
      Top = 129
      Width = 552
      Height = 49
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Estrutura de Grupo Ocupacional  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 3
      object Label5: TLabel
        Left = 2
        Top = 14
        Width = 96
        Height = 13
        Caption = '  Grupo Ocupacional'
      end
      object Label21: TLabel
        Left = 278
        Top = 14
        Width = 117
        Height = 13
        Caption = '  Sub Grupo Ocupacional'
      end
      object DBL_NIDTBXGRO: TRxDBLookupCombo
        Left = 0
        Top = 28
        Width = 276
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTBXGRO'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXGRO'
        LookupDisplay = 'CDESCRIGRO'
        LookupSource = DTM_A036RH.DTS_086
        TabOrder = 0
      end
      object DBL_NIDTBXSGO: TRxDBLookupCombo
        Left = 276
        Top = 28
        Width = 276
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTBXSGO'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXSGO'
        LookupDisplay = 'CDESCRISGO'
        LookupSource = DTM_A036RH.DTS_091
        TabOrder = 1
      end
    end
    object GRP_CBO: TLMDGroupBox
      Left = 130
      Top = 186
      Width = 429
      Height = 49
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  CBO - Classificação Brasileira de Ocupações  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 4
      object Label4: TLabel
        Left = 2
        Top = 14
        Width = 54
        Height = 13
        Caption = ' Nº do CBO'
      end
      object Label22: TLabel
        Left = 68
        Top = 14
        Width = 91
        Height = 13
        Caption = '  Descrição do CBO'
      end
      object DED_CDESCRICBO: TDBEdit
        Left = 68
        Top = 28
        Width = 360
        Height = 21
        TabStop = False
        Color = 14281964
        DataField = 'CDESCRICBO'
        DataSource = DTM_A036RH.DTS_138
        TabOrder = 1
      end
      object CBE_NIDTBXCBO: TComboEdit
        Left = 0
        Top = 28
        Width = 68
        Height = 21
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
          08800000000087888888888808000000000087FFBFFFB00007008000000087BF
          FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
          000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
          70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
          86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
          000087FFBFFFB878888880000000877777777788888880000000888888888888
          888880000000}
        NumGlyphs = 1
        ReadOnly = True
        TabOrder = 0
        OnButtonClick = CBE_NIDTBXCBOButtonClick
        OnChange = CBE_NIDTBXCBOChange
        OnExit = CBE_NIDTBXCBOExit
        OnKeyDown = CBE_NIDTBXCBOKeyDown
      end
    end
    object GRP_TRIBUNAL: TLMDGroupBox
      Left = 8
      Top = 242
      Width = 552
      Height = 49
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  TC - Tribunal de Contas  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 5
      object Label23: TLabel
        Left = 2
        Top = 14
        Width = 100
        Height = 13
        Caption = '  Classe de Atividade'
      end
      object Label24: TLabel
        Left = 200
        Top = 14
        Width = 87
        Height = 13
        Caption = '  Padrão de Cargo'
      end
      object DBL_NIDTBXCAT: TRxDBLookupCombo
        Left = 0
        Top = 28
        Width = 197
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTBXCAT'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXCAT'
        LookupDisplay = 'CDESCRICAT'
        LookupSource = DTM_A036RH.DTS_126
        TabOrder = 0
      end
      object CBE_NIDTBXPCR: TComboEdit
        Left = 197
        Top = 28
        Width = 355
        Height = 21
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
          08800000000087888888888808000000000087FFBFFFB00007008000000087BF
          FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
          000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
          70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
          86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
          000087FFBFFFB878888880000000877777777788888880000000888888888888
          888880000000}
        NumGlyphs = 1
        TabOrder = 1
        Text = 'CBE_NIDTBXPCR'
        OnButtonClick = CBE_NIDTBXCBOButtonClick
        OnChange = CBE_NIDTBXPCRChange
        OnExit = CBE_NIDTBXPCRExit
        OnKeyDown = CBE_NIDTBXPCRKeyDown
      end
    end
    object GRP_FAIXAINI: TLMDGroupBox
      Left = 212
      Top = 71
      Width = 170
      Height = 49
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Faixa Inicial  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 7
      object Label3: TLabel
        Left = 2
        Top = 14
        Width = 34
        Height = 13
        Caption = ' Classe'
      end
      object Label6: TLabel
        Left = 48
        Top = 14
        Width = 29
        Height = 13
        Caption = '  Nível'
      end
      object Label25: TLabel
        Left = 94
        Top = 14
        Width = 30
        Height = 13
        Caption = '  Valor'
      end
      object DBL_NIDTAGSLR: TRxDBLookupCombo
        Left = 0
        Top = 28
        Width = 46
        Height = 21
        DropDownCount = 8
        DataField = 'DAT_CLASSINI'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'CCLASSE'
        LookupDisplay = 'CCLASSE'
        LookupSource = DTM_A036RH.DTS_080
        TabOrder = 0
        OnChange = DBL_NIDTAGSLRChange
      end
      object DBL_NIDTAGSLR_1: TRxDBLookupCombo
        Left = 46
        Top = 28
        Width = 46
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTAGSLR'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTAGSLR'
        LookupDisplay = 'NNIVEL'
        LookupSource = DTM_A036RH.DTS_080_1
        TabOrder = 1
        OnChange = DBL_NIDTAGSLR_1Change
      end
      object EDT_NVALORSLR: TLMDEdit
        Left = 92
        Top = 28
        Width = 77
        Height = 21
        Cursor = crIBeam
        Bevel.Mode = bmWindows
        Caret.BlinkRate = 530
        Caret.ImageIndex = 0
        Caret.ListIndex = 0
        Color = 14281964
        TabOrder = 2
        Alignment = taRightJustify
        CustomButtons = <>
        PasswordChar = #0
        ReadOnly = True
      end
    end
    object GRP_FAIXAFIM: TLMDGroupBox
      Left = 390
      Top = 71
      Width = 170
      Height = 49
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Faixa Final  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 8
      object Label2: TLabel
        Left = 2
        Top = 14
        Width = 34
        Height = 13
        Caption = ' Classe'
      end
      object Label7: TLabel
        Left = 48
        Top = 14
        Width = 29
        Height = 13
        Caption = '  Nível'
      end
      object Label8: TLabel
        Left = 94
        Top = 14
        Width = 30
        Height = 13
        Caption = '  Valor'
      end
      object DBL_NIDTAGSLR_2: TRxDBLookupCombo
        Left = 0
        Top = 28
        Width = 46
        Height = 21
        DropDownCount = 8
        DataField = 'DAT_CLASSFIM'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'CCLASSE'
        LookupDisplay = 'CCLASSE'
        LookupSource = DTM_A036RH.DTS_080_2
        TabOrder = 0
        OnChange = DBL_NIDTAGSLR_2Change
      end
      object DBL_NIDTAGSLR_3: TRxDBLookupCombo
        Left = 46
        Top = 28
        Width = 46
        Height = 21
        DropDownCount = 8
        DataField = 'NIDSLRFIM'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTAGSLR'
        LookupDisplay = 'NNIVEL'
        LookupSource = DTM_A036RH.DTS_080_3
        TabOrder = 1
        OnChange = DBL_NIDTAGSLR_3Change
      end
      object EDT_NVALORSLR1: TLMDEdit
        Left = 92
        Top = 28
        Width = 78
        Height = 21
        Cursor = crIBeam
        Bevel.Mode = bmWindows
        Caret.BlinkRate = 530
        Caret.ImageIndex = 0
        Caret.ListIndex = 0
        Color = 14281964
        TabOrder = 2
        Alignment = taRightJustify
        CustomButtons = <>
        PasswordChar = #0
        ReadOnly = True
      end
    end
    object GRP_ENQ: TLMDGroupBox
      Left = 8
      Top = 71
      Width = 196
      Height = 49
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderSides = [fsTop]
      Bevel.LightColor = clGray
      Bevel.Mode = bmEdge
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Enquadramento  '
      CaptionFont.Charset = ANSI_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      Color = clSilver
      TabOrder = 6
      object Label26: TLabel
        Left = 3
        Top = 14
        Width = 75
        Height = 13
        Caption = '  Tabela Salarial'
      end
      object DBL_NIDTBXSLR: TRxDBLookupCombo
        Left = 0
        Top = 28
        Width = 196
        Height = 21
        DropDownCount = 8
        DataField = 'NIDTBXSLR'
        DataSource = DTM_A036RH.DTS_073
        LookupField = 'NIDTBXSLR'
        LookupDisplay = 'CDESCRISLR'
        LookupSource = DTM_A036RH.DTS_092
        TabOrder = 0
        OnChange = DBL_NIDTBXSLRChange
      end
    end
  end
end
