object FRM_ProgLog: TFRM_ProgLog
  Left = 232
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'FRM_ProgLog'
  ClientHeight = 175
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDPanelFill1: TLMDPanelFill
    Left = 0
    Top = 0
    Width = 339
    Height = 175
    UseDockManager = False
    Align = alClient
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderColor = clBtnText
    Bevel.BorderInnerWidth = 1
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsDoubleRaised
    FillObject.Style = sfGradient
    FillObject.Gradient.Color = 15790320
    FillObject.Gradient.ColorCount = 100
    FillObject.Gradient.Style = gstSquare
    FillObject.Gradient.EndColor = 11053224
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 34
      Width = 84
      Height = 13
      Caption = 'Tempo estimado :'
      Transparent = True
    end
    object Label2: TLabel
      Left = 192
      Top = 34
      Width = 86
      Height = 13
      Caption = 'Tempo decorrido :'
      Transparent = True
    end
    object Lbl_Tit: TLMDLabel
      Left = 108
      Top = 12
      Width = 122
      Height = 16
      Bevel.Mode = bmCustom
      FontFX.Style = tdSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = []
      ParentFont = False
      Caption = '  Inicializando Logs !'
    end
    object Lbl_EstGer: TLabel
      Left = 97
      Top = 35
      Width = 42
      Height = 13
      Caption = '00:00:00'
      Transparent = True
    end
    object Lbl_DecGer: TLabel
      Left = 282
      Top = 35
      Width = 42
      Height = 13
      Caption = '00:00:00'
      Transparent = True
    end
    object LMDLabel1: TLMDLabel
      Left = 139
      Top = 55
      Width = 49
      Height = 16
      Bevel.Mode = bmCustom
      FontFX.Style = tdSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = []
      ParentFont = False
      Caption = 'Tabelas'
    end
    object LMDLabel2: TLMDLabel
      Left = 107
      Top = 95
      Width = 122
      Height = 16
      Bevel.Mode = bmCustom
      FontFX.Style = tdSunken
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = []
      ParentFont = False
      Caption = ' Registros da Tabela'
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 11
      Top = 72
      Width = 317
      Height = 19
      UseDockManager = False
      Bevel.StyleInner = bvLowered
      Bevel.Mode = bmCustom
      TabOrder = 0
      object Gag_Ger: TGauge
        Left = 2
        Top = 2
        Width = 313
        Height = 15
        BorderStyle = bsNone
        ForeColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Progress = 0
      end
    end
    object Btn_CanGer: TButton
      Left = 118
      Top = 140
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Btn_CanGerClick
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 12
      Top = 111
      Width = 317
      Height = 19
      UseDockManager = False
      Bevel.StyleInner = bvLowered
      Bevel.Mode = bmCustom
      TabOrder = 2
      object Gag_Tab: TGauge
        Left = 2
        Top = 2
        Width = 313
        Height = 15
        BorderStyle = bsNone
        ForeColor = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Progress = 0
      end
    end
  end
end
