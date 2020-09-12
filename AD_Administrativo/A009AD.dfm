object FRM_A009AD: TFRM_A009AD
  Left = 193
  Top = 128
  Width = 646
  Height = 515
  Caption = 'Grafico da Receita por Tributo'
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
  object Label1: TLabel
    Left = 7
    Top = 2
    Width = 78
    Height = 13
    Caption = 'Comparar Anos :'
  end
  object Chart: TChart
    Left = 6
    Top = 49
    Width = 626
    Height = 432
    AllowPanning = pmHorizontal
    AnimatedZoomSteps = 12
    BackWall.Brush.Color = clWhite
    Gradient.Direction = gdLeftRight
    LeftWall.Brush.Color = clWhite
    MarginBottom = 5
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      '')
    Chart3DPercent = 10
    ClipPoints = False
    DepthAxis.Visible = True
    LeftAxis.GridCentered = True
    LeftAxis.LabelsOnAxis = False
    LeftAxis.LabelStyle = talValue
    LeftAxis.TickLength = 0
    LeftAxis.TickOnLabelsOnly = False
    LeftAxis.Title.Caption = 'Valores em R$ 1.000'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -12
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Alignment = laLeft
    Legend.ColorWidth = 30
    Legend.DividingLines.Width = 12
    Legend.LegendStyle = lsSeries
    Legend.TextStyle = ltsPlain
    Legend.TopPos = 2
    ScaleLastPage = False
    View3DOptions.Elevation = 288
    View3DOptions.HorizOffset = -33
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DOptions.VertOffset = 14
    View3DOptions.Zoom = 99
    View3DOptions.ZoomText = False
    BorderWidth = 1
    Color = clSilver
    TabOrder = 0
    object PNL_MSG: TPanel
      Left = 170
      Top = 204
      Width = 285
      Height = 49
      Caption = 'Pesquisando...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object Series2: TBarSeries
      Cursor = crSizeAll
      Marks.ArrowLength = 20
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Tahoma'
      Marks.Font.Style = []
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clRed
      Title = ' '
      ValueFormat = '#,##0.##'
      BarStyle = bsRectGradient
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Font.Charset = ANSI_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -8
      Marks.Font.Name = 'Tahoma'
      Marks.Font.Style = []
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clGreen
      Title = ' '
      ValueFormat = '#,##0.##'
      BarStyle = bsRectGradient
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object CBB_ANO1: TComboBox
    Left = 7
    Top = 16
    Width = 77
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnChange = CBB_ANO1Change
    OnKeyPress = CBB_ANO1KeyPress
    Items.Strings = (
      '2005'
      '2004'
      '2003'
      '2002'
      '2001'
      '2000'
      '1999'
      '1998'
      '1997'
      '1996'
      '1995')
  end
  object CBB_ANO2: TComboBox
    Left = 86
    Top = 16
    Width = 77
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = CBB_ANO2Change
    OnKeyPress = CBB_ANO1KeyPress
    Items.Strings = (
      '2005'
      '2004'
      '2003'
      '2002'
      '2001'
      '2000'
      '1999'
      '1998'
      '1997'
      '1996'
      '1995')
  end
  object BTN_PESQFLX: TBitBtn
    Left = 452
    Top = 15
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Caption = 'Pesquisar'
    TabOrder = 3
    OnClick = Button1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000014000000120000000100
      08000000000068010000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      0808080808080808080700080808080808080808080808080808080807000008
      0808000808080808080808080808080800000808000008000808080808080808
      0808080700000000080008080008080808080808080700000007080800080008
      0800080808080808000008070000080808000800080800080808080800080008
      0800000808080008000808000808080800000808080800080808080008000808
      0808080800000800080800080808080800000808080808080000000800000808
      0808080000080808080808080800000000000808080800080800080808080808
      0808080808080008080000080008080808080808080808080800080800000000
      0808080808080808080808080808000008080808080808080808080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      0808}
  end
  object BTN_IMPFLX: TBitBtn
    Left = 546
    Top = 15
    Width = 85
    Height = 25
    Cursor = crHandPoint
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BTN_IMPFLXClick
    Glyph.Data = {
      06030000424D060300000000000036000000280000000F0000000F0000000100
      180000000000D0020000C40E0000C40E00000000000000000000C0C0C0C0C0C0
      A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0B0B0B0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000000000000000000000
      0000808080808080808080808080C0C0C0C0C0C0C0C0C0808080606060C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000000000808080C0C0
      C0C0C0C0C0C0C0C0C0C0606060BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF80
      8080404040A0A0A0C0C0C0404040909090C0C0C0C0C0C0BFBFBF404040000000
      808080808080C0C0C0A0A0A0C0C0C0FFFFFF8080800000000000000000004040
      40808080C0C0C0C0C0C07F7F7FC0C0C0C0C0C000000000000000000000000000
      0000000000C0C0C0C0C0C0808080000000C0C0C0C0C0C08080807F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09090907F7F7FCFCFCF8080806060
      60606060C0C0C00000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0FFFFFFDFDFDF808080808080000000C0C0C00000007F7F7FC0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C060DF6000BF00C0C0C08080808080
      80000000C0C0C0C0C0C06F6F6FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDFDFDFDFDFDFDFDFDFDFBFBFBF808080000000C0C0C0C0C0C0C0C0C0C0C0C0
      000000000000FFFFFFBFBFBFFFFFFF000000404040000000000000C0C0C0BFBF
      BF000000C0C0C0808080C0C0C0C0C0C0C0C0C0000000808080FFFFFF80808000
      00007F7F7F000000C0C0C0C0C0C0A0A0A0000000C0C0C000FF00C0C0C0C0C0C0
      C0C0C0606060000000DFDFDF000000000000DFDFDFBFBFBF3030306060606060
      60606060C0C0C0DFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060FFFFFFFF
      FFFFFFFFFFFFFFFF606060C0C0C0C0C0C0C0C0C0C0C0C0606060C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0}
  end
  object DBL_CCOMPOSI: TRxDBLookupCombo
    Left = 165
    Top = 16
    Width = 276
    Height = 21
    DropDownCount = 8
    LookupField = 'CCODCOMPOS'
    LookupDisplay = 'CDESCRICAO'
    LookupSource = DTS_COMPOSI
    TabOrder = 5
    OnChange = DBL_CCOMPOSIChange
    OnKeyPress = DBL_CCOMPOSIKeyPress
  end
  object QRY_ANO1: TQuery
    SQL.Strings = (
      'select'
      '  nTotal,'
      '  ntotreci,'
      '  ddatacred,'
      '  pcomposi.cdescricao'
      'from'
      '  precebim,'
      '  pcomposi'
      'where'
      '  extract(year from ddatacred) = :nano and'
      '  pcomposi.ccodcompos = precebim.ccodcompos'
      '  '
      ''
      '')
    Left = 468
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nano'
        ParamType = ptInput
      end>
  end
  object QRY_ANO2: TQuery
    SQL.Strings = (
      'select'
      '  nTotal,'
      '  ntotreci,'
      '  ddatacred,'
      '  pcomposi.cdescricao'
      'from'
      '  precebim,'
      '  pcomposi'
      'where'
      '  extract(year from ddatacred) = :nano and'
      '  pcomposi.ccodcompos = precebim.ccodcompos')
    Left = 504
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nano'
        ParamType = ptInput
      end>
  end
  object QRY_COMPOSI: TQuery
    Active = True
    DatabaseName = 'G:\P\TMP'
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  pcomposi'
      'order by'
      '  cdescricao')
    Left = 542
    Top = 57
  end
  object DTS_COMPOSI: TDataSource
    DataSet = QRY_COMPOSI
    Left = 574
    Top = 57
  end
end
