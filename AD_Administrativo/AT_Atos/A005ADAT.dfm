object FRM_A005ADAT: TFRM_A005ADAT
  Left = 150
  Top = 74
  Width = 564
  Height = 407
  Caption = 'FRM_A005ADAT'
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
      Left = 187
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
    object DBL_NIDTBXTPM: TRxDBLookupCombo
      Left = 189
      Top = 29
      Width = 308
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXTPM'
      DataSource = DTM_A005ADAT.DTS_099
      LookupField = 'NIDTBXTPM'
      LookupDisplay = 'CDESCRITPM'
      LookupSource = DTM_A005ADAT.DTS_096
      TabOrder = 1
      OnChange = DBL_NIDTBXTPMChange
    end
    object DBL_NIDTBXGMV: TRxDBLookupCombo
      Left = 11
      Top = 29
      Width = 177
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTBXGMV'
      DataSource = DTM_A005ADAT.DTS_099
      LookupField = 'NIDTBXGMV'
      LookupDisplay = 'CDESCRIGMV'
      LookupSource = DTM_A005ADAT.DTS_084
      TabOrder = 0
      OnChange = DBL_NIDTBXGMVChange
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
    object Label6: TLabel
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
      DataSource = DTM_A005ADAT.DTS_069
    end
    object DED_DDTEFEITOS: TDBEdit
      Left = 11
      Top = 72
      Width = 113
      Height = 21
      Color = 14281964
      DataField = 'DDTEFEITOS'
      DataSource = DTM_A005ADAT.DTS_069
      TabOrder = 0
    end
    object CBE_ATOCONC: TComboEdit
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
      OnButtonClick = CBE_ATOCONCButtonClick
      OnChange = CBE_ATOCONCChange
      OnExit = CBE_ATOCONCExit
    end
  end
  object PGC_MOV: TPageControlEx
    Left = 9
    Top = 175
    Width = 502
    Height = 198
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Nomeação'
      TabVisible = False
      object LMDGroupBox2: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label11: TLabel
          Left = 272
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
          Left = 412
          Top = 8
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
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo5: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 299
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 385
          Top = 102
          Width = 109
          Height = 21
          TabOrder = 4
        end
        object RxDBLookupCombo10: TRxDBLookupCombo
          Left = 335
          Top = 102
          Width = 49
          Height = 21
          DropDownCount = 8
          TabOrder = 5
        end
        object RxDBLookupCombo11: TRxDBLookupCombo
          Left = 283
          Top = 102
          Width = 51
          Height = 21
          DropDownCount = 8
          TabOrder = 6
        end
        object RxDBComboEdit2: TRxDBComboEdit
          Left = 411
          Top = 22
          Width = 85
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
          TabOrder = 7
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 11
          Top = 102
          Width = 271
          Height = 21
          DropDownCount = 8
          TabOrder = 8
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contratação'
      ImageIndex = 1
      TabVisible = False
      object LMDGroupBox4: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
          Left = 11
          Top = 47
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label18: TLabel
          Left = 272
          Top = 47
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label19: TLabel
          Left = 11
          Top = 88
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label20: TLabel
          Left = 385
          Top = 88
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label22: TLabel
          Left = 336
          Top = 86
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label25: TLabel
          Left = 284
          Top = 86
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object Label21: TLabel
          Left = 299
          Top = 8
          Width = 70
          Height = 13
          Caption = '  Data Termino'
        end
        object Label26: TLabel
          Left = 386
          Top = 8
          Width = 96
          Height = 13
          Caption = '  Agente Integrador'
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo7: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 185
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 385
          Top = 102
          Width = 109
          Height = 21
          TabOrder = 4
        end
        object RxDBLookupCombo8: TRxDBLookupCombo
          Left = 335
          Top = 102
          Width = 49
          Height = 21
          DropDownCount = 8
          TabOrder = 5
        end
        object RxDBLookupCombo9: TRxDBLookupCombo
          Left = 283
          Top = 102
          Width = 51
          Height = 21
          DropDownCount = 8
          TabOrder = 6
        end
        object DBDateEdit1: TDBDateEdit
          Left = 297
          Top = 22
          Width = 86
          Height = 21
          NumGlyphs = 2
          TabOrder = 7
          YearDigits = dyFour
        end
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 384
          Top = 22
          Width = 109
          Height = 21
          DropDownCount = 8
          TabOrder = 8
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 11
          Top = 102
          Width = 271
          Height = 21
          DropDownCount = 8
          TabOrder = 9
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Readaptação'
      ImageIndex = 2
      TabVisible = False
      object LMDGroupBox6: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo13: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo14: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Recondução'
      ImageIndex = 3
      TabVisible = False
      object LMDGroupBox7: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo15: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo16: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Aproveitamento'
      ImageIndex = 4
      TabVisible = False
      object LMDGroupBox8: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo17: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo18: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Reenquadramento'
      ImageIndex = 5
      TabVisible = False
      object LMDGroupBox9: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo19: TRxDBLookupCombo
          Left = 11
          Top = 22
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo20: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit20: TDBEdit
          Left = 11
          Top = 61
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit21: TDBEdit
          Left = 272
          Top = 61
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Renovação de Contrato'
      ImageIndex = 6
      TabVisible = False
      object LMDGroupBox10: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBDateEdit2: TDBDateEdit
          Left = 11
          Top = 24
          Width = 93
          Height = 21
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
      TabVisible = False
      object LMDGroupBox11: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object Label48: TLabel
          Left = 13
          Top = 48
          Width = 73
          Height = 13
          Caption = '  Tipo de Cargo'
        end
        object Label49: TLabel
          Left = 115
          Top = 48
          Width = 67
          Height = 13
          Caption = '  Último Cargo'
        end
        object Label50: TLabel
          Left = 11
          Top = 88
          Width = 96
          Height = 13
          Caption = '  Grupo Ocupacional'
        end
        object Label51: TLabel
          Left = 272
          Top = 88
          Width = 114
          Height = 13
          Caption = '  SubGrupo Ocupacional'
        end
        object Label52: TLabel
          Left = 11
          Top = 129
          Width = 75
          Height = 13
          Caption = '  Tabela Salarial'
        end
        object Label53: TLabel
          Left = 12
          Top = 8
          Width = 89
          Height = 13
          Caption = 'Nrº Aposentadoria'
        end
        object Label54: TLabel
          Left = 113
          Top = 8
          Width = 87
          Height = 13
          Caption = '  Tipo de Beneficio'
        end
        object Label62: TLabel
          Left = 385
          Top = 129
          Width = 30
          Height = 13
          Caption = '  Valor'
        end
        object Label63: TLabel
          Left = 336
          Top = 129
          Width = 29
          Height = 13
          Caption = '  Nivel'
        end
        object Label64: TLabel
          Left = 284
          Top = 129
          Width = 37
          Height = 13
          Caption = '  Classe'
        end
        object RxDBLookupCombo21: TRxDBLookupCombo
          Left = 11
          Top = 62
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo22: TRxDBLookupCombo
          Left = 112
          Top = 62
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit23: TDBEdit
          Left = 11
          Top = 102
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit24: TDBEdit
          Left = 272
          Top = 102
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit26: TDBEdit
          Left = 11
          Top = 22
          Width = 100
          Height = 21
          TabOrder = 4
        end
        object RxDBLookupCombo23: TRxDBLookupCombo
          Left = 112
          Top = 22
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 5
        end
        object DBEdit25: TDBEdit
          Left = 385
          Top = 143
          Width = 109
          Height = 21
          TabOrder = 6
        end
        object RxDBLookupCombo26: TRxDBLookupCombo
          Left = 335
          Top = 143
          Width = 49
          Height = 21
          DropDownCount = 8
          TabOrder = 7
        end
        object RxDBLookupCombo27: TRxDBLookupCombo
          Left = 283
          Top = 143
          Width = 51
          Height = 21
          DropDownCount = 8
          TabOrder = 8
        end
        object RxDBLookupCombo24: TRxDBLookupCombo
          Left = 10
          Top = 143
          Width = 272
          Height = 21
          DropDownCount = 8
          TabOrder = 9
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Concessão de Pensão'
      ImageIndex = 8
      TabVisible = False
      object LMDGroupBox12: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
          Width = 126
          Height = 13
          Caption = '  Cargo +  cdescriTcr + de'
        end
        object Label60: TLabel
          Left = 12
          Top = 8
          Width = 72
          Height = 13
          Caption = 'Origem Pensão'
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
        object RxDBComboEdit3: TRxDBComboEdit
          Left = 11
          Top = 22
          Width = 105
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
          TabOrder = 0
        end
        object DBEdit30: TDBEdit
          Left = 116
          Top = 22
          Width = 284
          Height = 21
          Color = 14281964
          TabOrder = 1
        end
        object DBEdit29: TDBEdit
          Left = 262
          Top = 62
          Width = 108
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object RxDBLookupCombo30: TRxDBLookupCombo
          Left = 371
          Top = 62
          Width = 95
          Height = 21
          DropDownCount = 8
          TabOrder = 3
        end
        object DBEdit33: TDBEdit
          Left = 466
          Top = 62
          Width = 27
          Height = 21
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 11
          Top = 62
          Width = 250
          Height = 21
          Color = 14281964
          TabOrder = 5
        end
        object DBEdit2: TDBEdit
          Left = 400
          Top = 22
          Width = 93
          Height = 21
          Color = 14281964
          TabOrder = 6
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Disposição com Onus'
      ImageIndex = 9
      TabVisible = False
      object LMDGroupBox13: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo31: TRxDBLookupCombo
          Left = 11
          Top = 62
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo32: TRxDBLookupCombo
          Left = 112
          Top = 62
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit34: TDBEdit
          Left = 11
          Top = 102
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit35: TDBEdit
          Left = 272
          Top = 102
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit36: TDBEdit
          Left = 11
          Top = 22
          Width = 482
          Height = 21
          TabOrder = 4
        end
        object DBEdit37: TDBEdit
          Left = 384
          Top = 143
          Width = 110
          Height = 21
          TabOrder = 5
        end
        object RxDBLookupCombo33: TRxDBLookupCombo
          Left = 335
          Top = 143
          Width = 49
          Height = 21
          DropDownCount = 8
          TabOrder = 6
        end
        object RxDBLookupCombo34: TRxDBLookupCombo
          Left = 283
          Top = 143
          Width = 51
          Height = 21
          DropDownCount = 8
          TabOrder = 7
        end
        object RxDBLookupCombo25: TRxDBLookupCombo
          Left = 11
          Top = 143
          Width = 271
          Height = 21
          DropDownCount = 8
          TabOrder = 8
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Disposição sem Onus'
      ImageIndex = 10
      TabVisible = False
      object LMDGroupBox14: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo35: TRxDBLookupCombo
          Left = 11
          Top = 62
          Width = 101
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo36: TRxDBLookupCombo
          Left = 112
          Top = 62
          Width = 382
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object DBEdit39: TDBEdit
          Left = 11
          Top = 102
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit40: TDBEdit
          Left = 272
          Top = 102
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit41: TDBEdit
          Left = 11
          Top = 22
          Width = 482
          Height = 21
          TabOrder = 4
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Licença'
      ImageIndex = 11
      TabVisible = False
      object LMDGroupBox15: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBDateEdit4: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Afastamento'
      ImageIndex = 12
      TabVisible = False
      object LMDGroupBox16: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBDateEdit5: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Repreensão'
      ImageIndex = 13
      TabVisible = False
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
        object DBMemo1: TDBMemo
          Left = 11
          Top = 22
          Width = 482
          Height = 89
          MaxLength = 250
          TabOrder = 0
        end
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Suspensão'
      ImageIndex = 14
      TabVisible = False
      object LMDGroupBox18: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBMemo2: TDBMemo
          Left = 11
          Top = 63
          Width = 482
          Height = 89
          MaxLength = 250
          TabOrder = 0
        end
        object DBDateEdit6: TDBDateEdit
          Left = 11
          Top = 22
          Width = 107
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Vantagens'
      ImageIndex = 15
      TabVisible = False
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
        object DBEdit42: TDBEdit
          Left = 11
          Top = 22
          Width = 335
          Height = 21
          Color = 14281964
          TabOrder = 0
        end
        object DBEdit44: TDBEdit
          Left = 347
          Top = 22
          Width = 35
          Height = 21
          TabOrder = 1
        end
        object DBEdit45: TDBEdit
          Left = 383
          Top = 22
          Width = 110
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Transferência Interna'
      ImageIndex = 16
      TabVisible = False
      object LMDGroupBox20: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object RxDBLookupCombo37: TRxDBLookupCombo
          Left = 11
          Top = 24
          Width = 243
          Height = 21
          DropDownCount = 8
          TabOrder = 0
        end
        object RxDBLookupCombo38: TRxDBLookupCombo
          Left = 255
          Top = 24
          Width = 239
          Height = 21
          DropDownCount = 8
          TabOrder = 1
        end
        object RxDBLookupCombo39: TRxDBLookupCombo
          Left = 11
          Top = 69
          Width = 243
          Height = 21
          DropDownCount = 8
          TabOrder = 2
        end
        object RxDBLookupCombo40: TRxDBLookupCombo
          Left = 255
          Top = 69
          Width = 239
          Height = 21
          DropDownCount = 8
          TabOrder = 3
        end
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'Disponibilidade'
      ImageIndex = 17
      TabVisible = False
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
        object DBEdit46: TDBEdit
          Left = 11
          Top = 64
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 0
        end
        object DBEdit47: TDBEdit
          Left = 272
          Top = 64
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 1
        end
        object DBMemo3: TDBMemo
          Left = 11
          Top = 106
          Width = 483
          Height = 63
          MaxLength = 250
          TabOrder = 2
        end
        object DBEdit48: TDBEdit
          Left = 11
          Top = 24
          Width = 101
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit49: TDBEdit
          Left = 112
          Top = 24
          Width = 382
          Height = 21
          Color = 14281964
          TabOrder = 4
        end
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'Férias'
      ImageIndex = 18
      TabVisible = False
      object LMDGroupBox22: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBDateEdit7: TDBDateEdit
          Left = 12
          Top = 26
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
          YearDigits = dyFour
        end
        object DBDateEdit8: TDBDateEdit
          Left = 125
          Top = 26
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
          YearDigits = dyFour
        end
        object DBDateEdit9: TDBDateEdit
          Left = 12
          Top = 71
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
          YearDigits = dyFour
        end
        object DBDateEdit10: TDBDateEdit
          Left = 125
          Top = 71
          Width = 89
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
          YearDigits = dyFour
        end
        object DBEdit50: TDBEdit
          Left = 12
          Top = 116
          Width = 54
          Height = 21
          Color = 14281964
          TabOrder = 4
        end
      end
    end
    object TabSheet20: TTabSheet
      Caption = 'Promoção'
      ImageIndex = 19
      TabVisible = False
      object LMDGroupBox23: TLMDGroupBox
        Left = 0
        Top = 0
        Width = 502
        Height = 196
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
        object DBEdit51: TDBEdit
          Left = 11
          Top = 64
          Width = 260
          Height = 21
          Color = 14281964
          TabOrder = 0
        end
        object DBEdit52: TDBEdit
          Left = 272
          Top = 64
          Width = 222
          Height = 21
          Color = 14281964
          TabOrder = 1
        end
        object DBEdit53: TDBEdit
          Left = 11
          Top = 24
          Width = 101
          Height = 21
          Color = 14281964
          TabOrder = 2
        end
        object DBEdit54: TDBEdit
          Left = 112
          Top = 24
          Width = 382
          Height = 21
          Color = 14281964
          TabOrder = 3
        end
        object DBEdit55: TDBEdit
          Left = 385
          Top = 107
          Width = 109
          Height = 21
          TabOrder = 4
        end
        object RxDBLookupCombo41: TRxDBLookupCombo
          Left = 335
          Top = 107
          Width = 49
          Height = 21
          DropDownCount = 8
          TabOrder = 5
        end
        object RxDBLookupCombo42: TRxDBLookupCombo
          Left = 283
          Top = 107
          Width = 51
          Height = 21
          DropDownCount = 8
          TabOrder = 6
        end
        object RxDBLookupCombo3: TRxDBLookupCombo
          Left = 11
          Top = 107
          Width = 271
          Height = 21
          DropDownCount = 8
          TabOrder = 7
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
    object Label8: TLabel
      Left = 124
      Top = 18
      Width = 39
      Height = 13
      Caption = '  Efeitos'
    end
    object Label4: TLabel
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
      DataSource = DTM_A005ADAT.DTS_069_1
    end
    object DED_DDTEFEITOS_1: TDBEdit
      Left = 124
      Top = 32
      Width = 113
      Height = 21
      Color = 14281964
      DataField = 'DDTEFEITOS'
      DataSource = DTM_A005ADAT.DTS_069_1
      TabOrder = 0
    end
    object DBL_NIDTBXTPM_1: TRxDBLookupCombo
      Left = 11
      Top = 72
      Width = 348
      Height = 21
      DropDownCount = 8
      DataField = 'NIDTPMRVG'
      DataSource = DTM_A005ADAT.DTS_099
      LookupField = 'NIDTBXTPM'
      LookupDisplay = 'CDESCRITPM'
      LookupSource = DTM_A005ADAT.DTS_096_1
      TabOrder = 1
    end
    object CBE_ATORVG: TComboEdit
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
      OnButtonClick = CBE_ATOCONCButtonClick
      OnChange = CBE_ATOCONCChange
      OnExit = CBE_ATORVGExit
    end
  end
end
