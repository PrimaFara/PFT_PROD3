object DLFrm: TDLFrm
  Left = 266
  Top = 230
  BorderStyle = bsDialog
  Caption = 'Refresh'
  ClientHeight = 195
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 32
    Width = 137
    Height = 57
    Caption = 'DownLoad Master KLEGO'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Animate1: TAnimate
    Left = 200
    Top = 64
    Width = 272
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
    Left = 288
    Top = 56
  end
end
