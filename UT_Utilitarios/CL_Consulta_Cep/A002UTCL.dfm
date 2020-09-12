object FrmCxPostal: TFrmCxPostal
  Left = 142
  Top = 185
  BorderStyle = bsNone
  Caption = 'FrmCxPostal'
  ClientHeight = 88
  ClientWidth = 152
  Color = 13959168
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 152
    Height = 88
    Brush.Color = 15202552
    Shape = stRoundRect
  end
  object SpeedButton1: TSpeedButton
    Left = 43
    Top = 61
    Width = 61
    Height = 22
    Cursor = crHandPoint
    Caption = '&Ok'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Chk_CxPCom: TCheckBox
    Left = 9
    Top = 11
    Width = 136
    Height = 17
    Caption = '&Caixa Postal Comunitária'
    Color = 15202552
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Chk_AgPostal: TCheckBox
    Left = 9
    Top = 39
    Width = 97
    Height = 17
    Caption = '&Agência Postal'
    Color = 15202552
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
end
