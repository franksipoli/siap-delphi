object FRM_A009UTCO: TFRM_A009UTCO
  Left = 184
  Top = 17
  Width = 460
  Height = 509
  Caption = 'FRM_A009UTCO'
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
    Top = 69
    Width = 432
    Height = 372
    DataSource = DTM_A009UTCO.DTS_046
    FixedColor = clSilver
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = GRD_OBJDblClick
    OnTitleClick = GRD_OBJTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NIDTBL_D'
        Title.Caption = 'Código'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNOMECAMPO'
        Title.Caption = 'Campo'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTIPOCAMPO'
        Title.Caption = 'Tipo'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTITULO'
        Title.Caption = 'Titulo'
        Width = 223
        Visible = True
      end>
  end
  object BTN_ADD: TBitBtn
    Tag = 2
    Left = 14
    Top = 451
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Caption = '&Adicionar'
    Default = True
    TabOrder = 1
    OnClick = BTN_ADDClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
      FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
      990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
      990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
      FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
      00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
      00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
      00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
      03FF33337FFF77777333333300000333333F3333777773333333}
    NumGlyphs = 2
  end
  object BTN_CADCAMPO: TBitBtn
    Left = 175
    Top = 451
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Cadastrar'
    TabOrder = 2
    OnClick = BTN_CADCAMPOClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object Btn_Sair2: TBitBtn
    Left = 339
    Top = 451
    Width = 103
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Sair'
    TabOrder = 3
    OnClick = Btn_Sair2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 432
    Height = 61
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Digite nos campos para pesquisar  '
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
    TabOrder = 4
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 39
      Height = 13
      Caption = '  Código'
    end
    object Label2: TLabel
      Left = 81
      Top = 16
      Width = 39
      Height = 13
      Caption = '  Campo'
    end
    object EDT_NIDTBL_D: TEdit
      Left = 10
      Top = 29
      Width = 69
      Height = 21
      TabOrder = 0
      OnChange = EDT_NIDTBL_DChange
      OnKeyPress = EDT_NIDTBL_DKeyPress
    end
    object EDT_CNOMECAMPO: TEdit
      Left = 81
      Top = 29
      Width = 343
      Height = 21
      TabOrder = 1
      OnChange = EDT_CNOMECAMPOChange
    end
  end
end
