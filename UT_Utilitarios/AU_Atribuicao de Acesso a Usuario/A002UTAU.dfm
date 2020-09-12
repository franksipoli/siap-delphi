object FRM_A002UTAU: TFRM_A002UTAU
  Left = 147
  Top = 65
  BorderStyle = bsSingle
  ClientHeight = 411
  ClientWidth = 571
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox1: TLMDGroupBox
    Left = 6
    Top = 4
    Width = 558
    Height = 400
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Ações da Aplicação '
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
    object BTN_ADITEM: TSpeedButton
      Left = 264
      Top = 128
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '>'
      OnClick = BTN_ADITEMClick
    end
    object BTN_RENTODOS: TSpeedButton
      Left = 264
      Top = 292
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<<'
      OnClick = BTN_RENTODOSClick
    end
    object BTN_RENITEM: TSpeedButton
      Left = 264
      Top = 183
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<'
      OnClick = BTN_RENITEMClick
    end
    object BTN_ADDTODOS: TSpeedButton
      Left = 264
      Top = 237
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '>>'
      OnClick = BTN_ADDTODOSClick
    end
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 115
      Height = 13
      Caption = '  Descrição da Aplicação'
    end
    object LMDPanelFill5: TLMDPanelFill
      Left = 9
      Top = 64
      Width = 250
      Height = 19
      UseDockManager = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Ações da Aplicação'
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
      TabOrder = 0
    end
    object LMDPanelFill1: TLMDPanelFill
      Left = 300
      Top = 64
      Width = 250
      Height = 19
      UseDockManager = False
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Ações não Permitidas'
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
    object DBG_OBJS2: TDBGrid
      Left = 300
      Top = 84
      Width = 250
      Height = 280
      DataSource = DTS_053
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBG_OBJS2DrawColumnCell
      OnMouseUp = DBG_OBJS2MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CFUNCAO'
          Title.Caption = 'Ações não Permitidas'
          Width = 229
          Visible = True
        end>
    end
    object DBG_OBJS1: TDBGrid
      Left = 9
      Top = 84
      Width = 250
      Height = 280
      DataSource = DTS_042
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_OBJS1DrawColumnCell
      OnMouseUp = DBG_OBJS1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CFUNCAO'
          Title.Caption = 'Ações da Aplicação'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 229
          Visible = True
        end>
    end
    object BTN_CONFIRMAR: TBitBtn
      Left = 80
      Top = 369
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Confirmar'
      Default = True
      TabOrder = 4
      OnClick = BTN_CONFIRMARClick
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
    object BTN_CANCELAR: TBitBtn
      Left = 388
      Top = 369
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = BTN_CANCELARClick
      Kind = bkCancel
    end
    object EDT_CDESCAPLI: TEdit
      Left = 9
      Top = 32
      Width = 541
      Height = 21
      Color = 14281964
      ReadOnly = True
      TabOrder = 6
      Text = 'EDT_CDESCAPLI'
    end
  end
  object CDS_042: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIDTBL_O'
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_A'
        DataType = ftFloat
      end
      item
        Name = 'CFUNCAO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CNOMEUNIT'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'OP_042'
    StoreDefs = True
    AfterScroll = CDS_042AfterScroll
    Left = 110
    Top = 136
    object CDS_042NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      ProviderFlags = []
    end
    object CDS_042NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      ProviderFlags = []
    end
    object CDS_042CFUNCAO: TStringField
      DisplayLabel = 'Ações'
      FieldName = 'CFUNCAO'
      ProviderFlags = []
      Size = 30
    end
    object CDS_042CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object OP_042: TOraProvider
    DataSet = DTM_A002UTAU.QRY_042
    Constraints = True
    Left = 110
    Top = 188
  end
  object DTS_042: TOraDataSource
    DataSet = CDS_042
    Left = 110
    Top = 240
  end
  object CDS_053: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIDTBL_O'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_UAO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_UPA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CFUNCAO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NIDTBL_A'
        DataType = ftFloat
      end
      item
        Name = 'CHERDADO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CNOMEUNIT'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'OP_053'
    StoreDefs = True
    AfterScroll = CDS_053AfterScroll
    Left = 418
    Top = 140
    object CDS_053NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
    object CDS_053NIDTBL_UAO: TFloatField
      FieldName = 'NIDTBL_UAO'
      Required = True
    end
    object CDS_053NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object CDS_053CFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 80
    end
    object CDS_053NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
    end
    object CDS_053CHERDADO: TStringField
      FieldName = 'CHERDADO'
      Size = 15
    end
    object CDS_053CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object OP_053: TOraProvider
    DataSet = DTM_A002UTAU.QRY_053
    Constraints = True
    BeforeUpdateRecord = OP_053BeforeUpdateRecord
    Left = 418
    Top = 192
  end
  object DTS_053: TOraDataSource
    DataSet = CDS_053
    Left = 418
    Top = 244
  end
end
