object FRM_A009UTAU: TFRM_A009UTAU
  Left = 258
  Top = 85
  Width = 289
  Height = 440
  BorderIcons = []
  Caption = '  Consulta Aplicações do Perfil '
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
  object GP_CONSULTA: TLMDGroupBox
    Left = 6
    Top = 4
    Width = 267
    Height = 401
    Alignment = gcaTopCenter
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
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
    object PNL_CONSULTA: TLMDPanelFill
      Left = 9
      Top = 8
      Width = 250
      Height = 19
      UseDockManager = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
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
    object DBG_APLIC1: TDBGrid
      Left = 9
      Top = 28
      Width = 250
      Height = 336
      DataSource = DTS_TEMP
      FixedColor = clSilver
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_APLIC1DrawColumnCell
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
          Width = 228
          Visible = True
        end>
    end
    object BTN_FECHAR: TBitBtn
      Left = 89
      Top = 370
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Fechar'
      Default = True
      TabOrder = 2
      OnClick = BTN_FECHARClick
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
  end
  object QRY_TEMP: TOraQuery
    SQL.Strings = (
      
        'select tbl_tmp.cdescapli from tbl_tmp, tbl_upa where nidtbl_pb =' +
        ' :nidtbl_pb and'
      'tbl_upa.nidtbl_upa = tbl_tmp.nidtbl_upa and'
      'tbl_upa.nidtbl_u = :nidtbl_u')
    AfterScroll = QRY_TEMPAfterScroll
    Left = 66
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_pb'
      end
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
  end
  object DTS_TEMP: TOraDataSource
    DataSet = QRY_TEMP
    Left = 66
    Top = 152
  end
  object QRY_APLIC: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:CODUSU);'
      'end;')
    AutoCommit = False
    Left = 122
    Top = 108
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftFloat
        Name = 'CODUSU'
        ParamType = ptInput
      end>
    object QRY_APLICCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_APLICCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_APLICCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_APLICCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_APLICCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_APLICCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_APLICCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_APLICCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_APLICNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_APLICNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_APLICNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_APLICNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_APLICNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_APLICNIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
    end
  end
end
