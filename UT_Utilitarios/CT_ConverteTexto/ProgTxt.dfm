object FRM_ProgTxt: TFRM_ProgTxt
  Left = 232
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Progresso'
  ClientHeight = 123
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
    Height = 123
    UseDockManager = False
    Align = alClient
    BackFX.AlphaBlend.Strength = 0.600000023841858
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
      Top = 38
      Width = 84
      Height = 13
      Caption = 'Tempo estimado :'
      Transparent = True
    end
    object Label2: TLabel
      Left = 192
      Top = 38
      Width = 86
      Height = 13
      Caption = 'Tempo decorrido :'
      Transparent = True
    end
    object Lbl_Tit: TLMDLabel
      Left = 106
      Top = 11
      Width = 126
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
      Caption = 'Consultando Dados...'
    end
    object Lbl_EstGer: TLabel
      Left = 97
      Top = 39
      Width = 42
      Height = 13
      Caption = '00:00:00'
      Transparent = True
    end
    object Lbl_DecGer: TLabel
      Left = 282
      Top = 39
      Width = 42
      Height = 13
      Caption = '00:00:00'
      Transparent = True
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 11
      Top = 61
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
      Top = 88
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Btn_CanGerClick
    end
  end
end
