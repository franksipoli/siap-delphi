object FRM_A010RH: TFRM_A010RH
  Left = 194
  Top = 258
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist�rico de Movimenta��o'
  ClientHeight = 296
  ClientWidth = 632
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
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F700
    0000000000000000000000000007F0333333333333333333333333333330F0FB
    FBFBFBFBFBFBFBFBFBFBFBFBFBF0F0BFBFBFBFBFBFBFBFBFBFBFBFBFBFB0F0FB
    FBFBFBFBFBFBFBFBFBFBFBFBFBF0F0BFBFBFBFBFBFBFBFBFBFBFBFBFBFB0F0FB
    FBFBFBFBFBFBFBFB003BFBFBFBF0F0BFBFBFBFBFBFBFBFB0FE03BFBFBFB0F0FB
    FBFBFBFBFBFBFB0FE603FBFBFBF0F0BFBFBFBFBFBFBFB0FE6073BFBFBFB0F0FB
    FBFBFBFBFBFB0FE6073BFBFBFBF0F0BFBFBFBFBFBFB0FE6073BFBFBFBFB0F0FB
    FBFBFBFBFB0FE6073BFBFBFBFBF0F0BFB8000008B0F06073BFBFBFBFBFB0F0FB
    00888B800F87073BFBFBFBFBFBF0F0B07388FFF8307073BFBFBFBFBFBFB0F007
    388BFB8B83073BFBFBFBFBFBFBF0F7000000000000073FBFBFBFBFBFBFB0F073
    33FF8B8B0FF0000000000000000FF0733FF8B8B0FFF08C888888C880380FF003
    3F8B8B0FFCC0FFFFFFCFFCFF00FFF0703FB8B8B0FFC0CFFFFFFCFFCFF07FF077
    0F8B8B8B0F00FFFFFCFFCFFCFF07F707700000000000FFFFFFCFFCFFFFF0FF07
    788F8F8F870F0FFFFFFCFFFFFF0FFFF07788F8F870FFF0FFFFFFCFFFF0FFFFFF
    007777700FFFFF0FFFFFFFFF0FFFFFFFF7000007FFFFFFF0FF898FF0FFFFFFFF
    FFFFFFFFFFFFFFFF0F919F0FFFFFFFFFFFFFFFFFFFFFFFFFF08980FFFFFFFFFF
    FFFFFFFFFFFFFFFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 574
    Height = 281
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Detalhes  '
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
    object LMDPanelFill1: TLMDPanelFill
      Left = 10
      Top = 18
      Width = 554
      Height = 16
      UseDockManager = False
      Alignment = agCenterLeft
      Bevel.WidthInner = 0
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clGray
      Bevel.StandardStyle = lsNone
      Caption = '  Movimenta��o'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.ShadowDepth = 0
      FontFX.LightColor = clWhite
      FontFX.ShadowColor = clSilver
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 0
      object SpeedButton6: TSpeedButton
        Left = 495
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Anterior'
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777007777770007777060777777000777066000007
          7000770666666607700070666666660770007706666666077000777066000007
          7000777706077777700077777007777770007777770777777000777777777777
          7000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
      object SpeedButton16: TSpeedButton
        Left = 515
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Pr�ximo'
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777700777770007777770607777000770000066077
          7000770666666607700077066666666070007706666666077000770000066077
          7000777777060777700077777700777770007777770777777000777777777777
          7000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton16Click
      end
      object BTN_MOV: TSpeedButton
        Left = 450
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Movimenta��o'
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555000000005555555099999990055555099999999010555001111111101
          105500000000000011055080FFFFFF0F01105500FFFFFF0FF0105550FF800007
          7F005555000777777F005555500000000F05555550FFFFFF0F05555550F000FF
          0005555550FFFFFF0555555550FF800005555555550005555555}
        ParentShowHint = False
        ShowHint = True
        OnClick = BTN_MOVClick
      end
      object SpeedButton20: TSpeedButton
        Left = 475
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Primeiro'
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          04000000000068000000C40E0000C40E00001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777770770777700077770070077770007770600607777000770660660000
          0000706606666666000006606666666600007066066666660000770660660000
          0000777060060777700077770070077770007777707707777000777777777777
          7000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton20Click
      end
      object SpeedButton17: TSpeedButton
        Left = 535
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = '�ltimo'
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777707707777700077770070077770007777060060777000000006606607
          7000066666660660700006666666606600000666666606607000000006606607
          7000777706006077700077770070077770007777077077777000777777777777
          7000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton17Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 35
      Width = 554
      Height = 237
      Color = 14281964
      DataSource = DTM_A010RH.DTS_099
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCRITPM'
          Title.Caption = ' Tipo de Movimento'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNROATO'
          Title.Alignment = taCenter
          Title.Caption = 'Concess�o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDTEFEITOS'
          Title.Alignment = taCenter
          Title.Caption = 'Efeitos'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DAT_ATO'
          Title.Alignment = taCenter
          Title.Caption = 'Revoga��o'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DAT_EFEITOS'
          Title.Alignment = taCenter
          Title.Caption = 'Efeitos'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NANOPGTO'
          Title.Caption = 'Enviado TCE'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 591
    Top = 0
    Width = 38
    Height = 296
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 1
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 10
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        16020000424D160200000000000076000000280000001A0000001A0000000100
        040000000000A001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777700000077777777777777777777777777000000777888888888
        8877777777777700000077000000000008888888777777000000707777777777
        000000088777770000007088888888888088777088777700000070FFFFFFFFFF
        88088778088777000000080878877887F88000008088770000000F7087887788
        7F8087780808870000000F7700000000000077788007770000000F7777777777
        7777FF788807770000000F7777777777770007788880770000000F7777777777
        7777FF788880770000000F777777777777AA27788880770000000FFFFFFFFFFF
        FFFFFFF88880770000007077777777777777777F888077000000770870000080
        80000077F880770000007770800FF80F008F00077F807700000077770808FF08
        00FF077777807700000077777000FF8008FF8000000077000000777777708F80
        0FFFF0777777770000007777777707FFFFFFF707777777000000777777770000
        0000000777777700000077777777777777777777777777000000777777777777
        7777777777777700000077777777777777777777777777000000}
      OnClick = BTN_MOVClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 2
      Top = 44
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
  end
end