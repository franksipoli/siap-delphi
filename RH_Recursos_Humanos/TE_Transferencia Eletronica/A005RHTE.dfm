object FRM_A005RHTE: TFRM_A005RHTE
  Left = 239
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Detalhes de'
  ClientHeight = 256
  ClientWidth = 363
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
  object LMDLabel1: TLMDLabel
    Left = 7
    Top = 5
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Servidor :'
  end
  object LMDLabel2: TLMDLabel
    Left = 7
    Top = 29
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Origem do Recurso :'
  end
  object LMDLabel3: TLMDLabel
    Left = 7
    Top = 45
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Controle :'
  end
  object LMDLabel4: TLMDLabel
    Left = 7
    Top = 86
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Forma de Pagamento :'
  end
  object LMDLabel5: TLMDLabel
    Left = 7
    Top = 102
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Banco :'
  end
  object LMDLabel6: TLMDLabel
    Left = 7
    Top = 118
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Agência :'
  end
  object LMDLabel7: TLMDLabel
    Left = 7
    Top = 134
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Nº da Conta :'
  end
  object LMDLabel8: TLMDLabel
    Left = 7
    Top = 150
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Valor a Receber :'
  end
  object DBT_CNOMFUN: TDBText
    Left = 139
    Top = 7
    Width = 75
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'CNOMFUN'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_CDESCRICAO: TDBText
    Left = 139
    Top = 31
    Width = 91
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'CDESCRICAO'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_CCTLORI: TDBText
    Left = 139
    Top = 47
    Width = 69
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'CCTLORI'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_DAT_DESCRICAO: TDBText
    Left = 139
    Top = 88
    Width = 110
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'DAT_DESCRICAO'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_NBCOPGT: TDBText
    Left = 139
    Top = 104
    Width = 72
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'NBCOPGT'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_NAGEPGT: TDBText
    Left = 139
    Top = 120
    Width = 71
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'NAGEPGT'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_NCTAPGT: TDBText
    Left = 139
    Top = 136
    Width = 71
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'DAT_NCTAPGT'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object DBT_NVLRLIQ: TDBText
    Left = 139
    Top = 152
    Width = 67
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'NVLRLIQ'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LMDLabel9: TLMDLabel
    Left = 7
    Top = 192
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Nº  Doc. do Banco :'
  end
  object DBT_CNOSSONRO: TDBText
    Left = 139
    Top = 194
    Width = 89
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'CNOSSONRO'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LMDLabel10: TLMDLabel
    Left = 7
    Top = 61
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Competência :'
  end
  object DBT_NMESREF: TDBText
    Left = 139
    Top = 63
    Width = 71
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'NMESREF'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object LMDLabel11: TLMDLabel
    Left = 7
    Top = 175
    Width = 128
    Height = 16
    Bevel.Mode = bmCustom
    Alignment = agCenterRight
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = []
    ParentFont = False
    Caption = 'Data Pagamento :'
  end
  object DBT_DDATAPAGTO: TDBText
    Left = 139
    Top = 177
    Width = 93
    Height = 13
    AutoSize = True
    Color = clSilver
    DataField = 'DDATAPAGTO'
    DataSource = DTM_A005RHTE.DTS_062
    Font.Charset = ANSI_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 143
    Top = 225
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
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
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 9
    Top = 25
    Width = 342
    Height = 1
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.LightColor = clSilver
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clGray
    Color = clSilver
    TabOrder = 1
  end
  object LMDSimplePanel5: TLMDSimplePanel
    Left = 9
    Top = 82
    Width = 342
    Height = 1
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.LightColor = clSilver
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clGray
    Color = clSilver
    TabOrder = 2
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 9
    Top = 170
    Width = 342
    Height = 1
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.LightColor = clSilver
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clGray
    Color = clSilver
    TabOrder = 3
  end
  object LMDSimplePanel2: TLMDSimplePanel
    Left = 9
    Top = 214
    Width = 342
    Height = 1
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.LightColor = clSilver
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clGray
    Color = clSilver
    TabOrder = 4
  end
  object DelSysMenuItems1: TDelSysMenuItems
    SysMenuItems = [smMove]
    Left = 762
    Top = 1
  end
end
