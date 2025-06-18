object MutasiLipatFrm: TMutasiLipatFrm
  Left = 228
  Top = 10
  Width = 812
  Height = 618
  Caption = 'MutasiLipatFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
    Height = 41
    Align = alTop
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Refresh'
      ModalResult = 4
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 804
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      804
      41)
    object BitBtn1: TBitBtn
      Left = 716
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 0
      Kind = bkClose
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 41
    Width = 804
    Height = 502
    Selected.Strings = (
      'KD_KONSTRUKSI'#9'22'#9'KONSTRUKSI'
      'KD_CORAK'#9'17'#9'CORAK'#9'F'
      'MUTU'#9'5'#9'MUTU'
      'SATUAN'#9'8'#9'SATUAN'
      'AWAL'#9'4'#9'Awal'#9'F'#9'MASUK'
      'JAHIT'#9'4'#9'Jahit'#9'F'#9'MASUK'
      'JAHIT_SUPLIER'#9'5'#9'Suplier'#9'F'#9'MASUK'
      'LIPAT'#9'6'#9'Kemas'#9'F'#9'KELUAR'
      'LIPAT_SUPLIER'#9'6'#9'Suplier'#9'F'#9'KELUAR'
      'AKHIR'#9'6'#9'AKHIR')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = 8978431
    DataSource = dsQData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    UseTFields = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
  end
  object QData: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db05.vgd_stok42_lipat')
    QBEDefinition.QBEFieldDefs = {
      04000000090000000D0000004B445F4B4F4E535452554B534901000000000008
      0000004B445F434F52414B010000000000040000004D55545501000000000006
      00000053415455414E010000000000050000004A414849540100000000000D00
      00004A414849545F5355504C49455201000000000005000000414B4849520100
      00000000050000004C495041540100000000000D0000004C495041545F535550
      4C494552010000000000}
    Session = DMFrm.OS
    Left = 128
    Top = 8
    object QDataKD_KONSTRUKSI: TStringField
      DisplayLabel = 'KONSTRUKSI'
      DisplayWidth = 22
      FieldName = 'KD_KONSTRUKSI'
      Size = 50
    end
    object QDataKD_CORAK: TStringField
      DisplayLabel = 'CORAK'
      DisplayWidth = 17
      FieldName = 'KD_CORAK'
      Size = 50
    end
    object QDataMUTU: TStringField
      DisplayWidth = 5
      FieldName = 'MUTU'
      Size = 30
    end
    object QDataSATUAN: TStringField
      DisplayWidth = 8
      FieldName = 'SATUAN'
      Size = 10
    end
    object QDataAWAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AWAL'
      DisplayFormat = '#.#,#; (#.#,#)'
      Calculated = True
    end
    object QDataJAHIT: TFloatField
      FieldName = 'JAHIT'
      DisplayFormat = '#.#,#; (#.#,#)'
    end
    object QDataJAHIT_SUPLIER: TFloatField
      FieldName = 'JAHIT_SUPLIER'
      DisplayFormat = '#.#,#; (#.#,#)'
    end
    object QDataLIPAT: TFloatField
      FieldName = 'LIPAT'
      DisplayFormat = '#.#,#; (#.#,#)'
    end
    object QDataLIPAT_SUPLIER: TFloatField
      FieldName = 'LIPAT_SUPLIER'
      DisplayFormat = '#.#,#; (#.#,#)'
    end
    object QDataAKHIR: TFloatField
      FieldName = 'AKHIR'
      DisplayFormat = '#.#,#; (#.#,#)'
    end
  end
  object dsQData: TwwDataSource
    DataSet = QData
    Left = 160
    Top = 8
  end
end
