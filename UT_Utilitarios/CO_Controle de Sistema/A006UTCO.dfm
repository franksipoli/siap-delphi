object FRM_A006UTCO: TFRM_A006UTCO
  Left = 91
  Top = 70
  Width = 666
  Height = 453
  Caption = 'FRM_A006UTCO'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BTN_RENTODOS: TSpeedButton
    Left = 314
    Top = 210
    Width = 32
    Height = 29
    Cursor = crHandPoint
    Caption = '<<'
    OnClick = BTN_RENTODOSClick
  end
  object BTN_RENITEM: TSpeedButton
    Left = 314
    Top = 124
    Width = 32
    Height = 29
    Cursor = crHandPoint
    Caption = '<'
    OnClick = BTN_RENITEMClick
  end
  object BTN_ADDTODOS: TSpeedButton
    Left = 314
    Top = 253
    Width = 32
    Height = 29
    Cursor = crHandPoint
    Caption = '>>'
    OnClick = BTN_ADDTODOSClick
  end
  object BTN_ADITEM: TSpeedButton
    Left = 314
    Top = 167
    Width = 32
    Height = 29
    Cursor = crHandPoint
    Caption = '>'
    OnClick = BTN_ADITEMClick
  end
  object DBG_APLIC1: TDBGrid
    Left = 10
    Top = 70
    Width = 289
    Height = 313
    DataSource = DTM_A006UTCO.DTS_041
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CDESCAPLI'
        Title.Caption = 'Descrição Aplicação'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCATEGORIA'
        Title.Caption = 'Categoria'
        Width = 70
        Visible = True
      end>
  end
  object Pnl_Sistema: TLMDPanelFill
    Left = 11
    Top = 28
    Width = 287
    Height = 20
    UseDockManager = False
    Alignment = agCenterLeft
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Aplicações do Sistema'
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
    TabOrder = 1
  end
  object CB_CAT1: TComboBox
    Left = 10
    Top = 48
    Width = 289
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    OnChange = CB_CAT1Change
    OnKeyPress = CB_CAT1KeyPress
  end
  object DBG_APLIC2: TDBGrid
    Left = 359
    Top = 70
    Width = 289
    Height = 313
    DataSource = DTS_LIST2
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CDESCAPLI'
        Title.Caption = 'Descrição Aplicação'
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CCATEGORIA'
        Title.Caption = 'Categoria'
        Width = 70
        Visible = True
      end>
  end
  object LMDPanelFill1: TLMDPanelFill
    Left = 360
    Top = 28
    Width = 287
    Height = 20
    UseDockManager = False
    Alignment = agCenterLeft
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Aplicações do Grupo'
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
    TabOrder = 4
  end
  object CB_CAT2: TComboBox
    Left = 359
    Top = 48
    Width = 289
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    OnChange = CB_CAT2Change
    OnKeyPress = CB_CAT1KeyPress
  end
  object Btn_Ok: TBitBtn
    Tag = 2
    Left = 391
    Top = 393
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Caption = '&OK'
    Default = True
    TabOrder = 6
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
  object Btn_Cancel: TBitBtn
    Left = 536
    Top = 393
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Cancelar'
    TabOrder = 7
    OnClick = Btn_CancelClick
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
  object Pnl_Titulo: TLMDPanelFill
    Left = 10
    Top = 3
    Width = 637
    Height = 21
    UseDockManager = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvLowered
    Bevel.Mode = bmCustom
    FillObject.Style = sfGradient
    FillObject.Gradient.Color = 13882323
    FillObject.Gradient.ColorCount = 100
    FillObject.Gradient.Style = gstTopRightDiagonal
    FillObject.Gradient.EndColor = 16514043
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object DTS_LIST1: TOraDataSource
    DataSet = DMControle.QryTemp
    Left = 316
    Top = 296
  end
  object DTS_LIST2: TOraDataSource
    DataSet = DMControle.QryTemp
    Left = 316
    Top = 348
  end
end
