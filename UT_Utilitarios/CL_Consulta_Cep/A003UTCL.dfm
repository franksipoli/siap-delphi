object Frm_MensPesq: TFrm_MensPesq
  Left = 290
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Cep'
  ClientHeight = 130
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Lbl_Localidade: TLabel
    Left = 16
    Top = 12
    Width = 286
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'SAO JOSE DOS PINHAIS - PR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16512
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 40
    Width = 286
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'ESTA LOCALIDADE POSSUI CEP UNICO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Lbl_Cep: TLabel
    Left = 18
    Top = 68
    Width = 286
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '832800-000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16512
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 16
    Width = 32
    Height = 26
    AutoSize = True
    Picture.Data = {
      07544269746D6170B6030000424DB60300000000000076000000280000002000
      00001A0000000100080000000000400300000000000000000000100000000000
      0000000000000000800000800000008080008000000080008000808000008080
      8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00080808080808080808080808000008080808080808080808080808080808
      0808080808080808080808080808000F00000808080808080808080808080808
      08080808080808080808080800000F0F0F0F0000080808080808080808080808
      08080808080808080808000007000F0F0F0F0F0F000008080808080808080808
      080808080808080800000700000F0F0F0F0F0F0F0F0F00000808080808080808
      080808080808000008070007000F0F0F0F0F0F0F0F0F0F0F0000080808080808
      0808080800000808070007000F0F0F0F0F0F0F0F0F0F0F0F0F0F000008080808
      0808000008080807000807000F0F0F0F0F0F0F0F0C0C0F0F0F0F0F0F00000808
      08080008080807000807000F0F0C0C0F0F0F0F0F0F0F0C0C0F0F0F0F0F0F0000
      08080800080700080F07000F0F0F0F0C0F0F0F0C0C0F0F0F0C0F0F0F0F0F0F0F
      000008000700080F07000F0F0C0C0F0F0F0F0F0F0F0C0C0F0F0F0F0F0F0F0F0F
      0F000808000700080700000F0F0F0C0C0F0F0F0F0F0F0F0C0C0F0F0F0F0F0F0F
      000808080008070008070700000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F
      000808080800080700080F070700000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00
      08080808080008080700080F08070700000F0F0F0F0F0F0F0F0F07080F0F0F00
      0808080808080008080700080F080F070700000F0F0F0F0F0F080D0D070F0008
      080808080808000808080700080F080F08070700000F0F0F0F070D0D080F0008
      08080808080808000808080700080F080F080F070700000F0F0F08070F000808
      0808080808080800080808080700080F080F080F08070700000F0F0F0F000808
      080808080808080800080808080700080F080F080F080F070700000F00080808
      08080808080808080008080808080700080F080F080F080F0800080000080808
      0808080808080808080008080808080700080F080F080F080008080808080808
      080808080808080808000808080808080700080F080F08000808080808080808
      08080808080808080808000808080800000800080F0800080808080808080808
      0808080808080808080800080800000808080800080008080808080808080808
      0808080808080808080808000008080808080808000808080808080808080808
      0808}
    Transparent = True
  end
  object Button1: TButton
    Left = 115
    Top = 100
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
end
