object FRM_A007RH: TFRM_A007RH
  Left = 150
  Top = 74
  Width = 564
  Height = 407
  ActiveControl = CBE_CNROATO
  Caption = 'FRM_A007RH'
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
  object LMDGroupBox3: TLMDGroupBox
    Left = 9
    Top = 2
    Width = 503
    Height = 61
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Informações do Movimento  '
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
    object Label2: TLabel
      Left = 135
      Top = 15
      Width = 113
      Height = 13
      Caption = '  Tipo de Movimentação'
    end
    object Label3: TLabel
      Left = 13
      Top = 16
      Width = 99
      Height = 13
      Caption = 'Grupo de Movimento'
    end
    object Label6: TLabel
      Left = 447
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Env. TCE'
    end
    object DBL_NIDTBXTPM: TRxDBLookupCombo
      Left = 137
      Top = 29
      Width = 308
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXTPM'
      DataSource = DTM_A007RH.DTS_099
      LookupField = 'NIDTBXTPM'
      LookupDisplay = 'CDESCRITPM'
      LookupSource = DTM_A007RH.DTS_096
      TabOrder = 1
      OnChange = DBL_NIDTBXTPMChange
    end
    object DBL_NIDTBXGMV: TRxDBLookupCombo
      Left = 11
      Top = 29
      Width = 126
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXGMV'
      DataSource = DTM_A007RH.DTS_099
      LookupField = 'NIDTBXGMV'
      LookupDisplay = 'CDESCRIGMV'
      LookupSource = DTM_A007RH.DTS_084
      TabOrder = 0
      OnChange = DBL_NIDTBXGMVChange
    end
    object DED_NANOPGTO: TDBEdit
      Left = 445
      Top = 29
      Width = 48
      Height = 21
      Color = 14281964
      DataField = 'NANOPGTO'
      DataSource = DTM_A007RH.DTS_099
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 518
    Top = 0
    Width = 38
    Height = 380
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Btn_Incluir: TSpeedButton
      Left = 2
      Top = 97
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
      OnClick = Btn_IncluirClick
    end
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 127
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AlterarClick
    end
    object Btn_Gravar: TSpeedButton
      Left = 2
      Top = 157
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_GravarClick
    end
    object Btn_Localizar: TSpeedButton
      Left = 2
      Top = 7
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_LocalizarClick
    end
    object Btn_Excluir: TSpeedButton
      Left = 2
      Top = 217
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
      Top = 37
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_AvancarClick
    end
    object Btn_Retroceder: TSpeedButton
      Left = 2
      Top = 67
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_RetrocederClick
    end
    object Btn_Cancelar: TSpeedButton
      Left = 2
      Top = 187
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      OnClick = Btn_CancelarClick
    end
    object Btn_Imprimir: TSpeedButton
      Left = 2
      Top = 247
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
  end
  object LMDGroupBox1: TLMDGroupBox
    Left = 9
    Top = 66
    Width = 133
    Height = 102
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Ato de Concessão  '
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
    object LBL_EFEIATOS: TLabel
      Left = 12
      Top = 58
      Width = 39
      Height = 13
      Caption = '  Efeitos'
    end
    object DBT_CDESCRITAT: TDBText
      Left = 14
      Top = 19
      Width = 88
      Height = 13
      AutoSize = True
      DataField = 'CDESCRITAT'
      DataSource = DTM_A007RH.DTS_069
    end
    object DED_DDTEFEITOS: TDBEdit
      Left = 11
      Top = 72
      Width = 113
      Height = 21
      Color = 14281964
      DataField = 'DDTEFEITOS'
      DataSource = DTM_A007RH.DTS_069
      TabOrder = 0
    end
    object CBE_CNROATO: TComboEdit
      Left = 11
      Top = 32
      Width = 113
      Height = 21
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
        08800000000087888888888808000000000087FFBFFFB00007008000000087BF
        FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
        000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
        70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
        86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
        000087FFBFFFB878888880000000877777777788888880000000888888888888
        888880000000}
      NumGlyphs = 1
      TabOrder = 1
      OnButtonClick = CBE_CNROATOButtonClick
      OnChange = CBE_CNROATOChange
      OnExit = CBE_CNROATOExit
    end
  end
  object PGC_MOV: TPageControlEx
    Left = 8
    Top = 173
    Width = 502
    Height = 198
    ActivePage = TabSheet8
    TabOrder = 3
    OnChange = DBL_NIDCADCRGChange
    object TabSheet1: TTabSheet
      Caption = 'Nomeação'
      OnShow = TabSheet1Show
      object LMDGroupBox2: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label5: TLabel
          Left = 12
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label9: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label10: TLabel
          Left = 95
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label11: TLabel
          Left = 312
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label12: TLabel
          Left = 11
          Top = 88
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label13: TLabel
          Left = 385
          Top = 88
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label14: TLabel
          Left = 12
          Top = 47
          Width = 32
          Height = 13
          Caption = '  Edital'
        end
        object Label23: TLabel
          Left = 336
          Top = 86
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label24: TLabel
          Left = 284
          Top = 86
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object Label1: TLabel
          Left = 415
          Top = 8
          Width = 49
          Height = 13
          Caption = '  Matricula'
        end
        object DBL_NIDTBXTCR: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 0
          OnChange = DBL_NIDTBXTCRChange
        end
        object DBL_NIDCADCRG: TRxDBLookupCombo
          Left = 117
          Top = 22
          Width = 294
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 1
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO: TDBEdit
          Left = 95
          Top = 61
          Width = 216
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 4
        end
        object DED_CDESCRISGO: TDBEdit
          Left = 312
          Top = 61
          Width = 183
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 5
        end
        object DED_NVALORSLR: TDBEdit
          Left = 385
          Top = 102
          Width = 109
          Height = 21
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 9
        end
        object DBL_NIDTAGSLR_1: TRxDBLookupCombo
          Left = 335
          Top = 102
          Width = 49
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGSLR'
          LookupDisplay = 'NNIVEL'
          LookupSource = DTM_A007RH.DTS_080_1
          TabOrder = 8
          OnChange = DBL_NIDTAGSLR_1Change
        end
        object DBL_NIDTAGSLR: TRxDBLookupCombo
          Left = 283
          Top = 102
          Width = 51
          Height = 21
          DropDownCount = 8
          DataField = 'CCLASSE'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'CCLASSE'
          LookupDisplay = 'CCLASSE'
          LookupSource = DTM_A007RH.DTS_080
          TabOrder = 7
          OnChange = DBL_NIDTAGSLRChange
        end
        object DBL_NIDTBXSLR: TRxDBLookupCombo
          Left = 11
          Top = 102
          Width = 271
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXSLR'
          LookupDisplay = 'CDESCRISLR'
          LookupSource = DTM_A007RH.DTS_092
          TabOrder = 6
          OnChange = DBL_NIDTBXSLRChange
        end
        object CBE_CNROEDITAL: TComboEdit
          Left = 12
          Top = 61
          Width = 82
          Height = 21
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
            08800000000087888888888808000000000087FFBFFFB00007008000000087BF
            FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
            000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
            70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
            86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
            000087FFBFFFB878888880000000877777777788888880000000888888888888
            888880000000}
          NumGlyphs = 1
          TabOrder = 3
          OnButtonClick = CBE_CNROATOButtonClick
          OnChange = CBE_CNROEDITALChange
          OnExit = CBE_CNROEDITALExit
        end
        object DED_NMATRICULA: TDBEdit
          Left = 412
          Top = 22
          Width = 83
          Height = 21
          DataField = 'NMATRICULA'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contratação'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object LMDGroupBox4: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label15: TLabel
          Left = 12
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label16: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label17: TLabel
          Left = 12
          Top = 86
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label18: TLabel
          Left = 280
          Top = 86
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label19: TLabel
          Left = 11
          Top = 126
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label20: TLabel
          Left = 385
          Top = 126
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label22: TLabel
          Left = 336
          Top = 124
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label25: TLabel
          Left = 284
          Top = 124
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object Label21: TLabel
          Left = 327
          Top = 8
          Width = 70
          Height = 13
          Caption = '  Data Termino'
        end
        object Label26: TLabel
          Left = 97
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Agente Integrador'
        end
        object Label4: TLabel
          Left = 415
          Top = 8
          Width = 49
          Height = 13
          Caption = '  Matricula'
        end
        object Label7: TLabel
          Left = 12
          Top = 47
          Width = 32
          Height = 13
          Caption = '  Edital'
        end
        object DBL_NIDTBXTCR_1: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 104
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 0
          OnChange = DBL_NIDTBXTCR_1Change
        end
        object DBL_NIDCADCRG_1: TRxDBLookupCombo
          Left = 116
          Top = 22
          Width = 208
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 1
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_1: TDBEdit
          Left = 12
          Top = 100
          Width = 264
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 6
        end
        object DED_CDESCRISGO_1: TDBEdit
          Left = 277
          Top = 100
          Width = 216
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 7
        end
        object DED_NVALORSLR_1: TDBEdit
          Left = 385
          Top = 140
          Width = 109
          Height = 21
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 11
        end
        object DBL_NIDTAGSLR_3: TRxDBLookupCombo
          Left = 335
          Top = 140
          Width = 49
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGSLR'
          LookupDisplay = 'NNIVEL'
          LookupSource = DTM_A007RH.DTS_080_1
          TabOrder = 10
          OnChange = DBL_NIDTAGSLR_3Change
        end
        object DBL_NIDTAGSLR_2: TRxDBLookupCombo
          Left = 283
          Top = 140
          Width = 51
          Height = 21
          DropDownCount = 8
          DataField = 'CCLASSE'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'CCLASSE'
          LookupDisplay = 'CCLASSE'
          LookupSource = DTM_A007RH.DTS_080
          TabOrder = 9
          OnChange = DBL_NIDTAGSLR_2Change
        end
        object DBD_DDATAFIM: TDBDateEdit
          Left = 325
          Top = 22
          Width = 86
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 2
          YearDigits = dyFour
        end
        object DBL_NIDTBXAGI: TRxDBLookupCombo
          Left = 95
          Top = 61
          Width = 400
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXAGI'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXAGI'
          LookupDisplay = 'CDESCRIAGI'
          LookupSource = DTM_A007RH.DTS_081
          TabOrder = 5
        end
        object DBL_NIDTBXSLR_1: TRxDBLookupCombo
          Left = 11
          Top = 140
          Width = 271
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXSLR'
          LookupDisplay = 'CDESCRISLR'
          LookupSource = DTM_A007RH.DTS_092
          TabOrder = 8
          OnChange = DBL_NIDTBXSLR_1Change
        end
        object DED_NMATRICULA_1: TDBEdit
          Left = 412
          Top = 22
          Width = 83
          Height = 21
          DataField = 'NMATRICULA'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 3
        end
        object CBE_CNROEDITAL1: TComboEdit
          Left = 12
          Top = 61
          Width = 82
          Height = 21
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
            08800000000087888888888808000000000087FFBFFFB00007008000000087BF
            FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
            000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
            70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
            86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
            000087FFBFFFB878888880000000877777777788888880000000888888888888
            888880000000}
          NumGlyphs = 1
          TabOrder = 4
          OnButtonClick = CBE_CNROATOButtonClick
          OnChange = CBE_CNROEDITALChange
          OnExit = CBE_CNROEDITALExit
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Readaptação'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object LMDGroupBox6: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label27: TLabel
          Left = 12
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label28: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label29: TLabel
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label30: TLabel
          Left = 272
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object DBL_NIDTBXTCR_2: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 0
          OnChange = DBL_NIDTBXTCR_2Change
        end
        object DBL_NIDCADCRG_3: TRxDBLookupCombo
          Left = 117
          Top = 22
          Width = 377
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 1
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_2: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 2
        end
        object DED_CDESCRISGO_2: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 3
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Recondução'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object LMDGroupBox7: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label32: TLabel
          Left = 13
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label33: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label34: TLabel
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label35: TLabel
          Left = 272
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object DBL_NIDTBXTCR_3: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 1
          OnChange = DBL_NIDTBXTCR_3Change
        end
        object DBL_NIDCADCRG_4: TRxDBLookupCombo
          Left = 117
          Top = 22
          Width = 377
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 0
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_3: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 2
        end
        object DED_CDESCRISGO_3: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 3
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Aproveitamento'
      ImageIndex = 4
      OnShow = TabSheet5Show
      object LMDGroupBox8: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label37: TLabel
          Left = 13
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label38: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label39: TLabel
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label40: TLabel
          Left = 272
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object DBL_NIDTBXTCR_4: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 0
          OnChange = DBL_NIDTBXTCR_4Change
        end
        object DBL_NIDCADCRG_5: TRxDBLookupCombo
          Left = 117
          Top = 22
          Width = 378
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 1
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_4: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 2
        end
        object DED_CDESCRISGO_4: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 3
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Reenquadramento'
      ImageIndex = 5
      OnShow = TabSheet6Show
      object LMDGroupBox9: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label42: TLabel
          Left = 13
          Top = 8
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label43: TLabel
          Left = 115
          Top = 8
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label44: TLabel
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label45: TLabel
          Left = 272
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object DBL_NIDTBXTCR_5: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 0
          OnChange = DBL_NIDTBXTCR_5Change
        end
        object DBL_NIDCADCRG_6: TRxDBLookupCombo
          Left = 117
          Top = 22
          Width = 377
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 1
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_5: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 2
        end
        object DED_CDESCRISGO_5: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 3
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Renovação de Contrato'
      ImageIndex = 6
      OnShow = TabSheet7Show
      object LMDGroupBox10: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label47: TLabel
          Left = 13
          Top = 8
          Width = 70
          Height = 13
          Caption = '  Data Termino'
        end
        object DBD_DDATAFIM_1: TDBDateEdit
          Left = 11
          Top = 24
          Width = 93
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          DialogTitle = 'Seleciona a Data'
          NumGlyphs = 2
          TabOrder = 0
          YearDigits = dyFour
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Concessão de Aposentadoria'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = False
      OnShow = TabSheet8Show
      object LMDGroupBox11: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label49: TLabel
          Left = 11
          Top = 55
          Width = 131
          Height = 13
          Caption = '  Descrição do Último Cargo'
        end
        object Label52: TLabel
          Left = 11
          Top = 99
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label54: TLabel
          Left = 13
          Top = 8
          Width = 87
          Height = 13
          Caption = '  Tipo de Beneficio'
        end
        object Label62: TLabel
          Left = 385
          Top = 99
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label63: TLabel
          Left = 336
          Top = 99
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label64: TLabel
          Left = 284
          Top = 99
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object Label8: TLabel
          Left = 477
          Top = 8
          Width = 11
          Height = 13
          Caption = '%'
        end
        object DBL_NIDTBXTBI: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 454
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTBI'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTBI'
          LookupDisplay = 'CDESCRITBI'
          LookupSource = DTM_A007RH.DTS_094
          TabOrder = 0
          OnChange = DBL_NIDTBXTBIChange
        end
        object DED_NVALORSLR_2: TDBEdit
          Left = 385
          Top = 113
          Width = 109
          Height = 21
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 5
        end
        object DBL_NIDTAGSLR_5: TRxDBLookupCombo
          Left = 335
          Top = 113
          Width = 49
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGSLR'
          LookupDisplay = 'NNIVEL'
          LookupSource = DTM_A007RH.DTS_080_1
          TabOrder = 4
          OnChange = DBL_NIDTAGSLR_5Change
        end
        object DBL_NIDTAGSLR_4: TRxDBLookupCombo
          Left = 283
          Top = 113
          Width = 51
          Height = 21
          DropDownCount = 8
          DataField = 'CCLASSE'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'CCLASSE'
          LookupDisplay = 'CCLASSE'
          LookupSource = DTM_A007RH.DTS_080
          TabOrder = 3
          OnChange = DBL_NIDTAGSLR_4Change
        end
        object DBL_NIDTBXSLR_2: TRxDBLookupCombo
          Left = 11
          Top = 113
          Width = 271
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXSLR'
          LookupDisplay = 'CDESCRISLR'
          LookupSource = DTM_A007RH.DTS_092
          TabOrder = 2
          OnChange = DBL_NIDTBXSLR_2Change
        end
        object DED_CULTCRGAPS: TDBEdit
          Left = 11
          Top = 68
          Width = 483
          Height = 21
          DataField = 'CULTCRGAPS'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 1
        end
        object DED_NPERBENEFI1: TDBEdit
          Left = 467
          Top = 22
          Width = 27
          Height = 21
          DataField = 'NPERBENEFI'
          DataSource = DTM_A007RH.DTS_099
          Enabled = False
          TabOrder = 6
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Concessão de Pensão'
      ImageIndex = 8
      OnShow = TabSheet9Show
      object LMDGroupBox12: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label55: TLabel
          Left = 16
          Top = 48
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label60: TLabel
          Left = 12
          Top = 8
          Width = 99
          Height = 13
          Caption = 'Origem Pensão(CPF)'
        end
        object Label61: TLabel
          Left = 119
          Top = 8
          Width = 168
          Height = 13
          Caption = 'Nome Servidor (Origem de Pensão)'
        end
        object Label65: TLabel
          Left = 263
          Top = 48
          Width = 81
          Height = 13
          Caption = '  Base de Cálculo'
        end
        object Label68: TLabel
          Left = 403
          Top = 8
          Width = 65
          Height = 13
          Caption = 'Data de Óbto'
        end
        object Label69: TLabel
          Left = 372
          Top = 48
          Width = 60
          Height = 13
          Caption = '  Parentesco'
        end
        object Label70: TLabel
          Left = 476
          Top = 48
          Width = 11
          Height = 13
          Caption = '%'
        end
        object DED_CNOMEGRL: TDBEdit
          Left = 120
          Top = 22
          Width = 279
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CNOMEGRL'
          DataSource = DTM_A007RH.DTS_103_1
          TabOrder = 1
        end
        object DED_NBSPENSAO: TDBEdit
          Left = 262
          Top = 62
          Width = 108
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'NBSPENSAO'
          DataSource = DTM_A007RH.DTS_103_1
          TabOrder = 4
        end
        object DBL_NIDTBXGRP: TRxDBLookupCombo
          Left = 371
          Top = 62
          Width = 95
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXGRP'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXGRP'
          LookupDisplay = 'CNOMEGRP'
          LookupSource = DTM_A007RH.DTS_026
          TabOrder = 5
        end
        object DED_NPERBENEFI: TDBEdit
          Left = 466
          Top = 62
          Width = 27
          Height = 21
          DataField = 'NPERBENEFI'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 6
        end
        object DED_CULTIMOCRG: TDBEdit
          Left = 11
          Top = 62
          Width = 250
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CULTIMOCRG'
          DataSource = DTM_A007RH.DTS_103_1
          TabOrder = 3
        end
        object DED_DDTOBITO: TDBEdit
          Left = 400
          Top = 22
          Width = 93
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'DDTOBITO'
          DataSource = DTM_A007RH.DTS_103_1
          TabOrder = 2
        end
        object CBE_CCPFCNPJ: TComboEdit
          Left = 9
          Top = 22
          Width = 110
          Height = 21
          ButtonHint = 'Pesquisar Logradouro'
          CharCase = ecUpperCase
          EditMask = '999.999.999-99;0;'
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
          MaxLength = 14
          NumGlyphs = 1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnButtonClick = CBE_CNROATOButtonClick
          OnExit = CBE_CCPFCNPJExit
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Disposição com Onus'
      ImageIndex = 9
      OnShow = TabSheet10Show
      object LMDGroupBox13: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label71: TLabel
          Left = 13
          Top = 48
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label72: TLabel
          Left = 115
          Top = 48
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label73: TLabel
          Left = 11
          Top = 88
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label74: TLabel
          Left = 272
          Top = 88
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label75: TLabel
          Left = 11
          Top = 130
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label77: TLabel
          Left = 13
          Top = 8
          Width = 176
          Height = 13
          Caption = '  Orgão de Origem da Pessoa Publica'
        end
        object Label78: TLabel
          Left = 385
          Top = 130
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label79: TLabel
          Left = 336
          Top = 130
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label80: TLabel
          Left = 284
          Top = 130
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object DBL_NIDTBXTCR_7: TRxDBLookupCombo
          Left = 11
          Top = 62
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 1
          OnChange = DBL_NIDTBXTCR_7Change
        end
        object DBL_NIDCADCRG_8: TRxDBLookupCombo
          Left = 117
          Top = 62
          Width = 377
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 2
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_7: TDBEdit
          Left = 11
          Top = 102
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 3
        end
        object DED_CDESCRISGO_7: TDBEdit
          Left = 272
          Top = 102
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 4
        end
        object DED_CORGAOORI: TDBEdit
          Left = 11
          Top = 22
          Width = 482
          Height = 21
          DataField = 'CORGAOORI'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 0
        end
        object DED_NVALORSLR_3: TDBEdit
          Left = 384
          Top = 143
          Width = 110
          Height = 21
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 8
        end
        object DBL_NIDTAGSLR_7: TRxDBLookupCombo
          Left = 335
          Top = 143
          Width = 49
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGSLR'
          LookupDisplay = 'NNIVEL'
          LookupSource = DTM_A007RH.DTS_080_1
          TabOrder = 7
          OnChange = DBL_NIDTAGSLR_7Change
        end
        object DBL_NIDTAGSLR_6: TRxDBLookupCombo
          Left = 283
          Top = 143
          Width = 51
          Height = 21
          DropDownCount = 8
          DataField = 'CCLASSE'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'CCLASSE'
          LookupDisplay = 'CCLASSE'
          LookupSource = DTM_A007RH.DTS_080
          TabOrder = 6
          OnChange = DBL_NIDTAGSLR_6Change
        end
        object DBL_NIDTBXSLR_3: TRxDBLookupCombo
          Left = 11
          Top = 143
          Width = 271
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXSLR'
          LookupDisplay = 'CDESCRISLR'
          LookupSource = DTM_A007RH.DTS_092
          TabOrder = 5
          OnChange = DBL_NIDTBXSLR_3Change
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Disposição sem Onus'
      ImageIndex = 10
      OnShow = TabSheet11Show
      object LMDGroupBox14: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label76: TLabel
          Left = 13
          Top = 48
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label81: TLabel
          Left = 115
          Top = 48
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label82: TLabel
          Left = 11
          Top = 88
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label83: TLabel
          Left = 272
          Top = 88
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label85: TLabel
          Left = 13
          Top = 8
          Width = 176
          Height = 13
          Caption = '  Orgão de Origem da Pessoa Publica'
        end
        object DBL_NIDTBXTCR_8: TRxDBLookupCombo
          Left = 11
          Top = 62
          Width = 105
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXTCR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXTCR'
          LookupDisplay = 'CDESCRITCR'
          LookupSource = DTM_A007RH.DTS_095
          TabOrder = 1
          OnChange = DBL_NIDTBXTCR_8Change
        end
        object DBL_NIDCADCRG_9: TRxDBLookupCombo
          Left = 117
          Top = 62
          Width = 377
          Height = 21
          DropDownCount = 8
          DataField = 'NIDCADCRG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDCADCRG'
          LookupDisplay = 'CDESCRICRG'
          LookupSource = DTM_A007RH.DTS_073
          TabOrder = 2
          OnChange = DBL_NIDCADCRGChange
        end
        object DED_CDESCRIGRO_8: TDBEdit
          Left = 11
          Top = 102
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_086
          TabOrder = 3
        end
        object DED_CDESCRISGO_8: TDBEdit
          Left = 272
          Top = 102
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_091
          TabOrder = 4
        end
        object DED_CORGAOORI_1: TDBEdit
          Left = 11
          Top = 22
          Width = 482
          Height = 21
          DataField = 'CORGAOORI'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 0
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Licença'
      ImageIndex = 11
      OnShow = TabSheet12Show
      object LMDGroupBox15: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label91: TLabel
          Left = 13
          Top = 8
          Width = 79
          Height = 13
          Caption = 'Data de Termino'
        end
        object DBD_DDATAFIM_2: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 0
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Afastamento'
      ImageIndex = 12
      OnShow = TabSheet13Show
      object LMDGroupBox16: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label86: TLabel
          Left = 13
          Top = 8
          Width = 79
          Height = 13
          Caption = 'Data de Termino'
        end
        object DBD_DDATAFIM_3: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 0
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Repreensão'
      ImageIndex = 13
      OnShow = TabSheet14Show
      object LMDGroupBox17: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label87: TLabel
          Left = 13
          Top = 8
          Width = 38
          Height = 13
          Caption = '  Motivo'
        end
        object DBM_CMOTIVO: TDBMemo
          Left = 11
          Top = 22
          Width = 482
          Height = 89
          DataField = 'CMOTIVO'
          DataSource = DTM_A007RH.DTS_099
          MaxLength = 250
          TabOrder = 0
        end
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Suspensão'
      ImageIndex = 14
      OnShow = TabSheet15Show
      object LMDGroupBox18: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label88: TLabel
          Left = 13
          Top = 49
          Width = 38
          Height = 13
          Caption = '  Motivo'
        end
        object Label89: TLabel
          Left = 13
          Top = 8
          Width = 79
          Height = 13
          Caption = 'Data de Termino'
        end
        object DBM_CMOTIVO_1: TDBMemo
          Left = 11
          Top = 63
          Width = 482
          Height = 89
          DataField = 'CMOTIVO'
          DataSource = DTM_A007RH.DTS_099
          MaxLength = 250
          TabOrder = 1
        end
        object DBD_DDATAFIM_4: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          DialogTitle = 'Selecione a Data'
          NumGlyphs = 2
          TabOrder = 0
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Vantagens'
      ImageIndex = 15
      OnShow = TabSheet16Show
      object LMDGroupBox19: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label92: TLabel
          Left = 13
          Top = 8
          Width = 118
          Height = 13
          Caption = '  Descrição da Vantagem'
        end
        object Label96: TLabel
          Left = 350
          Top = 8
          Width = 11
          Height = 13
          Caption = '%'
        end
        object Label97: TLabel
          Left = 387
          Top = 8
          Width = 81
          Height = 13
          Caption = '  Base de Cálculo'
        end
        object DBE_CDESCRIVTG: TDBEdit
          Left = 11
          Top = 22
          Width = 335
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIVTG'
          DataSource = DTM_A007RH.DTS_098
          TabOrder = 0
        end
        object DED_NPERVANTAG: TDBEdit
          Left = 347
          Top = 22
          Width = 35
          Height = 21
          DataField = 'NPERVANTAG'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 1
          OnExit = DED_NPERVANTAGExit
        end
        object DED_NVALORSLR_4: TDBEdit
          Left = 383
          Top = 22
          Width = 110
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_098
          TabOrder = 2
        end
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Transferência Interna'
      ImageIndex = 16
      OnShow = TabSheet17Show
      object LMDGroupBox20: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label90: TLabel
          Left = 13
          Top = 10
          Width = 36
          Height = 13
          Caption = '  Orgão'
        end
        object Label93: TLabel
          Left = 257
          Top = 10
          Width = 75
          Height = 13
          Caption = '  Departamento'
        end
        object Label94: TLabel
          Left = 14
          Top = 55
          Width = 32
          Height = 13
          Caption = '  Setor'
        end
        object Label95: TLabel
          Left = 257
          Top = 55
          Width = 90
          Height = 13
          Caption = '  Local de Trabalho'
        end
        object DBL_NIDTBXORG: TRxDBLookupCombo
          Left = 11
          Top = 24
          Width = 243
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXORG'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXORG'
          LookupDisplay = 'CDESCRIORG'
          LookupSource = DTM_A007RH.DTS_088
          TabOrder = 0
          OnChange = DBL_NIDTBXORGChange
        end
        object DBL_NIDTAGODP: TRxDBLookupCombo
          Left = 255
          Top = 24
          Width = 239
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGODP'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGODP'
          LookupDisplay = 'CDESCRIDPT'
          LookupSource = DTM_A007RH.DTS_078
          TabOrder = 1
          OnChange = DBL_NIDTAGODPChange
        end
        object DBL_NIDTAGDST: TRxDBLookupCombo
          Left = 11
          Top = 69
          Width = 243
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGDST'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGDST'
          LookupDisplay = 'CDESCRISET'
          LookupSource = DTM_A007RH.DTS_076
          TabOrder = 2
        end
        object DBL_NIDTBXLTB: TRxDBLookupCombo
          Left = 255
          Top = 69
          Width = 239
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXLTB'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXLTB'
          LookupDisplay = 'CDESCRILTB'
          LookupSource = DTM_A007RH.DTS_087
          TabOrder = 3
        end
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'Disponibilidade'
      ImageIndex = 17
      OnShow = TabSheet18Show
      object LMDGroupBox21: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label98: TLabel
          Left = 13
          Top = 10
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label99: TLabel
          Left = 115
          Top = 10
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label100: TLabel
          Left = 11
          Top = 50
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label101: TLabel
          Left = 272
          Top = 50
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label102: TLabel
          Left = 11
          Top = 92
          Width = 38
          Height = 13
          Caption = '  Motivo'
        end
        object DED_CDESCRIGRO_9: TDBEdit
          Left = 11
          Top = 64
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 2
        end
        object DED_CDESCRISGO_9: TDBEdit
          Left = 272
          Top = 64
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 3
        end
        object DBM_CMOTIVO_2: TDBMemo
          Left = 11
          Top = 106
          Width = 483
          Height = 63
          DataField = 'CMOTIVO'
          DataSource = DTM_A007RH.DTS_099
          MaxLength = 250
          TabOrder = 4
        end
        object DED_CDESCRITCR: TDBEdit
          Left = 11
          Top = 24
          Width = 101
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRITCR'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 0
        end
        object DED_CDESCRICRG_1: TDBEdit
          Left = 112
          Top = 24
          Width = 382
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRICRG'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 1
        end
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'Ferias'
      ImageIndex = 18
      OnShow = TabSheet19Show
      object LMDGroupBox22: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        BackFX.AlphaBlend.Strength = 0.600000023841858
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label103: TLabel
          Left = 13
          Top = 11
          Width = 105
          Height = 13
          Caption = '  Periodo de Aquisição'
        end
        object Label104: TLabel
          Left = 105
          Top = 30
          Width = 17
          Height = 13
          Caption = 'Até'
        end
        object Label105: TLabel
          Left = 13
          Top = 56
          Width = 84
          Height = 13
          Caption = '  Periodo de Gozo'
        end
        object Label106: TLabel
          Left = 105
          Top = 75
          Width = 17
          Height = 13
          Caption = 'Até'
        end
        object Label107: TLabel
          Left = 13
          Top = 100
          Width = 51
          Height = 13
          Caption = '  Qtd. Dias'
        end
        object DBD_DDTAQSINI: TDBDateEdit
          Left = 12
          Top = 26
          Width = 89
          Height = 21
          DataField = 'DDTAQSINI'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 0
          YearDigits = dyFour
        end
        object DBD_DDTAQSFIM: TDBDateEdit
          Left = 125
          Top = 26
          Width = 89
          Height = 21
          DataField = 'DDTAQSFIM'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 1
          YearDigits = dyFour
        end
        object DBD_DDATAINI: TDBDateEdit
          Left = 12
          Top = 71
          Width = 89
          Height = 21
          DataField = 'DDATAINI'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 2
          YearDigits = dyFour
        end
        object DBD_DDATAFIM_5: TDBDateEdit
          Left = 125
          Top = 71
          Width = 89
          Height = 21
          DataField = 'DDATAFIM'
          DataSource = DTM_A007RH.DTS_099
          NumGlyphs = 2
          TabOrder = 3
          YearDigits = dyFour
        end
        object DED_CLC_DIASFER: TDBEdit
          Left = 12
          Top = 116
          Width = 54
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CLC_DIASFER'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 4
        end
      end
    end
    object TabSheet20: TTabSheet
      Caption = 'Promoção'
      ImageIndex = 19
      OnShow = TabSheet20Show
      object LMDGroupBox23: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 178
        Align = alClient
        Bevel.StyleInner = bvFrameLowered
        Bevel.BorderColor = cl3DLight
        Bevel.LightColor = clGray
        Bevel.Mode = bmCustom
        Bevel.ShadowColor = clSilver
        Bevel.StandardStyle = lsFrameInset
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
        object Label108: TLabel
          Left = 13
          Top = 10
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label109: TLabel
          Left = 115
          Top = 10
          Width = 35
          Height = 13
          Caption = '  Cargo'
        end
        object Label110: TLabel
          Left = 11
          Top = 50
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label111: TLabel
          Left = 272
          Top = 50
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label112: TLabel
          Left = 385
          Top = 93
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label113: TLabel
          Left = 336
          Top = 93
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label114: TLabel
          Left = 284
          Top = 93
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object Label115: TLabel
          Left = 11
          Top = 93
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object DED_CDESCRIGRO_10: TDBEdit
          Left = 11
          Top = 64
          Width = 260
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRIGRO'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 2
        end
        object DED_CDESCRISGO_10: TDBEdit
          Left = 272
          Top = 64
          Width = 222
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRISGO'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 3
        end
        object DED_CDESCRITCR_1: TDBEdit
          Left = 11
          Top = 24
          Width = 101
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRITCR'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 0
        end
        object DED_CDESCRICRG_3: TDBEdit
          Left = 112
          Top = 24
          Width = 382
          Height = 21
          TabStop = False
          Color = 14281964
          DataField = 'CDESCRICRG'
          DataSource = DTM_A007RH.DTS_073_1
          TabOrder = 1
        end
        object DED_NVALORSLR_5: TDBEdit
          Left = 385
          Top = 107
          Width = 109
          Height = 21
          DataField = 'NVALORSLR'
          DataSource = DTM_A007RH.DTS_099
          TabOrder = 7
        end
        object DBL_NIDTAGSLR_9: TRxDBLookupCombo
          Left = 335
          Top = 107
          Width = 49
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTAGSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTAGSLR'
          LookupDisplay = 'NNIVEL'
          LookupSource = DTM_A007RH.DTS_080_1
          TabOrder = 6
          OnChange = DBL_NIDTAGSLR_9Change
        end
        object DBL_NIDTAGSLR_8: TRxDBLookupCombo
          Left = 283
          Top = 107
          Width = 51
          Height = 21
          DropDownCount = 8
          DataField = 'CCLASSE'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'CCLASSE'
          LookupDisplay = 'CCLASSE'
          LookupSource = DTM_A007RH.DTS_080
          TabOrder = 5
          OnChange = DBL_NIDTAGSLR_8Change
        end
        object DBL_NIDTBXSLR_4: TRxDBLookupCombo
          Left = 11
          Top = 107
          Width = 271
          Height = 21
          DropDownCount = 8
          DataField = 'NIDTBXSLR'
          DataSource = DTM_A007RH.DTS_099
          LookupField = 'NIDTBXSLR'
          LookupDisplay = 'CDESCRISLR'
          LookupSource = DTM_A007RH.DTS_092
          TabOrder = 4
          OnChange = DBL_NIDTBXSLR_4Change
        end
      end
    end
  end
  object LMDGroupBox5: TLMDGroupBox
    Left = 145
    Top = 66
    Width = 367
    Height = 102
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Ato de Revogação  '
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
    TabOrder = 4
    object LBL_EFEITRVG: TLabel
      Left = 124
      Top = 18
      Width = 39
      Height = 13
      Caption = '  Efeitos'
    end
    object LBL_TPMOVTO: TLabel
      Left = 13
      Top = 58
      Width = 113
      Height = 13
      Caption = '  Tipo de Movimentação'
    end
    object DBT_CDESCRITAT_1: TDBText
      Left = 14
      Top = 19
      Width = 100
      Height = 13
      AutoSize = True
      DataField = 'CDESCRITAT'
      DataSource = DTM_A007RH.DTS_069_1
    end
    object DED_DDTEFEITOS_1: TDBEdit
      Left = 124
      Top = 32
      Width = 113
      Height = 21
      Color = 14281964
      DataField = 'DDTEFEITOS'
      DataSource = DTM_A007RH.DTS_069_1
      TabOrder = 0
    end
    object DBL_NIDTBXTPM_1: TRxDBLookupCombo
      Left = 11
      Top = 72
      Width = 348
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTPMRVG'
      DataSource = DTM_A007RH.DTS_099
      LookupField = 'NIDTBXTPM'
      LookupDisplay = 'CDESCRITPM'
      LookupSource = DTM_A007RH.DTS_096_1
      TabOrder = 1
    end
    object CBE_CNROATO_1: TComboEdit
      Left = 11
      Top = 32
      Width = 113
      Height = 21
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00880000000000
        08800000000087888888888808000000000087FFBFFFB00007008000000087BF
        FFBF078870788000000087FF8040788E77088000000087F84C40778878088000
        000087F7CC407E8878088000000087B686607EE877088000000087F6F8220788
        70888000000087F6F8C6800008888000000087F86F6268F808888000000087FF
        86668FB808888000000087FFBFFFB00008888000000087BFFFBFF8F788888000
        000087FFBFFFB878888880000000877777777788888880000000888888888888
        888880000000}
      NumGlyphs = 1
      TabOrder = 2
      OnButtonClick = CBE_CNROATOButtonClick
      OnChange = CBE_CNROATOChange
      OnExit = CBE_CNROATO_1Exit
    end
  end
end
