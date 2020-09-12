object FRM_A004UTCO: TFRM_A004UTCO
  Left = 126
  Top = 47
  BorderStyle = bsNone
  ClientHeight = 496
  ClientWidth = 625
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 587
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 1
      Top = 103
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 1
      Top = 135
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 1
      Top = 167
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 1
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 1
      Top = 263
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 296
      Width = 32
      Height = 27
      Cursor = crHandPoint
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
      ParentBiDiMode = False
      OnClick = BTN_SAIRClick
    end
    object Btn_Avancar: TSpeedButton
      Left = 1
      Top = 39
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 1
      Top = 71
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 199
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 1
      Top = 231
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      OnClick = Btn_ExcluirClick
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 9
    Top = 4
    Width = 568
    Height = 195
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Objeto  '
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
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 84
      Height = 13
      Caption = '  Nome do Objeto'
    end
    object Label2: TLabel
      Left = 224
      Top = 14
      Width = 82
      Height = 13
      Caption = '  Nome da Classe'
    end
    object Label3: TLabel
      Left = 440
      Top = 14
      Width = 43
      Height = 13
      Caption = '  Caption'
    end
    object Label4: TLabel
      Left = 12
      Top = 55
      Width = 25
      Height = 13
      Caption = '  Hint'
    end
    object Label5: TLabel
      Left = 246
      Top = 55
      Width = 38
      Height = 13
      Caption = '  Cursor'
    end
    object Label6: TLabel
      Left = 340
      Top = 55
      Width = 44
      Height = 13
      Caption = '  Enabled'
    end
    object Label7: TLabel
      Left = 414
      Top = 55
      Width = 35
      Height = 13
      Caption = '  Visible'
    end
    object Label8: TLabel
      Left = 488
      Top = 55
      Width = 49
      Height = 13
      Caption = '  Tratado?'
    end
    object Label9: TLabel
      Left = 12
      Top = 97
      Width = 36
      Height = 13
      Caption = '  Figura'
    end
    object Label10: TLabel
      Left = 280
      Top = 97
      Width = 51
      Height = 13
      Caption = '  Aplicação'
    end
    object Label11: TLabel
      Left = 12
      Top = 142
      Width = 188
      Height = 13
      Caption = '  Campo de partida da pesquisa padrão'
    end
    object Label12: TLabel
      Left = 251
      Top = 142
      Width = 190
      Height = 13
      Caption = '  Campo de retorno da pesquisa padrão'
    end
    object Label13: TLabel
      Left = 457
      Top = 142
      Width = 54
      Height = 13
      Caption = 'Caixa Alta?'
    end
    object Label14: TLabel
      Left = 511
      Top = 142
      Width = 55
      Height = 13
      Caption = 'Validar Dig?'
    end
    object DBE_CNOMEOBJ: TDBEdit
      Left = 9
      Top = 28
      Width = 214
      Height = 21
      DataField = 'CNOMEOBJ'
      DataSource = DTM_A004UTCO.DTS_044
      TabOrder = 0
    end
    object DBE_CNOMECLA: TDBEdit
      Left = 223
      Top = 28
      Width = 215
      Height = 21
      DataField = 'CNOMECLA'
      DataSource = DTM_A004UTCO.DTS_044
      TabOrder = 1
    end
    object DBE_CCAPTION: TDBEdit
      Left = 438
      Top = 28
      Width = 121
      Height = 21
      DataField = 'CCAPTION'
      DataSource = DTM_A004UTCO.DTS_044
      TabOrder = 2
    end
    object DBE_CHINT: TDBEdit
      Left = 9
      Top = 69
      Width = 234
      Height = 21
      DataField = 'CHINT'
      DataSource = DTM_A004UTCO.DTS_044
      TabOrder = 3
    end
    object CBB_LVISIBLE: TRxDBComboBox
      Left = 411
      Top = 69
      Width = 75
      Height = 21
      Style = csDropDownList
      DataField = 'LVISIBLE'
      DataSource = DTM_A004UTCO.DTS_044
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Falso'
        'Verdadeiro')
      TabOrder = 6
      Values.Strings = (
        '0'
        '1')
    end
    object CBB_LENABLE: TRxDBComboBox
      Left = 337
      Top = 69
      Width = 74
      Height = 21
      Style = csDropDownList
      DataField = 'LENABLE'
      DataSource = DTM_A004UTCO.DTS_044
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Falso'
        'Verdadeiro')
      TabOrder = 5
      Values.Strings = (
        '0'
        '1')
    end
    object DBL_CNOMEBMP: TRxDBComboEdit
      Left = 9
      Top = 111
      Width = 269
      Height = 21
      DataField = 'CNOMEBMP'
      DataSource = DTM_A004UTCO.DTS_044
      Glyph.Data = {
        E6000000424DE60000000000000076000000280000000E0000000E0000000100
        04000000000070000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77007777777777777700700000000777770000B7B7B7B07777000B0B7B7B7B07
        77000BB0B7B7B7B077000FBB0000000077000BFB0B0B0B0777000FBFBFBFB007
        77000BFBFBF00077770070BFBF07777777007800008777777700777777777777
        77007777777777777700}
      NumGlyphs = 1
      TabOrder = 8
      OnButtonClick = DBL_CNOMEBMPButtonClick
    end
    object CBB_LTRATADO: TRxDBComboBox
      Left = 486
      Top = 69
      Width = 73
      Height = 21
      Style = csDropDownList
      DataField = 'LTRATADO'
      DataSource = DTM_A004UTCO.DTS_044
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Falso'
        'Verdadeiro')
      TabOrder = 7
      Values.Strings = (
        '0'
        '1')
    end
    object DBL_CNOMEUNIT: TRxDBLookupCombo
      Left = 278
      Top = 111
      Width = 281
      Height = 21
      DropDownCount = 8
      DataField = 'CNOMEUNIT'
      DataSource = DTM_A004UTCO.DTS_044
      LookupField = 'CNOMEUNIT'
      LookupDisplay = 'CNOMEUNIT'
      LookupSource = DTM_A004UTCO.DTS_041
      TabOrder = 9
      OnKeyDown = DBL_CNOMEUNITKeyDown
    end
    object DBL_NIDTBL_D: TRxDBLookupCombo
      Left = 9
      Top = 156
      Width = 240
      Height = 21
      DropDownCount = 8
      DataField = 'NCODCAMPO'
      DataSource = DTM_A004UTCO.DTS_044
      LookupField = 'NIDTBL_D'
      LookupDisplay = 'CNOMECAMPO'
      LookupSource = DTM_A004UTCO.DTS_046
      TabOrder = 10
      OnKeyDown = DBL_NIDTBL_DKeyDown
    end
    object DBL_CNOMECAMPO: TRxDBLookupCombo
      Left = 249
      Top = 156
      Width = 209
      Height = 21
      DropDownCount = 8
      DataField = 'CCAMPOPESQ'
      DataSource = DTM_A004UTCO.DTS_044
      LookupField = 'CNOMECAMPO'
      LookupDisplay = 'CNOMECAMPO'
      LookupSource = DTM_A004UTCO.DTS_046_01
      TabOrder = 11
      OnKeyDown = DBL_CNOMECAMPOKeyDown
    end
    object DBC_CTIPOCUR: TRxDBComboEdit
      Left = 243
      Top = 69
      Width = 94
      Height = 21
      DataField = 'CTIPOCUR'
      DataSource = DTM_A004UTCO.DTS_044
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 4
      OnButtonClick = DBC_CTIPOCURButtonClick
    end
    object CBB_LUPPERCASE: TRxDBComboBox
      Left = 458
      Top = 156
      Width = 51
      Height = 21
      Style = csDropDownList
      DataField = 'LUPPERCASE'
      DataSource = DTM_A004UTCO.DTS_044
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Não'
        'Sim')
      TabOrder = 12
      Values.Strings = (
        '0'
        '1')
    end
    object CBB_LCARINVALI: TRxDBComboBox
      Left = 509
      Top = 156
      Width = 50
      Height = 21
      Style = csDropDownList
      DataField = 'LCARINVALI'
      DataSource = DTM_A004UTCO.DTS_044
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Não'
        'Sim')
      TabOrder = 13
      Values.Strings = (
        '0'
        '1')
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 9
    Top = 203
    Width = 568
    Height = 284
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Objetos do Sistema  '
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
    TabOrder = 2
    object DBG_OBJETOS: TDBGrid
      Left = 11
      Top = 20
      Width = 548
      Height = 255
      Color = 15727354
      DataSource = DTM_A004UTCO.DTS_044
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNOMEOBJ'
          Title.Caption = 'Nome do Objeto'
          Width = 293
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMECLA'
          Title.Caption = 'Nome da Classe'
          Width = 221
          Visible = True
        end>
    end
  end
  object DLG_IMAGENS: TOpenDialog
    DefaultExt = '*.bmp'
    Filter = 'Figuras|*.bmp'
    Left = 193
    Top = 68
  end
end
