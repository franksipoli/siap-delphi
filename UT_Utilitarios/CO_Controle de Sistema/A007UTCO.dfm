object FRM_A007UTCO: TFRM_A007UTCO
  Left = 165
  Top = 27
  Width = 461
  Height = 496
  Caption = 'FRM_A007UTCO'
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
  object GRD_OBJ: TDBGrid
    Left = 10
    Top = 26
    Width = 432
    Height = 391
    DataSource = DTM_A007UTCO.DTS_044
    FixedColor = clSilver
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GRD_OBJDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CNOMEOBJ'
        Title.Caption = 'Nome Objeto'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHINT'
        Title.Caption = 'Descrição'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNOMECLA'
        Title.Caption = 'Classe'
        Width = 111
        Visible = True
      end>
  end
  object Pnl_Sistema: TLMDPanelFill
    Left = 10
    Top = 6
    Width = 432
    Height = 20
    UseDockManager = False
    Alignment = agCenterLeft
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Caption = '  Objetos do Sistema'
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
  object CBB_CLASSE: TComboBox
    Left = 275
    Top = 6
    Width = 167
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    Text = 'Classe...'
    OnChange = CBB_CLASSEChange
    Items.Strings = (
      'Todas as Classes'
      'TSpeedButton'
      'TDBEdit'
      'TEdit'
      'TBitBtn'
      'TCombobox'
      'TComboEdit'
      'TDBDateEdit')
  end
  object Btn_Ok: TBitBtn
    Tag = 2
    Left = 86
    Top = 432
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Caption = '&Adicionar'
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
  object Btn_Cancel: TBitBtn
    Left = 263
    Top = 432
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Sair'
    TabOrder = 4
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
end
