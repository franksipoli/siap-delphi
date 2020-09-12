object FRM_A002AD: TFRM_A002AD
  Left = 33
  Top = 52
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FRM_A002AD'
  ClientHeight = 437
  ClientWidth = 732
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 6
    Width = 52
    Height = 13
    Caption = 'CPF/CNPJ'
  end
  object Label2: TLabel
    Left = 144
    Top = 7
    Width = 85
    Height = 13
    Caption = 'Nome Fornecedor'
  end
  object Label3: TLabel
    Left = 622
    Top = 363
    Width = 6
    Height = 13
    Caption = 'e'
  end
  object BTN_GERADOC: TSpeedButton
    Left = 532
    Top = 406
    Width = 86
    Height = 25
    Caption = 'Gerar'
    Glyph.Data = {
      F2010000424DF201000000000000760000002800000012000000130000000100
      0800000000007C010000C30E0000C30E00001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070708
      0807070707070707070707070000070707070804040807070707070707070707
      0000070707080404040408070707070707070707000007070804040404040408
      0707070707070707000007080404040C04040404080707070707070700000704
      04040C040C04040408070707070707070000070C040C0404040C040404080707
      07070707000007080C04040404040C0404040807070707070000080404040C04
      0404040C040404080707070700000404040C070C040404080C04040408070707
      00000C040C0707070C040404080C0404040807070000070C07070707070C0404
      04080C0404040807000007070707070707070C040404080C0404080700000707
      070707070707070C040404080C0404070000070707070707070707070C040404
      080C0707000007070707070707070707070C0404040807070000070707070707
      0707070707070C04040807070000070707070707070707070707070C04040707
      000007070707070707070707070707070C0707070000}
    OnClick = BTN_IMPRIMIRClick
  end
  object CBE_CCPFCNPJ_3: TComboEdit
    Left = 7
    Top = 21
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
    OnButtonClick = CBE_CCPFCNPJ_3ButtonClick
    OnExit = CBE_CCPFCNPJ_3Exit
  end
  object DED_CNOMEGRL: TDBEdit
    Left = 140
    Top = 21
    Width = 377
    Height = 21
    Color = 14281964
    DataField = 'CNOMEGRL'
    DataSource = DTS_031_01
    TabOrder = 1
  end
  object GRD_FORNEC_1: TDBGrid
    Left = 7
    Top = 61
    Width = 510
    Height = 367
    Color = 14281964
    DataSource = DTS_031_01
    FixedColor = clSilver
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CCPFCNPJ'
        Title.Caption = 'CPF\CNPJ'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNOMEGRL'
        Title.Caption = 'Nome Fornecedor'
        Width = 296
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDTVALIDAD'
        Title.Caption = 'Validade'
        Width = 69
        Visible = True
      end>
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 521
    Top = -3
    Width = 3
    Height = 435
    Alignment = gcaTopCenter
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
    TabOrder = 3
  end
  object RBT_TODOS: TRadioButton
    Left = 538
    Top = 24
    Width = 57
    Height = 17
    Caption = '&Todos'
    Checked = True
    TabOrder = 4
    TabStop = True
    OnClick = RBT_TODOSClick
  end
  object RBT_SELET: TRadioButton
    Left = 602
    Top = 24
    Width = 65
    Height = 18
    Caption = '&Seletivo'
    TabOrder = 5
    OnClick = RBT_SELETClick
  end
  object Panel14: TPanel
    Left = 526
    Top = 1
    Width = 204
    Height = 13
    BevelOuter = bvNone
    Caption = 'Fornecedores'
    Color = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 527
    Top = 283
    Width = 204
    Height = 13
    BevelOuter = bvNone
    Caption = 'Vigência de Documentos'
    Color = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Panel2: TPanel
    Left = 527
    Top = 233
    Width = 204
    Height = 13
    BevelOuter = bvNone
    Caption = 'Documento'
    Color = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object CHK_VENCIDA: TCheckBox
    Left = 540
    Top = 306
    Width = 124
    Height = 17
    Caption = 'Documento &Vencido'
    TabOrder = 9
    OnClick = CHK_VENCIDAClick
  end
  object CHK_DATAS: TCheckBox
    Left = 540
    Top = 334
    Width = 97
    Height = 17
    Caption = '&Entre datas'
    TabOrder = 10
    OnClick = CHK_DATASClick
  end
  object BTN_VOLTAR: TBitBtn
    Left = 644
    Top = 405
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = 'Voltar'
    TabOrder = 11
    OnClick = BTN_VOLTARClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object RGR_Doc: TLMDRadioGroup
    Left = 529
    Top = 251
    Width = 199
    Height = 25
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsFrameInset
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    Color = clSilver
    Columns = 3
    Items.Strings = (
      'To&dos'
      '   &Ok'
      '&Irregular')
    TabOrder = 12
    ItemIndex = 0
  end
  object LMDPanelFill5: TLMDPanelFill
    Left = 7
    Top = 42
    Width = 510
    Height = 19
    UseDockManager = False
    Alignment = agCenterLeft
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '                                       Fornecedores Selecionados'
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
    TabOrder = 13
    object Btn_Retroceder1: TSpeedButton
      Left = 451
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
      Left = 479
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
    object Btn_Excluir1: TSpeedButton
      Left = 421
      Top = 0
      Width = 28
      Height = 19
      Cursor = crHandPoint
      Hint = 'Retirar da Lista de Selecionados'
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
  end
  object MDT_DATINI: TDateEdit
    Left = 529
    Top = 362
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 14
    OnChange = MED_DATINIChange
  end
  object MDT_DATFIM: TDateEdit
    Left = 633
    Top = 361
    Width = 89
    Height = 21
    NumGlyphs = 2
    TabOrder = 15
    OnChange = MED_DATINIChange
  end
  object RGR_CERTIF: TLMDRadioGroup
    Left = 533
    Top = 128
    Width = 179
    Height = 81
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsFrameInset
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    Color = clSilver
    Items.Strings = (
      'Todos'
      'Certificado Vencido'
      'Certificado vence na data:')
    TabOrder = 16
    OnClick = RGR_CERTIFClick
    ItemIndex = 0
  end
  object MDT_DTDVALIDAD: TDateEdit
    Left = 551
    Top = 203
    Width = 137
    Height = 21
    NumGlyphs = 2
    TabOrder = 17
    OnChange = MDT_DTDVALIDADChange
  end
  object Panel3: TPanel
    Left = 526
    Top = 116
    Width = 204
    Height = 13
    BevelOuter = bvNone
    Caption = 'Certificado'
    Color = 15132390
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object CBB_CAMPOS: TComboBox
    Left = 532
    Top = 52
    Width = 189
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 19
    Text = 'Campo...'
    Items.Strings = (
      'Localidade')
  end
  object EDT_LOCALIZA: TEdit
    Left = 532
    Top = 88
    Width = 189
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 20
    Text = 'VALOR...'
  end
  object RBT_FILTRO: TRadioButton
    Left = 674
    Top = 24
    Width = 51
    Height = 18
    Caption = '&Filtro'
    TabOrder = 21
    OnClick = RBT_FILTROClick
  end
  object QRY_031_01: TOraQuery
    SQL.Strings = (
      
        'select cadgrl.nidcadgrl, cadfor.ddtvalidad, cadgrl.cnomegrl, cad' +
        'grl.ccpfcnpj, cadgrl.cpessoafj from cadfor, cadgrl'
      
        'where cadgrl.nidcadgrl = cadfor.nidcadgrl and cadgrl.nidcadgrl i' +
        'n   ')
    AfterOpen = QRY_031_01AfterOpen
    AfterClose = QRY_031_01AfterClose
    Left = 396
    Top = 132
    object QRY_031_01NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_031_01CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 50
    end
    object QRY_031_01CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      OnGetText = QRY_031_01CCPFCNPJGetText
      Size = 14
    end
    object QRY_031_01CPESSOAFJ: TFloatField
      FieldName = 'CPESSOAFJ'
      Required = True
    end
    object QRY_031_01DDTVALIDAD: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DDTVALIDAD'
    end
  end
  object DTS_031_01: TOraDataSource
    DataSet = QRY_031_01
    OnDataChange = DTS_031_01DataChange
    Left = 396
    Top = 100
  end
  object ReportFornec: TppReport
    AutoStop = False
    DataPipeline = DTM_A002AD.Fornecedor
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
    CachePages = True
    DeviceType = 'Screen'
    Left = 396
    Top = 168
    Version = '5.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object Db_Razao: TppDBText
        UserName = 'Db_Razao'
        SaveOrder = 0
        Save = True
        Alignment = taCenter
        Color = 15000804
        DataField = 'CNOMERAZ'
        DataPipeline = DTM_A002AD.DBP_Parametros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        mmHeight = 5556
        mmLeft = 83344
        mmTop = 2646
        mmWidth = 117475
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Alignment = taCenter
        Caption = 'Cadastro de Fornecedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 115094
        mmTop = 10319
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Alignment = taCenter
        Caption = 'Relatório Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 17463
        mmWidth = 25665
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        ReprintOnOverFlow = True
        mmHeight = 20373
        mmLeft = 13494
        mmTop = 0
        mmWidth = 257440
        BandType = 4
      end
      object Lbl_CCPFCNPJ: TppLabel
        OnPrint = Lbl_CCPFCNPJPrint
        UserName = 'Lbl_CCPFCNPJ'
        ReprintOnOverFlow = True
        Alignment = taCenter
        Caption = 'CPF/CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 1058
        mmWidth = 13758
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        ReprintOnOverFlow = True
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 38894
        mmTop = 1058
        mmWidth = 8467
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        ReprintOnOverFlow = True
        Caption = 'Endereço'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 1058
        mmWidth = 13758
        BandType = 4
      end
      object rDT_CCPFCNPJ: TppDBText
        UserName = 'rDT_CCPFCNPJ'
        ReprintOnOverFlow = True
        Alignment = taCenter
        Color = clBlack
        DataField = 'CCPFCNPJ'
        DataPipeline = DTM_A002AD.Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 5292
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        ReprintOnOverFlow = True
        DataField = 'CNOMEGRL'
        DataPipeline = DTM_A002AD.Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 38629
        mmTop = 5292
        mmWidth = 117475
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        ReprintOnOverFlow = True
        DataField = 'LKP_ENDERECO'
        DataPipeline = DTM_A002AD.Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 158750
        mmTop = 5292
        mmWidth = 110331
        BandType = 4
      end
      object Documentacao: TppSubReport
        UserName = 'Documentacao'
        Caption = 'Documentacao'
        ExpandAll = False
        NewPrintJob = False
        ParentPrinterSetup = False
        TraverseAllData = False
        mmHeight = 4498
        mmLeft = 0
        mmTop = 20108
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = DTM_A002AD.DocFor
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
          Left = 316
          Top = 248
          Version = '5.0'
          mmColumnWidth = 0
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape2: TppShape
              OnPrint = ppShape2Print
              UserName = 'Shape2'
              Brush.Color = 15658734
              Pen.Style = psClear
              ReprintOnOverFlow = True
              mmHeight = 4763
              mmLeft = 13494
              mmTop = 0
              mmWidth = 257440
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              ReprintOnOverFlow = True
              AutoSize = True
              DataField = 'CDESCDOC'
              DataPipeline = DTM_A002AD.DocFor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3175
              mmLeft = 17463
              mmTop = 794
              mmWidth = 14288
              BandType = 4
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Position = lpLeft
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 181505
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Position = lpLeft
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 192088
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
            object ppLine6: TppLine
              UserName = 'Line6'
              Position = lpRight
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 268023
              mmTop = 0
              mmWidth = 2910
              BandType = 4
            end
            object ppLine7: TppLine
              UserName = 'Line7'
              Position = lpRight
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 249767
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
            object myDBCheckBox2: TmyDBCheckBox
              UserName = 'DBCheckBox2'
              BooleanFalse = 'N'
              BooleanTrue = 'S'
              Style = csCheckMark
              DataPipeline = DTM_A002AD.DocFor
              DataField = 'CDISPENSA'
              ReprintOnOverFlow = True
              Transparent = True
              mmHeight = 3704
              mmLeft = 169334
              mmTop = 529
              mmWidth = 5292
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              ReprintOnOverFlow = True
              Alignment = taCenter
              DataField = 'DDATAVALID'
              DataPipeline = DTM_A002AD.DocFor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 237067
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Position = lpLeft
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 235744
              mmTop = 0
              mmWidth = 2646
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              ReprintOnOverFlow = True
              Alignment = taCenter
              AutoSize = True
              DataField = 'CSTATUS'
              DataPipeline = DTM_A002AD.DocFor
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3175
              mmLeft = 255853
              mmTop = 529
              mmWidth = 11113
              BandType = 4
            end
            object myDBCheckBox3: TmyDBCheckBox
              UserName = 'DBCheckBox3'
              BooleanFalse = 'N'
              BooleanTrue = 'S'
              Style = csCheckMark
              DataPipeline = DTM_A002AD.DocFor
              DataField = 'CENTREGUE'
              ReprintOnOverFlow = True
              Transparent = True
              mmHeight = 3704
              mmLeft = 151077
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object Chk_cFalta: TmyCheckBox
              OnPrint = Chk_cFaltaPrint
              UserName = 'Chk_cFalta'
              Checked = False
              Style = csCheckMark
              Transparent = True
              mmHeight = 3704
              mmLeft = 185473
              mmTop = 0
              mmWidth = 2910
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              ReprintOnOverFlow = True
              Alignment = taCenter
              AutoSize = True
              DataField = 'CNUMDOC'
              DataPipeline = DTM_A002AD.DocFor
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 3704
              mmLeft = 207434
              mmTop = 265
              mmWidth = 13494
              BandType = 4
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Position = lpLeft
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 160867
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Position = lpLeft
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 4763
              mmLeft = 144463
              mmTop = 0
              mmWidth = 1588
              BandType = 4
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Position = lpLeft
              Weight = 0.75
              mmHeight = 4498
              mmLeft = 13494
              mmTop = 0
              mmWidth = 2381
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 2646
            mmPrintPosition = 0
            object ppLine9: TppLine
              UserName = 'Line9'
              ReprintOnOverFlow = True
              Weight = 0.75
              mmHeight = 1323
              mmLeft = 13494
              mmTop = 0
              mmWidth = 257440
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'CGRUPODOC'
            DataPipeline = DTM_A002AD.DocFor
            KeepTogether = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            object ppGroupHeaderBand1: TppGroupHeaderBand
              AfterPrint = ppGroupHeaderBand1AfterPrint
              mmBottomOffset = 0
              mmHeight = 4498
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                ReprintOnOverFlow = True
                mmHeight = 4498
                mmLeft = 13494
                mmTop = 0
                mmWidth = 257440
                BandType = 3
                GroupNo = 0
              end
              object ppDBText4: TppDBText
                UserName = 'DBText4'
                ReprintOnOverFlow = True
                DataField = 'CGRUPODOC'
                DataPipeline = DTM_A002AD.DocFor
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                Transparent = True
                mmHeight = 2910
                mmLeft = 16140
                mmTop = 794
                mmWidth = 101071
                BandType = 3
                GroupNo = 0
              end
              object lbl_cFalta: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_cFalta'
                ReprintOnOverFlow = True
                Caption = 'Falta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 183886
                mmTop = 265
                mmWidth = 6085
                BandType = 3
                GroupNo = 0
              end
              object lbl_cvigencia: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_cvigencia'
                ReprintOnOverFlow = True
                Caption = 'Vigência'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 238390
                mmTop = 265
                mmWidth = 11113
                BandType = 3
                GroupNo = 0
              end
              object lbl_cdispen: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_cdispen'
                ReprintOnOverFlow = True
                Caption = 'Dispensado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 163777
                mmTop = 265
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
              object lbl_cstatus: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_cstatus'
                ReprintOnOverFlow = True
                Caption = 'Status'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 257440
                mmTop = 265
                mmWidth = 8202
                BandType = 3
                GroupNo = 0
              end
              object lbl_centregue: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_centregue'
                ReprintOnOverFlow = True
                Caption = 'Entregue'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 146844
                mmTop = 265
                mmWidth = 11377
                BandType = 3
                GroupNo = 0
              end
              object ppLabel6: TppLabel
                OnPrint = lbl_cFaltaPrint
                UserName = 'lbl_cFalta1'
                ReprintOnOverFlow = True
                Caption = ' nº Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 3704
                mmLeft = 204788
                mmTop = 265
                mmWidth = 18785
                BandType = 3
                GroupNo = 0
              end
              object ppLine10: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line10'
                Position = lpLeft
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 144463
                mmTop = 0
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line11'
                Position = lpLeft
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 160867
                mmTop = 0
                mmWidth = 1588
                BandType = 3
                GroupNo = 0
              end
              object ppLine12: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line12'
                Position = lpLeft
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 181505
                mmTop = 0
                mmWidth = 2646
                BandType = 3
                GroupNo = 0
              end
              object ppLine13: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line13'
                Position = lpLeft
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 192088
                mmTop = 0
                mmWidth = 4763
                BandType = 3
                GroupNo = 0
              end
              object ppLine14: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line14'
                Position = lpLeft
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 235744
                mmTop = 0
                mmWidth = 794
                BandType = 3
                GroupNo = 0
              end
              object ppLine15: TppLine
                OnPrint = lbl_cFaltaPrint
                UserName = 'Line15'
                Position = lpRight
                ReprintOnOverFlow = True
                Weight = 0.75
                mmHeight = 4498
                mmLeft = 251619
                mmTop = 0
                mmWidth = 794
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
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        ReprintOnOverFlow = True
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 87313
        mmTop = 12171
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        ReprintOnOverFlow = True
        Caption = 'Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 17727
        mmTop = 12171
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        ReprintOnOverFlow = True
        DataField = 'CCONTATFOR'
        DataPipeline = DTM_A002AD.Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 16404
        mmWidth = 66940
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        OnGetText = ppDBText8GetText
        ReprintOnOverFlow = True
        Alignment = taCenter
        DataField = 'CTELCOMFOR'
        DataPipeline = DTM_A002AD.Fornecedor
        DisplayFormat = '!## ####-####;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3175
        mmLeft = 84138
        mmTop = 16404
        mmWidth = 19315
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label7'
        ReprintOnOverFlow = True
        Caption = 'Val. Certificado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 12435
        mmWidth = 21960
        BandType = 4
      end
      object DBT_DDTVALIDAD: TppDBText
        OnPrint = DBT_DDTVALIDADPrint
        UserName = 'DBT_DDTVALIDAD'
        DataField = 'DDTVALIDAD'
        DataPipeline = DTM_A002AD.Fornecedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 163513
        mmTop = 16669
        mmWidth = 12435
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'CNOMEGRL'
      DataPipeline = DTM_A002AD.Fornecedor
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
