object FRM_A001RHCP: TFRM_A001RHCP
  Left = 88
  Top = 19
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
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox1: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 568
    Height = 483
    Alignment = gcaTopCenter
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Cartão Ponto  '
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
    object Label2: TLabel
      Left = 342
      Top = 43
      Width = 91
      Height = 13
      Caption = '  Selecione Arquivo'
    end
    object GRD_HISTERR: TDBGrid
      Left = 9
      Top = 339
      Width = 551
      Height = 135
      Color = 15727354
      DataSource = DTM_A001RHCP.DTS_008
      FixedColor = clSilver
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 22
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNOMEARQUI'
          Title.Caption = 'Nome do Arquivo'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CREGERRO'
          Title.Caption = 'Registro com Erro'
          Width = 313
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NLINERRO'
          Title.Caption = 'Nº Linha'
          Visible = True
        end>
    end
    object Panel17: TPanel
      Left = 339
      Top = 114
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Origem'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel14: TPanel
      Left = 339
      Top = 15
      Width = 222
      Height = 18
      BevelOuter = bvNone
      Caption = 'Atualização Cartão Ponto'
      Color = 15132390
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object LMDGroupBox2: TLMDGroupBox
      Left = 331
      Top = 13
      Width = 2
      Height = 305
      Alignment = gcaTopCenter
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
      TabOrder = 1
    end
    object EDF_ARQATUALI: TFilenameEdit
      Left = 339
      Top = 58
      Width = 222
      Height = 21
      Cursor = crHandPoint
      OnAfterDialog = EDF_ARQATUALIAfterDialog
      Filter = 'TXT (*.TXT)|*.TXT'
      DialogOptions = [ofReadOnly, ofHideReadOnly]
      DialogTitle = 'Arquivo'
      NumGlyphs = 1
      TabOrder = 2
    end
    object EDT_ARQNOME: TEdit
      Left = 460
      Top = 115
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
    object EDT_TAMANHO: TEdit
      Left = 460
      Top = 136
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 6
    end
    object Panel18: TPanel
      Left = 339
      Top = 135
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Tamanho '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel19: TPanel
      Left = 339
      Top = 156
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Total de Registros'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object EDT_TOTREG: TEdit
      Left = 460
      Top = 157
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 9
    end
    object Panel22: TPanel
      Left = 339
      Top = 177
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Destino'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object EDT_DESTINO: TEdit
      Left = 460
      Top = 178
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 11
    end
    object EDT_TOTPROC: TEdit
      Left = 460
      Top = 199
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 12
    end
    object Panel25: TPanel
      Left = 339
      Top = 198
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Processados'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Panel26: TPanel
      Left = 339
      Top = 219
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Corretos'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object EDT_TOTCORRET: TEdit
      Left = 460
      Top = 220
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 15
    end
    object EDT_TOTERRO: TEdit
      Left = 460
      Top = 241
      Width = 101
      Height = 21
      ReadOnly = True
      TabOrder = 16
    end
    object Panel27: TPanel
      Left = 339
      Top = 240
      Width = 122
      Height = 23
      BevelInner = bvLowered
      Caption = 'Com Erros'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 339
      Top = 287
      Width = 222
      Height = 17
      UseDockManager = False
      Bevel.StyleInner = bvLowered
      Bevel.Mode = bmCustom
      TabOrder = 18
      object Gag_Atu: TGauge
        Left = 2
        Top = 2
        Width = 218
        Height = 13
        BorderStyle = bsNone
        ForeColor = clNavy
        Progress = 0
      end
    end
    object Panel16: TPanel
      Left = 9
      Top = 323
      Width = 551
      Height = 16
      BevelOuter = bvNone
      Caption = 'Histórico de Erros'
      Color = 15132390
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object GRD_HISTCP: TDBGrid
      Left = 9
      Top = 33
      Width = 316
      Height = 283
      Color = 15727354
      DataSource = DTM_A001RHCP.DTS_007
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 20
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CNOMEARQUI'
          Title.Caption = 'Arquivo'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDATAATU'
          Title.Caption = 'Data'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHORAATU'
          Title.Caption = 'Hora'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LKP_NOMESERV'
          Title.Caption = 'Nome Usuario'
          Width = 107
          Visible = True
        end>
    end
    object Panel13: TPanel
      Left = 9
      Top = 15
      Width = 316
      Height = 18
      BevelOuter = bvNone
      Caption = 'Histórico de Atualização Cartão Ponto'
      Color = 15132390
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object Panel2: TPanel
      Left = 339
      Top = 96
      Width = 222
      Height = 18
      BevelOuter = bvNone
      Caption = 'Arquivo Selecionado'
      Color = 15132390
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 584
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Btn_Erro: TSpeedButton
      Left = 1
      Top = 100
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ErroClick
    end
    object Btn_Atualizar: TSpeedButton
      Left = 1
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AtualizarClick
    end
    object Btn_CartPont: TSpeedButton
      Left = 1
      Top = 70
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CartPontClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 130
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
      ParentBiDiMode = False
      OnClick = BTN_SAIRClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 40
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Enabled = False
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object SpeedButton3: TSpeedButton
      Left = 1
      Top = 190
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 250
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton2: TSpeedButton
      Left = 1
      Top = 280
      Width = 32
      Height = 27
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Flat = True
      Margin = 1
      ParentBiDiMode = False
      Visible = False
      OnClick = BTN_SAIRClick
    end
    object SpeedButton4: TSpeedButton
      Left = 1
      Top = 220
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton9: TSpeedButton
      Left = 1
      Top = 160
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      Visible = False
    end
    object SpeedButton10: TSpeedButton
      Left = 1
      Top = 310
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton11: TSpeedButton
      Left = 1
      Top = 340
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton12: TSpeedButton
      Left = 1
      Top = 370
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton13: TSpeedButton
      Left = 1
      Top = 400
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      Visible = False
    end
    object SpeedButton14: TSpeedButton
      Left = 1
      Top = 430
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Visible = False
    end
    object SpeedButton15: TSpeedButton
      Left = 1
      Top = 460
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      Visible = False
    end
  end
end
