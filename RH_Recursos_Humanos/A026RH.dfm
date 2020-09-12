object FRM_A026RH: TFRM_A026RH
  Left = 98
  Top = 65
  Width = 623
  Height = 459
  BorderIcons = [biSystemMenu]
  Caption = ' Tipos de Cargo'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBB00BBBB00BBB000000000000BBB00BBB
    B00BBBB00BBBB00000000000BBB00BBBB00BBBB00BBBBB000000000BBBB00BBB
    B00BBBB00BBBB000000000BBBBB00BBBBB00BBB000BBB0BBBB000BBBBBB00BBB
    BB000BB000B00BBBBBBBBBBBBBB00BBBBBB00BB000B00BBBBBBBBBBBBBB00BBB
    BBB000B00000BBBBBBBBBBBBBBB00BBBBBBB00000000BBBBBBBBBBBBBBB00BBB
    BBBB00000B00BBBBBBBBBBBBBBB00BBBBBBB00000B00BBBBBBBBBBBBBBB00BBB
    BBB00000000BBBBBBBBBBBBBBBB00BBBBBB00000000BBBBBBBBBBBBBBBB00BBB
    BBBB0B00000BBBBBBBBBBBBBBBB00BBBBBBB00B0000BBBBBBBBBBBBBBBB00BBB
    BBBB0000000BBBBBBBBBBBBBBBB00BBBBBBBB0000000BBBBBBBBBBBBBBB00BBB
    BBBBBBBBB0000BBBBBBBBBBBBBB00BBBBBBBBBBBBB000BBBBBBBBBBBBBB00BBB
    BBBBBBBBBB00BBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBB
    BBBBBBBBBBBBBBBBBBBBBBBBBBB0000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 575
    Top = 0
    Width = 38
    Height = 422
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 2
      Top = 98
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 128
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 2
      Top = 158
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 2
      Top = 218
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ExcluirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 2
      Top = 368
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
      Left = 2
      Top = 38
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 2
      Top = 68
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 2
      Top = 188
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 2
      Top = 248
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_RegPrevi: TSpeedButton
      Left = 2
      Top = 278
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Regime Previdenciário Autorizados'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_RegPreviClick
    end
    object Btn_PgtoAut: TSpeedButton
      Left = 2
      Top = 308
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Tipos de Pagamentos Autorizados'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_PgtoAutClick
    end
    object Btn_OpFgts: TSpeedButton
      Left = 2
      Top = 338
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Opções de FGTS Autorizadas'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_OpFgtsClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 2
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 5
    Top = 2
    Width = 560
    Height = 63
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Descrição  '
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
    object Label21: TLabel
      Left = 10
      Top = 14
      Width = 73
      Height = 13
      Caption = '  Tipo de Cargo'
    end
    object Label1: TLabel
      Left = 179
      Top = 14
      Width = 96
      Height = 13
      Caption = '  Tipo de Cargo - TC'
    end
    object Label2: TLabel
      Left = 326
      Top = 14
      Width = 184
      Height = 13
      Caption = '  Evento de Lançamento do Valor Base'
    end
    object DED_CDESCRITCR: TDBEdit
      Left = 8
      Top = 28
      Width = 168
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CDESCRITCR'
      DataSource = DTM_A026RH.DTS_095
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBL_CDESCRITCT: TRxDBLookupCombo
      Left = 176
      Top = 28
      Width = 147
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXTCT'
      DataSource = DTM_A026RH.DTS_095
      LookupField = 'NIDTBXTCT'
      LookupDisplay = 'CDESCRITCT'
      LookupSource = DTM_A026RH.DTS_121
      TabOrder = 1
    end
    object DBL_CDESCRIEVE: TRxDBLookupCombo
      Left = 323
      Top = 28
      Width = 227
      Height = 21
      DropDownCount = 8
      DataField = 'NIDCADEVE'
      DataSource = DTM_A026RH.DTS_095
      LookupField = 'NIDCADEVE'
      LookupDisplay = 'CDESCRIEVE'
      LookupSource = DTM_A026RH.DTS_074
      TabOrder = 2
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 5
    Top = 69
    Width = 560
    Height = 359
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Registros Cadastrados  '
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
    object DBG_TBXTCR: TDBGrid
      Left = 9
      Top = 18
      Width = 541
      Height = 331
      TabStop = False
      Color = 14281964
      DataSource = DTM_A026RH.DTS_095
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseUp = DBG_TBXTCRMouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCRITCR'
          Title.Alignment = taCenter
          Title.Caption = ' Tipo de Cargo'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LKP_TCT'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Cargo - TC'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LKP_CADEVE'
          Title.Alignment = taCenter
          Title.Caption = 'Evento de Lançamento do Valor Base'
          Width = 226
          Visible = True
        end>
    end
  end
end
