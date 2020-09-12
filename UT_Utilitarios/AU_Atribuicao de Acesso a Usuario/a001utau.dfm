object FRM_A001UTAU: TFRM_A001UTAU
  Left = 96
  Top = 20
  Cursor = crHandPoint
  BorderStyle = bsSingle
  Caption = ' '
  ClientHeight = 483
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
  object LMDGroupBox3: TLMDGroupBox
    Left = 6
    Top = 4
    Width = 573
    Height = 472
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Acessos  '
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
    TabOrder = 21
  end
  object DBG_ACESSO2: TDBGrid
    Left = 17
    Top = 343
    Width = 552
    Height = 121
    DataSource = DTM_A001UTAU.DTS_046
    FixedColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs]
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnMouseUp = DBG_APLICMouseUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CDESCCAMPO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTRATAMENT'
        Title.Caption = 'Tratamento'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCONDICAO'
        Title.Caption = 'Condição'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 146
        Visible = True
      end>
  end
  object DBG_ACAO: TDBGrid
    Left = 17
    Top = 198
    Width = 552
    Height = 121
    DataSource = DTM_A001UTAU.DTS_042
    FixedColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs]
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseUp = DBG_APLICMouseUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CFUNCAO'
        Width = 442
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DAT_PERMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 88
        Visible = True
      end>
  end
  object DBG_APLIC: TDBGrid
    Left = 17
    Top = 43
    Width = 552
    Height = 131
    DataSource = DTM_A001UTAU.DTS_APLUSU
    FixedColor = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseUp = DBG_APLICMouseUp
    Columns = <
      item
        Expanded = False
        FieldName = 'CDESCAPLI'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNOMEPER'
        Title.Caption = 'Perfil Base'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQUIVALE'
        Title.Caption = 'Equivalência'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPHERDADO'
        Title.Caption = 'H'
        Width = 12
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 587
    Top = 0
    Width = 38
    Height = 483
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object BTN_PERFIL: TSpeedButton
      Left = 1
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Acesso do Usuário por PERFIL'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_PERFILClick
    end
    object BTN_IMPRIMIR: TSpeedButton
      Left = 1
      Top = 68
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_IMPRIMIRClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 98
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
    object BTN_EQUIVALE: TSpeedButton
      Left = 1
      Top = 38
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Acesso do Usuário por EQUIVALÊNCIA de PERFIL'
      Flat = True
      Layout = blGlyphTop
      Margin = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_EQUIVALEClick
    end
  end
  object STE_APLIC: TStaticText
    Left = 19
    Top = 46
    Width = 203
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Aplicação'
    TabOrder = 1
    OnClick = STE_APLICClick
  end
  object STE_PERFILBASE: TStaticText
    Left = 222
    Top = 46
    Width = 174
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Perfil Base'
    TabOrder = 2
    OnClick = STE_PERFILBASEClick
  end
  object STE_EQUIV: TStaticText
    Left = 396
    Top = 46
    Width = 140
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Equivalência'
    TabOrder = 3
    OnClick = STE_EQUIVClick
  end
  object STE_ACAO: TStaticText
    Left = 19
    Top = 201
    Width = 442
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Ação'
    TabOrder = 4
    OnClick = STE_ACAOClick
  end
  object STE_STATUS: TStaticText
    Left = 461
    Top = 201
    Width = 88
    Height = 15
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = '  Status'
    TabOrder = 5
    OnClick = STE_STATUSClick
  end
  object SRE_CAMPO: TStaticText
    Left = 19
    Top = 347
    Width = 280
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Campo'
    TabOrder = 6
    OnClick = SRE_CAMPOClick
  end
  object STE_TRATAMEN: TStaticText
    Left = 299
    Top = 347
    Width = 104
    Height = 15
    Cursor = crHandPoint
    AutoSize = False
    Caption = '  Tratamento'
    TabOrder = 7
    OnClick = STE_TRATAMENClick
  end
  object STE_ORDAPLIC: TLMDStaticText
    Left = 74
    Top = 47
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmCustom
    Caption = '5'
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_APLICClick
  end
  object STE_ORDPERFIL: TLMDStaticText
    Left = 282
    Top = 47
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_PERFILBASEClick
  end
  object STE_ORDEQUIV: TLMDStaticText
    Left = 465
    Top = 47
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_EQUIVClick
  end
  object STE_ORDACAO: TLMDStaticText
    Left = 53
    Top = 202
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_ACAOClick
  end
  object STE_ORDSTAT: TLMDStaticText
    Left = 527
    Top = 202
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_STATUSClick
  end
  object STE_ORDCAMP: TLMDStaticText
    Left = 62
    Top = 348
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = SRE_CAMPOClick
  end
  object STE_ORDTRATAMEN: TLMDStaticText
    Left = 365
    Top = 348
    Width = 11
    Height = 11
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmCustom
    Caption = ' '
    Color = clSilver
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Webdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = STE_TRATAMENClick
  end
  object LMDPanelFill1: TLMDPanelFill
    Left = 17
    Top = 23
    Width = 552
    Height = 19
    UseDockManager = False
    Alignment = agCenterLeft
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Aplicações do Usuário'
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
    TabOrder = 8
    object BTN_RETROCEDER1: TSpeedButton
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
      OnClick = BTN_RETROCEDER1Click
    end
    object BTN_AVANCAR1: TSpeedButton
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
      OnClick = BTN_AVANCAR1Click
    end
    object BTN_APLICACAO: TSpeedButton
      Left = 467
      Top = 0
      Width = 28
      Height = 19
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C30E0000C30E00000001000000000000000000004000
        00006000000080000000A0000000C0000000E0000000FF000000008000004080
        00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
        000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
        000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
        40006000400080004000A0004000C0004000E0004000FF004000008040004080
        40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
        400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
        400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
        60006000600080006000A0006000C0006000E0006000FF006000008060004080
        60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
        600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
        600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
        80006000800080008000A0008000C0008000E0008000FF008000008080004080
        80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
        800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
        800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
        A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
        A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
        A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
        A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
        C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
        C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
        C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
        C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
        E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
        E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
        E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
        E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
        FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
        FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
        FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
        FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        0000000000000000000000B5B5B5B5B5B5B5B5B5F8F8F8F8F8F8F8F8F8F800B5
        B5B5B5B5B5B5B5B5F80707070707070707F800B5B5B5B5B50404B5B5F8F8F8F8
        F8F8F8F8F8F80000000000000707B5B5F8070707079494949490949094949490
        0007B5B5F8070707001F040000949490909494900007B5B500F8F8F800901F04
        00949094949094940004B5B5B500000000DEDE1F0494949490940000B5B5B5B5
        B5B5B5B500009090040094909400B5B5B5B5B5B5B5B5B5B5B5B5B500901F0404
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500001F04B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B51FB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5}
      OnClick = BTN_APLICACAOClick
    end
  end
  object LMDPanelFill4: TLMDPanelFill
    Left = 17
    Top = 323
    Width = 552
    Height = 19
    UseDockManager = False
    Alignment = agCenterLeft
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Campos com restrições das Aplicações do Usuário'
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
    TabOrder = 9
    object BTN_RETROCEDER4: TSpeedButton
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
      OnClick = BTN_RETROCEDER4Click
    end
    object BTN_AVANCAR4: TSpeedButton
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
      OnClick = BTN_AVANCAR4Click
    end
    object BTN_CAMPOS: TSpeedButton
      Left = 467
      Top = 0
      Width = 28
      Height = 19
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C30E0000C30E00000001000000000000000000004000
        00006000000080000000A0000000C0000000E0000000FF000000008000004080
        00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
        000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
        000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
        40006000400080004000A0004000C0004000E0004000FF004000008040004080
        40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
        400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
        400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
        60006000600080006000A0006000C0006000E0006000FF006000008060004080
        60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
        600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
        600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
        80006000800080008000A0008000C0008000E0008000FF008000008080004080
        80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
        800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
        800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
        A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
        A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
        A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
        A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
        C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
        C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
        C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
        C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
        E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
        E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
        E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
        E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
        FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
        FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
        FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
        FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        0000000000000000000000B5B5B5B5B5B5B5B5B5F8F8F8F8F8F8F8F8F8F800B5
        B5B5B5B5B5B5B5B5F80707070707070707F800B5B5B5B5B50404B5B5F8F8F8F8
        F8F8F8F8F8F80000000000000707B5B5F8070707079494949490949094949490
        0007B5B5F8070707001F040000949490909494900007B5B500F8F8F800901F04
        00949094949094940004B5B5B500000000DEDE1F0494949490940000B5B5B5B5
        B5B5B5B500009090040094909400B5B5B5B5B5B5B5B5B5B5B5B5B500901F0404
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500001F04B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B51FB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5}
      OnClick = BTN_CAMPOSClick
    end
  end
  object LMDPanelFill2: TLMDPanelFill
    Left = 17
    Top = 178
    Width = 552
    Height = 19
    UseDockManager = False
    Alignment = agCenterLeft
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Acões da Aplicação - '
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
    TabOrder = 11
    object BTN_RETROCEDER2: TSpeedButton
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
      OnClick = BTN_RETROCEDER2Click
    end
    object BTN_AVANCAR2: TSpeedButton
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
      OnClick = BTN_AVANCAR2Click
    end
    object BTN_ACOES: TSpeedButton
      Left = 467
      Top = 0
      Width = 28
      Height = 19
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        08000000000090010000C30E0000C30E00000001000000000000000000004000
        00006000000080000000A0000000C0000000E0000000FF000000008000004080
        00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
        000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
        000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
        40006000400080004000A0004000C0004000E0004000FF004000008040004080
        40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
        400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
        400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
        60006000600080006000A0006000C0006000E0006000FF006000008060004080
        60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
        600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
        600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
        80006000800080008000A0008000C0008000E0008000FF008000008080004080
        80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
        800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
        800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
        A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
        A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
        A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
        A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
        C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
        C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
        C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
        C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
        E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
        E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
        E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
        E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
        FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
        FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
        FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
        FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        0000000000000000000000B5B5B5B5B5B5B5B5B5F8F8F8F8F8F8F8F8F8F800B5
        B5B5B5B5B5B5B5B5F80707070707070707F800B5B5B5B5B50404B5B5F8F8F8F8
        F8F8F8F8F8F80000000000000707B5B5F8070707079494949490949094949490
        0007B5B5F8070707001F040000949490909494900007B5B500F8F8F800901F04
        00949094949094940004B5B5B500000000DEDE1F0494949490940000B5B5B5B5
        B5B5B5B500009090040094909400B5B5B5B5B5B5B5B5B5B5B5B5B500901F0404
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500001F04B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B51FB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5}
      OnClick = BTN_ACOESClick
    end
  end
  object Rpt_RelAcesso: TppReport
    AutoStop = False
    DataPipeline = DBP_RelaAcessos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'H:\Desenvolvimento\Templates\RelGeral.rtm'
    Template.SaveTo = stDatabase
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    OnPreviewFormCreate = Rpt_RelAcessoPreviewFormCreate
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileType = ftTab
    Left = 473
    Top = 120
    Version = '5.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object Shp_Titul: TppShape
        UserName = 'Shp_Titul'
        mmHeight = 21431
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 0
      end
      object Db_Razao: TppDBText
        UserName = 'Db_Razao'
        SaveOrder = 2
        Save = True
        Alignment = taCenter
        Color = 15000804
        DataField = 'CNOMERAZ'
        DataPipeline = DBP_Parametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        mmHeight = 5556
        mmLeft = 41804
        mmTop = 2646
        mmWidth = 117475
        BandType = 0
      end
      object Lbl_Pag: TppLabel
        UserName = 'Lbl_Pag'
        SaveOrder = 3
        Save = True
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 11113
        mmWidth = 7144
        BandType = 0
      end
      object Var_NumPag: TppSystemVariable
        UserName = 'Var_NumPag'
        SaveOrder = 4
        Save = True
        VarType = vtPageNo
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 11113
        mmWidth = 7408
        BandType = 0
      end
      object Lbl_Aplic: TppLabel
        UserName = 'Lbl_Aplic'
        SaveOrder = 5
        Save = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 15081
        mmWidth = 11642
        BandType = 0
      end
      object Lbl_Data: TppLabel
        UserName = 'Lbl_Data'
        SaveOrder = 0
        Save = True
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 11113
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 11113
        mmWidth = 13229
        BandType = 0
      end
      object Lbl_Hora: TppLabel
        UserName = 'Lbl_Hora'
        SaveOrder = 1
        Save = True
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 15081
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 15081
        mmWidth = 13229
        BandType = 0
      end
      object Lbl_RelTiul: TppLabel
        UserName = 'Lbl_RelTiul'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relatório de Acessos do Usuário'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 11113
        mmWidth = 146315
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.75
        mmHeight = 794
        mmLeft = 265
        mmTop = 28840
        mmWidth = 196057
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.75
        mmHeight = 794
        mmLeft = 265
        mmTop = 34660
        mmWidth = 195792
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Perfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 29898
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Login de Usuário : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 23019
        mmWidth = 28840
        BandType = 0
      end
      object LBL_CNOMEUSU: TppLabel
        UserName = 'LBL_CNOMEUSU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 30692
        mmTop = 23019
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Aplicações do Perfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 59267
        mmTop = 29633
        mmWidth = 30427
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Save = True
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        Caption = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        ParentWidth = False
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 59267
        mmTop = 0
        mmWidth = 100013
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          Template.SaveTo = stDatabase
          Units = utMillimeters
          UserName = 'Report'
          Left = 384
          Top = 320
          Version = '5.0'
          mmColumnWidth = 0
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'CDESCAPLI'
              DataPipeline = DBP_RelaAcessos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 4233
              mmLeft = 3175
              mmTop = 265
              mmWidth = 86519
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Save = True
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'NIDTBL_PB'
      DataPipeline = DBP_RelaAcessos
      KeepTogether = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'CNOMEPER'
          DataPipeline = DBP_RelaAcessos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 3969
          mmLeft = 265
          mmTop = 265
          mmWidth = 49477
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object DBP_RelaAcessos: TppDBPipeline
    DataSource = DTM_A001UTAU.DTS_RELACESSO
    UserName = 'DBP_RelaAcessos'
    Left = 501
    Top = 120
  end
  object DBP_Parametros: TppDBPipeline
    DataSource = DMControle.Dts_P
    UserName = 'DBP_Parametros'
    Left = 529
    Top = 120
    object DBP_RelAcessoppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object DBP_RelAcessoppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBP_RelAcessoppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object DBP_RelAcessoppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object DBP_RelAcessoppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object DBP_RelAcessoppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object DBP_RelAcessoppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object DBP_RelAcessoppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object DBP_RelAcessoppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object DBP_RelAcessoppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object DBP_RelAcessoppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object DBP_RelAcessoppField12: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object DBP_RelAcessoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DBP_RelAcessoppField14: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object DBP_RelAcessoppField15: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 14
    end
    object DBP_RelAcessoppField16: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object DBP_RelAcessoppField17: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object DBP_RelAcessoppField18: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object DBP_RelAcessoppField19: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object DBP_RelAcessoppField20: TppField
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object DBP_RelAcessoppField21: TppField
      FieldAlias = 'CXPOSTAL'
      FieldName = 'CXPOSTAL'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
  end
end
