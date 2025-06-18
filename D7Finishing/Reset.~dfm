object ResetFrm: TResetFrm
  Left = 597
  Top = 282
  BorderStyle = bsDialog
  Caption = 'Reset'
  ClientHeight = 118
  ClientWidth = 220
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 32
    Width = 137
    Height = 57
    Caption = 'Reset Tabel'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Animate1: TAnimate
    Left = 40
    Top = 112
    Width = 137
    Height = 60
    CommonAVI = aviCopyFiles
    StopFrame = 31
    Visible = False
  end
  object GRItem: TOracleQuery
    SQL.Strings = (
      'begin'
      '  commit;'
      '  dbms_refresh.refresh('#39'IPISMA_DB2.KLEGO_GR'#39');'
      '  commit;'
      'end;')
    Session = DMFrm.OS
    Left = 104
    Top = 120
  end
end
