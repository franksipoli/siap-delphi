object FRM_A010AD: TFRM_A010AD
  Left = 133
  Top = 15
  Width = 808
  Height = 580
  HorzScrollBar.Position = 343
  Caption = 'FRM_A010AD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object RPT_GRAFICO: TQuickRep
    Left = -339
    Top = 0
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      100
      2970
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 133
      Width = 1047
      Height = 613
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1621.89583333333
        2770.1875)
      BandType = rbDetail
      object QRChart1: TQRChart
        Left = 14
        Top = 33
        Width = 1010
        Height = 541
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1431.39583333333
          37.0416666666667
          87.3125
          2672.29166666667)
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -16
          Title.Font.Name = 'Arial'
          Title.Font.Style = []
          Title.Text.Strings = (
            'Comparativo de Receitas Tributárias')
          LeftAxis.Title.Caption = 'Valores R$ 1.000'
          LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
          LeftAxis.Title.Font.Color = clBlack
          LeftAxis.Title.Font.Height = -13
          LeftAxis.Title.Font.Name = 'Arial'
          LeftAxis.Title.Font.Style = [fsBold]
          Legend.Alignment = laLeft
          Legend.ColorWidth = 40
          object Series1: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = FRM_A009AD.Series2
            SeriesColor = clRed
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
          object Series2: TBarSeries
            Marks.ArrowLength = 20
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = FRM_A009AD.Series1
            SeriesColor = clGreen
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
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 95
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        251.354166666667
        2770.1875)
      BandType = rbTitle
      object QRShape1: TQRShape
        Left = 10
        Top = 3
        Width = 1028
        Height = 88
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          232.833333333333
          26.4583333333333
          7.9375
          2719.91666666667)
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 309
        Top = 21
        Width = 444
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          52.9166666666667
          817.5625
          55.5625
          1174.75)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Prefeitura Municipal de Guaratuba'
        Color = 15000804
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel2: TQRLabel
        Left = 29
        Top = 51
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          76.7291666666667
          134.9375
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 63
        Top = 51
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          166.6875
          134.9375
          95.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        OnPrint = QRSysData1Print
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 63
        Top = 66
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          166.6875
          174.625
          97.8958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Transparent = False
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 29
        Top = 65
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          76.7291666666667
          171.979166666667
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 255
        Top = 49
        Width = 553
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          674.6875
          129.645833333333
          1463.14583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Secretaria de Finanças e Planejamento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object LBL_ANOS: TQRLabel
        Left = 255
        Top = 66
        Width = 553
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          674.6875
          174.625
          1463.14583333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Comparativo dos anos 2004 / 2005'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 973
        Top = 52
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2574.39583333333
          137.583333333333
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pag :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 1005
        Top = 52
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2659.0625
          137.583333333333
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Text = '00'
        Transparent = False
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 973
        Top = 72
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2574.39583333333
          190.5
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A010AD'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
end
