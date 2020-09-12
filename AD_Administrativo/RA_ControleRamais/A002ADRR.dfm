object FRM_A005ADRR: TFRM_A005ADRR
  Left = 362
  Top = 201
  Width = 338
  Height = 109
  Caption = 'FRM_A005ADRR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object QRY_REL: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADRAMAL,CADSETOR,CADORGAO,CADORGST '
      'where cadorgst.nidorgao = cadorgao.nidorgao and'
      'cadorgst.nidsetor = cadsetor.nidsetor and'
      'cadramal.nidorgao = cadorgst.nidorgao and'
      'cadramal.nidsetor = cadorgst.nidsetor and'
      'cadramal.cstatramal = '#39'ATIVO'#39)
    Active = True
    Left = 100
    Top = 16
  end
  object DTS_REL: TOraDataSource
    DataSet = QRY_REL
    Left = 180
    Top = 16
  end
  object POP_REL: TppDBPipeline
    DataSource = DTS_REL
    SkipWhenNoRecords = False
    UserName = 'POP_REL'
    Left = 268
    Top = 16
    object POP_RELppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDRAMAL'
      FieldName = 'NIDRAMAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object POP_RELppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNUMRAMAL'
      FieldName = 'NNUMRAMAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object POP_RELppField3: TppField
      FieldAlias = 'CSTATRAMAL'
      FieldName = 'CSTATRAMAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 2
    end
    object POP_RELppField4: TppField
      FieldAlias = 'CCONTRARAM'
      FieldName = 'CCONTRARAM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object POP_RELppField5: TppField
      FieldAlias = 'CDIVURAMAL'
      FieldName = 'CDIVURAMAL'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object POP_RELppField6: TppField
      FieldAlias = 'CCONTRAMAL'
      FieldName = 'CCONTRAMAL'
      FieldLength = 25
      DisplayWidth = 25
      Position = 5
    end
    object POP_RELppField7: TppField
      FieldAlias = 'CMAILRAMAL'
      FieldName = 'CMAILRAMAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object POP_RELppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDORGAO'
      FieldName = 'NIDORGAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object POP_RELppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDSETOR'
      FieldName = 'NIDSETOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object POP_RELppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDSETOR_1'
      FieldName = 'NIDSETOR_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object POP_RELppField11: TppField
      FieldAlias = 'CDESCSETOR'
      FieldName = 'CDESCSETOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object POP_RELppField12: TppField
      FieldAlias = 'CENDSETOR'
      FieldName = 'CENDSETOR'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object POP_RELppField13: TppField
      FieldAlias = 'CBAIRROSET'
      FieldName = 'CBAIRROSET'
      FieldLength = 30
      DisplayWidth = 30
      Position = 12
    end
    object POP_RELppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'NPREFSETOR'
      FieldName = 'NPREFSETOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object POP_RELppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDORGAO_1'
      FieldName = 'NIDORGAO_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object POP_RELppField16: TppField
      FieldAlias = 'CDESCORG'
      FieldName = 'CDESCORG'
      FieldLength = 40
      DisplayWidth = 40
      Position = 15
    end
    object POP_RELppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDORGSET'
      FieldName = 'NIDORGSET'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object POP_RELppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDORGAO_2'
      FieldName = 'NIDORGAO_2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object POP_RELppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDSETOR_2'
      FieldName = 'NIDSETOR_2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
  end
  object ListaRamais: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6750'
      '74000')
    DataPipeline = POP_REL
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Lista de Ramais'
    PrinterSetup.PaperName = '210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 1350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    Template.FileName = 'C:\Meus documentos\Relatorios\ControleRamais.rtm'
    Units = utMillimeters
    UserName = 'Report'
    DeviceType = 'Screen'
    Language = lgPortugueseBrazil
    OnPreviewFormCreate = ListaRamaisPreviewFormCreate
    Left = 28
    Top = 16
    Version = '5.0'
    mmColumnWidth = 98650
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8731
        mmLeft = 4233
        mmTop = 794
        mmWidth = 135732
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Alignment = taCenter
        Caption = 'Prefeitura Municipal de Guaratuba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 43127
        mmTop = 2910
        mmWidth = 58208
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Width = 3
        Position = lpLeft
        Weight = 2.25
        mmHeight = 8467
        mmLeft = 139436
        mmTop = 1058
        mmWidth = 529
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Width = 3
        Position = lpLeft
        Weight = 2.25
        mmHeight = 8467
        mmLeft = 4233
        mmTop = 794
        mmWidth = 529
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        SaveOrder = 3
        Save = True
        VarType = vtPageNo
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 6085
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        SaveOrder = 2
        Save = True
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 6085
        mmWidth = 8996
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        SaveOrder = 1
        Save = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        mmHeight = 2646
        mmLeft = 19844
        mmTop = 6350
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        SaveOrder = 0
        Save = True
        Caption = 'Impresso :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        mmHeight = 3175
        mmLeft = 7144
        mmTop = 6085
        mmWidth = 11906
        BandType = 0
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      DataPipeline = POP_REL
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      Visible = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CDESCORG'
      DataPipeline = POP_REL
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          Alignment = taCenter
          DataField = 'CDESCORG'
          DataPipeline = POP_REL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentDataPipeline = False
          SuppressRepeatedValues = True
          Transparent = True
          mmHeight = 3440
          mmLeft = 3175
          mmTop = 2117
          mmWidth = 67204
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Width = 3
          Position = lpLeft
          Weight = 2.25
          mmHeight = 6350
          mmLeft = 69586
          mmTop = 0
          mmWidth = 1588
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
    object ppGroup3: TppGroup
      BreakName = 'CDESCSETOR'
      DataPipeline = POP_REL
      KeepTogether = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand3: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = 14342874
          mmHeight = 3704
          mmLeft = 3969
          mmTop = 2117
          mmWidth = 65088
          BandType = 3
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'Setor :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 5556
          mmTop = 2646
          mmWidth = 6615
          BandType = 3
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          AutoSize = True
          DataField = 'CDESCSETOR'
          DataPipeline = POP_REL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 2646
          mmLeft = 15610
          mmTop = 2646
          mmWidth = 25400
          BandType = 3
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Width = 3
          Position = lpLeft
          Weight = 2.25
          mmHeight = 8202
          mmLeft = 69586
          mmTop = 0
          mmWidth = 1588
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'NNUMRAMAL'
      DataPipeline = POP_REL
      KeepTogether = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          OnGetText = ppDBText3GetText
          DataField = 'CCONTRAMAL'
          DataPipeline = POP_REL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 4233
          mmTop = 1058
          mmWidth = 57944
          BandType = 3
          GroupNo = 2
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'NNUMRAMAL'
          DataPipeline = POP_REL
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 61913
          mmTop = 1058
          mmWidth = 5556
          BandType = 3
          GroupNo = 2
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Width = 3
          Position = lpLeft
          Weight = 2.25
          mmHeight = 5556
          mmLeft = 69586
          mmTop = 0
          mmWidth = 1588
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
end
