object FRM_A015UTAU: TFRM_A015UTAU
  Left = 218
  Top = 135
  Width = 351
  Height = 319
  Caption = 'FRM_A015UTAU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GRB_ENDEREC: TLMDGroupBox
    Left = 7
    Top = 5
    Width = 290
    Height = 278
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  A��es da Aplica��o  '
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
    object LSTVIEW_ACOES: TRzListView
      Left = 9
      Top = 19
      Width = 272
      Height = 251
      Checkboxes = True
      Columns = <
        item
          Caption = 'A��es'
          MaxWidth = 250
          MinWidth = 250
          Width = 250
        end>
      FrameColor = clMenu
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnMouseUp = LSTVIEW_ACOESMouseUp
      OwnerDraw = True
      OnDrawItem = LSTVIEW_ACOESDrawItem
    end
  end
  object Panel2: TPanel
    Left = 305
    Top = 0
    Width = 38
    Height = 292
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 98
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
    object BTN_ALTERAR: TSpeedButton
      Left = 1
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Acesso do Usu�rio por PERFIL'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_ALTERARClick
    end
    object BTN_GRAVAR: TSpeedButton
      Left = 1
      Top = 38
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Acesso do Usu�rio por EQUIVAL�NCIA de PERFIL'
      Flat = True
      Layout = blGlyphTop
      Margin = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_GRAVARClick
    end
    object BTN_CANCELAR: TSpeedButton
      Left = 1
      Top = 68
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Hint = 'Acesso do Usu�rio por PERFIL'
      Flat = True
      ParentShowHint = False
      ShowHint = True
      OnClick = BTN_CANCELARClick
    end
  end
  object LMDStaticText1: TLMDStaticText
    Left = 224
    Top = 28
    Width = 17
    Height = 12
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    Bevel.Mode = bmCustom
    Caption = '�'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Wingdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = LMDStaticText1Click
  end
  object LMDStaticText2: TLMDStaticText
    Left = 249
    Top = 29
    Width = 14
    Height = 12
    Cursor = crHandPoint
    UseDockManager = False
    AutoSize = False
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.Mode = bmCustom
    Caption = '�'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Wingdings'
    Font.Style = []
    Options = []
    ParentFont = False
    OnClick = LMDStaticText2Click
  end
  object ImgList: TImageList
    Left = 308
    Top = 128
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001001000000000000008
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      FE7B000000000000000000000000000000000000000000000000000000009071
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000BB77BB77BB77BB77
      BB77BB77BB77BB77BB77BB77FF7F000000000000000000000000000000002216
      C31138630000000000000000000000000000000000000000000000000870007C
      9071000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000026264002
      00028B3600000000000000000000000000000000000000000000087008700870
      9071000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000D14E021A0002
      2002201200000000000000000000000000000000000000009071087008700870
      0870000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F00000000000000000000D14E021A00020000
      A82EC001AE420000000000000000000000000000000090710870087000009071
      007C907100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000008419C21500000000
      00002416C51D00000000000000000000000000000000007C0870000000000000
      0870007C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      000000002002882A000000000000000000000000000000000000000000000000
      0000087090710000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      000000002216E319314F00000000000000000000000000000000000000000000
      00000870007C9071000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      0000000000002216E319314F0000000000000000000000000000000000000000
      000000000870007C907100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      00000000000000002216E319314F000000000000000000000000000000000000
      0000000000000870007C90710000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B3560000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FBB77FF7F000000000000000000000000000000000000
      000000000000000000002216E319314F00000000000000000000000000000000
      00000000000000000870007C9071000000000000000000000000000000000000
      0000000000000000000000000000000000000000B35600000000000000000000
      00000000000000000000BB77FF7F000000000000000000000000000000000000
      000000000000000000000000A215031600000000000000000000000000000000
      00000000000000000000007C0870000000000000000000000000000000000000
      0000000000000000000000000000000000000000B356B356B356B356B356B356
      B356B356B356B356B356B3560000000000000000000000000000000000000000
      0000000000000000000000000000211200000000000000000000000000000000
      0000000000000000000000000870000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E1110000000000000000000000000000
      0000000000000000000000000000007C00000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      C003FEFFFDFF00008003FC7FF8FF00008003F87FF0FF00008003F07FE0FF0000
      8003E23FC47F00008003E73FCE7F00008003FF9FFF3F00008003FF8FFF1F0000
      8003FFC7FF8F00008003FFE3FFC700008003FFF1FFE300008003FFF9FFF30000
      8007FFFDFFFB0000FFFFFFFEFFFD000000000000000000000000000000000000
      000000000000}
  end
  object QRY_INSERIAPLICPERFIL: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      
        '  INSERIAPLICPERFIL(:NIDUSUARIO, :NIDOPPERFIL, :NIDAPLIC, :NAPLI' +
        'CEQV);'
      'end;')
    Left = 308
    Top = 172
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPPERFIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDAPLIC'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NAPLICEQV'
        ParamType = ptInput
      end>
  end
  object QRY_RESTRIACAO: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      
        '  RESTRIACAOPERAPLIC(:NIDPERFIL, :NIDOPA, :NIDAPLICACAO, :NIDAPA' +
        ', :NIDAPLACAO, :NIDOBJ);'
      'end;')
    Left = 309
    Top = 204
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDPERFIL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDAPLICACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDAPA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDAPLACAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOBJ'
        ParamType = ptInput
      end>
  end
end