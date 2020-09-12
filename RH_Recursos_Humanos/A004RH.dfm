object FRM_A004RH: TFRM_A004RH
  Left = 230
  Top = 190
  Width = 623
  Height = 397
  Caption = '  Grupo Familiar'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 577
    Top = 0
    Width = 38
    Height = 369
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object Btn_Incluir: TSpeedButton
      Left = 2
      Top = 67
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 97
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 2
      Top = 127
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 2
      Top = 187
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ExcluirClick
    end
    object BTN_SAIR: TSpeedButton
      Left = 2
      Top = 277
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
      Left = 2
      Top = 7
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 2
      Top = 37
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 2
      Top = 157
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 2
      Top = 217
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_ImprimirClick
    end
    object BTN_ENDERC: TSpeedButton
      Left = 2
      Top = 247
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = BTN_ENDERCClick
    end
  end
  object GRB_DEPEN: TLMDGroupBox
    Left = 10
    Top = 4
    Width = 560
    Height = 360
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Pessoa  '
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
    object Label21: TLabel
      Left = 230
      Top = 14
      Width = 267
      Height = 13
      Caption = '  Nome do Dependente ( Completo e sem abreviaturas )'
    end
    object Label24: TLabel
      Left = 12
      Top = 54
      Width = 75
      Height = 13
      Caption = '  Dt Nascimento'
    end
    object Label25: TLabel
      Left = 99
      Top = 54
      Width = 34
      Height = 13
      Caption = '  Idade'
    end
    object Label33: TLabel
      Left = 170
      Top = 54
      Width = 158
      Height = 13
      Caption = '  Tipo Dependente Salário Família'
    end
    object Label34: TLabel
      Left = 9
      Top = 94
      Width = 164
      Height = 13
      Caption = '  Tipo Dependente Imposto Renda'
    end
    object Label1: TLabel
      Left = 145
      Top = 14
      Width = 65
      Height = 13
      Caption = '  Número CPF'
    end
    object Label2: TLabel
      Left = 133
      Top = 14
      Width = 6
      Height = 13
      Caption = 'S'
    end
    object Label3: TLabel
      Left = 10
      Top = 14
      Width = 98
      Height = 13
      Caption = ' Grau de Parentesco'
    end
    object DBD_DDTNASCDEP: TDBDateEdit
      Left = 9
      Top = 68
      Width = 86
      Height = 21
      DataField = 'DDTNASC'
      DataSource = DTM_A004RH.DTS_019
      CheckOnExit = True
      Color = clWhite
      DialogTitle = 'Seleciona a Data'
      NumGlyphs = 2
      TabOrder = 4
      YearDigits = dyFour
      OnExit = DBD_DDTNASCDEPExit
    end
    object DED_CLC_IDADE: TDBEdit
      Left = 95
      Top = 68
      Width = 65
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CLC_IDADE'
      DataSource = DTM_A004RH.DTS_030
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object LMDPanelFill49: TLMDPanelFill
      Left = 9
      Top = 133
      Width = 542
      Height = 16
      UseDockManager = False
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.WidthInner = 0
      Bevel.BorderSides = [fsBottom]
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clGray
      Bevel.StandardStyle = lsNone
      Caption = 'Dependentes Cadastrados'
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
      TabOrder = 9
    end
    object GRD_DEPENDENTE: TDBGrid
      Left = 9
      Top = 149
      Width = 542
      Height = 182
      TabStop = False
      Color = 14281964
      DataSource = DTM_A004RH.DTS_030
      FixedColor = clSilver
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 8
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'LKP_PARENTESCO'
          Title.Alignment = taCenter
          Title.Caption = 'Grau de Parentesco'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMEGRL'
          Title.Alignment = taCenter
          Title.Caption = 'Pessoa'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSEXO'
          Title.Alignment = taCenter
          Title.Caption = 'S'
          Width = 14
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDTNASC'
          Title.Alignment = taCenter
          Title.Caption = 'Nascimento'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLC_IDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Idade'
          Width = 55
          Visible = True
        end>
    end
    object LMDPanelFill6: TLMDPanelFill
      Left = 9
      Top = 331
      Width = 271
      Height = 21
      UseDockManager = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Alignment = agCenterLeft
      Bevel.BorderColor = clWhite
      Bevel.LightColor = clWindow
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clMenu
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Nº Dependentes para Salário Família'
      Color = clInactiveBorder
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 14671839
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 12829635
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object DBText1: TDBText
        Left = 234
        Top = 3
        Width = 32
        Height = 15
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DataSource = DTM_A004RH.DTS_DEPSALFAM
        Transparent = True
      end
    end
    object LMDPanelFill28: TLMDPanelFill
      Left = 280
      Top = 331
      Width = 271
      Height = 21
      UseDockManager = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.BorderColor = clWhite
      Bevel.LightColor = clWindow
      Bevel.Mode = bmStandard
      Bevel.ShadowColor = clMenu
      Bevel.StandardStyle = lsFrameInset
      Caption = '  Nº Dependentes p/ Imposto de Renda'
      Color = clInactiveBorder
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 14671839
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 12829635
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object DBText2: TDBText
        Left = 234
        Top = 3
        Width = 32
        Height = 15
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DataSource = DTM_A004RH.DTS_DEPIMPRENDA
        Transparent = True
      end
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 228
      Top = 28
      Width = 323
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNOMEGRL'
      DataSource = DTM_A004RH.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBL_NIDTBXGRP: TRxDBLookupCombo
      Left = 8
      Top = 28
      Width = 121
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXGRP'
      DataSource = DTM_A004RH.DTS_030
      LookupField = 'NIDTBXGRP'
      LookupDisplay = 'CNOMEGRP'
      LookupSource = DTM_A004RH.DTS_026
      TabOrder = 0
      OnChange = DBL_NIDTBXGRPChange
    end
    object DBL_NIDTBXDSF: TRxDBLookupCombo
      Left = 159
      Top = 68
      Width = 392
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTAGGSF'
      DataSource = DTM_A004RH.DTS_030
      LookupField = 'NIDTAGGSF'
      LookupDisplay = 'CNOMEDSF'
      LookupSource = DTM_A004RH.DTS_028
      TabOrder = 6
      OnKeyDown = DBL_NIDTBXDSFKeyDown
    end
    object DBL_NIDTBXDIR: TRxDBLookupCombo
      Left = 8
      Top = 108
      Width = 543
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTAGGIR'
      DataSource = DTM_A004RH.DTS_030
      LookupField = 'NIDTAGGIR'
      LookupDisplay = 'CNOMEDIR'
      LookupSource = DTM_A004RH.DTS_027
      TabOrder = 7
      OnKeyDown = DBL_NIDTBXDIRKeyDown
    end
    object CBE_CCPFCNPJ: TComboEdit
      Left = 143
      Top = 28
      Width = 85
      Height = 21
      ButtonHint = 'Pesquisar Logradouro'
      CharCase = ecUpperCase
      EditMask = '999.999.999-99;0'
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
      ButtonWidth = 0
      MaxLength = 14
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnButtonClick = CBE_CCPFCNPJButtonClick
      OnExit = CBE_CCPFCNPJExit
    end
    object DED_CSEXO: TDBEdit
      Left = 129
      Top = 28
      Width = 14
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'LKP_CSEXO'
      DataSource = DTM_A004RH.DTS_030
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object QRY_GRPFAMILIAR: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'BEGIN'
      '  VERGRPFAMILIAR(:IDPESSOA);'
      'END;')
    Left = 48
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDPESSOA'
      end>
  end
end
