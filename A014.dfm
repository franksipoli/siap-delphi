object FRM_A014: TFRM_A014
  Left = 266
  Top = 145
  ActiveControl = EDT_VALOR
  BorderStyle = bsToolWindow
  Caption = 'Localizar'
  ClientHeight = 116
  ClientWidth = 269
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object EDT_VALOR: TEdit
    Left = 0
    Top = 0
    Width = 269
    Height = 21
    TabOrder = 0
    OnKeyDown = EDT_VALORKeyDown
  end
  object DBG_LOCALIZA: TDBGrid
    Left = 0
    Top = 22
    Width = 269
    Height = 94
    Align = alBottom
    DataSource = DTS_LOCALIZA
    FixedColor = clSilver
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBG_LOCALIZADrawColumnCell
    OnDblClick = DBG_LOCALIZADblClick
    Columns = <
      item
        Expanded = False
        Width = 235
        Visible = True
      end>
  end
  object QRY_LOCALIZA: TOraQuery
    AutoCommit = False
    Left = 236
    Top = 24
  end
  object DTS_LOCALIZA: TOraDataSource
    AutoEdit = False
    DataSet = QRY_LOCALIZA
    Left = 236
    Top = 56
  end
end
