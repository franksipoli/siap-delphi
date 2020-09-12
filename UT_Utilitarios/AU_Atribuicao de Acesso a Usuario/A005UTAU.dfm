object FRM_A005UTAU: TFRM_A005UTAU
  Left = 96
  Top = 20
  BorderStyle = bsNone
  ClientHeight = 496
  ClientWidth = 625
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
  object Panel2: TPanel
    Left = 587
    Top = 0
    Width = 38
    Height = 496
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 1
      Top = 103
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 1
      Top = 135
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 1
      Top = 167
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 1
      Top = 8
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 1
      Top = 263
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 1
      Top = 394
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
    object Btn_Avancar: TSpeedButton
      Left = 1
      Top = 39
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 1
      Top = 71
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 1
      Top = 199
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 1
      Top = 231
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 2
      OnClick = Btn_ExcluirClick
    end
    object BTN_CADUSU: TSpeedButton
      Left = 1
      Top = 328
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_CADUSUClick
    end
    object BTN_PERFIL: TSpeedButton
      Left = 1
      Top = 295
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_PERFILClick
    end
    object BTN_OPUSU: TSpeedButton
      Left = 1
      Top = 360
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_OPUSUClick
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 9
    Top = 4
    Width = 414
    Height = 101
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Usuário  '
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
    object Label1: TLabel
      Left = 12
      Top = 17
      Width = 54
      Height = 13
      Caption = '  CPF/CNPJ'
    end
    object Label2: TLabel
      Left = 141
      Top = 17
      Width = 31
      Height = 13
      Caption = '  Login'
    end
    object Label3: TLabel
      Left = 12
      Top = 56
      Width = 33
      Height = 13
      Caption = '  Nome'
    end
    object DED_CNOMEUSU: TDBEdit
      Left = 140
      Top = 31
      Width = 265
      Height = 21
      DataField = 'CNOMEUSU'
      DataSource = DTM_A005UTAU.DTS_051
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 10
      Top = 70
      Width = 395
      Height = 21
      Color = 15727354
      DataField = 'CNOMEGRL'
      DataSource = DTM_A005UTAU.DTS_051
      ReadOnly = True
      TabOrder = 2
    end
    object CBE_CCPFCNPJ: TComboEdit
      Left = 10
      Top = 31
      Width = 130
      Height = 21
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        18000000000074030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00BFBFBFBFBFBF00000000000000BFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF0000000000000000
        0000BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF000000
        0000000000000000007F7F7F000000000000BFBFBF00BFBFBF7F7F7F00FFFFFF
        FFFFFFFFFFFFFFFF00FFFFFFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000
        7F7F7FBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFFBFBFBF0000007F000000
        00007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000BFBFBFBFBFBF00BFBF
        BF7F7F7FFFFFFFBFBFBF7F0000FF00007F00000000007F7F7F7F7F7FBFBFBFBF
        BFBF7F7F7FBFBFBF000000BFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F7FFF00
        00FF00007F00000000007F7F7FFFFF00BFBFBFBFBFBF7F7F7FBFBFBF000000BF
        BFBFBFBFBF00BFBFBF7F7F7F00FFFF7F7F00BFBFBF7F7F007F7F000000007F7F
        7FFFFF00FFFF00BFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF00BFBFBF7F7F7F
        FFFFFF7F7F00FFFFFFBFBFBF007F00007F000000007F7F7FBFBFBFBFBFBF7F7F
        7F000000BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F00FFFFFFBFBFBF
        FF00007F7F00BFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBF7F7F7FFFFFFFBFBFBF7F7F00FFFFFF7F7F00007F007F7F00BFBFBF
        FFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFF
        FFFFBFBFBF7F7F007F7F007F7F00BFBFBFFFFFFF00FFFFBFBFBF000000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF
        FFFF00FFFF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F7F7F00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFBFBFBFFFFFFF7F
        7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FF
        FFFFFFFFFFFFFFFFFFFF00FFFFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00}
      NumGlyphs = 1
      TabOrder = 0
      OnButtonClick = CBE_CCPFCNPJButtonClick
      OnExit = CBE_CCPFCNPJExit
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 10
    Top = 111
    Width = 568
    Height = 376
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Lista de Usuários'
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
    TabOrder = 2
    object GRD_USUARIOS: TDBGrid
      Left = 12
      Top = 17
      Width = 545
      Height = 348
      Color = 15727354
      DataSource = DTM_A005UTAU.DTS_051
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = GRD_USUARIOSDblClick
      OnTitleClick = GRD_USUARIOSTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CNOMEUSU'
          Title.Caption = '  Login'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMEGRL'
          Title.Caption = '  Nome'
          Width = 259
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LBLOQUEADO'
          Title.Caption = '  Bloqueado'
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NADMIN'
          Title.Caption = '  Admin'
          Width = 51
          Visible = True
        end>
    end
    object STE_NOME: TLMDStaticText
      Left = 189
      Top = 22
      Width = 11
      Height = 11
      UseDockManager = False
      AutoSize = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmCustom
      Caption = ' '
      Color = clSilver
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Webdings'
      Font.Style = []
      Options = []
      ParentFont = False
      OnClick = STE_NOMEClick
    end
    object STE_LOGIN: TLMDStaticText
      Left = 66
      Top = 22
      Width = 11
      Height = 11
      UseDockManager = False
      AutoSize = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmCustom
      Caption = '5'
      Color = clSilver
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Webdings'
      Font.Style = []
      Options = []
      ParentFont = False
      OnClick = STE_LOGINClick
    end
    object STE_BLOQUEADO: TLMDStaticText
      Left = 468
      Top = 22
      Width = 11
      Height = 11
      UseDockManager = False
      AutoSize = False
      Bevel.Mode = bmCustom
      Caption = ' '
      Color = clSilver
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Webdings'
      Font.Style = []
      Options = []
      ParentFont = False
      OnClick = STE_BLOQUEADOClick
    end
    object PNL_AVISO: TPanel
      Left = 110
      Top = 115
      Width = 348
      Height = 49
      TabOrder = 4
      Visible = False
      object lbl_msg: TLabel
        Left = 1
        Top = 12
        Width = 345
        Height = 36
        Alignment = taCenter
        AutoSize = False
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object LMDGroupBox3: TLMDGroupBox
    Left = 427
    Top = 4
    Width = 151
    Height = 101
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Opções  '
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
    TabOrder = 3
    object DBC_ADMIN: TDBCheckBox
      Left = 9
      Top = 29
      Width = 135
      Height = 15
      Caption = 'Usuário Administrador'
      DataField = 'NADMIN'
      DataSource = DTM_A005UTAU.DTS_051
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'Sim'
      ValueUnchecked = 'Não'
      OnMouseUp = DBC_LBLOQUEADOMouseUp
    end
    object DBC_LBLOQUEADO: TDBCheckBox
      Left = 9
      Top = 70
      Width = 135
      Height = 17
      Caption = 'Usuário Bloqueado'
      DataField = 'LBLOQUEADO'
      DataSource = DTM_A005UTAU.DTS_051
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'Sim'
      ValueUnchecked = 'Não'
      OnMouseUp = DBC_LBLOQUEADOMouseUp
    end
  end
  object QRY_REMOVEACESSOUSU: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      '  REMOVEACESSOUSU(:NIDUSUARIO, :NIDOPERADOR);'
      'end;')
    Left = 591
    Top = 464
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPERADOR'
        ParamType = ptInput
      end>
  end
  object QRY_INSERIUSUADMIN: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      '  INSERIUSUADMIN(:NIDUSUARIO, :NIDOPERADOR);'
      'end;')
    Left = 591
    Top = 432
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPERADOR'
        ParamType = ptInput
      end>
  end
end
