object FRM_A003UTAU: TFRM_A003UTAU
  Left = 121
  Top = 74
  BorderStyle = bsSingle
  ClientHeight = 405
  ClientWidth = 581
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
  object LMDGroupBox2: TLMDGroupBox
    Left = 6
    Top = 4
    Width = 568
    Height = 393
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Aplicações  '
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
      Left = 207
      Top = 128
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '>'
      OnClick = BTN_ADITEMClick
    end
    object BTN_RENTODOS: TSpeedButton
      Left = 207
      Top = 292
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<<'
      OnClick = BTN_RENTODOSClick
    end
    object BTN_RENITEM: TSpeedButton
      Left = 207
      Top = 183
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<'
      OnClick = BTN_RENITEMClick
    end
    object BTN_ADDTODOS: TSpeedButton
      Left = 207
      Top = 237
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '>>'
      OnClick = BTN_ADDTODOSClick
    end
    object Label3: TLabel
      Left = 10
      Top = 18
      Width = 85
      Height = 13
      Caption = '  Login do Usuário'
    end
    object LMDPanelFill5: TLMDPanelFill
      Left = 9
      Top = 64
      Width = 190
      Height = 19
      UseDockManager = False
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Aplicações do Sistema'
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
      Left = 245
      Top = 64
      Width = 315
      Height = 19
      UseDockManager = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Aplicações do Usuário'
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
    object DBG_APLIC2: TDBGrid
      Left = 245
      Top = 84
      Width = 315
      Height = 270
      DataSource = DTS_057
      FixedColor = clSilver
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
      OnDrawColumnCell = DBG_APLIC2DrawColumnCell
      OnDblClick = DBG_APLIC2DblClick
      OnMouseUp = DBG_APLIC2MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCAPLI'
          Title.Caption = 'Descrição Aplicação'
          Width = 218
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLC_CEQUIVALE'
          Title.Caption = 'Equivalencia'
          Width = 76
          Visible = True
        end>
    end
    object DBG_APLIC1: TDBGrid
      Left = 9
      Top = 84
      Width = 190
      Height = 270
      DataSource = DTS_APLSYS
      FixedColor = clSilver
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_APLIC1DrawColumnCell
      OnDblClick = DBG_APLIC1DblClick
      OnMouseUp = DBG_APLIC1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCAPLI'
          Title.Caption = 'Descrição da Aplicação'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 168
          Visible = True
        end>
    end
    object BTN_CONFIRMAR: TBitBtn
      Left = 90
      Top = 360
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
      Top = 360
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = BTN_CANCELARClick
      Kind = bkCancel
    end
    object EDT_CNOMEUSU: TEdit
      Left = 9
      Top = 32
      Width = 551
      Height = 21
      Color = 14281964
      ReadOnly = True
      TabOrder = 6
      Text = 'EDT_CNOMEUSU'
    end
  end
  object ImageList1: TImageList
    Left = 54
    Top = 252
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000821CE398C31C618DE7BDE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000524A1042CE39AD35C618DE7BDE7B
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A6AAA693146CE39AD35C618DE7B
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000757F4A7EAA553146CE39AD35C618
      DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AA41757F4A7EAA553146CE39EF3D
      2925DE7BDE7BDE7BDE7BDE7BDE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BAA41CA7E4A7EAA5510421042
      524A10428C314A296B2DCE390821DE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BAA41CA7E4A7E4A561042
      55425542DF56DF5655428C31CE390821DE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BAA41756BB556DF56
      7F57FF6BFF6BFF6BFF6BF75EAD35CE3931460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7BAD357F6B7F57
      FF6BFF6BFF6BDE7BDE7BDE7B94528C31AD350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7B6B2D7F577F57
      FF57FF6BFF6BDE7BDE7BDE7B1863EF3D4A290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7B6B2D7F577F57
      7F57FF6BFF6BDE7BDE7BFF6B7F6B10424A290000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7B6B2D7F577F6B
      7F57FF6BFF6BFF6BFF6BFF6B7F575542AD350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7B8C317F6BFF6B
      7F6B7F57FF6BFF6BFF6BFF6BDF56554231460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7B8C313967BD77
      DE7BFF6B7F577F577F577F575542E71CDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7BDE7B6B2D5A6B
      DE7BFF6BFF6BFF6B7F57DF562925DE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE7BDE7BDE7BDE7BDE7BDE7B8C31
      F75EDF56DF56DF56734E0821DE7BDE7BDE7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object CDS_057: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIDTBL_UPA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_UP'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_A'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_U'
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_PB'
        DataType = ftFloat
      end
      item
        Name = 'CPERFIL'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CDESCAPLI'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CLC_CEQUIVALE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CNOMEUNIT'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CLC_UPDATE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'OP_057'
    StoreDefs = True
    AfterScroll = CDS_057AfterScroll
    Left = 414
    Top = 152
    object CDS_057NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      ProviderFlags = []
    end
    object CDS_057NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      ProviderFlags = []
    end
    object CDS_057NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      ProviderFlags = []
    end
    object CDS_057NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      ProviderFlags = []
    end
    object CDS_057NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      ProviderFlags = []
    end
    object CDS_057CPERFIL: TStringField
      FieldName = 'CPERFIL'
      ProviderFlags = []
      Size = 12
    end
    object CDS_057CDESCAPLI: TStringField
      DisplayLabel = 'Aplicação'
      FieldName = 'CDESCAPLI'
      ProviderFlags = []
      Size = 30
    end
    object CDS_057CLC_CEQUIVALE: TStringField
      FieldName = 'CLC_CEQUIVALE'
      ProviderFlags = []
      Size = 5
    end
    object CDS_057CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object CDS_APLSYS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OP_APLSYS'
    AfterScroll = CDS_APLSYSAfterScroll
    Left = 98
    Top = 148
    object CDS_APLSYSCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
    object CDS_APLSYSCDESCAPLI: TStringField
      DisplayLabel = 'Aplicação'
      FieldName = 'CDESCAPLI'
      ProviderFlags = []
      Size = 30
    end
    object CDS_APLSYSCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
      ProviderFlags = []
    end
    object CDS_APLSYSCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
      ProviderFlags = []
    end
    object CDS_APLSYSCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      ProviderFlags = []
      Size = 1
    end
    object CDS_APLSYSCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      ProviderFlags = []
      Size = 10
    end
    object CDS_APLSYSCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      ProviderFlags = []
      Size = 30
    end
    object CDS_APLSYSCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      ProviderFlags = []
      Size = 30
    end
    object CDS_APLSYSNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
      ProviderFlags = []
    end
    object CDS_APLSYSNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      ProviderFlags = []
    end
    object CDS_APLSYSNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
      ProviderFlags = []
    end
    object CDS_APLSYSNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
      ProviderFlags = []
    end
    object CDS_APLSYSNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      ProviderFlags = []
    end
  end
  object OP_057: TOraProvider
    DataSet = DTM_A003UTAU.QRY_057
    Constraints = True
    BeforeUpdateRecord = OP_057BeforeUpdateRecord
    Left = 414
    Top = 204
  end
  object OP_APLSYS: TOraProvider
    DataSet = DTM_A003UTAU.QRY_APLSYS
    Constraints = True
    Left = 98
    Top = 204
  end
  object DTS_057: TOraDataSource
    DataSet = CDS_057
    Left = 414
    Top = 256
  end
  object DTS_APLSYS: TOraDataSource
    DataSet = CDS_APLSYS
    Left = 98
    Top = 284
  end
end
