object FRM_A019UTAU: TFRM_A019UTAU
  Left = 223
  Top = 175
  ActiveControl = BTN_CANCEL
  BorderStyle = bsDialog
  Caption = '  Passagem de Acesso'
  ClientHeight = 120
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox3: TLMDGroupBox
    Left = 6
    Top = 4
    Width = 323
    Height = 79
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Passar Acesso  '
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
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 13
      Caption = 'De Usuário:'
    end
    object Label3: TLabel
      Left = 177
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Para Usuário:'
    end
    object DLC_ORIGEM: TRxDBLookupCombo
      Left = 10
      Top = 39
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'NIDTBL_U'
      LookupDisplay = 'CNOMEUSU'
      LookupSource = DTM_A019UTAU.DTS_051
      TabOrder = 0
      OnCloseUp = DLC_ORIGEMCloseUp
    end
    object DLC_DEST: TRxDBLookupCombo
      Left = 170
      Top = 39
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'NIDTBL_U'
      LookupDisplay = 'CNOMEUSU'
      LookupSource = DTM_A019UTAU.DTS_051_01
      TabOrder = 1
      OnCloseUp = DLC_ORIGEMCloseUp
    end
  end
  object BTN_PASS: TButton
    Left = 34
    Top = 89
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Passar Acesso'
    TabOrder = 1
    OnClick = BTN_PASSClick
  end
  object BTN_CANCEL: TButton
    Left = 224
    Top = 89
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BTN_CANCELClick
  end
  object PNL_AVISO: TPanel
    Left = 52
    Top = 14
    Width = 233
    Height = 41
    Caption = 'Passando acesso, aguarde...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object QRY_PASSARACESSO: TOraQuery
    SQL.Strings = (
      'begin'
      '  PASSARACESSO(:NIDUSUORIGEM, :NIDUSUDEST, :NIDOPERADOR);'
      'end;')
    Left = 156
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDUSUDEST'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPERADOR'
        ParamType = ptInput
      end>
  end
end
