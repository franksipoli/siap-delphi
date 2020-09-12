object FRM_A003UTDC: TFRM_A003UTDC
  Left = 192
  Top = 107
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 203
  ClientWidth = 225
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox1: TLMDGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 203
    Align = alTop
    Alignment = gcaTopCenter
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsFrameInset
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    TabOrder = 0
    object RZDL_LOCAL: TRzDirectoryListBox
      Left = 2
      Top = 3
      Width = 221
      Height = 198
      Hint = 'Pressione a Tecla <ENTER> para escolher....'
      ItemHeight = 17
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = RZDL_LOCALChange
      OnKeyPress = RZDL_LOCALKeyPress
    end
  end
end
