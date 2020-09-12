object FRM_A012ADPT: TFRM_A012ADPT
  Left = 210
  Top = 134
  Width = 361
  Height = 329
  Caption = 'FRM_A012ADPT'
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
  object Panel2: TPanel
    Left = 315
    Top = 0
    Width = 38
    Height = 302
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 53
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
    object BTN_IMPRIMIR: TSpeedButton
      Left = 1
      Top = 14
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Emissão da Etiqueta do Processo'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_IMPRIMIRClick
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 7
    Top = 7
    Width = 303
    Height = 288
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Documentos Requeridos  '
    CaptionFont.Charset = ANSI_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionParentFont = False
    Color = clSilver
    TabOrder = 1
    object DBM_CDOCUMENTO: TDBMemo
      Left = 8
      Top = 17
      Width = 288
      Height = 265
      DataField = 'CDOCUMENTO'
      DataSource = DTM_A012ADPT.DTS_155
      TabOrder = 0
    end
  end
  object RPT_DOCS: TppReport
    AutoStop = False
    DataPipeline = DBP_DOCS
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
    UserName = 'Report'
    DeviceType = 'Screen'
    Left = 267
    Top = 31
    Version = '5.0'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object Shp_Titul: TppShape
        UserName = 'Shp_Titul'
        mmHeight = 29104
        mmLeft = 794
        mmTop = 265
        mmWidth = 196586
        BandType = 0
      end
      object Db_Razao: TppDBText
        UserName = 'Db_Razao'
        SaveOrder = 0
        Save = True
        Alignment = taCenter
        Color = 15000804
        DataField = 'CNOMERAZ'
        DataPipeline = DBP_P
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        mmHeight = 5556
        mmLeft = 43921
        mmTop = 4763
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
        mmLeft = 178065
        mmTop = 19579
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
        mmLeft = 185738
        mmTop = 20108
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
        mmLeft = 178065
        mmTop = 23548
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
        mmTop = 19579
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
        mmTop = 19579
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
        mmTop = 23548
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
        mmTop = 23548
        mmWidth = 13229
        BandType = 0
      end
      object Lbl_RelTiul: TppLabel
        UserName = 'Lbl_RelTiul'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Documentos Requeridos para entrada no Protocolo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 15346
        mmWidth = 146315
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
        mmTop = 23813
        mmWidth = 146315
        BandType = 0
      end
      object IMG_LOGO: TppImage
        UserName = 'IMG_LOGO'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 16669
        mmLeft = 8467
        mmTop = 529
        mmWidth = 20902
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'CDESCRITRQ'
        DataPipeline = DBP_DOCS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 1058
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Solicitação: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 1323
        mmTop = 794
        mmWidth = 22754
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        CharWrap = False
        DataField = 'CDOCUMENTO'
        DataPipeline = DBP_DOCS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Stretch = True
        Transparent = True
        mmHeight = 4498
        mmLeft = 1058
        mmTop = 14288
        mmWidth = 196057
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Documentos Requeridos: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 1058
        mmTop = 8467
        mmWidth = 47890
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object DBP_P: TppDBPipeline
    DataSource = DMControle.Dts_P
    UserName = 'DBP_P'
    Left = 267
    Top = 67
    object DBP_PppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object DBP_PppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBP_PppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object DBP_PppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object DBP_PppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object DBP_PppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object DBP_PppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object DBP_PppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object DBP_PppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object DBP_PppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object DBP_PppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object DBP_PppField12: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object DBP_PppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DBP_PppField14: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object DBP_PppField15: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 14
    end
    object DBP_PppField16: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object DBP_PppField17: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object DBP_PppField18: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object DBP_PppField19: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object DBP_PppField20: TppField
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object DBP_PppField21: TppField
      FieldAlias = 'CXPOSTAL'
      FieldName = 'CXPOSTAL'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
    object DBP_PppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNUMERO'
      FieldName = 'NNUMERO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object DBP_PppField23: TppField
      FieldAlias = 'CUF'
      FieldName = 'CUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
    object DBP_PppField24: TppField
      FieldAlias = 'CLISTATAB'
      FieldName = 'CLISTATAB'
      FieldLength = 255
      DisplayWidth = 255
      Position = 23
    end
    object DBP_PppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'NPMNOTCE'
      FieldName = 'NPMNOTCE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object DBP_PppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'NMESPGTO'
      FieldName = 'NMESPGTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object DBP_PppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'NANOPGTO'
      FieldName = 'NANOPGTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object DBP_PppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'NPERPATRON'
      FieldName = 'NPERPATRON'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object DBP_PppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'NPERPROP'
      FieldName = 'NPERPROP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object DBP_PppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'NMESCOMP'
      FieldName = 'NMESCOMP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object DBP_PppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'NANOCOMP'
      FieldName = 'NANOCOMP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
  end
  object DBP_DOCS: TppDBPipeline
    DataSource = DTM_A012ADPT.DTS_155
    UserName = 'DBP_DOCS'
    Left = 267
    Top = 103
  end
end
