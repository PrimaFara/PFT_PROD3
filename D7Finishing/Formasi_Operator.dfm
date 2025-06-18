object Formasi_OperatorFrm: TFormasi_OperatorFrm
  Left = 235
  Top = 106
  Width = 1072
  Height = 614
  Caption = 'Formasi / Operator'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 32
    Width = 89
    Height = 512
    Align = alLeft
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 985
    Top = 32
    Width = 71
    Height = 512
    Align = alClient
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 89
    Top = 32
    Width = 896
    Height = 512
    ActivePage = TabSheet2
    Align = alLeft
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '&Input'
      OnShow = TabSheet1Show
      object QuickRep1: TQuickRep
        Left = -2
        Top = -72
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
          200.660000000000000000
          127.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Inches
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
            Width = 52
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
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. Nota'
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
          Height = 88
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
            232.833333333333300000
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
            Left = 584
            Top = 48
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1545.166666666667000000
              127.000000000000000000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QMaster
            DataField = 'GRUP'
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
          object QRDBText5: TQRDBText
            Left = 584
            Top = 64
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1545.166666666667000000
              169.333333333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QMaster
            DataField = 'SHIFT'
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
          object QRLabel5: TQRLabel
            Left = 536
            Top = 64
            Width = 27
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1418.166666666667000000
              169.333333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Shift'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 16
            Top = 24
            Width = 102
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              42.333333333333330000
              63.500000000000000000
              269.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Keterangan/ Kurir'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 16
            Top = 40
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
              105.833333333333300000
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
          object QRLabel16: TQRLabel
            Left = 536
            Top = 48
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1418.166666666667000000
              127.000000000000000000
              76.729166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Grup'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 76
          Top = 193
          Width = 670
          Height = 23
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
            60.854166666666670000
            1772.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel8: TQRLabel
            Left = 16
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
              42.333333333333330000
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
            Left = 64
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
              169.333333333333300000
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
            Left = 224
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
              592.666666666666700000
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
          object QRLabel12: TQRLabel
            Left = 400
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
              1058.333333333333000000
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
            Left = 524
            Top = 0
            Width = 19
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1386.416666666667000000
              0.000000000000000000
              50.270833333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'BK'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 580
            Top = 0
            Width = 19
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1534.583333333333000000
              0.000000000000000000
              50.270833333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'BS'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 617
            Top = 0
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1632.479166666667000000
              0.000000000000000000
              121.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'PARAH'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 76
          Top = 216
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
            Left = 64
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
              169.333333333333300000
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
            Left = 224
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
              592.666666666666700000
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
          object QRDBText11: TQRDBText
            Left = 400
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
              1058.333333333333000000
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
            Left = 516
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
              1365.250000000000000000
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
            Width = 44
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
              116.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 565
            Top = 0
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1494.895833333333000000
              0.000000000000000000
              89.958333333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QDetail
            DataField = 'QTY2'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 629
            Top = 0
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1664.229166666667000000
              0.000000000000000000
              89.958333333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QDetail
            DataField = 'QTY3'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object SummaryBand1: TQRBand
          Left = 76
          Top = 277
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
          Top = 465
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
          object QRDBText12: TQRDBText
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
          Top = 216
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
          Top = 237
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
            Left = 490
            Top = 8
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1296.458333333333000000
              21.166666666666670000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QDetail.QTY)'
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 546
            Top = 8
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1444.625000000000000000
              21.166666666666670000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QDetail.QTY2)'
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 610
            Top = 8
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1613.958333333333000000
              21.166666666666670000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QDetail.QTY3)'
            FontSize = 10
          end
        end
      end
      object PanelCenter: TPanel
        Left = 0
        Top = 0
        Width = 889
        Height = 484
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object PanelHeader: TPanel
          Left = 0
          Top = 0
          Width = 889
          Height = 48
          Align = alTop
          BevelWidth = 2
          Color = 10485760
          TabOrder = 4
          DesignSize = (
            889
            48)
          object DBText1: TDBText
            Left = 770
            Top = 7
            Width = 114
            Height = 33
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = True
            DataField = 'KODE'
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
            Left = 245
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
            Visible = False
          end
          object DBText3: TDBText
            Left = 12
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
            Left = 304
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
            Visible = False
          end
        end
        object PanelFooter: TPanel
          Left = 0
          Top = 434
          Width = 889
          Height = 50
          Align = alBottom
          BevelWidth = 2
          Color = clSilver
          TabOrder = 1
          DesignSize = (
            889
            50)
          object BitBtn1: TBitBtn
            Left = 795
            Top = 16
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            TabOrder = 0
            Kind = bkClose
          end
          object BitBtn2: TBitBtn
            Left = 715
            Top = 16
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Print'
            TabOrder = 1
            Visible = False
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
            Left = 360
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Preview'
            Checked = True
            State = cbChecked
            TabOrder = 2
            Visible = False
          end
          object RadioGroup1: TRadioGroup
            Left = 191
            Top = 4
            Width = 153
            Height = 41
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
            Left = 424
            Top = 8
            Width = 86
            Height = 17
            Caption = 'Tanpa Harga'
            TabOrder = 4
            Visible = False
          end
        end
        object PanelTop: TPanel
          Left = 0
          Top = 48
          Width = 889
          Height = 56
          Align = alTop
          BevelWidth = 2
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          object Label9: TLabel
            Left = 648
            Top = 29
            Width = 41
            Height = 13
            Caption = 'Operator'
          end
          object Label8: TLabel
            Left = 648
            Top = 7
            Width = 66
            Height = 13
            Caption = 'Tanggal Input'
          end
          object DBText5: TDBText
            Left = 724
            Top = 5
            Width = 60
            Height = 16
            AutoSize = True
            Color = clBlack
            DataField = 'TGL_INSERT'
            DataSource = dsQMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object DBText6: TDBText
            Left = 724
            Top = 27
            Width = 60
            Height = 16
            AutoSize = True
            Color = clBlack
            DataField = 'OPR_INSERT'
            DataSource = dsQMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object PanelMaster: TPanel
            Left = 2
            Top = 2
            Width = 639
            Height = 52
            Align = alLeft
            TabOrder = 0
            object Label6: TLabel
              Left = 494
              Top = 5
              Width = 39
              Height = 13
              Caption = 'Tanggal'
            end
            object Label10: TLabel
              Left = 16
              Top = 5
              Width = 25
              Height = 13
              Caption = 'Kode'
            end
            object Label11: TLabel
              Left = 322
              Top = 5
              Width = 41
              Height = 13
              Caption = 'No.Akhir'
            end
            object Label2: TLabel
              Left = 385
              Top = 5
              Width = 23
              Height = 13
              Caption = 'Grup'
            end
            object Label21: TLabel
              Left = 250
              Top = 5
              Width = 40
              Height = 13
              Caption = 'No.Awal'
            end
            object Label3: TLabel
              Left = 112
              Top = 5
              Width = 36
              Height = 13
              Caption = 'Formasi'
            end
            object Label4: TLabel
              Left = 441
              Top = 5
              Width = 31
              Height = 13
              Caption = 'Lokasi'
            end
            object Label12: TLabel
              Left = 301
              Top = 27
              Width = 16
              Height = 13
              Caption = 's/d'
            end
            object wwDBComboBox1: TwwDBComboBox
              Left = 385
              Top = 24
              Width = 41
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              DataField = 'GRUP'
              DataSource = dsQMaster
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'A'
                'B'
                'C'
                'D'
                'E'
                'F'
                'G')
              Sorted = False
              TabOrder = 4
              UnboundDataType = wwDefault
            end
            object wwDBComboBox2: TwwDBComboBox
              Left = 441
              Top = 24
              Width = 41
              Height = 19
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              DataField = 'LOKASI'
              DataSource = dsQMaster
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
              Sorted = False
              TabOrder = 5
              UnboundDataType = wwDefault
            end
            object wwDBEdit4: TwwDBEdit
              Left = 320
              Top = 23
              Width = 49
              Height = 21
              AutoSize = False
              DataField = 'AKHIR'
              DataSource = dsQMaster
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit3: TwwDBEdit
              Left = 248
              Top = 23
              Width = 49
              Height = 21
              AutoSize = False
              DataField = 'AWAL'
              DataSource = dsQMaster
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit2: TwwDBEdit
              Left = 112
              Top = 23
              Width = 129
              Height = 21
              AutoSize = False
              DataField = 'KETERANGAN'
              DataSource = dsQMaster
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBEdit1: TwwDBEdit
              Left = 16
              Top = 23
              Width = 81
              Height = 21
              AutoSize = False
              DataField = 'KODE'
              DataSource = dsQMaster
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
            object wwDBDateTimePicker1: TwwDBDateTimePicker
              Left = 496
              Top = 24
              Width = 121
              Height = 22
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
              TabOrder = 6
            end
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 0
          Top = 145
          Width = 889
          Height = 289
          ControlType.Strings = (
            'KD_KONSTRUKSI;CustomEdit;LookKonstruksi;F'
            'KD_CORAK;CustomEdit;LookCorak;F'
            'SATUAN;CustomEdit;LookSatuan;F'
            'JENIS;CustomEdit;LookJenis;F'
            'GRUP;CustomEdit;LookGrup;F'
            'MESIN;CustomEdit;LookMesin;F'
            'PROSES;CustomEdit;LookMesinTenun;F')
          Selected.Strings = (
            'PROSES'#9'10'#9'MESIN'#9'F'
            'NIK'#9'11'#9'NIK'#9'F'
            'NAMA_OPR'#9'45'#9'NAMA OPERATOR'#9'F'
            'GRUP'#9'3'#9'GRUP'#9'F')
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
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          RowHeightPercent = 200
          TabOrder = 0
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
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object PanelBanner: TPanel
          Left = 0
          Top = 104
          Width = 889
          Height = 41
          Align = alTop
          BevelWidth = 2
          Color = 12058623
          TabOrder = 2
          object Label1: TLabel
            Left = 8
            Top = 2
            Width = 46
            Height = 13
            Caption = 'Cari Kode'
          end
          object wwDBNavigator1: TwwDBNavigator
            Left = 473
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
        object LookMesinTenun: TwwDBLookupComboDlg
          Left = 121
          Top = 196
          Width = 48
          Height = 21
          AutoSize = False
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          UserButton1Caption = '&Refresh'
          Selected.Strings = (
            'PROSES'#9'5'#9'MESIN'#9'F'
            'LOKASI'#9'5'#9'LOKASI'#9'F'
            'NIK'#9'11'#9'NIK'#9'F'
            'GRUP'#9'3'#9'GRUP'#9'F'
            'NM_OPR_MESIN'#9'45'#9'NAMA OPERATOR MESIN'#9'F')
          DataField = 'PROSES'
          DataSource = dsQDetail
          LookupTable = DMFrm.QMesin
          LookupField = 'PROSES'
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnClick = LookMesinTenunClick
          OnEnter = LookMesinTenunClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Browse'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object LabelBanner: TLabel
        Left = 0
        Top = 52
        Width = 888
        Height = 16
        Align = alTop
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 888
        Height = 52
        Align = alTop
        BevelInner = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 2
          Top = 2
          Width = 287
          Height = 48
          Align = alLeft
          Caption = 'Filter Tanggal'
          TabOrder = 0
          TabStop = True
          object Label5: TLabel
            Left = 132
            Top = 22
            Width = 24
            Height = 13
            Caption = 'S/D'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object VTglAwal: TwwDBDateTimePicker
            Left = 8
            Top = 16
            Width = 121
            Height = 24
            DisableThemes = True
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = clGreen
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = True
            TabOrder = 0
            DisplayFormat = 'dd mmm yyyy'
            OnChange = VTglAwalChange
          end
          object vTglAkhir: TwwDBDateTimePicker
            Left = 160
            Top = 16
            Width = 121
            Height = 24
            DisableThemes = True
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = clGreen
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            DisplayFormat = 'dd mmm yyyy'
            OnChange = vTglAkhirChange
          end
        end
        object Panel4: TPanel
          Left = 289
          Top = 2
          Width = 568
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object vOperand: TLabel
            Left = 150
            Top = 20
            Width = 44
            Height = 24
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'LIKE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = vOperandClick
          end
          object cbTanggal: TCheckBox
            Left = 200
            Top = 5
            Width = 129
            Height = 17
            Caption = 'Ikutkan Filter &Tanggal'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = cbTanggalClick
          end
          object BitBtn3: TBitBtn
            Left = 328
            Top = 20
            Width = 75
            Height = 25
            Caption = 'Filte&r'
            Default = True
            ModalResult = 1
            TabOrder = 3
            OnClick = BitBtn3Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
          end
          object ECari: TEdit
            Left = 200
            Top = 23
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object cbOtomatis: TCheckBox
            Left = 7
            Top = 5
            Width = 98
            Height = 17
            Caption = 'Cari &Otomatis'
            TabOrder = 0
            OnClick = cbOtomatisClick
          end
          object dbcField: TwwDBComboBox
            Left = 8
            Top = 23
            Width = 137
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            Color = clYellow
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'SEMUA KOLOM')
            ItemIndex = 0
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
            OnEnter = dbcFieldEnter
          end
          object BtnExport: TBitBtn
            Left = 408
            Top = 20
            Width = 97
            Height = 25
            Caption = '&Export2Excel'
            TabOrder = 5
            OnClick = BtnExportClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
              00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
              00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
              00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
              0003737FFFFFFFFF7F7330099999999900333777777777777733}
            NumGlyphs = 2
          end
        end
      end
      object wwDBGrid1xxxxx: TwwDBGrid
        Left = 0
        Top = 68
        Width = 888
        Height = 416
        DisableThemes = True
        DisableThemesInTitle = True
        ControlType.Strings = (
          'ISAKTIF;CheckBox;1;0'
          'ID_SUB_BAG;CustomEdit;LookBagian;F'
          'ID_HAK;CustomEdit;LookJnsMenu;F'
          'ISPOST;CheckBox;1;0')
        PictureMasks.Strings = (
          'ID_BAG'#9'*2{#,&}'#9'T'#9'T'
          'KD_JNS_ITEM'#9'#,&'#9'T'#9'T'
          'KD_SATUAN'#9'#,&'#9'T'#9'T'
          'ID_USER'#9'*3{&,#}'#9'T'#9'T')
        Selected.Strings = (
          'KODE'#9'8'#9'KODE'#9'F'#9'FORMASI'
          'KETERANGAN'#9'5'#9'KETERANGAN'#9'F'#9'FORMASI'
          'AWAL'#9'2'#9'AWAL'#9'F'#9'FORMASI'
          'AKHIR'#9'2'#9'AKHIR'#9'F'#9'FORMASI'
          'GRUP'#9'3'#9'GRUP'#9'F'
          'LOKASI'#9'3'#9'LOKASI'#9'F'
          'TGL'#9'12'#9'TANGGAL'#9'F'
          'MESIN'#9'10'#9'MESIN'#9'F'
          'NIK'#9'15'#9'NIK'#9'F'
          'NM_OPR_MESIN'#9'45'#9'NAMA OPERATOR'#9'F'
          'ISPOST'#9'1'#9'ISPOST'#9'F')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Master'
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsQBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        ReadOnly = True
        RowHeightPercent = 125
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        OnTitleButtonClick = wwDBGrid1xxxxxTitleButtonClick
        OnEnter = wwDBGrid1xxxxxEnter
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'KODE'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 1056
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 4
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.operator_formasi a'
      'where kode like :kode or kode is null'
      '')
    Variables.Data = {0300000001000000050000003A4B4F4445050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000A0000004B45544552414E47414E0100000000000A000000
      54474C5F494E534552540100000000000A0000004F50525F494E534552540100
      000000000400000047525550010000000000040000004B4F4445010000000000
      040000004157414C01000000000005000000414B484952010000000000060000
      004C4F4B415349010000000000060000004953504F5354010000000000030000
      0054474C010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeQuery = QMasterBeforeQuery
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforePost = QMasterBeforePost
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QMasterNewRecord
    Left = 2
    Top = 153
    object QMasterKODE: TStringField
      DisplayWidth = 6
      FieldName = 'KODE'
      Required = True
      Size = 6
    end
    object QMasterKETERANGAN: TStringField
      DisplayWidth = 10
      FieldName = 'KETERANGAN'
      Size = 10
    end
    object QMasterAWAL: TStringField
      DisplayWidth = 2
      FieldName = 'AWAL'
      Size = 2
    end
    object QMasterAKHIR: TStringField
      DisplayWidth = 2
      FieldName = 'AKHIR'
      Size = 2
    end
    object QMasterGRUP: TStringField
      DisplayWidth = 3
      FieldName = 'GRUP'
      Size = 3
    end
    object QMasterLOKASI: TStringField
      DisplayWidth = 30
      FieldName = 'LOKASI'
      Size = 30
    end
    object QMasterTGL: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TGL'
    end
    object QMasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Visible = False
      Size = 30
    end
    object QMasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
      Visible = False
    end
    object QMasterISPOST: TStringField
      DisplayLabel = 'POST'
      DisplayWidth = 1
      FieldName = 'ISPOST'
      Visible = False
      Size = 1
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.operator_formasi_det a'
      'where a.kode = :kode')
    Variables.Data = {0300000001000000050000003A4B4F4445050000000000000000000000}
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000004000000040000004B4F44450100000000000600000050524F534553
      0100000000000A0000004F50525F494E534552540100000000000A0000005447
      4C5F494E53455254010000000000}
    Master = QMaster
    MasterFields = 'KODE'
    DetailFields = 'KODE'
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QDetailNewRecord
    Left = 10
    Top = 217
    object QDetailKODE: TStringField
      FieldName = 'KODE'
      Size = 12
    end
    object QDetailPROSES: TStringField
      FieldName = 'PROSES'
      Size = 30
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QDetailNIK: TStringField
      FieldKind = fkLookup
      FieldName = 'NIK'
      LookupDataSet = DMFrm.QMesin
      LookupKeyFields = 'PROSES'
      LookupResultField = 'NIK'
      KeyFields = 'PROSES'
      Size = 11
      Lookup = True
    end
    object QDetailNAMA_OPR: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_OPR'
      LookupDataSet = DMFrm.QMesin
      LookupKeyFields = 'PROSES'
      LookupResultField = 'NM_OPR_MESIN'
      KeyFields = 'PROSES'
      Size = 45
      Lookup = True
    end
    object QDetailGRUP: TStringField
      DisplayWidth = 3
      FieldKind = fkLookup
      FieldName = 'GRUP'
      LookupDataSet = DMFrm.QMesin
      LookupKeyFields = 'PROSES'
      LookupResultField = 'GRUP'
      KeyFields = 'PROSES'
      Size = 3
      Lookup = True
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 50
    Top = 225
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 40
    Top = 160
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
    Left = 242
    Top = 9
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
    Left = 296
    Top = 8
  end
  object FNo_Urut: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db5.fno_urut_p3(:pkode,:ptgl) as no_nota from dual')
    Variables.Data = {
      0300000002000000060000003A504B4F44450500000004000000383931000000
      0000050000003A5054474C0C0000000700000078710B0101010100000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000070000004E4F5F4E4F5441010000000000}
    BeforeQuery = FNo_UrutBeforeQuery
    Session = DMFrm.OS
    Left = 8
    Top = 16
    object FNo_UrutNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 4000
    end
  end
  object LookMaster: TwwLookupDialog
    Selected.Strings = (
      'KODE'#9'6'#9'KODE'#9'F'
      'KETERANGAN'#9'10'#9'KETERANGAN'#9'F'
      'AWAL'#9'2'#9'AWAL'#9'F'
      'AKHIR'#9'2'#9'AKHIR'#9'F'
      'GRUP'#9'3'#9'GRUP'#9'F'
      'LOKASI'#9'30'#9'LOKASI'#9'F'
      'TGL'#9'12'#9'TGL'#9'F')
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
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db5.vformasi_operator'
      ':myparam'
      '')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000E0000006F726465
      72206279204B4F44450000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000A00000054474C5F494E534552540100000000000A000000
      4F50525F494E534552540100000000000300000054474C010000000000040000
      00475255500100000000000A0000004B45544552414E47414E01000000000006
      0000004953504F5354010000000000050000004D4553494E0100000000000400
      00004B4F4445010000000000040000004157414C01000000000005000000414B
      484952010000000000060000004C4F4B415349010000000000030000004E494B
      0100000000000C0000004E4D5F4F50525F4D4553494E010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    Left = 316
    Top = 281
    object QBrowseKODE: TStringField
      FieldName = 'KODE'
      Required = True
      Size = 6
    end
    object QBrowseKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 10
    end
    object QBrowseAWAL: TStringField
      FieldName = 'AWAL'
      Size = 2
    end
    object QBrowseAKHIR: TStringField
      FieldName = 'AKHIR'
      Size = 2
    end
    object QBrowseGRUP: TStringField
      FieldName = 'GRUP'
      Size = 3
    end
    object QBrowseLOKASI: TStringField
      FieldName = 'LOKASI'
      Size = 30
    end
    object QBrowseOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QBrowseTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QBrowseISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QBrowseTGL: TDateTimeField
      FieldName = 'TGL'
    end
    object QBrowseMESIN: TStringField
      FieldName = 'MESIN'
      Size = 30
    end
    object QBrowseNIK: TStringField
      FieldName = 'NIK'
      Size = 10
    end
    object QBrowseNM_OPR_MESIN: TStringField
      FieldName = 'NM_OPR_MESIN'
      Required = True
      Size = 45
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 445
    Top = 312
  end
  object QBrowseTotal: TOracleDataSet
    SQL.Strings = (
      
        'select count(mesin) as jml_mesin from ipisma_db5.vformasi_operat' +
        'or'
      ':myparam'
      '')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000E0000006F726465
      72206279206B6F64650000000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000090000004A4D4C5F4D4553494E010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 380
    Top = 337
    object QBrowseTotalJML_MESIN: TFloatField
      FieldName = 'JML_MESIN'
    end
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      
        'select count(proses) as jml_mesin from ipisma_db5.operator_forma' +
        'si_det a'
      'where a.kode = :kode')
    Variables.Data = {0300000001000000050000003A4B4F4445050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000090000004A4D4C5F4D4553494E010000000000}
    Session = DMFrm.OS
    Left = 49
    Top = 304
    object QTotalJML_MESIN: TFloatField
      FieldName = 'JML_MESIN'
    end
  end
end
