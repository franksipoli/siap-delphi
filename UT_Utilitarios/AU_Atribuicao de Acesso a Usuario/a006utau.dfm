object FRM_A006UTAU: TFRM_A006UTAU
  Left = 76
  Top = 52
  BorderStyle = bsSingle
  ClientHeight = 415
  ClientWidth = 667
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox1: TLMDGroupBox
    Left = 5
    Top = 4
    Width = 655
    Height = 403
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = ' Equivalência '
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
      Left = 265
      Top = 128
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '>'
      OnClick = BTN_ADITEMClick
    end
    object BTN_RENTODOS: TSpeedButton
      Left = 265
      Top = 292
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<<'
      OnClick = BTN_RENTODOSClick
    end
    object BTN_RENITEM: TSpeedButton
      Left = 265
      Top = 183
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Caption = '<'
      OnClick = BTN_RENITEMClick
    end
    object BTN_ADDTODOS: TSpeedButton
      Left = 265
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
      Width = 85
      Height = 13
      Caption = '  Login do Usuário'
    end
    object LMDPanelFill5: TLMDPanelFill
      Left = 9
      Top = 64
      Width = 250
      Height = 19
      UseDockManager = False
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Perfis de Usuários para Equivalência'
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
      Left = 303
      Top = 64
      Width = 344
      Height = 19
      UseDockManager = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = 'Perfis de Equivalência'
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
    object DBG_PERFIL2: TDBGrid
      Left = 303
      Top = 84
      Width = 345
      Height = 280
      DataSource = DTS_059
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
      OnDrawColumnCell = DBG_PERFIL2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CPERFIL'
          Title.Caption = 'Nome do Perfil'
          Width = 131
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DAT_PERFIL'
          Title.Caption = 'Equivalência'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMEUSU'
          Title.Caption = 'Autorizado por'
          Width = 97
          Visible = True
        end>
    end
    object DBG_PERFIL1: TDBGrid
      Left = 9
      Top = 84
      Width = 250
      Height = 280
      DataSource = DTS_055
      FixedColor = clSilver
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_PERFIL1DrawColumnCell
      OnDblClick = DBG_PERFIL1DblClick
      OnMouseUp = DBG_PERFIL1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CPERFIL'
          Title.Caption = 'Nome do Perfil'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NSTATUS'
          Title.Alignment = taCenter
          Title.Caption = 'Ativo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFIGURA'
          Title.Caption = ' '
          Width = 26
          Visible = True
        end>
    end
    object BTN_CONFIRMAR: TBitBtn
      Left = 132
      Top = 371
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
      Left = 432
      Top = 371
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
      Width = 636
      Height = 21
      Color = 14281964
      ReadOnly = True
      TabOrder = 6
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
  object CDS_055: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NIDTBL_UP'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_U'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NIDTBL_PB'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CPERFIL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NSTATUS'
        DataType = ftFloat
      end
      item
        Name = 'CNOMEPER'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CSIGLAPER'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'nidusuario'
        ParamType = ptUnknown
      end>
    ProviderName = 'OP_055'
    StoreDefs = True
    AfterScroll = CDS_055AfterScroll
    Left = 146
    Top = 148
    object CDS_055NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object CDS_055NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object CDS_055NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object CDS_055NSTATUS: TFloatField
      FieldName = 'NSTATUS'
      OnGetText = CDS_055NSTATUSGetText
      OnSetText = CDS_055NSTATUSSetText
    end
    object CDS_055CPERFIL: TStringField
      DisplayLabel = 'Perfil'
      FieldName = 'CPERFIL'
      Required = True
      Size = 15
    end
    object CDS_055CNOMEPER: TStringField
      DisplayLabel = 'Nome Perfil'
      FieldName = 'CNOMEPER'
      Size = 30
    end
    object CDS_055CFIGURA: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFIGURA'
      ProviderFlags = []
      Size = 1
      Calculated = True
    end
    object CDS_055CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      ProviderFlags = []
      Size = 4
    end
  end
  object OP_055: TOraProvider
    DataSet = DTM_A006UTAU.QRY_055
    Constraints = True
    Left = 146
    Top = 200
  end
  object DTS_055: TOraDataSource
    DataSet = CDS_055
    Left = 146
    Top = 252
  end
  object OP_059: TOraProvider
    DataSet = DTM_A006UTAU.QRY_059
    Constraints = True
    Left = 418
    Top = 196
  end
  object DTS_059: TOraDataSource
    DataSet = CDS_059
    Left = 418
    Top = 248
  end
  object CDS_059: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'nidoperador'
        ParamType = ptUnknown
      end>
    ProviderName = 'OP_059'
    AfterScroll = CDS_059AfterScroll
    Left = 418
    Top = 144
    object CDS_059NIDTBL_EQV: TFloatField
      FieldName = 'NIDTBL_EQV'
      Required = True
    end
    object CDS_059NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object CDS_059NCODEQV: TFloatField
      FieldName = 'NCODEQV'
      Required = True
    end
    object CDS_059CPERFIL: TStringField
      FieldName = 'CPERFIL'
      ProviderFlags = []
      Size = 15
    end
    object CDS_059DAT_PERFIL: TStringField
      FieldName = 'DAT_PERFIL'
      ProviderFlags = []
      Size = 15
    end
    object CDS_059CHERDADO: TStringField
      FieldName = 'CHERDADO'
      ProviderFlags = []
      Size = 15
    end
    object CDS_059NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      ProviderFlags = [pfInUpdate]
    end
    object CDS_059CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      ProviderFlags = []
      Size = 10
    end
  end
end
