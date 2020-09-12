object FRM_A002RHCP: TFRM_A002RHCP
  Left = 208
  Top = 99
  BorderStyle = bsDialog
  Caption = 'Cartão Ponto'
  ClientHeight = 240
  ClientWidth = 407
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox2: TLMDGroupBox
    Left = 11
    Top = 6
    Width = 169
    Height = 188
    Alignment = gcaTopCenter
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Seleção de Servidores  '
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
    object CHK_TODSERVID: TCheckBox
      Left = 16
      Top = 23
      Width = 109
      Height = 24
      Cursor = crHandPoint
      Caption = 'Todos Servidores'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = CHK_TODSERVIDClick
    end
    object LMDGroupBox1: TLMDGroupBox
      Left = 8
      Top = 62
      Width = 153
      Height = 118
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderColor = cl3DLight
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '    '
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
      object Label1: TLabel
        Left = 19
        Top = 16
        Width = 86
        Height = 13
        Caption = '  Matricula Inicial :'
      end
      object Label2: TLabel
        Left = 19
        Top = 60
        Width = 81
        Height = 13
        Caption = '  Matricula Final :'
      end
      object MDT_MATINICIAL: TMaskEdit
        Left = 16
        Top = 29
        Width = 121
        Height = 21
        TabOrder = 0
        OnClick = MDT_MATINICIALClick
        OnExit = MDT_MATINICIALExit
      end
      object MDT_MATFINAL: TMaskEdit
        Left = 16
        Top = 74
        Width = 121
        Height = 21
        TabOrder = 1
        OnClick = MDT_MATINICIALClick
        OnExit = MDT_MATINICIALExit
      end
    end
    object CHK_ESCINTERVALO: TCheckBox
      Left = 16
      Top = 54
      Width = 109
      Height = 17
      Cursor = crHandPoint
      Caption = 'Escolher Intervalo'
      TabOrder = 1
      OnClick = CHK_ESCINTERVALOClick
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 193
    Top = 7
    Width = 202
    Height = 187
    Alignment = gcaTopCenter
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Seleção de Ano / Meses  '
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
    object Label3: TLabel
      Left = 11
      Top = 70
      Width = 74
      Height = 13
      Caption = '   Mês Inicial  :  '
    end
    object Label4: TLabel
      Left = 11
      Top = 23
      Width = 95
      Height = 13
      Caption = '  Selecione o Ano :  '
    end
    object Label5: TLabel
      Left = 13
      Top = 122
      Width = 183
      Height = 52
      Caption = 
        'Caso queira que seja gerado o Cartão Ponto de apenas um mês, sel' +
        'ecione o mesmo mês como mês inicial e mês final.'
      WordWrap = True
    end
    object Label6: TLabel
      Left = 104
      Top = 70
      Width = 57
      Height = 13
      Caption = '  Mês Final :'
    end
    object CBB_MESINI: TComboBox
      Left = 8
      Top = 83
      Width = 93
      Height = 21
      Cursor = crHandPoint
      Enabled = False
      ItemHeight = 13
      TabOrder = 1
      OnKeyPress = CBB_MESINIKeyPress
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Março'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Novembro'
        'Dezembro')
    end
    object CBB_MESFIN: TComboBox
      Left = 102
      Top = 83
      Width = 93
      Height = 21
      Cursor = crHandPoint
      Enabled = False
      ItemHeight = 13
      TabOrder = 2
      OnKeyPress = CBB_MESFINKeyPress
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Março'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Novembro'
        'Dezembro')
    end
    object CBB_ANO: TComboBox
      Left = 8
      Top = 37
      Width = 187
      Height = 21
      Cursor = crHandPoint
      ItemHeight = 13
      TabOrder = 0
      OnChange = CBB_ANOChange
      OnEnter = CBB_ANOEnter
      OnKeyPress = CBB_ANOKeyPress
    end
  end
  object Btn_Fechar: TBitBtn
    Left = 239
    Top = 206
    Width = 84
    Height = 27
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = Btn_FecharClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    Margin = 8
    NumGlyphs = 2
  end
  object Btn_Ok: TBitBtn
    Left = 71
    Top = 206
    Width = 84
    Height = 27
    Cursor = crHandPoint
    Caption = '&OK'
    Default = True
    TabOrder = 3
    OnClick = Btn_OkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object CartaoPonto: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '13000'
      '92100')
    DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cartão Ponto'
    PrinterSetup.Duplex = dpVertical
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 240000
    Template.FileName = 'J:\Desenvolvimento\Rel. Cartão Ponto\RelPonto.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    ShowCancelDialog = False
    ShowPrintDialog = False
    Left = 344
    Top = 204
    Version = '5.0'
    mmColumnWidth = 98650
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 7144
        mmWidth = 158221
        BandType = 0
      end
      object ppShape56: TppShape
        UserName = 'Shape56'
        Brush.Color = 15066597
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 1323
        mmWidth = 158221
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'Cartão Ponto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 1852
        mmWidth = 19579
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 33073
        mmWidth = 42069
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 33073
        mmWidth = 21431
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 33073
        mmWidth = 31750
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape14'
        mmHeight = 9525
        mmLeft = 26194
        mmTop = 21960
        mmWidth = 158221
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape16'
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 21960
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = ' Matrícula:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 26988
        mmTop = 21960
        mmWidth = 11377
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 4763
        mmLeft = 69586
        mmTop = 21960
        mmWidth = 114829
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = ' Servidor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 70379
        mmTop = 21960
        mmWidth = 10848
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape17'
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 11377
        mmWidth = 157957
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape19'
        mmHeight = 4763
        mmLeft = 131234
        mmTop = 11377
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = ' Endereço:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 26988
        mmTop = 11377
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = ' C.G.C.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 132027
        mmTop = 11377
        mmWidth = 9525
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape20'
        mmHeight = 4763
        mmLeft = 26194
        mmTop = 26723
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ' Mês:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 26988
        mmTop = 26723
        mmWidth = 6085
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape21'
        mmHeight = 4763
        mmLeft = 54240
        mmTop = 26723
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ' Ano:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 55033
        mmTop = 26723
        mmWidth = 6085
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape22'
        mmHeight = 4763
        mmLeft = 75406
        mmTop = 26723
        mmWidth = 70908
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ' Função:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 76200
        mmTop = 26723
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 72761
        mmTop = 33073
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Intervalo Refeição'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 112448
        mmTop = 33073
        mmWidth = 23548
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 3704
        mmLeft = 162984
        mmTop = 33073
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 169334
        mmTop = 33073
        mmWidth = 6879
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 42333
        mmWidth = 79375
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Alignment = taCenter
        Caption = '1ª Quinzena'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 55827
        mmTop = 42333
        mmWidth = 17992
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 3704
        mmLeft = 105304
        mmTop = 42333
        mmWidth = 79111
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Alignment = taCenter
        Caption = '2ª Quinzena'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 136790
        mmTop = 42333
        mmWidth = 17992
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 45773
        mmWidth = 79111
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 45773
        mmWidth = 14023
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 45773
        mmWidth = 32808
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 3704
        mmLeft = 72496
        mmTop = 45773
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Alignment = taCenter
        Caption = 'Manhã'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 51858
        mmTop = 45773
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Alignment = taCenter
        Caption = 'Tarde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 85725
        mmTop = 45773
        mmWidth = 7408
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 45773
        mmWidth = 78846
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape12'
        mmHeight = 3704
        mmLeft = 105304
        mmTop = 45773
        mmWidth = 14023
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 45773
        mmWidth = 32808
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 3704
        mmLeft = 151607
        mmTop = 45773
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Alignment = taCenter
        Caption = 'Manhã'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 130969
        mmTop = 45773
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Alignment = taCenter
        Caption = 'Tarde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 164836
        mmTop = 45773
        mmWidth = 7408
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 3704
        mmLeft = 26194
        mmTop = 49477
        mmWidth = 14023
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 49477
        mmWidth = 16669
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 3704
        mmLeft = 56356
        mmTop = 49477
        mmWidth = 16404
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 3704
        mmLeft = 72496
        mmTop = 49477
        mmWidth = 16669
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 3704
        mmLeft = 88900
        mmTop = 49477
        mmWidth = 16669
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        mmHeight = 3704
        mmLeft = 105304
        mmTop = 49477
        mmWidth = 14023
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 3704
        mmLeft = 119063
        mmTop = 49477
        mmWidth = 16669
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        mmHeight = 3704
        mmLeft = 135467
        mmTop = 49477
        mmWidth = 16404
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 3704
        mmLeft = 151607
        mmTop = 49477
        mmWidth = 16933
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape301'
        mmHeight = 3704
        mmLeft = 168011
        mmTop = 49477
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Alignment = taCenter
        Caption = 'Dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 31221
        mmTop = 49477
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Alignment = taCenter
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 49477
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Alignment = taCenter
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 75671
        mmTop = 49477
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Alignment = taCenter
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 122502
        mmTop = 49477
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Alignment = taCenter
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 155046
        mmTop = 49477
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Alignment = taCenter
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 61119
        mmTop = 49477
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Alignment = taCenter
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 93398
        mmTop = 49477
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Alignment = taCenter
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 140229
        mmTop = 49477
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Alignment = taCenter
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 172773
        mmTop = 49477
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Alignment = taCenter
        Caption = 'Dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 110067
        mmTop = 49477
        mmWidth = 3969
        BandType = 0
      end
      object ppShape46: TppShape
        UserName = 'Shape23'
        mmHeight = 4763
        mmLeft = 146050
        mmTop = 26723
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' CTPS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 146844
        mmTop = 26723
        mmWidth = 8202
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 36513
        mmWidth = 42069
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape35'
        mmHeight = 4233
        mmLeft = 67998
        mmTop = 36513
        mmWidth = 21431
        BandType = 0
      end
      object ppShape47: TppShape
        UserName = 'Shape47'
        mmHeight = 4233
        mmLeft = 110331
        mmTop = 36513
        mmWidth = 31750
        BandType = 0
      end
      object ppShape48: TppShape
        UserName = 'Shape48'
        mmHeight = 4233
        mmLeft = 162984
        mmTop = 36513
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Horário de Trabalho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 32015
        mmTop = 36777
        mmWidth = 25135
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Alignment = taCenter
        DataField = 'NMATRICULA'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 38629
        mmTop = 22754
        mmWidth = 30427
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 17727
        mmWidth = 158221
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Alignment = taCenter
        Caption = 'Dados do Servidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 18256
        mmWidth = 27252
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText2GetText
        Alignment = taCenter
        DataField = 'dDataPto'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 27252
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        OnGetText = ppDBText3GetText
        Alignment = taCenter
        DataField = 'dDataPto'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 27252
        mmWidth = 13494
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 3704
        mmLeft = 141817
        mmTop = 33073
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 146579
        mmTop = 33073
        mmWidth = 10054
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 4233
        mmLeft = 141817
        mmTop = 36513
        mmWidth = 21431
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 3704
        mmLeft = 89165
        mmTop = 33073
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Saída'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 95515
        mmTop = 33073
        mmWidth = 6879
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape41'
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 36513
        mmWidth = 21431
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Alignment = taCenter
        DataField = 'CNOMERAZ'
        DataPipeline = DTM_A002RHCP.Pop_Qry_P
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 26988
        mmTop = 7673
        mmWidth = 156634
        BandType = 0
      end
      object DBT_ENDDPREF: TppDBText
        UserName = 'DBT_ENDDPREF'
        DataField = 'CENDPREF'
        DataPipeline = DTM_A002RHCP.Pop_Qry_P
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 11906
        mmWidth = 89959
        BandType = 0
      end
      object DBT_CNPJPREF: TppDBText
        UserName = 'DBT_CNPJPREF'
        DataField = 'CCNPJ'
        DataPipeline = DTM_A002RHCP.Pop_Qry_P
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 11906
        mmWidth = 39952
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'cNomeSrv'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 82815
        mmTop = 22754
        mmWidth = 100806
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'cDescCargo'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 27517
        mmWidth = 58473
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText11'
        Alignment = taCenter
        DataField = 'CENTRMANHA'
        DataPipeline = DTM_A002RHCP.Pop_010
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 68527
        mmTop = 36777
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Alignment = taCenter
        DataField = 'CSAIRMANHA'
        DataPipeline = DTM_A002RHCP.Pop_010
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 89694
        mmTop = 36777
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Alignment = taCenter
        DataField = 'LKP_INTERVALO'
        DataPipeline = DTM_A002RHCP.Pop_010
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 110861
        mmTop = 36777
        mmWidth = 30692
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Alignment = taCenter
        DataField = 'CENTRTARDE'
        DataPipeline = DTM_A002RHCP.Pop_010
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 142346
        mmTop = 36777
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Alignment = taCenter
        DataField = 'CSAIRTARDE'
        DataPipeline = DTM_A002RHCP.Pop_010
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 163513
        mmTop = 36777
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText12'
        DataField = 'nCRTPS/nSERIE'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 156369
        mmTop = 27252
        mmWidth = 27252
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintCount = 16
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppShape60: TppShape
        UserName = 'Shape60'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppShape61: TppShape
        UserName = 'Shape61'
        mmHeight = 4233
        mmLeft = 49742
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppShape62: TppShape
        UserName = 'Shape62'
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppShape63: TppShape
        UserName = 'Shape63'
        mmHeight = 4233
        mmLeft = 82286
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Alignment = taCenter
        DataField = 'cHoraEntManha'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 34396
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Alignment = taCenter
        DataField = 'cHoraSaiManha'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 50800
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Alignment = taCenter
        DataField = 'cHoraEntraTarde'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 66940
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Alignment = taCenter
        DataField = 'cHoraSaiTarde'
        DataPipeline = DTM_A002RHCP.Pop_CartaoPonto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3440
        mmLeft = 83344
        mmTop = 529
        mmWidth = 14288
        BandType = 4
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object Lbl_Dia: TppLabel
        UserName = 'Lbl_Dia'
        OnGetText = Lbl_DiaGetText
        Caption = '1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 25665
        mmTop = 265
        mmWidth = 1588
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 57944
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = '___________________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 103981
        mmTop = 2910
        mmWidth = 79640
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Assinatura do Funcionário Responsável'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 117740
        mmTop = 7144
        mmWidth = 58473
        BandType = 8
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Guaratuba-PR,__ de _______________, de 20__.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24871
        mmTop = 2646
        mmWidth = 73025
        BandType = 8
      end
    end
  end
end
