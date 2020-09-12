object FRM_A004RHTE: TFRM_A004RHTE
  Left = 237
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Geração do Arquivo CNAB'
  ClientHeight = 231
  ClientWidth = 325
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF008888
    8444844488888888718710888888888884448444888888887187188888888888
    8444844488888888018018888888888884448444888888881181188888888888
    8444844480088888118118888888888884448444800888887187188108888888
    8444844480088888007008810888888884448444800888874444478108888888
    8444844480088887444447810888888187447444800888174444478108888811
    74444444701881174444407108888888744444447117887CCCCCC07001888844
    744444447878800CCC4CC078188888447444444474488CC4CCCCC40088888844
    8444444474488CC4CC4CC4C0888888447444544484488CC4CCCCC4C088888844
    4447574474488CC4CC0CC4C0888888744448584444488CC4CC0CCC0088888884
    444F5F4444788CC4C080CC0788888884444F5F4444888CCCC7F70C0888888884
    444F5F4444888CCC0FCF0C0888888884444F5F44478887CC0FCF0C0888888888
    448FFF447888887C0C0C00888888888888880888888888888010888888888888
    8880108888888887011107888888888888711178888888800111008888888888
    8801110888888888001008888888888888000008888888880000088888888888
    8870007888888888800088888888888888870788888888888777888888888888
    8888888888888888888888888888888888888888888888888888888888880000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 10
    Top = 10
    Width = 303
    Height = 184
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Color = clSilver
    TabOrder = 0
    object GAU_AEV: TGauge
      Left = 11
      Top = 114
      Width = 281
      Height = 20
      ForeColor = 8404992
      MaxValue = 0
      Progress = 0
    end
    object GAU_FPG: TGauge
      Left = 11
      Top = 153
      Width = 281
      Height = 20
      ForeColor = 8404992
      MaxValue = 0
      Progress = 0
    end
    object LBL_ORIGEM: TLabel
      Left = 13
      Top = 96
      Width = 137
      Height = 16
      Caption = 'aqui, origem de recurso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LBL_DATAPGTO: TLabel
      Left = 13
      Top = 62
      Width = 186
      Height = 16
      Caption = 'Informar a Data de Pagamento :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LBL_FPG: TLabel
      Left = 13
      Top = 135
      Width = 120
      Height = 16
      Caption = 'aqui, forma de pagto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 14
      Top = 6
      Width = 120
      Height = 16
      Caption = 'Selecione um Banco:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DTE_PAG: TDateEdit
      Left = 206
      Top = 60
      Width = 85
      Height = 21
      DefaultToday = True
      NumGlyphs = 2
      TabOrder = 0
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 11
      Top = 87
      Width = 280
      Height = 3
      UseDockManager = False
      Bevel.StyleInner = bvFrameLowered
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Color = clSilver
      TabOrder = 1
    end
    object LMDSimplePanel3: TLMDSimplePanel
      Left = 12
      Top = 48
      Width = 280
      Height = 3
      UseDockManager = False
      Bevel.StyleInner = bvFrameLowered
      Bevel.LightColor = clGray
      Bevel.Mode = bmCustom
      Bevel.ShadowColor = clSilver
      Color = clSilver
      TabOrder = 2
    end
    object CBB_BANCO: TComboBox
      Left = 12
      Top = 23
      Width = 281
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnKeyPress = CBB_BANCOKeyPress
      Items.Strings = (
        'BANCO ITAU'
        'BANCO DO BRASIL')
    end
  end
  object BTN_GERAR: TBitBtn
    Left = 62
    Top = 201
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Gerar'
    Default = True
    TabOrder = 1
    OnClick = BTN_GERARClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BTN_SAIR: TBitBtn
    Left = 166
    Top = 201
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Sair'
    TabOrder = 2
    Kind = bkClose
  end
  object DelSysMenuItems1: TDelSysMenuItems
    SysMenuItems = [smMove]
    Left = 762
    Top = 1
  end
end
