object OrderJualFrm: TOrderJualFrm
  Left = 219
  Top = 146
  Width = 919
  Height = 734
  Caption = 'Kontrak Jasa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 113
    Height = 696
    Align = alLeft
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 881
    Top = 0
    Width = 22
    Height = 696
    Align = alClient
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 1
  end
  object PanelCenter: TPanel
    Left = 113
    Top = 0
    Width = 768
    Height = 696
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object QuickRep1: TQuickRep
      Left = -24
      Top = -56
      Width = 794
      Height = 559
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = QDetail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poLandscape
      Page.PaperSize = A5
      Page.Values = (
        127.000000000000000000
        1480.000000000000000000
        127.000000000000000000
        2100.000000000000000000
        200.000000000000000000
        127.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object PageHeaderBand1: TQRBand
        Left = 76
        Top = 48
        Width = 670
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          150.812500000000000000
          1772.708333333333000000)
        BandType = rbPageHeader
        object QRLabel1: TQRLabel
          Left = 0
          Top = 16
          Width = 99
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            0.000000000000000000
            42.333333333333330000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'PT.PISMATEX'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRDBText2: TQRDBText
          Left = 536
          Top = 32
          Width = 77
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            1418.166666666667000000
            84.666666666666670000
            203.729166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'NO_NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRLabel2: TQRLabel
          Left = 536
          Top = 16
          Width = 57
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            42.333333333333330000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Order'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object TitleBand1: TQRBand
        Left = 76
        Top = 105
        Width = 670
        Height = 136
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          359.833333333333300000
          1772.708333333333000000)
        BandType = rbTitle
        object QRDBText1: TQRDBText
          Left = 258
          Top = 0
          Width = 154
          Height = 26
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            68.791666666666670000
            682.625000000000000000
            0.000000000000000000
            407.458333333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'NAMA_TRANSAKSI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 16
        end
        object QRDBText3: TQRDBText
          Left = 584
          Top = 8
          Width = 27
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1545.166666666667000000
            21.166666666666670000
            71.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'TGL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 536
          Top = 8
          Width = 46
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            21.166666666666670000
            121.708333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tanggal'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 536
          Top = 58
          Width = 90
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            153.458333333333300000
            238.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'NO_KONTRAK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel4: TQRLabel
          Left = 536
          Top = 40
          Width = 70
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            105.833333333333300000
            185.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Kontrak'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel6: TQRLabel
          Left = 16
          Top = 72
          Width = 67
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            42.333333333333330000
            190.500000000000000000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Keterangan'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 16
          Top = 88
          Width = 457
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            100.541666666666700000
            42.333333333333340000
            232.833333333333400000
            1209.145833333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'KETERANGAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel13: TQRLabel
          Left = 16
          Top = 8
          Width = 52
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            42.333333333333330000
            21.166666666666670000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Rekanan'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText12: TQRDBText
          Left = 16
          Top = 24
          Width = 257
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            100.541666666666700000
            42.333333333333340000
            63.500000000000000000
            679.979166666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'REKANAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText21: TQRDBText
          Left = 536
          Top = 106
          Width = 66
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            280.458333333333300000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'NO_BUKTI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel16: TQRLabel
          Left = 536
          Top = 88
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1418.166666666667000000
            232.833333333333300000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'No. Bukti'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object ColumnHeaderBand1: TQRBand
        Left = 76
        Top = 241
        Width = 670
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        BeforePrint = ColumnHeaderBand1BeforePrint
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          60.854166666666670000
          1772.708333333333000000)
        BandType = rbColumnHeader
        object QRLabel8: TQRLabel
          Left = 8
          Top = 0
          Width = 20
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            21.166666666666670000
            0.000000000000000000
            52.916666666666670000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'NO'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 40
          Top = 0
          Width = 84
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            105.833333333333300000
            0.000000000000000000
            222.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'KONSTRUKSI'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel10: TQRLabel
          Left = 176
          Top = 0
          Width = 47
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            465.666666666666700000
            0.000000000000000000
            124.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'CORAK'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel11: TQRLabel
          Left = 288
          Top = 0
          Width = 37
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            762.000000000000000000
            0.000000000000000000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'MUTU'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel12: TQRLabel
          Left = 344
          Top = 0
          Width = 53
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            910.166666666666700000
            0.000000000000000000
            140.229166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'SATUAN'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object qrlHarga: TQRLabel
          Left = 484
          Top = 0
          Width = 27
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1280.583333333333000000
            0.000000000000000000
            71.437500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QTY'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel5: TQRLabel
          Left = 608
          Top = 0
          Width = 37
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1608.666666666667000000
            0.000000000000000000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'JENIS'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 527
          Top = 0
          Width = 72
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1394.354166666667000000
            0.000000000000000000
            190.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'SUB TOTAL'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel17: TQRLabel
          Left = 424
          Top = 0
          Width = 47
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1121.833333333333000000
            0.000000000000000000
            124.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'HARGA'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object DetailBand1: TQRBand
        Left = 76
        Top = 264
        Width = 670
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          55.562500000000000000
          1772.708333333333000000)
        BandType = rbDetail
        object QRDBText8: TQRDBText
          Left = 40
          Top = 0
          Width = 84
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            105.833333333333300000
            0.000000000000000000
            222.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'KONSTRUKSI'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText9: TQRDBText
          Left = 176
          Top = 0
          Width = 47
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            465.666666666666700000
            0.000000000000000000
            124.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'CORAK'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText10: TQRDBText
          Left = 288
          Top = 0
          Width = 37
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            762.000000000000000000
            0.000000000000000000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'MUTU'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText11: TQRDBText
          Left = 344
          Top = 0
          Width = 53
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            910.166666666666700000
            0.000000000000000000
            140.229166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'SATUAN'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBHarga: TQRDBText
          Left = 484
          Top = 0
          Width = 27
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1280.583333333333000000
            0.000000000000000000
            71.437500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'QTY'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRSysData2: TQRSysData
          Left = 5
          Top = 0
          Width = 28
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            13.229166666666670000
            0.000000000000000000
            74.083333333333340000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          Color = clWhite
          Data = qrsDetailNo
          Transparent = False
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 608
          Top = 0
          Width = 37
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1608.666666666667000000
            0.000000000000000000
            97.895833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'JENIS'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 531
          Top = 0
          Width = 68
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1404.937500000000000000
            0.000000000000000000
            179.916666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'SUBTOTAL'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText23: TQRDBText
          Left = 424
          Top = 0
          Width = 47
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1121.833333333333000000
            0.000000000000000000
            124.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QDetail
          DataField = 'HARGA'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object SummaryBand1: TQRBand
        Left = 76
        Top = 325
        Width = 670
        Height = 188
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = True
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          497.416666666666700000
          1772.708333333333000000)
        BandType = rbSummary
        object QRDBText14: TQRDBText
          Left = 64
          Top = 96
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            169.333333333333300000
            254.000000000000000000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'TTD1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText15: TQRDBText
          Left = 272
          Top = 96
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            719.666666666666800000
            254.000000000000000000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'TTD1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText16: TQRDBText
          Left = 64
          Top = 40
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            169.333333333333300000
            105.833333333333300000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'DIV1'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText17: TQRDBText
          Left = 272
          Top = 40
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            719.666666666666800000
            105.833333333333300000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'DIV2'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText18: TQRDBText
          Left = 272
          Top = 113
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            719.666666666666800000
            298.979166666666700000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'DIV2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText19: TQRDBText
          Left = 64
          Top = 113
          Width = 201
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            169.333333333333300000
            298.979166666666700000
            531.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'DIV1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel14: TQRLabel
          Left = 64
          Top = 16
          Width = 99
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            169.333333333333300000
            42.333333333333330000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'PEKALONGAN, '
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText20: TQRDBText
          Left = 168
          Top = 16
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            444.500000000000000000
            42.333333333333330000
            66.145833333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QMaster
          DataField = 'TGL'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object PageFooterBand1: TQRBand
        Left = 76
        Top = 513
        Width = 670
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          52.916666666666670000
          1772.708333333333000000)
        BandType = rbPageFooter
        object QRDBText13: TQRDBText
          Left = 0
          Top = 0
          Width = 36
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            0.000000000000000000
            0.000000000000000000
            95.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = DMFrm.QUserTime
          DataField = 'VUSER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRSysData1: TQRSysData
          Left = 601
          Top = 0
          Width = 69
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1590.145833333333000000
            0.000000000000000000
            182.562500000000000000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Text = 'Hal '
          Transparent = False
          FontSize = 10
        end
        object QRDBText22: TQRDBText
          Left = 299
          Top = 0
          Width = 71
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            791.104166666666700000
            0.000000000000000000
            187.854166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QTransaksi
          DataField = 'DISTRIBUSI'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object QRGroup1: TQRGroup
        Left = 76
        Top = 264
        Width = 670
        Height = 0
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          0.000000000000000000
          1772.708333333333000000)
        FooterBand = QRBand1
        Master = QuickRep1
        ReprintOnNewPage = False
      end
      object QRBand1: TQRBand
        Left = 76
        Top = 285
        Width = 670
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          105.833333333333300000
          1772.708333333333000000)
        BandType = rbGroupFooter
        object QRLabel15: TQRLabel
          Left = 305
          Top = 8
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            806.979166666666700000
            21.166666666666670000
            156.104166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = '** Akhir **'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRExpr1: TQRExpr
          Left = 480
          Top = 8
          Width = 118
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1270.000000000000000000
            21.166666666666670000
            312.208333333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          Master = QuickRep1
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'SUM(QDetail.SUBTOTAL)'
          Mask = '0.0,0'
          FontSize = 10
        end
        object QRLabel18: TQRLabel
          Left = 424
          Top = 8
          Width = 41
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1121.833333333333000000
            21.166666666666670000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'TOTAL'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
    object PanelHeader: TPanel
      Left = 0
      Top = 32
      Width = 768
      Height = 48
      Align = alTop
      BevelWidth = 2
      Color = 10485760
      TabOrder = 4
      DesignSize = (
        768
        48)
      object DBText1: TDBText
        Left = 649
        Top = 7
        Width = 114
        Height = 33
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = True
        DataField = 'NO_NOTA'
        DataSource = dsQMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 13
        Top = 7
        Width = 53
        Height = 33
        Color = clWhite
        DataField = 'KD_TRANSAKSI'
        DataSource = dsQTransaksi
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 86
        Top = 7
        Width = 114
        Height = 33
        AutoSize = True
        Color = clWhite
        DataField = 'NAMA_TRANSAKSI'
        DataSource = dsQTransaksi
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 72
        Top = 7
        Width = 8
        Height = 33
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
    end
    object PanelFooter: TPanel
      Left = 0
      Top = 611
      Width = 768
      Height = 53
      Align = alBottom
      BevelWidth = 2
      Color = clSilver
      TabOrder = 2
      DesignSize = (
        768
        53)
      object BitBtn1: TBitBtn
        Left = 682
        Top = 24
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        TabOrder = 0
        Kind = bkClose
      end
      object BitBtn2: TBitBtn
        Left = 602
        Top = 24
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Print'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object cbPreview: TCheckBox
        Left = 600
        Top = 8
        Width = 73
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Preview'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object RadioGroup1: TRadioGroup
        Left = 439
        Top = 4
        Width = 153
        Height = 41
        Anchors = [akTop, akRight]
        Caption = 'Ukuran Ketas'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'A4'
          'A5')
        TabOrder = 3
        Visible = False
      end
      object cbHarga: TCheckBox
        Left = 680
        Top = 8
        Width = 86
        Height = 17
        Anchors = [akTop, akRight]
        Caption = 'Tanpa Harga'
        TabOrder = 4
        Visible = False
      end
    end
    object PanelTop: TPanel
      Left = 0
      Top = 80
      Width = 768
      Height = 144
      Align = alTop
      BevelWidth = 2
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 55
        Height = 13
        Caption = 'Keterangan'
      end
      object Label6: TLabel
        Left = 616
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Tanggal'
      end
      object DBText4: TDBText
        Left = 432
        Top = 24
        Width = 80
        Height = 24
        AutoSize = True
        DataField = 'STATUS'
        DataSource = dsQMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 44
        Height = 13
        Caption = 'Customer'
      end
      object Label4: TLabel
        Left = 616
        Top = 104
        Width = 44
        Height = 13
        Caption = 'No. Bukti'
      end
      object Label5: TLabel
        Left = 616
        Top = 64
        Width = 62
        Height = 13
        Caption = 'Jatuh Tempo'
      end
      object Label8: TLabel
        Left = 592
        Top = 82
        Width = 19
        Height = 13
        Caption = 'Hari'
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 616
        Top = 24
        Width = 137
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'TGL'
        DataSource = dsQMaster
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 96
        Width = 489
        Height = 41
        DataField = 'KETERANGAN'
        DataSource = dsQMaster
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 16
        Top = 24
        Width = 121
        Height = 19
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'NAMA_REKANAN'#9'30'#9'NAMA CUSTOMER'#9'F'#9
          'KD_REKANAN'#9'6'#9'KODE'#9'F'#9
          'KOTA'#9'20'#9'KOTA'#9'F'#9)
        DataField = 'KD_REKANAN'
        DataSource = dsQMaster
        LookupTable = DMFrm.QCustomer
        LookupField = 'KD_REKANAN'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnCloseUp = wwDBLookupComboDlg1CloseUp
        OnEnter = wwDBLookupComboDlg1Enter
      end
      object DBMemo2: TDBMemo
        Left = 144
        Top = 24
        Width = 281
        Height = 41
        TabStop = False
        Color = clMoneyGreen
        DataField = 'REKANAN'
        DataSource = dsQMaster
        TabOrder = 3
      end
      object wwDBEdit1: TwwDBEdit
        Left = 16
        Top = 24
        Width = 105
        Height = 19
        DataField = 'KD_REKANAN'
        DataSource = dsQMaster
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 616
        Top = 120
        Width = 137
        Height = 19
        DataField = 'NO_BUKTI'
        DataSource = dsQMaster
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBSpinEdit1: TwwDBSpinEdit
        Left = 616
        Top = 80
        Width = 41
        Height = 19
        Increment = 1.000000000000000000
        DataField = 'NHARI'
        DataSource = dsQMaster
        TabOrder = 6
        UnboundDataType = wwDefault
      end
    end
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 265
      Width = 768
      Height = 346
      ControlType.Strings = (
        'KD_KONSTRUKSI;CustomEdit;LookKonstruksi;F'
        'KD_CORAK;CustomEdit;LookCorak;F'
        'MUTU;CustomEdit;LookMutu;F'
        'SATUAN;CustomEdit;LookSatuan;F'
        'JENIS;CustomEdit;LookJenis;F')
      Selected.Strings = (
        'JENIS'#9'10'#9'JENIS'#9'F'
        'KD_KONSTRUKSI'#9'6'#9'KODE'#9'F'#9'KONSTRUKSI'
        'KONSTRUKSI'#9'21'#9'NAMA'#9'T'#9'KONSTRUKSI'
        'KD_CORAK'#9'6'#9'KODE'#9'F'#9'CORAK'
        'CORAK'#9'14'#9'NAMA'#9'T'#9'CORAK'
        'MUTU'#9'6'#9'MUTU'#9'F'
        'SATUAN'#9'7'#9'SATUAN'#9'F'
        'HARGA'#9'9'#9'HARGA'#9'F'
        'QTY'#9'6'#9'QTY'#9'F'
        'SUBTOTAL'#9'12'#9'SUB TOTAL'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clSkyBlue
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsQDetail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      RowHeightPercent = 200
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Lucida Sans'
      TitleFont.Style = [fsBold]
      TitleLines = 3
      TitleButtons = False
      UseTFields = False
      OnEnter = wwDBGrid1Enter
    end
    object PanelBanner: TPanel
      Left = 0
      Top = 224
      Width = 768
      Height = 41
      Align = alTop
      BevelWidth = 2
      Color = 12058623
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 2
        Width = 44
        Height = 13
        Caption = 'Cari Nota'
      end
      object wwDBNavigator1: TwwDBNavigator
        Left = 352
        Top = 2
        Width = 414
        Height = 37
        AutosizeStyle = asSizeNavButtons
        DataSource = dsQMaster
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alRight
        Color = 12058623
        object wwDBNavigator1Button2: TwwNavButton
          Left = 0
          Top = 0
          Width = 42
          Height = 37
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button2'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsPrior
        end
        object wwDBNavigator1Button3: TwwNavButton
          Left = 42
          Top = 0
          Width = 42
          Height = 37
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button3'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsNext
        end
        object wwDBNavigator1Insert: TwwNavButton
          Left = 84
          Top = 0
          Width = 42
          Height = 37
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsInsert
        end
        object wwDBNavigator1Edit: TwwNavButton
          Left = 126
          Top = 0
          Width = 42
          Height = 37
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsEdit
        end
        object wwDBNavigator1Delete: TwwNavButton
          Left = 168
          Top = 0
          Width = 41
          Height = 37
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsDelete
        end
        object wwDBNavigator1Post: TwwNavButton
          Left = 209
          Top = 0
          Width = 41
          Height = 37
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsPost
        end
        object wwDBNavigator1Cancel: TwwNavButton
          Left = 250
          Top = 0
          Width = 41
          Height = 37
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsCancel
        end
        object wwDBNavigator1Refresh: TwwNavButton
          Left = 291
          Top = 0
          Width = 41
          Height = 37
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Refresh'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsRefresh
        end
        object wwDBNavigator1Button: TwwNavButton
          Left = 332
          Top = 0
          Width = 41
          Height = 37
          Hint = 'Search the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          ShowText = True
          Spacing = 4
          Transparent = False
          Caption = 'Browse'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          OnClick = wwDBNavigator1ButtonClick
          Index = 8
          Style = nbsCustom
        end
        object wwDBNavigator1Button1: TwwNavButton
          Left = 373
          Top = 0
          Width = 41
          Height = 37
          ImageIndex = -1
          NumGlyphs = 1
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Button1'
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsCustom
        end
      end
      object Edit1: TEdit
        Left = 8
        Top = 18
        Width = 129
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyDown = Edit1KeyDown
      end
      object wwCheckBox1: TwwCheckBox
        Left = 144
        Top = 16
        Width = 73
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = 'True'
        DisplayValueUnchecked = 'False'
        NullAndBlankState = cbUnchecked
        Caption = 'Posting'
        DataField = 'ISPOST'
        DataSource = dsQMaster
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 768
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      Color = 4605440
      TabOrder = 5
    end
    object Panel2: TPanel
      Left = 0
      Top = 664
      Width = 768
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      Color = 4605440
      TabOrder = 6
    end
    object LookKonstruksi: TwwDBLookupComboDlg
      Left = 24
      Top = 336
      Width = 121
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'KD_KONSTRUKSI'#9'6'#9'KODE'#9'F'
        'NAMA_KONSTRUKSI'#9'30'#9'KONSTRUKSI'#9'F')
      DataField = 'KONSTRUKSI'
      DataSource = dsQDetail
      LookupTable = DMFrm.QKonstruksi
      LookupField = 'KD_KONSTRUKSI'
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = LookKonstruksiCloseUp
      OnEnter = LookKonstruksiEnter
    end
    object LookCorak: TwwDBLookupComboDlg
      Left = 168
      Top = 336
      Width = 121
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'KD_CORAK'#9'6'#9'KODE'#9'F'
        'NAMA_CORAK'#9'30'#9'NAMA CORAK'#9'F')
      DataField = 'CORAK'
      DataSource = dsQDetail
      LookupTable = DMFrm.QCorak
      LookupField = 'KD_CORAK'
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnCloseUp = LookCorakCloseUp
      OnEnter = LookCorakEnter
    end
    object LookMutu: TwwDBLookupCombo
      Left = 328
      Top = 336
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'MUTU'#9'5'#9'MUTU'#9'F'
        'KETERANGAN'#9'30'#9'KETERANGAN'#9'F'
        'SCORE'#9'10'#9'SCORE'#9#9)
      DataField = 'MUTU'
      DataSource = dsQDetail
      LookupTable = DMFrm.QMutu
      LookupField = 'MUTU'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = LookMutuEnter
    end
    object LookSatuan: TwwDBComboBox
      Left = 472
      Top = 344
      Width = 121
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      DataField = 'SATUAN'
      DataSource = dsQDetail
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'POTONG'
        'KODI'
        'LUSIN'
        'M'
        'KG')
      Sorted = False
      TabOrder = 10
      UnboundDataType = wwDefault
    end
    object LookJenis: TwwDBComboBox
      Left = 152
      Top = 384
      Width = 121
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      DataField = 'JENIS'
      DataSource = dsQDetail
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'PALEKAT'
        'JAHIT'
        'LIPAT'
        'KEMAS'
        'BENANG')
      Sorted = False
      TabOrder = 12
      UnboundDataType = wwDefault
    end
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.BUKTI2_ORDER a'
      'where kd_transaksi=:kd_transaksi and no_nota like :no_nota')
    Variables.Data = {
      0300000002000000080000003A4E4F5F4E4F5441050000000200000025000000
      00000D0000003A4B445F5452414E53414B534905000000040000003938300000
      000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db5.no_reg_kontrak'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000011000000060000004E4F5F5245470100000000000300000054474C01
      00000000000A0000004E4F5F4B4F4E5452414B0100000000000A0000004B4554
      4552414E47414E0100000000000A0000004B445F52454B414E414E0100000000
      00060000005354415455530100000000000A00000054474C5F494E5345525401
      00000000000A0000004F50525F494E534552540100000000000C0000004B445F
      5452414E53414B53490100000000000400000054544431010000000000040000
      005454443201000000000004000000545444330100000000000700000052454B
      414E414E010000000000060000004953504F5354010000000000070000004E4F
      5F4E4F5441010000000000080000004E4F5F42554B5449010000000000050000
      004E48415249010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeQuery = QMasterBeforeQuery
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforePost = QMasterBeforePost
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QMasterNewRecord
    Left = 10
    Top = 129
    object QMasterNO_NOTA: TStringField
      DisplayLabel = 'NO NOTA'
      DisplayWidth = 16
      FieldName = 'NO_NOTA'
    end
    object QMasterNO_KONTRAK: TStringField
      DisplayLabel = 'NO KONTRAK'
      DisplayWidth = 16
      FieldName = 'NO_KONTRAK'
    end
    object QMasterTGL: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TGL'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object QMasterREKANAN: TStringField
      DisplayWidth = 30
      FieldName = 'REKANAN'
      Size = 80
    end
    object QMasterSTATUS: TStringField
      DisplayWidth = 10
      FieldName = 'STATUS'
      Size = 10
    end
    object QMasterISPOST: TStringField
      DisplayLabel = 'POST'
      DisplayWidth = 1
      FieldName = 'ISPOST'
      Size = 1
    end
    object QMasterNO_REG: TFloatField
      DisplayWidth = 10
      FieldName = 'NO_REG'
      Required = True
      Visible = False
    end
    object QMasterKETERANGAN: TStringField
      DisplayWidth = 255
      FieldName = 'KETERANGAN'
      Visible = False
      Size = 255
    end
    object QMasterKD_REKANAN: TFloatField
      DisplayWidth = 10
      FieldName = 'KD_REKANAN'
      Visible = False
    end
    object QMasterKD_TRANSAKSI: TStringField
      DisplayWidth = 3
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Visible = False
      Size = 3
    end
    object QMasterTTD1: TStringField
      DisplayWidth = 30
      FieldName = 'TTD1'
      Visible = False
      Size = 30
    end
    object QMasterTTD2: TStringField
      DisplayWidth = 30
      FieldName = 'TTD2'
      Visible = False
      Size = 30
    end
    object QMasterTTD3: TStringField
      DisplayWidth = 30
      FieldName = 'TTD3'
      Visible = False
      Size = 30
    end
    object QMasterNO_BUKTI: TStringField
      FieldName = 'NO_BUKTI'
    end
    object QMasterNHARI: TFloatField
      FieldName = 'NHARI'
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.BUKTI2_ORDER_DETAIL a'
      'where a.no_reg = :no_reg')
    Variables.Data = {0300000001000000070000003A4E4F5F524547040000000000000000000000}
    SequenceField.Field = 'NO_REG_DETAIL'
    SequenceField.Sequence = 'ipisma_db4.no_reg_kontrak'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      04000000130000000D0000004E4F5F5245475F44455441494C01000000000006
      0000004E4F5F5245470100000000000A0000004B4F4E535452554B5349010000
      00000005000000434F52414B010000000000040000004D555455010000000000
      0500000048415247410100000000000A00000054474C5F494E53455254010000
      0000000A0000004F50525F494E53455254010000000000060000005341545541
      4E0100000000000D0000004B445F4B4F4E535452554B53490100000000000800
      00004B445F434F52414B010000000000030000004E494B0100000000000C0000
      004E4F5F534552495F4245414D010000000000070000004B445F4954454D0100
      00000000030000005154590100000000000A0000004B45544552414E47414E01
      0000000000050000004A454E49530100000000000D00000054474C5F4A54485F
      54454D504F010000000000050000004E48415249010000000000}
    Master = QMaster
    MasterFields = 'NO_REG'
    DetailFields = 'NO_REG'
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforeDelete = QDetailBeforeEdit
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 10
    Top = 161
    object QDetailKONSTRUKSI: TStringField
      DisplayWidth = 10
      FieldName = 'KONSTRUKSI'
      Size = 30
    end
    object QDetailCORAK: TStringField
      DisplayWidth = 6
      FieldName = 'CORAK'
      Size = 30
    end
    object QDetailMUTU: TStringField
      DisplayWidth = 6
      FieldName = 'MUTU'
      Size = 30
    end
    object QDetailSATUAN: TStringField
      DisplayWidth = 8
      FieldName = 'SATUAN'
      Size = 10
    end
    object QDetailNO_REG_DETAIL: TFloatField
      DisplayWidth = 10
      FieldName = 'NO_REG_DETAIL'
      Required = True
      Visible = False
    end
    object QDetailNO_REG: TFloatField
      DisplayWidth = 10
      FieldName = 'NO_REG'
      Visible = False
    end
    object QDetailKD_KONSTRUKSI: TStringField
      FieldName = 'KD_KONSTRUKSI'
      Size = 6
    end
    object QDetailKD_CORAK: TStringField
      FieldName = 'KD_CORAK'
      Size = 6
    end
    object QDetailNIK: TStringField
      FieldName = 'NIK'
    end
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QDetailJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object QDetailTGL_JTH_TEMPO: TDateTimeField
      FieldName = 'TGL_JTH_TEMPO'
      DisplayFormat = 'DD MMM YYYY'
    end
    object QDetailHARGA: TFloatField
      FieldName = 'HARGA'
      DisplayFormat = '0.0,0'
    end
    object QDetailSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      DisplayFormat = '0.0,0'
      Calculated = True
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 42
    Top = 161
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 40
    Top = 128
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db5.transaksi'
      'where kd_transaksi=:kd_transaksi')
    Variables.Data = {
      03000000010000000D0000003A4B445F5452414E53414B534905000000040000
      003939300000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000140000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B534901000000000006000000505245464958
      01000000000005000000504C494E450100000000000700000050484541444552
      010000000000060000004B445F44495601000000000004000000545444310100
      0000000004000000545444320100000000000400000054544433010000000000
      0400000054544434010000000000040000004449563101000000000004000000
      4449563201000000000004000000444956330100000000000400000044495634
      010000000000040000004A414231010000000000040000004A41423201000000
      0000040000004A414233010000000000040000004A4142340100000000000A00
      0000444953545249425553490100000000000800000053494E4F505349530000
      00000000}
    Session = DMFrm.OS
    Left = 10
    Top = 89
    object QTransaksiNAMA_TRANSAKSI: TStringField
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QTransaksiTTD1: TStringField
      FieldName = 'TTD1'
      Size = 30
    end
    object QTransaksiTTD2: TStringField
      FieldName = 'TTD2'
      Size = 30
    end
    object QTransaksiTTD3: TStringField
      FieldName = 'TTD3'
      Size = 30
    end
    object QTransaksiTTD4: TStringField
      FieldName = 'TTD4'
      Size = 30
    end
    object QTransaksiDIV1: TStringField
      FieldName = 'DIV1'
      Size = 30
    end
    object QTransaksiDIV2: TStringField
      FieldName = 'DIV2'
      Size = 30
    end
    object QTransaksiDIV3: TStringField
      FieldName = 'DIV3'
      Size = 30
    end
    object QTransaksiDIV4: TStringField
      FieldName = 'DIV4'
      Size = 30
    end
    object QTransaksiJAB1: TStringField
      FieldName = 'JAB1'
      Size = 30
    end
    object QTransaksiJAB2: TStringField
      FieldName = 'JAB2'
      Size = 30
    end
    object QTransaksiJAB3: TStringField
      FieldName = 'JAB3'
      Size = 30
    end
    object QTransaksiJAB4: TStringField
      FieldName = 'JAB4'
      Size = 30
    end
    object QTransaksiDISTRIBUSI: TStringField
      FieldName = 'DISTRIBUSI'
      Size = 80
    end
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 40
    Top = 88
  end
  object FNo_Urut: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db5.fno_urut_jk(:pkode,:ptgl) as no_nota from dual')
    Variables.Data = {
      0300000002000000060000003A504B4F44450500000004000000393931000000
      0000050000003A5054474C0C00000007000000786C020101010100000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000070000004E4F5F4E4F5441010000000000}
    BeforeQuery = FNo_UrutBeforeQuery
    Session = DMFrm.OS
    Left = 8
    Top = 48
    object FNo_UrutNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 4000
    end
  end
  object LookMaster: TwwLookupDialog
    Selected.Strings = (
      'NO_NOTA'#9'16'#9'NO NOTA'#9'F'
      'NO_KONTRAK'#9'16'#9'NO KONTRAK'#9'F'
      'TGL'#9'12'#9'TGL'#9#9
      'REKANAN'#9'30'#9'REKANAN'#9#9
      'STATUS'#9'10'#9'STATUS'#9#9
      'ISPOST'#9'1'#9'POST'#9#9)
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QMaster
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 49
    Top = 24
  end
  object QKontrak: TOracleDataSet
    SQL.Strings = (
      'select a.rekanan, a.kd_rekanan, a.no_kontrak, a.tgl, a.status'
      'from ipisma_db5.kontrak_jobout a'
      'where a.status='#39'OPEN'#39
      'order by a.rekanan')
    QBEDefinition.QBEFieldDefs = {
      04000000050000000700000052454B414E414E0100000000000A0000004E4F5F
      4B4F4E5452414B0100000000000300000054474C010000000000060000005354
      415455530100000000000A0000004B445F52454B414E414E010000000000}
    Session = DMFrm.OS
    Left = 41
    Top = 56
    object QKontrakREKANAN: TStringField
      DisplayWidth = 30
      FieldName = 'REKANAN'
      Size = 80
    end
    object QKontrakNO_KONTRAK: TStringField
      DisplayLabel = 'NO KONTRAK'
      DisplayWidth = 20
      FieldName = 'NO_KONTRAK'
    end
    object QKontrakTGL: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TGL'
      Required = True
    end
    object QKontrakSTATUS: TStringField
      DisplayWidth = 10
      FieldName = 'STATUS'
      Size = 10
    end
    object QKontrakKD_REKANAN: TFloatField
      FieldName = 'KD_REKANAN'
      Required = True
      Visible = False
    end
  end
end
