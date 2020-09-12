object FRM_A005RHCP: TFRM_A005RHCP
  Left = 135
  Top = 22
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 432
  ClientWidth = 615
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
  object LMDGroupBox2: TLMDGroupBox
    Left = 5
    Top = 115
    Width = 560
    Height = 313
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Horários Cadastrados  '
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
    object GRD_HORARIOS: TDBGrid
      Left = 12
      Top = 20
      Width = 537
      Height = 283
      TabStop = False
      Color = 15727354
      DataSource = DTM_A005RHCP.DTS_010
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NIDCADHOR'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Horário'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CENTRMANHA'
          Title.Alignment = taCenter
          Title.Caption = 'Entrada Manha'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSAIRMANHA'
          Title.Alignment = taCenter
          Title.Caption = 'Saida Manha'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LKP_INTERVALO'
          Title.Alignment = taCenter
          Title.Caption = 'Interfalo Refeição'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CENTRTARDE'
          Title.Alignment = taCenter
          Title.Caption = 'Entrada Tarde'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSAIRTARDE'
          Title.Alignment = taCenter
          Title.Caption = 'Saida Tarde'
          Width = 67
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 576
    Top = 0
    Width = 38
    Height = 486
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Btn_Incluir: TSpeedButton
      Left = 2
      Top = 97
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 127
      Width = 31
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 2
      Top = 157
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 2
      Top = 7
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 2
      Top = 217
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ExcluirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 2
      Top = 277
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
      Top = 37
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 2
      Top = 67
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 2
      Top = 187
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 2
      Top = 247
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
  end
  object LMDGroupBox5: TLMDGroupBox
    Left = 5
    Top = 2
    Width = 560
    Height = 108
    Alignment = gcaTopCenter
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Quadro de Horários  '
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
    object LMDGroupBox4: TLMDGroupBox
      Left = 387
      Top = 18
      Width = 155
      Height = 73
      Alignment = gcaTopCenter
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderColor = cl3DLight
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Período Tarde  '
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
      object Label4: TLabel
        Left = 10
        Top = 22
        Width = 44
        Height = 13
        Caption = '  Entrada'
      end
      object Label5: TLabel
        Left = 84
        Top = 22
        Width = 32
        Height = 13
        Caption = '  Saida'
      end
      object DED_CENTRTARDE: TDBEdit
        Left = 9
        Top = 36
        Width = 67
        Height = 21
        DataField = 'CENTRTARDE'
        DataSource = DTM_A005RHCP.DTS_010
        TabOrder = 0
      end
      object DED_CSAIRTARDE: TDBEdit
        Left = 79
        Top = 36
        Width = 67
        Height = 21
        DataField = 'CSAIRTARDE'
        DataSource = DTM_A005RHCP.DTS_010
        TabOrder = 1
      end
    end
    object LMDGroupBox1: TLMDGroupBox
      Left = 18
      Top = 18
      Width = 155
      Height = 73
      Alignment = gcaTopCenter
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderColor = cl3DLight
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Período Manha  '
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
      object Label2: TLabel
        Left = 10
        Top = 22
        Width = 44
        Height = 13
        Caption = '  Entrada'
      end
      object Label3: TLabel
        Left = 84
        Top = 22
        Width = 32
        Height = 13
        Caption = '  Saida'
      end
      object DED_CENTRMANHA: TDBEdit
        Left = 9
        Top = 36
        Width = 67
        Height = 21
        DataField = 'CENTRMANHA'
        DataSource = DTM_A005RHCP.DTS_010
        TabOrder = 0
      end
      object DED_CSAIRMANHA: TDBEdit
        Left = 79
        Top = 36
        Width = 67
        Height = 21
        DataField = 'CSAIRMANHA'
        DataSource = DTM_A005RHCP.DTS_010
        TabOrder = 1
      end
    end
    object LMDGroupBox3: TLMDGroupBox
      Left = 199
      Top = 18
      Width = 161
      Height = 73
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.StyleInner = bvFrameLowered
      Bevel.BorderColor = cl3DLight
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Intervalo para Refeição  '
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
      object Hora: TDBText
        Left = 4
        Top = 39
        Width = 155
        Height = 17
        Alignment = taCenter
        DataField = 'LKP_INTERVALO'
        DataSource = DTM_A005RHCP.DTS_010
        Font.Charset = ANSI_CHARSET
        Font.Color = 5855488
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
  end
end
