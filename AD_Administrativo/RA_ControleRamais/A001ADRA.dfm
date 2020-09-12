object FRM_A001ADRA: TFRM_A001ADRA
  Left = 123
  Top = 10
  BorderStyle = bsDialog
  ClientHeight = 496
  ClientWidth = 622
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
  object Panel2: TPanel
    Left = 584
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 1
      Top = 100
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 1
      Top = 160
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 1
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 1
      Top = 220
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ExcluirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 310
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
      Top = 40
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 1
      Top = 70
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 190
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 1
      Top = 250
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object Btn_Demons: TSpeedButton
      Left = 1
      Top = 280
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_DemonsClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 1
      Top = 130
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_AlterarClick
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 194
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Cadastro de Ramais  '
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
    object Label6: TLabel
      Left = 14
      Top = 16
      Width = 48
      Height = 13
      Caption = '  Telefone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 86
      Top = 16
      Width = 37
      Height = 13
      Caption = '  Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 181
      Top = 16
      Width = 49
      Height = 13
      Caption = '  Contrato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 320
      Top = 16
      Width = 53
      Height = 13
      Caption = '  Divulgado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 384
      Top = 16
      Width = 95
      Height = 13
      Caption = '  Pessoa de contato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 299
      Top = 59
      Width = 95
      Height = 13
      Caption = '  Descrição do setor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 14
      Top = 59
      Width = 98
      Height = 13
      Caption = '  Descrição do orgão'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 102
      Width = 51
      Height = 13
      Caption = '  Endereço'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 348
      Top = 102
      Width = 34
      Height = 13
      Caption = '  Bairro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 14
      Top = 145
      Width = 34
      Height = 13
      Caption = '  E-mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DED_NPREFSETOR: TDBEdit
      Left = 12
      Top = 31
      Width = 31
      Height = 21
      TabStop = False
      Color = 15727354
      DataField = 'LKP_NPREFSETOR'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DED_NNUMRAMAL: TDBEdit
      Left = 44
      Top = 31
      Width = 38
      Height = 21
      DataField = 'NNUMRAMAL'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DLC_CSTATRAMAL: TRxDBComboBox
      Left = 83
      Top = 31
      Width = 94
      Height = 21
      Style = csDropDownList
      DataField = 'CSTATRAMAL'
      DataSource = DTM_A001ADRA.DTS_001
      EnableValues = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'ATIVO'
        'INATIVO')
      ParentFont = False
      TabOrder = 2
      Values.Strings = (
        '')
      OnChange = DLC_CSTATRAMALChange
    end
    object DED_CCONTRARAM: TDBEdit
      Left = 178
      Top = 31
      Width = 138
      Height = 21
      DataField = 'CCONTRARAM'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DLC_CDIVURAMAL: TRxDBComboBox
      Left = 317
      Top = 31
      Width = 63
      Height = 21
      Style = csDropDownList
      DataField = 'CDIVURAMAL'
      DataSource = DTM_A001ADRA.DTS_001
      EnableValues = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'SIM'
        'NAO')
      ParentFont = False
      TabOrder = 4
    end
    object DED_CCONTRAMAL: TDBEdit
      Left = 381
      Top = 31
      Width = 174
      Height = 21
      Hint = 'Digite o nome da pessoa de contato'
      DataField = 'CCONTRAMAL'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DLC_NIDCADSET: TRxDBLookupCombo
      Left = 297
      Top = 74
      Width = 258
      Height = 21
      DropDownCount = 8
      DataField = 'NIDCADSET'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'NIDCADSET'
      LookupDisplay = 'CDESCSETOR'
      LookupSource = DTM_A001ADRA.DTS_003
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DLC_NIDCADORG: TRxDBLookupCombo
      Left = 12
      Top = 74
      Width = 285
      Height = 21
      DropDownCount = 10
      DataField = 'NIDCADORG'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'NIDCADORG'
      LookupDisplay = 'CDESCORG'
      LookupDisplayIndex = 3
      LookupSource = DTM_A001ADRA.DTS_002
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      OnChange = DLC_NIDCADORGChange
      OnEnter = DLC_NIDCADORGEnter
    end
    object DED_LKP_CENDSETOR: TDBEdit
      Left = 12
      Top = 117
      Width = 333
      Height = 21
      TabStop = False
      Color = 15727354
      DataField = 'LKP_CENDSETOR'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DED_LKP_CBAIRROSET: TDBEdit
      Left = 345
      Top = 117
      Width = 209
      Height = 21
      TabStop = False
      Color = 15727354
      DataField = 'LKP_CBAIRROSET'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DED_CMAILRAMAL: TDBEdit
      Left = 12
      Top = 160
      Width = 235
      Height = 21
      Hint = 'Digite o e-mail do setor'
      CharCase = ecLowerCase
      DataField = 'CMAILRAMAL'
      DataSource = DTM_A001ADRA.DTS_001
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 10
    Top = 201
    Width = 568
    Height = 286
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Lista de Ramais  '
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
    object GRD_RAMAIS: TDBGrid
      Left = 12
      Top = 16
      Width = 545
      Height = 241
      TabStop = False
      Color = 15727354
      DataSource = DTM_A001ADRA.DTS_001
      FixedColor = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleClick = GRD_RAMAISTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'LKP_CDESCORGAO'
          Title.Caption = 'Descrição do Orgão'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LKP_CDESCSETOR'
          Title.Caption = 'Descrição do Setor'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCONTRAMAL'
          Title.Caption = 'Contato'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NNUMRAMAL'
          Title.Caption = 'Ramal'
          Width = 37
          Visible = True
        end>
    end
    object LMDPanelFill4: TLMDPanelFill
      Left = 12
      Top = 258
      Width = 135
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Caption = ' Ramais Ativos:'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 13948116
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 11184810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FontFX.LightColor = clGrayText
      FontFX.ShadowColor = clGrayText
      FontFX.Style = tdExtrudeEnh
      ParentFont = False
      TabOrder = 1
      object Lblativo: TLabel
        Left = 87
        Top = 4
        Width = 28
        Height = 13
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object LMDPanelFill5: TLMDPanelFill
      Left = 148
      Top = 258
      Width = 135
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Caption = ' Ramais Inativos:'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 13948116
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 11184810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FontFX.LightColor = clGrayText
      FontFX.ShadowColor = clGrayText
      FontFX.Style = tdExtrudeEnh
      ParentFont = False
      TabOrder = 2
      object Lblinativo: TLabel
        Left = 91
        Top = 4
        Width = 28
        Height = 13
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object LMDPanelFill8: TLMDPanelFill
      Left = 284
      Top = 258
      Width = 135
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Caption = ' Total Divulgados:'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 13948116
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 11184810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FontFX.LightColor = clGrayText
      FontFX.ShadowColor = clGrayText
      FontFX.Style = tdExtrudeEnh
      ParentFont = False
      TabOrder = 3
      object Lbldivul: TLabel
        Left = 92
        Top = 4
        Width = 28
        Height = 13
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object LMDPanelFill6: TLMDPanelFill
      Left = 420
      Top = 258
      Width = 137
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Caption = ' Total de Ramais:'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 13948116
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 11184810
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FontFX.LightColor = clGrayText
      FontFX.ShadowColor = clGrayText
      FontFX.Style = tdExtrudeEnh
      ParentFont = False
      TabOrder = 4
      object Lbltotal: TLabel
        Left = 91
        Top = 4
        Width = 28
        Height = 13
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
  end
end
