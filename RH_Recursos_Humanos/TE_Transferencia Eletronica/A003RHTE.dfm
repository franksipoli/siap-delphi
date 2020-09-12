object FRM_A003RHTE: TFRM_A003RHTE
  Left = 151
  Top = 64
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 425
  ClientWidth = 545
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
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 10
    Top = 9
    Width = 492
    Height = 407
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Color = clSilver
    TabOrder = 0
    object LMDPanelFill1: TLMDPanelFill
      Left = 11
      Top = 11
      Width = 469
      Height = 16
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.WidthInner = 0
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clGray
      Bevel.StandardStyle = lsNone
      Caption = '  Lançamentos'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.ShadowDepth = 0
      FontFX.LightColor = clWhite
      FontFX.ShadowColor = clSilver
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 0
      object BTN_PRIMEIROREG: TSpeedButton
        Left = 376
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Primeiro'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = BTN_PRIMEIROREGClick
      end
      object Btn_Retroceder1: TSpeedButton
        Left = 395
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Anterior'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Retroceder1Click
      end
      object Btn_UltimoReg: TSpeedButton
        Left = 433
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Último'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_UltimoRegClick
      end
      object Btn_Avancar1: TSpeedButton
        Left = 414
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Próximo'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Avancar1Click
      end
    end
    object DBG_LANCTO: TDBGrid
      Left = 11
      Top = 27
      Width = 469
      Height = 120
      DataSource = DTM_A003RHTE.DTS_062
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBG_LANCTODblClick
      OnMouseUp = DBG_LANCTOMouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'NCODFUN'
          Title.Alignment = taCenter
          Title.Caption = 'Cód'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMFUN'
          Title.Caption = ' Nome Completo do Servidor'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTIPOREM'
          Title.Caption = 'T'
          Width = 10
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NBCOPGT'
          Title.Alignment = taCenter
          Title.Caption = 'Bco'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAGEPGT'
          Title.Alignment = taCenter
          Title.Caption = 'Ag'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DAT_NCTAPGT'
          Title.Alignment = taCenter
          Title.Caption = 'Nº da Conta'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NVLRLIQ'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Líquido'
          Width = 65
          Visible = True
        end>
    end
    object LMDPanelFill2: TLMDPanelFill
      Left = 11
      Top = 148
      Width = 469
      Height = 16
      UseDockManager = False
      Alignment = agCenterLeft
      Bevel.WidthInner = 0
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clGray
      Bevel.StandardStyle = lsNone
      Caption = '  Ocorrências de Processamento'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.ShadowDepth = 0
      FontFX.LightColor = clWhite
      FontFX.ShadowColor = clSilver
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 2
      object Btn_UltimoReg1: TSpeedButton
        Left = 433
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Último'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_UltimoReg1Click
      end
      object Btn_Avancar2: TSpeedButton
        Left = 414
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Próximo'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Avancar2Click
      end
      object Btn_Retroceder2: TSpeedButton
        Left = 395
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Anterior'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Retroceder2Click
      end
      object Btn_PrimeiroReg1: TSpeedButton
        Left = 376
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Primeiro'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_PrimeiroReg1Click
      end
    end
    object DBG_ERROS: TDBGrid
      Left = 11
      Top = 164
      Width = 469
      Height = 231
      DataSource = DTM_A003RHTE.DTS_066
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DDATARET'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CDESCERRO'
          Title.Caption = ' Ocorrência'
          Width = 375
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 507
    Top = 0
    Width = 38
    Height = 425
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 42
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
    object BTN_IMPRIMIR: TSpeedButton
      Left = 1
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir'
      Flat = True
      Glyph.Data = {
        16020000424D160200000000000076000000280000001A0000001A0000000100
        040000000000A001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777700000077777777777777777777777777000000777888888888
        8877777777777700000077000000000008888888777777000000707777777777
        000000088777770000007088888888888088777088777700000070FFFFFFFFFF
        88088778088777000000080878877887F88000008088770000000F7087887788
        7F8087780808870000000F7700000000000077788007770000000F7777777777
        7777FF788807770000000F7777777777770007788880770000000F7777777777
        7777FF788880770000000F777777777777AA27788880770000000FFFFFFFFFFF
        FFFFFFF88880770000007077777777777777777F888077000000770870000080
        80000077F880770000007770800FF80F008F00077F807700000077770808FF08
        00FF077777807700000077777000FF8008FF8000000077000000777777708F80
        0FFFF0777777770000007777777707FFFFFFF707777777000000777777770000
        0000000777777700000077777777777777777777777777000000777777777777
        7777777777777700000077777777777777777777777777000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_IMPRIMIRClick
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = DTM_A003RHTE.DBP_062
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 510
    Top = 95
    Version = '5.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30956
      mmPrintPosition = 0
      object Shp_Titul: TppShape
        UserName = 'Shp_Titul'
        mmHeight = 21431
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 282576
        BandType = 0
      end
      object Db_Razao: TppDBText
        UserName = 'Db_Razao'
        SaveOrder = 0
        Save = True
        Alignment = taCenter
        Color = 15000804
        DataField = 'CNOMERAZ'
        DataPipeline = DTM_A003RHTE.DBP_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        mmHeight = 5556
        mmLeft = 83344
        mmTop = 3969
        mmWidth = 117475
        BandType = 0
      end
      object Lbl_Pag: TppLabel
        UserName = 'Lbl_Pag'
        SaveOrder = 1
        Save = True
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 262996
        mmTop = 13758
        mmWidth = 7144
        BandType = 0
      end
      object Var_NumPag: TppSystemVariable
        UserName = 'Var_NumPag'
        SaveOrder = 2
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
        mmLeft = 270669
        mmTop = 13758
        mmWidth = 7408
        BandType = 0
      end
      object Lbl_Aplic: TppLabel
        UserName = 'Lbl_Aplic'
        SaveOrder = 3
        Save = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 262996
        mmTop = 17727
        mmWidth = 11642
        BandType = 0
      end
      object Lbl_Data: TppLabel
        UserName = 'Lbl_Data'
        SaveOrder = 4
        Save = True
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 13229
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
        mmLeft = 17198
        mmTop = 13229
        mmWidth = 13229
        BandType = 0
      end
      object Lbl_Hora: TppLabel
        UserName = 'Lbl_Hora'
        SaveOrder = 5
        Save = True
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 17198
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
        mmLeft = 17198
        mmTop = 17198
        mmWidth = 13229
        BandType = 0
      end
      object Lbl_RelTiul: TppLabel
        UserName = 'Lbl_RelTiul'
        Alignment = taCenter
        AutoSize = False
        Caption = 'DIRETORIA DE RECURSOS HUMANOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 12171
        mmWidth = 230717
        BandType = 0
      end
      object Lbl_TitOpc: TppLabel
        UserName = 'Lbl_TitOpc'
        ReprintOnOverFlow = True
        SaveOrder = 6
        Save = True
        ShiftWithParent = True
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 17463
        mmWidth = 230717
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Código'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 27252
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Origem '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 69056
        mmTop = 27252
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Forma de Pagamento            '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 27252
        mmWidth = 39952
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Bco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 27252
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Ag  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 27252
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Alignment = taCenter
        Caption = '    Conta    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 138113
        mmTop = 27252
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Data Prev.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 174890
        mmTop = 27252
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = '    Vlr. Pago    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 154517
        mmTop = 27252
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Nome Funcionario                                  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 27252
        mmWidth = 53711
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'Ocorrências                                        '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 190500
        mmTop = 27252
        mmWidth = 50536
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Número Bco         '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 259028
        mmTop = 27252
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'Em             '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 242359
        mmTop = 27252
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NCODFUN'
        DataPipeline = DTM_A003RHTE.DBP_062
        DisplayFormat = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CNOMFUN'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 1058
        mmWidth = 53711
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DAT_ORIGEM'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 69056
        mmTop = 1058
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'DAT_FORMAPGTO'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 1058
        mmWidth = 40746
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NBCOPGT'
        DataPipeline = DTM_A003RHTE.DBP_062
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 1058
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'NAGEPGT'
        DataPipeline = DTM_A003RHTE.DBP_062
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 1058
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Alignment = taRightJustify
        DataField = 'NVLRLIQ'
        DataPipeline = DTM_A003RHTE.DBP_062
        DisplayFormat = 'R$  0000.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 154517
        mmTop = 1058
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DPREVPAGTO'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174890
        mmTop = 1058
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Alignment = taRightJustify
        DataField = 'DAT_NCTAPGT'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 137848
        mmTop = 1058
        mmWidth = 15610
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        Caption = 'Det_Ocorrencia'
        ExpandAll = False
        NewPrintJob = False
        ParentWidth = False
        TraverseAllData = False
        mmHeight = 3704
        mmLeft = 190500
        mmTop = 1058
        mmWidth = 65617
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = DTM_A003RHTE.DBP_066
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          UserName = 'Report'
          Left = 392
          Top = 332
          Version = '5.0'
          mmColumnWidth = 0
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'CDESCERRO'
              DataPipeline = DTM_A003RHTE.DBP_066
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 265
              mmTop = 0
              mmWidth = 49213
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'DDATARET'
              DataPipeline = DTM_A003RHTE.DBP_066
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 51329
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 1058
            mmPrintPosition = 0
          end
        end
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CNOSSONRO'
        DataPipeline = DTM_A003RHTE.DBP_062
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 259028
        mmTop = 1058
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
    end
  end
end
