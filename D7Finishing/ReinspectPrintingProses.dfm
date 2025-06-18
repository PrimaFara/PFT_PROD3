object ReinspectPrintingProsesFrm: TReinspectPrintingProsesFrm
  Left = 117
  Top = 99
  Width = 1247
  Height = 636
  Caption = 'REINSPECT PRINTING FINISH PER PROSES'
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
    Width = 137
    Height = 534
    Align = alLeft
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 137
    Top = 32
    Width = 890
    Height = 534
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet5: TTabSheet
      Caption = '&Input'
      ImageIndex = 4
      OnShow = TabSheet5Show
      object PanelCenter1: TPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 451
        Align = alCustom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 929
          Height = 48
          Align = alTop
          BevelWidth = 2
          Color = 10485760
          TabOrder = 3
          DesignSize = (
            929
            48)
          object DBText2: TDBText
            Left = 810
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
          object DBText7: TDBText
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
          object Label12: TLabel
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
          object DBText8: TDBText
            Left = 84
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
        end
        object Panel7: TPanel
          Left = 0
          Top = 398
          Width = 929
          Height = 53
          Align = alBottom
          BevelWidth = 2
          Color = clSilver
          TabOrder = 1
          DesignSize = (
            929
            53)
          object BitBtn6: TBitBtn
            Left = 835
            Top = 16
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            TabOrder = 0
            Kind = bkClose
          end
          object BitBtn8: TBitBtn
            Left = 755
            Top = 16
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
          object CheckBox1: TCheckBox
            Left = 360
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Preview'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object RadioGroup2: TRadioGroup
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
        end
        object Panel10: TPanel
          Left = 0
          Top = 48
          Width = 929
          Height = 121
          Align = alTop
          BevelWidth = 2
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label18: TLabel
            Left = 391
            Top = 33
            Width = 45
            Height = 13
            Caption = 'Tanggal :'
          end
          object Label20: TLabel
            Left = 671
            Top = 11
            Width = 23
            Height = 13
            Caption = 'Grup'
          end
          object Label21: TLabel
            Left = 722
            Top = 11
            Width = 21
            Height = 13
            Caption = 'Shift'
          end
          object Label22: TLabel
            Left = 665
            Top = 80
            Width = 41
            Height = 13
            Caption = 'Operator'
          end
          object Label23: TLabel
            Left = 665
            Top = 62
            Width = 66
            Height = 13
            Caption = 'Tanggal Input'
          end
          object DBText10: TDBText
            Left = 741
            Top = 62
            Width = 68
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
          object DBText11: TDBText
            Left = 741
            Top = 77
            Width = 68
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
          object Label13: TLabel
            Left = 28
            Top = 23
            Width = 49
            Height = 13
            Caption = 'Input File :'
          end
          object Label24: TLabel
            Left = 393
            Top = 78
            Width = 65
            Height = 13
            Caption = 'Jenis Proses :'
          end
          object wwDBDateTimePicker3: TwwDBDateTimePicker
            Left = 481
            Top = 30
            Width = 160
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
            TabOrder = 0
          end
          object wwDBComboBox3: TwwDBComboBox
            Left = 664
            Top = 30
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
            TabOrder = 1
            UnboundDataType = wwDefault
          end
          object wwDBComboBox4: TwwDBComboBox
            Left = 715
            Top = 30
            Width = 41
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'SHIFT'
            DataSource = dsQMaster
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              '0'
              '1'
              '2'
              '3')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
          end
          object Edit2: TEdit
            Left = 87
            Top = 22
            Width = 195
            Height = 19
            ReadOnly = True
            TabOrder = 3
          end
          object Button1: TButton
            Left = 293
            Top = 22
            Width = 68
            Height = 21
            Caption = 'Load Data'
            TabOrder = 4
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 87
            Top = 54
            Width = 162
            Height = 27
            Caption = 'Download Template Per &Proses'
            TabOrder = 5
            OnClick = Button2Click
          end
          object LookBeam: TwwDBLookupCombo
            Left = 480
            Top = 75
            Width = 161
            Height = 19
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'JENIS_PROSES'#9'50'#9'JENIS_PROSES'#9'F'#9)
            DataField = 'JENIS_PROSES'
            DataSource = dsQMaster
            LookupTable = QBrowseMitra
            LookupField = 'JENIS_PROSES'
            Options = [loColLines, loRowLines, loTitles]
            TabOrder = 6
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = LookBeamEnter
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 169
          Width = 929
          Height = 32
          Align = alTop
          BevelWidth = 2
          Color = 12058623
          TabOrder = 2
          object wwCheckBox2: TwwCheckBox
            Left = 330
            Top = 5
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
            TabOrder = 0
          end
          object wwDBNavigator2: TwwDBNavigator
            Left = 513
            Top = 2
            Width = 414
            Height = 28
            AutosizeStyle = asSizeNavButtons
            DataSource = dsQMaster
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alRight
            Color = 12058623
            object wwDBNavigator2Button2: TwwNavButton
              Left = 0
              Top = 0
              Width = 42
              Height = 28
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Button2'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwDBNavigator2Button3: TwwNavButton
              Left = 42
              Top = 0
              Width = 42
              Height = 28
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Button3'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwDBNavigator2Insert: TwwNavButton
              Left = 84
              Top = 0
              Width = 42
              Height = 28
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Insert'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator2InsertClick
              Index = 2
              Style = nbsInsert
            end
            object wwDBNavigator2Edit: TwwNavButton
              Left = 126
              Top = 0
              Width = 42
              Height = 28
              Hint = 'Edit current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Edit'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsEdit
            end
            object wwDBNavigator2Delete: TwwNavButton
              Left = 168
              Top = 0
              Width = 41
              Height = 28
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Delete'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator2DeleteClick
              Index = 4
              Style = nbsDelete
            end
            object wwDBNavigator2Post: TwwNavButton
              Left = 209
              Top = 0
              Width = 41
              Height = 28
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Post'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator2PostClick
              Index = 5
              Style = nbsPost
            end
            object wwDBNavigator2Cancel: TwwNavButton
              Left = 250
              Top = 0
              Width = 41
              Height = 28
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Cancel'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator2CancelClick
              Index = 6
              Style = nbsCancel
            end
            object wwDBNavigator2Refresh: TwwNavButton
              Left = 291
              Top = 0
              Width = 41
              Height = 28
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Refresh'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 7
              Style = nbsRefresh
            end
            object wwDBNavigator2Button: TwwNavButton
              Left = 332
              Top = 0
              Width = 41
              Height = 28
              Hint = 'Search the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Browse'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator2ButtonClick
              Index = 8
              Style = nbsCustom
            end
            object wwDBNavigator2Button1: TwwNavButton
              Left = 373
              Top = 0
              Width = 41
              Height = 28
              ImageIndex = -1
              NumGlyphs = 1
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator2Button1'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 9
              Style = nbsCustom
            end
          end
        end
        object ListView1: TListView
          Left = 0
          Top = 201
          Width = 929
          Height = 248
          BevelOuter = bvRaised
          Columns = <>
          GridLines = True
          RowSelect = True
          TabOrder = 4
          ViewStyle = vsReport
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&Edit'
      TabVisible = False
      OnShow = TabSheet1Show
      object PanelCenter: TPanel
        Left = 0
        Top = 0
        Width = 929
        Height = 506
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object QuickRep1: TQuickRep
          Left = 16
          Top = 48
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
                84.666666666666680000
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
                42.333333333333340000
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
            object QRLabel1: TQRLabel
              Left = 102
              Top = 28
              Width = 138
              Height = 22
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                58.208333333333340000
                269.875000000000000000
                74.083333333333340000
                365.125000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Bligo Sapugarut, Pekalongan'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial Narrow'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRImage1: TQRImage
              Left = 4
              Top = 4
              Width = 69
              Height = 47
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                124.354166666666700000
                10.583333333333330000
                10.583333333333330000
                182.562500000000000000)
              Picture.Data = {
                07544269746D617022210000424D222100000000000036000000280000004100
                00002B0000000100180000000000EC200000120B0000120B0000000000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFDFDFDE4E4E4F5F5F5FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF9F8F8B7B3B0A09893BFA9AAF8F5F5F9FEFEF8FEFE
                FEFEFFFFFDFFFFFFFFFFFFFFFFFFFCFEFFFEFEFFFFFDFFFFFFFFFFFFFFFFFFFF
                FFFAFCFFF9FEFFF8FDFFF7FEFFF7FEFCF8FFFEF8FFFEFAFFFCFCFFFEFDFFFEFD
                FFFFFEFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF7F3F1C2B5ABB59684B4998CE1CE
                D1FBFAFBFFFEFFFEFFFFF8FFFDF7FDFEF6FCFEF5FBFEEBEFFBC5D4E4A9BBCAB3
                C0D2B2BED4A0B3CE8CA2C58E99C9929DCA9AA4CEA4AED4ACB6D3B1B6D4C5CCE3
                EBF0FAF4FAFFF8FEFFFBFFFEFCFFFCFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFCFAD7CEBFB8
                937DC0886FC89D90BEACB0F0EDF3F3F3FCB7C1D78395B17785AB5E648C536387
                697BA08392B0A1AFCFACBDDDAEC4DFAAC2DDADC5E1B0C2DF99A6C98895B9737B
                AF535B95606999838BB08E98B4BFC7DEEFF4FFF3FAFFF8FCFFFDFFFFFEFFFEFF
                FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FEFDFDD3C1BDC09E8EC0917EB7837CB78084A16E817459779895B7C5CDE3D9E0
                EFC6CBDEC3C7E5BCC2E6999FCB9098C68390C07D95C28093C58395C2909CCAB3
                BFE9B5CBE7B4CDE0CADFF3B8C7E48695BE717CAD676DA08188B0C5CFE0E5EDF4
                F7FEFEFBFDFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFCFFFFF5FCFEE0E5F48C83AC866886B6837ACB8968D08C6BB77E6AB98D8CB1
                8FA67A5C89574D864A4B8F4A51A6424CAC4253AF3947A44448A84A4BAC4142A3
                4443A94848AF4551A544579D4F63A07489B694A7C2BCD3E5C7DCED9BADC67887
                AB6F76A69DA2CFDFE2F7F7FBFFF9FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFF7FEFFA9B7D4656F957F87ADCAC4DFC0AFCD937186B87F77C28067
                CE8364C57A6BAC686E95647E76517F644A8E59499D554DA44D439C443999463E
                A13A369A37389F353AA24146B1353BA5383FA237409C444AA0444C9C606EAD84
                91C2C1D2F0BECCE87685AD616E9895A5C2E5F4F9F7FEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF
                FEFFFEF9FEFED3DCE5767DA87487A8C4D5E9B4C1E25F67A7424AA04F4AA66A4F
                97946B91B77B7DCA8164D8855CD88362D3816DC37976A46A7796617D8F5D8486
                579472498765468B50429A3A3EA53F44AC393A9E403FA44846AF4541B6413FB5
                4244AA4C54B54C58AB6375B2ADC2E3C6DEEC8393B27378AEC0C7E0F3FBFEFBFE
                FFFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FFFCFDFEF6FCFCADB8CD69739EA7B5D5C1D2EF6C79B241479E363CA32F39A436
                3DA74442AA493D926B518994677DB57978C77C6ECA7C68CC8268D38469D08167
                CD7D6BC47C6FC27A73B26D74955F7E6C467F6346896649896F4E8F6B498B6948
                915A40905447965349A74743AA454AAE3D4CA3707BC0ADB8DBA9B8D8626F9D9D
                A2C4E9F0F8FDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCFEFEF3F7FC9FA3C27177ABC2CCEB9CAFCF5359AA3C3DA33938A93B3DB2
                3B41B22D37A63339AB383DAB4442A44F4295564288745081986B88AE767DCA84
                71D78663D8875BD38B59DC8A5CDD875ED57E63CE7B6FBE7877BC7679BC7272C2
                7574BF7478B7737DAC738E946695714F985B4AA7454AAE3D3FAA474CA2899EC5
                BED6E57B88A67D7EA8EAE9F7FCFEFFFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFAFDFED8DFEB8488AFACB4D4A7B4D76570AF4247A74747B73F44B53A3E
                B0363BAA353EA5373EA63A3CAA393FB2353CB13537AD4040B33D3AA145419B51
                4A926A5B91735B8676587F815674976A78AC7978B57F6FBE866DC7866ECD846A
                D58766D3835ED88864D58763DB8B68D08471B77980956A908166A34743994048
                AD4049AA5665AF94A1CCB4BBDA696C9AB9C0D2F4F8FEFDFFFFFEFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFFFFFFFF
                FFFFFFFEFCFCFEE6EDF87279A2AFB8D7AEBFDB4F59A73F42B33E45B93D44B336
                3CAC373FAC3F44B22E34A43B3EAD3939A82F33A6373EB73035AD3739AC353BAF
                3D45B63B43AB414AAC494FB24449AC4A43A14944965851985B52895E517F6F57
                7C805F7E9871879C71819D737E9F747FA87B7DAB7D82A27480916E8F79649A59
                50AC4046AB404AAE3D44B84652B18499C3BCCCE36A7598BFC6D8F6FCFFFEFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFF9FAFF9298B994A8BEBECEE64B4FA54647B64146B93740B4
                333AAF3942B3353EB04144BA3437B23839B2383FB12F39B2353EB53038AB363C
                A9363CAE3D43AE4A50B74545AB4745A94948AB3F44A53B43A74247AB3D3FA444
                44AF4645AF4746A5534CA350459359539A4D4791504C9A554C985A4D91574A96
                4C48A14949AA4748B33F44B43747AC3548A84050AC8D9FC7B5C4DD6C739AD1D0
                E7FCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFEFEFFFFFCFFFFC3C7DD7679A5C9DDEC5566A53D46A63C40B3373D
                B4323BAF3E40B2404BAB404DA53E49AA4347AE3B3F9B3B3EA32B37AF2F35B035
                36A5363BAD2E36A93742AB3A44AD484DB9454BAE454EA1474CA54F53AF484DA2
                454C9F3739A83A3EB6484DA34E4AA14C4DAD46509F45439C4944A13F3EB6464C
                AA504CAA4643A3464DA24A4BA5423F9D3137A43541B03E47AC424EA1A4B6DBA8
                B2D77C7AABEEF2F6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEEF1F87F82AAC1CDE57F8BBB3F4B9E4148AB39
                3FAF4248B93A43AE5556AA7883B57A85AA818AB5858DB67C84AF565DAA404BB9
                383FB63B3BAA3039A82E35A93641AB404DAF474EAC6B6FB48991B89097BC9397
                BC9097B88791BA4B52A34F54B08188B59491B68E94BE8F9EB89395BC767CB54D
                55AF6472AD9799C39C9DC89AA4C79B9EC49597C84C54A93645AA3642A035409F
                4450A0B9CCE4818BB4AFB2D5F8FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEC7CBE38A8EB9B9CAE04D51A2434BAC
                4044AF3A42AF3842AE3F4DAE6F75AFECF4FEF8FFFFFCFEFFFCFEFFF6FCFF818C
                BA3643A13239A93637A43139A8353CB0323EA73B49A94D51A4B9BBD9FCFDFFFE
                FEFFFFFFFFFBFEFFEAF1F9525B9C565CA3E5E9F5FEFDFFFDFEFFFAFFFCFDFEFF
                B1BEDB525AADA4B1D7FBFCFFFDFDFFFBFEFFFDFEFFECEAF9585EAA3340A5353E
                A73D48B53D4CA2687BB3B8CBE66F76AFE8EFF8FDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF8FAFB8A8BABB0B8D97184AD4042
                A53C40A94246B24048B33C45AF3846A97176B0F4F8FEFFFFFFFFFFFFFFFFFFFB
                FDFF8691B63E4AA33E40B14141AE333CA93640AE3643AA3F4EAF545CAABCC0D7
                FFFFFDFFFFFFFFFFFFFFFFFFF1F2F9535B9E5A5FA9EAEDF5FFFFFFFFFFFFFFFF
                FAFEFFFFB3BFDB565AB5ACB3DDFEFFFFFFFFFFFFFFFFFFFFFFECE9F8575BA73E
                48B34146BB3941B64254A85057B5A5B9D77382ADA9B2D2F7FBFFFEFEFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFEF2EFF89294B4D5E1F85D
                66B04045AA3F45B0474CB74049B33B47B13D49B26C78B2F1F9FDFEFFFDFFFFFF
                FFFFFFFDFEFF8E91B9454EA93A3EB13D3FAB353EA7353DA43543A7394BB24E5B
                B2BABDD9FFFFFDFDFFFFFFFFFFFFFFFFF0F2F9555FA05863ADE4ECF5FFFFFFFE
                FFFFFFFFFDFEFFFFB5C0D95654B8B3BAE6FDFFFFFFFFFFFEFFFFFFFFFFECEAF8
                565FA5414AB14047B03D49AE3E46B2494DB37D8CC5B2C7E18896BAF0F8FDFBFE
                FDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFDD0CDE57B85A3
                AAB8D74349AC3943A3383DAA4045B1333BA7333CA9353FAB6474ABEFFBFDFEFF
                FCFFFFFFFFFFFFFDFEFF868BB64048A73A3EAC3A39A4313EA23641A3414DB034
                44AB4653AFB2BAD8FDFFFFFAFFFFFFFFFFFFFFFFF1F5F9545E9C5664AAE3ECF5
                FFFFFFFEFFFFFDFFFDFFFFFFB6BFD55454AFB4BCE4FDFFFFFFFFFFFCFFFEFDFF
                FFEAEEF85562A0414FAC4A4FAC4851AB3F3BBD3F45A74952A2B4C6DF677798D6
                DEEDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFDFFFEA0A7
                CD8091AF97A1CA474BB13B46AF444CB7383EAE3E43B54148B63C43AC6A77B7F6
                FBFDFFFFFDFFFFFFFFFFFFFEFFFF8C94C34C54BC4149A63E3EA73C45AD3A4BAF
                3D47AB484FB3535DB1B3BAD7FEFFFFFFFFFFFFFFFFFFFFFFF4F7F95962A15865
                B1E5EBF5FFFFFEFFFFFFFFFFFFFFFFFFB5BDD65257A6B9C2E0FDFFFFFFFFFFFE
                FFFFFFFFFFECF1F85662A7404AB34544AD4245AC3F46AF3D4AB34951ADC1CBE9
                7888A6C6D0E4FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFD
                FFFF969AC5A7B7D19299C63E3FA93C45B1393FAA3A3EAF363BAD3941B03F47AF
                6E79BBF4FAFDFFFFFEFFFFFFFFFFFFFDFEFF8893BA4650AD43489F4F49AF4242
                AE3B45A74349AA494BB05059B0B6BDD8FFFFFFFFFFFEFFFFFFFFFFFFF4F6F954
                5C9B515CA9E4ECF4FFFFFEFFFFFFFFFFFEFEFFFFB6BFD85158A5B9C5E0FDFFFF
                FFFFFFFDFFFFFFFFFFEAEFF8515DA13E48B04242AB3D3FA83E45AD3C48B24147
                A596A0C89BAAC6C2CCE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFCFEFE9194C1A4AECD979DC9403FAA3842AD3D44AE3D43B03C42B13B40
                AF3F48AE7683C3F5FBFDFFFFFDFFFFFFFFFFFFFDFFFF929BC1505AAA7581B07D
                7CB27C81B86B71AE5353A54D4DB0535EB5B6BFDAFFFFFCFFFFFFFFFFFFFFFFFF
                F6F6F95A62A1525BAAE5EDF5FFFFFEFFFFFFFFFFFEFFFFFFBAC2D9565EAAB6C5
                DFFDFFFFFFFFFFFEFFFFFFFFFFECF2F95A67AC424BB54344B04344AC4149B03D
                46B0444CA79099C4A5B5CC97A1C0FEFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFEFFFF9FA2CB9BA5C69EA2CE4C49B13E47AE3A43AA3F46B33C
                43AF4048B2414BAE7280BEF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8D93C04C589F
                DBE9F5FBFEFFF9FEFEE9F0FA9898C6585CAE5563B7BAC5DFFFFFFDFFFFFEFFFF
                FFFFFFFFF5F7F95C65A65561AEE2EBF5FFFFFCFFFFFFFFFFFFFEFFFFBAC1D955
                59A6BBC8DEFDFFFFFFFFFFFDFFFFFFFFFFECF0F85662A63B45AD3F41AB4346AC
                4047AF3641AC4149A68A92C2A7B7CEA1AAC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFEFFFEC6CAE47E89A5A7ADD24845AA3943A83D45AC
                3940AB343BA7383FA84049AB707ABBF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8C93
                C44A549AE1EBF4FFFFFFFFFFFDFAFEFAE9ECF6777CBC4E5DAEB7C1DCFFFFFEFF
                FFFEFFFFFFFFFFFFF3F5F95E66A75461AEE5EBF5FFFFFDFFFFFFFFFFFEFEFFFF
                B9C0DA545AA8B9C5DEFDFFFFFFFFFFFDFFFFFFFFFFECF1F85563A8424CB54445
                AC3A3AA44047B13B46B04149A4959DC7A0B1C9BBC8DFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFCE0E5F58694AED4DEF45857A84042
                AC343BA34147B03F44B04047B04148AA727DB9F1FAFDFFFFFEFFFFFFFFFFFFFC
                FEFF959BCA595EA9E1ECF6FEFFFFFFFFFFFFFFFBFAFDFE919CC74F5AA7B8BEDB
                FFFFFEFFFFFFFFFFFFFFFFFDF4F6F85E66A4535DA7E4ECF5FFFFFBFFFFFFFFFF
                FFFFFFFFBCC2DE5E61AEBDC6E4FDFFFFFFFFFFFEFFFFFFFFFFE8ECF75058A042
                49B44146AC3E42AD4249B0363FA44349A0B6BFE37D8BA8C7CFE0FDFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFEFFF3F6FB757CA4B9C8DE69
                70A44943AF363DA73739A6393EAA343BA4444AAC6977B0F1F9FDFEFFFDFFFFFF
                FFFFFFFAFEFF8890BD4C51A5DAE7F5FEFFFFFFFFFFFFFFFFF9FFFFACBADA555A
                A6BABADEFCFFFDFEFFFFFFFFFFFFFFFDF5F9FB6C6FB35760A5E0EEF5FFFFFDFF
                FEFFFFFFFFFBFFFDB2BED6525AA4B8C1DFFEFFFCFFFFFDFFFFFFFEFFFEE6F1F8
                595FAB4244B33B44A53D47B23C43AF4146A5454A8FB8BFDA687091D9DEEAFBFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFDFFFBFEFFA9AFCD
                979FC4B5BDD94E57A03440A53841AD3C44B03B46B04753B5727CB2F2F7FDFFFF
                FEFFFFFFFFFFFFFAFDFF8991C049509EDFE5F5FFFFFFFFFFFFFEFFFDF9FEFE89
                94C14D53A9A9B3D9F5FFFDFFFFFEFFFFFFFEFFFFEEF4FA575AA84E57ADD9E8F7
                FBFFFEFFFFFFFFFFFFFEFFFFB2C1D74E5C9DB2BDDFFDFEFFFFFFFFFFFFFFFFFF
                FDE8F0F85C63AC484AB73F4AAD3D4AAE4347BC4046A77C8ABBB9C5E39298BAF4
                FAFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FEE2E3EF6F70A2CBD6E66577A33847A2404AB1353DAB3743AF3647A76D76AAF1
                F8FDFDFFFDFFFFFEFFFFFFF8FEFF8390BB4C5999DFECF4FEFFFFFFFFFFFCFFFC
                DCE5F36C76BC4D56B36E7DB5E7F7FAFEFFFEFDFFFFF9FFFFDAE8F5434E9B4854
                AEA7BBDFF1FEFCFCFFFBFEFFFFFBFDFF7E89BD44529F7B85B8F3F8FCFCFEFDFD
                FEFEFDFFFFC9D0E74D52A34245B13C44AB3948A74044B94650A9A8BBD5818EAE
                B2B7D1FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFBFEFEA3A5C48B95B6B8C9E1465597424BA74047B3343CAD3D4AB1
                6571AFE2F3FDEEFEFFEDFCFFF0FCFFEAF9FF7281BA32488BD2E7F4F4F9FFF5FC
                FFD6E9F57280B13D47A4434DB24D5EA79DB1D4EFFBFFF0FCFFE0F0FB7081B039
                469831419B5165A0D4E8F5EEFEFFEEFAFFB7BEE25256B53947AD4857A4AEB6D3
                ECF9FBF2FBFEE0E9FD7C86BF444CA83A42AC3F47AF3A44A44046A26F7AB2B1BE
                D3707A96EEF3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFCFFFDFFFDFFF8EFF4F7747BA8AFBDDA99A7CC424B964749B03F44
                B43D43B4404CAB5B6DB25F77B16676BC6C7BC16B78BF444CAF344BAA6D86C17D
                87CD6777B64D64A53B4BA63D49B5404AB1474FAD4B54A86472B16D81BB5063AA
                3944A43038A2333CA93A45AA4F5CAB6678B2586AA542509D3C40A72E3EAB394A
                AE4A52A65C6AAA6379AC4C5CA04652B33F4DB54049AE4348B04745AF556296CB
                D6E98283AFC1C3D4FDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFAFBFFFAD1D2EA73789BD2DEEC8994BF4A
                4CA63D3BAE383AAC363FB03947AD3649AA3741B0383EB23C42B2373BB23241B3
                2F43A53039A326369C3648AB303CAA2832A13843AC3940A63B3EAA3841AA3644
                A63340AB3037AC2E33A92D35A7353BAF393FAF3540A23542A03340A2353CA130
                3FAA3843B53F42B04049AE414FAD2E3D9E3B46AF3443A33A45A43E45A8494D9C
                B5C0D99EA3C6918CB5F4F4FAFCFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD4D6E07D81A8
                ADB5D8AAB4D7565EA14847AD393EB0353CAF3A40B52730A32F38A9333EAC3742
                AF2F3BAA2E37A72F39A92934A2333AA83F45B23A40AC4249B43A42A8373EA930
                3AA8252F9F3039A8303BAB2631A22C31A2383DAD383FAB393EAA3139A1363EA6
                323CA6323BA73236A7373DA93E42AA3A44A83B45AD3E43AE3C43A53E49975C67
                A6B4BFDB99A0BF9395B6E5E6F1FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                FED9DCEA7571A8979CC3CED9EC6C74A83E459C3E42AC353AB23942BA2D3FA92F
                41A8353BAE2A32A53138AA2B32A32F38A63238A7383DAC2F34A1353CA63840A7
                3740A8323AA82F37A42D36A527309E222A9B333AA9353AAB3D42B03A42AB2A32
                9B363EA52E3EA22E3EA8313AAB3B40B0343BA83F4CAE3440A4373AA94546A96F
                75AFCBD6EC868BAE8C92ADEFF4F8FCFEFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFFFCFDFFFAE8E7F3918EBF8A88BCD3DDEE8A99BD4B569A444CAB3C42B3
                3643B23D48B9393FB13A3DB13338AA3238AA373BAD3A41B03F47B33D41AF474F
                B84149B13F48B2363EAA3C44AF2C33A1363BAB2B329F3C42AF3B3FB03A40AD34
                3BA43B44AA3B46AD3343A63843AD3B44AF3E45B34045AF4449B2464FAF515CA6
                8B93C0CCD3E68C91AE9291B4EEF2F7FBFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFEFDFEFFF1F2F5F89E9CBF7776A4B2C0D5B6C5E26F7C
                AF4951A0494BAF4748B53C3EAD3A3FAA3536A43C40AD4144B0383EAC2C31A137
                3BA94048B13841A93B42AB4144B0363CA73A41AC3D41AC3135A14247B43D44B1
                3A42AE3840AA434CB33C44AC3940A73A41A93D43A84B4EB0464DA54E51A76E74
                B8AAB4D9BBC9D56E788F9EA4BDF5F5FBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFCFFFCFFFCFCFFFDDADCEA757CA88A
                95B5D0DDECB9C1D87273AE4E4EA34248AB3B40A44046AB3A3DA63C40A74146B2
                3D42B03940AB3F47B0373FA93E46AD474CB64247B33B3FAA4144AF383CA73B41
                AC333BA7393EAA4149B2353DA63D43AC3C3FA54243A94649A74D51A6686CB3B1
                B9D9D1DAEC8B91B6767AA2CDD5E1F2FCFEFDFFFBFEFFFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                EFF4F7A8ABC070739E888AB8C7D1E9C3D1EC7D89BC5C64A44950A04749A84444
                AB474CB3454CB03D42A8494FB7464BB2464CB43E49AE3F4DB1424FB23E4BAE3B
                46AB4049AD424AAD4248AC4B50B25055B55055B15B59AA6D71B68189BFB9C7E4
                C5D9EC8B9BBB6F779CA1A8BEF1F4F9FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFCFDFCFCFDFEE6E6F5A2A6C3656F8E848DABABB7D1D2DDF2B6C5E18E
                9DC47081B05A60A44B4E9B4C519D5356A75355A75051A8494BA64D4EA94A4BA6
                5155AD4345A04541A74F4CB05250A755599B6F75A7919CBFA4B5CECFDDF1B3C0
                D78891B66E73A29C9FC3E1E6F3F6FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFDFDFEFEFFFDFBFCFFEAEDF4C6C7DA8786B46C6F9E
                8C93B59DA7C5C2D1E8D9E8F6C0CEDEBBCBDDB8C5DBA0ADC7939FBE959DC38A94
                B9878FB88C94BB9AA3CCAFBCD6B8C8DBC3D0E0DAE7F3CDD9EA96A0B9838FB16A
                7695848DA6C2CCD6E7ECF4FEFCFEFCFCFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFF9FB
                FEF0F2F9C2C3DB8C8FAF8085A8747EAD616F9F7783B598A4CEACB6E1BBC7EBC5
                D8ECC4D7EAC2D6E8BBCDE1A2B4CB97A8C67E8DB8646F9D6B74A57B82B18288B4
                B7C0D7EDF3FAF8FCFDFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFCFFFFF6FEFFFBFEFFFDFEFFFFFBFDFEE8F1F8CAD3E5ADB8CDABB6CCABB4CB
                AAB3CBABB2D0A5ACCAA4ACCBA2A9CAA2ABC7A8AECCAEB3CEC5CCE1E8EDF5F4FD
                FCF8FEFAFEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFEFFFDFCFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFEFEFFFD
                FFFFFFFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFEFBFFFFFEFFFCFDFDFDFEFEFDFF
                FFFEFFFDFEFDFCFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF00}
              Stretch = True
            end
            object QRLabel29: TQRLabel
              Left = 74
              Top = 6
              Width = 204
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                195.791666666666700000
                15.875000000000000000
                539.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'PT.PISMATEX Textile Industry'
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
          end
          object TitleBand1: TQRBand
            Left = 76
            Top = 105
            Width = 670
            Height = 80
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
              211.666666666666700000
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
                68.791666666666660000
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
              Top = 40
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
                105.833333333333300000
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
              Top = 56
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
                148.166666666666700000
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
              Top = 56
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
                148.166666666666700000
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
              Top = 16
              Width = 95
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                42.333333333333340000
                42.333333333333340000
                251.354166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Petugas Inspect'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel16: TQRLabel
              Left = 536
              Top = 40
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
                105.833333333333300000
                76.729166666666680000)
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
            object QRDBText6: TQRDBText
              Left = 16
              Top = 40
              Width = 63
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                42.333333333333340000
                105.833333333333300000
                166.687500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QMaster
              DataField = 'REKANAN'
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
          end
          object ColumnHeaderBand1: TQRBand
            Left = 76
            Top = 185
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
              60.854166666666660000
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
                42.333333333333340000
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
              Left = 288
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
                762.000000000000000000
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
            object qrlHarga: TQRLabel
              Left = 508
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
                1344.083333333333000000
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
              Left = 564
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
                1492.250000000000000000
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
              Left = 593
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
                1568.979166666667000000
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
            Top = 208
            Width = 670
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ForceNewColumn = False
            ForceNewPage = False
            ParentFont = False
            Size.Values = (
              42.333333333333330000
              1772.708333333333000000)
            BandType = rbDetail
            object QRDBText8: TQRDBText
              Left = 64
              Top = 0
              Width = 209
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                169.333333333333300000
                0.000000000000000000
                552.979166666666800000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = QDetail
              DataField = 'KONSTRUKSI'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText10: TQRDBText
              Left = 440
              Top = 0
              Width = 29
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1164.166666666667000000
                0.000000000000000000
                76.729166666666680000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QDetail
              DataField = 'MUTU'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBHarga: TQRDBText
              Left = 504
              Top = 0
              Width = 23
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1333.500000000000000000
                0.000000000000000000
                60.854166666666680000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QDetail
              DataField = 'QTY'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRSysData2: TQRSysData
              Left = 5
              Top = 0
              Width = 44
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                13.229166666666670000
                0.000000000000000000
                116.416666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              Data = qrsDetailNo
              Transparent = False
              FontSize = 8
            end
            object QRDBText7: TQRDBText
              Left = 288
              Top = 0
              Width = 129
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                762.000000000000000000
                0.000000000000000000
                341.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = QDetail
              DataField = 'CORAK'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText9: TQRDBText
              Left = 554
              Top = 0
              Width = 29
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1465.791666666667000000
                0.000000000000000000
                76.729166666666680000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QDetail
              DataField = 'QTY2'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
            object QRDBText11: TQRDBText
              Left = 610
              Top = 0
              Width = 29
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1613.958333333333000000
                0.000000000000000000
                76.729166666666680000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QDetail
              DataField = 'QTY3'
              Transparent = False
              WordWrap = True
              FontSize = 8
            end
          end
          object SummaryBand1: TQRBand
            Left = 76
            Top = 264
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
              Left = 122
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
                322.791666666666700000
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
              Left = 330
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
                873.124999999999900000
                254.000000000000000000
                531.812500000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QMaster
              DataField = 'TTD2'
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
              Left = 122
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
                322.791666666666700000
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
              Left = 330
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
                873.124999999999900000
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
              Left = 330
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
                873.124999999999900000
                298.979166666666700000
                531.812500000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QTransaksi
              DataField = 'JAB2'
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
              Left = 122
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
                322.791666666666700000
                298.979166666666700000
                531.812500000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QTransaksi
              DataField = 'JAB1'
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
              Left = 460
              Top = 7
              Width = 99
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1217.083333333333000000
                18.520833333333330000
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
              Left = 564
              Top = 7
              Width = 25
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1492.250000000000000000
                18.520833333333330000
                66.145833333333340000)
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
            Top = 452
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
          end
          object QRGroup1: TQRGroup
            Left = 76
            Top = 208
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
            Top = 224
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
                806.979166666666600000
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
              Left = 437
              Top = 8
              Width = 90
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1156.229166666667000000
                21.166666666666670000
                238.125000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              Master = QuickRep1
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(QDetail.QTY)'
              FontSize = 8
            end
            object QRShape1: TQRShape
              Left = 400
              Top = 0
              Width = 249
              Height = 9
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                23.812500000000000000
                1058.333333333333000000
                0.000000000000000000
                658.812500000000000000)
              Shape = qrsHorLine
            end
            object QRExpr2: TQRExpr
              Left = 528
              Top = 8
              Width = 55
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1397.000000000000000000
                21.166666666666670000
                145.520833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              Master = QuickRep1
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(QDetail.QTY2)'
              FontSize = 8
            end
            object QRExpr3: TQRExpr
              Left = 584
              Top = 8
              Width = 55
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
                145.520833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Color = clWhite
              Master = QuickRep1
              ParentFont = False
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'SUM(QDetail.QTY3)'
              FontSize = 8
            end
          end
        end
        object PanelHeader: TPanel
          Left = 0
          Top = 0
          Width = 929
          Height = 48
          Align = alTop
          BevelWidth = 2
          Color = 10485760
          TabOrder = 4
          DesignSize = (
            929
            48)
          object DBText1: TDBText
            Left = 810
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
          object DB2: TDBText
            Left = 17
            Top = 7
            Width = 99
            Height = 33
            Anchors = [akTop, akRight]
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
            Left = 103
            Top = 7
            Width = 114
            Height = 33
            Anchors = [akTop, akRight]
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
            Left = 84
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
          Top = 453
          Width = 929
          Height = 53
          Align = alBottom
          BevelWidth = 2
          Color = clSilver
          TabOrder = 2
          DesignSize = (
            929
            53)
          object Label8: TLabel
            Left = 168
            Top = 8
            Width = 113
            Height = 13
            Caption = 'Default Tanggal Potong'
          end
          object BitBtn1: TBitBtn
            Left = 843
            Top = 24
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            TabOrder = 0
            Kind = bkClose
          end
          object BitBtn2: TBitBtn
            Left = 763
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
            Left = 472
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Preview'
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
          object RadioGroup1: TRadioGroup
            Left = 303
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
            Left = 552
            Top = 8
            Width = 86
            Height = 17
            Caption = 'Tanpa Harga'
            TabOrder = 4
            Visible = False
          end
          object BitBtn3: TBitBtn
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Ambil Nota'
            TabOrder = 5
            OnClick = BitBtn3Click
          end
          object BitBtn4: TBitBtn
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Input Nota'
            TabOrder = 6
            OnClick = BitBtn4Click
          end
          object wwDBDateTimePicker2: TwwDBDateTimePicker
            Left = 168
            Top = 23
            Width = 121
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            ShowButton = True
            TabOrder = 7
            DisplayFormat = 'dd mmm yyyy'
          end
        end
        object PanelTop: TPanel
          Left = 0
          Top = 48
          Width = 929
          Height = 105
          Align = alTop
          BevelWidth = 2
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label3: TLabel
            Left = 15
            Top = 7
            Width = 83
            Height = 13
            Caption = 'Petugas Inspect :'
          end
          object Label6: TLabel
            Left = 488
            Top = 9
            Width = 39
            Height = 13
            Caption = 'Tanggal'
          end
          object DBText4: TDBText
            Left = 488
            Top = 56
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
            Left = 302
            Top = 9
            Width = 23
            Height = 13
            Caption = 'Grup'
          end
          object Label4: TLabel
            Left = 358
            Top = 9
            Width = 21
            Height = 13
            Caption = 'Shift'
          end
          object Label10: TLabel
            Left = 584
            Top = 56
            Width = 66
            Height = 13
            Caption = 'Tanggal Input'
          end
          object Label11: TLabel
            Left = 584
            Top = 77
            Width = 41
            Height = 13
            Caption = 'Operator'
          end
          object DBText5: TDBText
            Left = 660
            Top = 56
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
            Left = 660
            Top = 75
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
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 488
            Top = 25
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
            TabOrder = 0
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 358
            Top = 25
            Width = 41
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'SHIFT'
            DataSource = dsQMaster
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              '0'
              '1'
              '2'
              '3')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
          end
          object look_op: TwwDBLookupComboDlg
            Left = 15
            Top = 29
            Width = 201
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'NAMA_KARYAWAN'#9'30'#9'NAMA KARYAWAN'#9'F'
              'NIK_LAMA'#9'10'#9'NIK'#9'F'
              'KD_GRUP_SHIFT'#9'2'#9'GRUP'#9'F'
              'JABATAN'#9'45'#9'JABATAN'#9'F'
              'BAGIAN'#9'45'#9'BAGIAN'#9'F'
              'SUB_BAGIAN'#9'45'#9'SUB_BAGIAN'#9'F')
            DataField = 'REKANAN'
            DataSource = dsQMaster
            LookupTable = DMFrm.QOp_Inspect
            LookupField = 'NAMA_KARYAWAN'
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnEnter = look_opEnter
          end
          object wwDBComboBox1: TwwDBLookupComboDlg
            Left = 299
            Top = 25
            Width = 46
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
              'GRUP'#9'20'#9'GRUP'#9'F')
            DataField = 'GRUP'
            DataSource = dsQMaster
            LookupTable = DMFrm.QLookGrup
            LookupField = 'GRUP'
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = wwDBComboBox1CloseUp
            OnEnter = wwDBComboBox1Enter
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 0
          Top = 194
          Width = 929
          Height = 259
          DisableThemes = True
          DittoAttributes.ShortCutDittoRecord = 16457
          DisableThemesInTitle = True
          ControlType.Strings = (
            'KD_KONSTRUKSI;CustomEdit;LookKonstruksi;F'
            'KD_CORAK;CustomEdit;LookCorak;F'
            'SATUAN;CustomEdit;LookSatuan;F'
            'JENIS;CustomEdit;LookJenis;F'
            'KODE_PROD;CustomEdit;Look_KP;F')
          Selected.Strings = (
            'KODE_PROD'#9'20'#9'KODE_PROD'#9'F'
            'KD_KONSTRUKSI'#9'6'#9'KODE'#9'F'#9'KONSTRUKSI'
            'KONSTRUKSI'#9'50'#9'NAMA'#9'T'#9'KONSTRUKSI'
            'WEAVING'#9'15'#9'WEAVING'#9'F'
            'RUANG'#9'5'#9'R'#9'F'
            'JENIS'#9'8'#9'JENIS'#9'F'
            'MESIN_TENUN'#9'20'#9'MESIN_TENUN'#9'F'
            'KD_CORAK'#9'6'#9'KODE'#9'F'#9'CORAK'
            'CORAK'#9'14'#9'NAMA'#9'T'#9'CORAK'
            'SATUAN'#9'6'#9'SATUAN'#9'F'
            'PROD'#9'10'#9'TOTAL'#9'F'#9'QTY'
            'BK'#9'10'#9'BK'#9'F'#9'QTY'
            'B1'#9'10'#9'B1'#9'F'#9'QTY'
            'B2'#9'10'#9'B2'#9'F'#9'QTY'
            'LELANG'#9'10'#9'LELANG'#9'F'#9'QTY'
            'BSPARAH'#9'10'#9'BSPARAH'#9'F'#9'QTY'
            'LD'#9'3'#9'LD'#9'F'#9'BGRADE'
            'LT'#9'3'#9'LT'#9'F'#9'BGRADE'
            'LPT'#9'3'#9'LPT'#9'F'#9'BGRADE'
            'LRG'#9'3'#9'LRG'#9'F'#9'BGRADE'
            'WL'#9'3'#9'WL'#9'F'#9'BGRADE'
            'FLO'#9'3'#9'FLO'#9'F'#9'BGRADE'
            'NEPS'#9'3'#9'NEPS'#9'F'#9'BGRADE'
            'PP'#9'3'#9'PP'#9'F'#9'BGRADE'
            'WP'#9'3'#9'WP'#9'F'#9'BGRADE'
            'OJ'#9'3'#9'OJ'#9'F'#9'BGRADE'
            'CRT'#9'3'#9'CRT'#9'F'#9'BGRADE'
            'BTS'#9'3'#9'BTS'#9'F'#9'BGRADE'
            'BTB'#9'3'#9'BTB'#9'F'#9'BGRADE'
            'SC'#9'3'#9'SC'#9'F'#9'BGRADE'
            'SLL'#9'3'#9'SLL'#9'F'#9'BGRADE'
            'CK'#9'3'#9'CK'#9'F'#9'BGRADE'
            'CAJ'#9'3'#9'CAJ'#9'F'#9'BGRADE'
            'KTR'#9'3'#9'KTR'#9'F'#9'BGRADE'
            'PDK'#9'3'#9'PDK'#9'F'#9'BGRADE'
            'KP'#9'3'#9'KP'#9'F'#9'BGRADE'
            'MC'#9'3'#9'MC'#9'F'#9'BGRADE'
            'BOSK'#9'3'#9'BOSK'#9'F'#9'BGRADE'
            'KS'#9'3'#9'KS'#9'F'#9'BGRADE'
            'BO'#9'3'#9'BO'#9'F'#9'BGRADE'
            'FC'#9'3'#9'FC'#9'F'#9'BGRADE'
            'HK'#9'3'#9'HK'#9'F'#9'BGRADE'
            'WM'#9'3'#9'WM'#9'F'#9'BGRADE'
            'SBK'#9'3'#9'SBK'#9'F'#9'BGRADE'
            'UTS'#9'3'#9'UTS'#9'F'#9'BGRADE'
            'KNB'#9'3'#9'KNB'#9'F'#9'BGRADE')
          IniAttributes.Enabled = True
          IniAttributes.SaveToRegistry = True
          IniAttributes.FileName = 'Finishing'
          IniAttributes.Delimiter = ';;'
          ExportOptions.ExportType = wwgetSYLK
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
          KeyOptions = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
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
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object PanelBanner: TPanel
          Left = 0
          Top = 153
          Width = 929
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
            Left = 513
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
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = '2XL'
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
          TabOrder = 5
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
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = LookCorakCloseUp
          OnEnter = LookCorakEnter
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
          TabOrder = 7
          UnboundDataType = wwDefault
        end
        object LookJenis: TwwDBComboBox
          Left = 72
          Top = 392
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
            'BENANG'
            'LAINNYA')
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
        end
        object Look_KP: TwwDBLookupComboDlg
          Left = 473
          Top = 276
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
            'KP'#9'15'#9'KP'#9'F'#9
            'KD_KONSTRUKSI'#9'6'#9'KODE'#9'F'
            'SUB_KELOMPOK'#9'20'#9'SUB_KELOMPOK'#9'F')
          DataField = 'KODE_PROD'
          DataSource = dsQDetail
          LookupTable = DMFrm.QKP_Hasil_Inspect
          LookupField = 'KP'
          TabOrder = 10
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnClick = Look_KPClick
          OnCloseUp = Look_KPCloseUp
          OnEnter = Look_KPEnter
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Browse'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object LabelBanner: TLabel
        Left = 0
        Top = 52
        Width = 882
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
        Width = 882
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
          object Label9: TLabel
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
          object BitBtn5: TBitBtn
            Left = 328
            Top = 20
            Width = 75
            Height = 25
            Caption = 'Filte&r'
            Default = True
            ModalResult = 1
            TabOrder = 3
            OnClick = BitBtn5Click
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
        Width = 882
        Height = 438
        Selected.Strings = (
          'NO_REG'#9'10'#9'NO REG'#9'F'
          'NO_NOTA'#9'15'#9'NO NOTA'#9'F'
          'TGL'#9'15'#9'TANGGAL'#9'F'
          'JENIS_PROSES'#9'30'#9'JENIS PROSES'#9'F'
          'JENIS_SARUNG'#9'30'#9'JENIS SARUNG'#9'F'
          'ML'#9'10'#9'METER LABEL'#9'F'
          'MI'#9'10'#9'METER INSPECT'#9'F'
          'TGL_DETAIL'#9'15'#9'TGL TERIMA'#9'F'
          'TGL_INSPECT'#9'15'#9'TGL INSPECT'#9'F'
          'SJ'#9'30'#9'NO. SJ'#9'F'
          'WARNA'#9'15'#9'WARNA'#9'F'
          'KODE'#9'10'#9'KODE'#9'F'
          'PROSES'#9'30'#9'PROSES'#9'F'
          'REKANAN'#9'30'#9'REKANAN'#9'F'
          'CEK'#9'10'#9'CEK'#9'F'
          'AFFAL'#9'10'#9'AFFAL'#9'F'
          'AFFAL_NO'#9'10'#9'AFFAL TDK CBT'#9'F'
          'WTS'#9'10'#9'WTS'#9'F'
          'LD'#9'10'#9'LS DOBEL'#9'F'#9'CACAT TENUN'
          'LT'#9'10'#9'LS TEGANG'#9'F'#9'CACAT TENUN'
          'LPT'#9'10'#9'LS PUTUS'#9'F'#9'CACAT TENUN'
          'LRG'#9'10'#9'LS RENGGANG'#9'F'#9'CACAT TENUN'
          'WL'#9'10'#9'WARNA LS'#9'F'#9'CACAT TENUN'
          'FLO'#9'10'#9'FLOAT'#9'F'#9'CACAT TENUN'
          'NEPS'#9'10'#9'NEPS'#9'F'#9'CACAT TENUN'
          'PP'#9'10'#9'PK PUTUS'#9'F'#9'CACAT TENUN'
          'OJ'#9'10'#9'OTO JRUM'#9'F'#9'CACAT TENUN'
          'CRT'#9'10'#9'RING TEMPLE'#9'F'#9'CACAT TENUN'
          'BTS'#9'10'#9'BAR TPS'#9'F'#9'CACAT TENUN'
          'BTB'#9'10'#9'BAR TB'#9'F'#9'CACAT TENUN'
          'SC'#9'10'#9'SALAH CORAK'#9'F'#9'CACAT TENUN'
          'SLL'#9'10'#9'SELILIT'#9'F'#9'CACAT TENUN'
          'CK'#9'10'#9'CACAT TK'#9'F'#9'CACAT TENUN'
          'CAJ'#9'10'#9'TUCK IN'#9'F'#9'CACAT TENUN'
          'TK'#9'10'#9'TEPI KAIN'#9'F'#9'CACAT TENUN'
          'KTR'#9'10'#9'KOTOR/NODA OLI'#9'F'#9'CACAT FINISH'
          'PDK'#9'10'#9'PENDEK'#9'F'#9'CACAT FINISH'
          'LK'#9'10'#9'LBR KRG'#9'F'#9'CACAT FINISH'
          'MC'#9'10'#9'MELIPAT CLNDER'#9'F'#9'CACAT FINISH'
          'BS'#9'10'#9'BOW/SKEW'#9'F'#9'CACAT FINISH'
          'KS'#9'10'#9'KLIP STNTER'#9'F'#9'CACAT FINISH'
          'CTK'#9'10'#9'CACAT TEPI KAIN'#9'F'#9'CACAT FINISH'
          'FC'#9'10'#9'FLEX CLNDER'#9'F'#9'CACAT FINISH'
          'HK'#9'10'#9'HANDFEEL/KILP'#9'F'#9'CACAT FINISH'
          'WTM'#9'10'#9'WATERMARK'#9'F'#9'CACAT PRINTING'
          'WK'#9'10'#9'WARNA KAIN'#9'F'#9'CACAT PRINTING'
          'M_SAMAR'#9'10'#9'M SAMAR'#9'F'#9'CACAT PRINTING'
          'M_RUSAK'#9'10'#9'M RUSAK'#9'F'#9'CACAT PRINTING'
          'M_OUIT'#9'10'#9'M OUIT-SET'#9'F'#9'CACAT PRINTING'
          'M_BELANG'#9'10'#9'M BELANG'#9'F'#9'CACAT PRINTING'
          'F_STEAMER'#9'10'#9'FLEX STEAMER'#9'F'#9'CACAT PRINTING'
          'F_PRINT'#9'10'#9'FLEX PRINT'#9'F'#9'CACAT PRINTING'
          'F_STAMPING'#9'10'#9'FLEX STAMPING'#9'F'#9'CACAT PRINTING'
          'TOT_BGRADE'#9'10'#9'TOTAL BGRADE'#9'F'
          'P_TOT_BGRADE'#9'10'#9'% TOTAL BGRADE'#9'F'
          'BS_SOBEK'#9'10'#9'SOBEK'#9'F'#9'BS PARAH'
          'BS_UTS'#9'10'#9'UTS'#9'F'#9'BS PARAH'
          'BS_KNB'#9'10'#9'KOTOR NODA BERAT'#9'F'#9'BS PARAH'
          'BS_FLEX'#9'10'#9'FLEX'#9'F'#9'BS PARAH'
          'BS_WTS'#9'10'#9'WTS'#9'F'#9'BS PARAH'
          'BS_OSETTING'#9'10'#9'OUT SETTING'#9'F'#9'BS PARAH'
          'BSM_RUSAK'#9'10'#9'MOTIF RUSAK'#9'F'#9'BS PARAH'
          'TOT_BS'#9'10'#9'TOTAL BS'#9'F'
          'P_TOT_BS'#9'10'#9'% TOTAL BS'#9'F'
          'TOT_BK'#9'10'#9'TOTAL BK'#9'F'
          'P_TOT_BK'#9'10'#9'% TOTAL BK'#9'F')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Finishing'
        IniAttributes.Delimiter = ';;'
        ExportOptions.ExportType = wwgetSYLK
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
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgDblClickColSizing]
        ParentFont = False
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
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'NO_REG'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Laporan Per Konstruksi'
      ImageIndex = 2
      TabVisible = False
      object Label17: TLabel
        Left = 0
        Top = 52
        Width = 882
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
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 52
        Align = alTop
        BevelInner = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox3: TGroupBox
          Left = 2
          Top = 2
          Width = 287
          Height = 48
          Align = alLeft
          Caption = 'Filter Tanggal'
          TabOrder = 0
          TabStop = True
          object Label14: TLabel
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
          object VTglAwal3: TwwDBDateTimePicker
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
            OnChange = VTglAwal3Change
          end
          object vTglAkhir3: TwwDBDateTimePicker
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
            OnChange = vTglAkhir3Change
          end
        end
        object Panel9: TPanel
          Left = 289
          Top = 2
          Width = 568
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn7: TBitBtn
            Left = 12
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Filte&r'
            Default = True
            ModalResult = 1
            TabOrder = 0
            OnClick = BitBtn7Click
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
          object BtnExport3: TBitBtn
            Left = 92
            Top = 16
            Width = 97
            Height = 25
            Caption = '&Export2Excel'
            TabOrder = 1
            OnClick = BtnExport3Click
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
      object wwDBGrid5: TwwDBGrid
        Left = 0
        Top = 68
        Width = 882
        Height = 438
        Selected.Strings = (
          'KONSTRUKSI'#9'50'#9'KONSTRUKSI'#9'F'
          'KD_PRODUKSI'#9'10'#9'KD_PRODUKSI'#9'F'
          'POTONG'#9'30'#9'POTONG'#9'F'#9'JUMLAH'
          'QTY'#9'30'#9'KODI'#9'F'#9'JUMLAH')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Finishing'
        IniAttributes.Delimiter = ';;'
        ExportOptions.ExportType = wwgetSYLK
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DsPerKonstruksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgDblClickColSizing]
        ParentFont = False
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
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Jenis Proses'
      ImageIndex = 5
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 10485760
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object LTitle: TLabel
          Left = 16
          Top = 8
          Width = 123
          Height = 23
          Cursor = crHandPoint
          Caption = 'Jenis Proses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Georgia'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 451
        Width = 882
        Height = 55
        Align = alBottom
        TabOrder = 1
        object LRecords: TLabel
          Left = 8
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Jml. Record'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object BtnClose: TBitBtn
          Left = 170
          Top = 24
          Width = 75
          Height = 25
          TabOrder = 1
          Kind = bkClose
        end
        object BtnSimpan: TBitBtn
          Left = 90
          Top = 24
          Width = 75
          Height = 25
          Caption = '&Simpan'
          Enabled = False
          TabOrder = 0
          OnClick = BtnSimpanClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
            7700333333337777777733333333008088003333333377F73377333333330088
            88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
            000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
            FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
            99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          NumGlyphs = 2
        end
        object BitBtn11: TBitBtn
          Left = 9
          Top = 24
          Width = 75
          Height = 25
          Caption = '&Print'
          TabOrder = 2
          Visible = False
          OnClick = BitBtn5Click
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
        object BitBtn12: TBitBtn
          Left = 254
          Top = 24
          Width = 97
          Height = 25
          Caption = '&Export Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = BitBtn2Click
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 41
        Width = 882
        Height = 410
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 2
        object TabSheet7: TTabSheet
          Caption = 'Form Edit'
          OnShow = TabSheet7Show
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 874
            Height = 49
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object BtnBrowse: TSpeedButton
              Left = 82
              Top = 16
              Width = 23
              Height = 25
              GroupIndex = 1
              Down = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
                333333333F777773FF333333008888800333333377333F3773F3333077870787
                7033333733337F33373F3308888707888803337F33337F33337F330777880887
                7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
                7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
                00333337777777777733333308033308033333337F7F337F7F33333308033308
                033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
                7333333373F77733733333333088888033333333373FFFF73333333333000003
                3333333333777773333333333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = BtnBrowseClick
            end
            object BtnEditing: TSpeedButton
              Left = 8
              Top = 16
              Width = 75
              Height = 25
              GroupIndex = 1
              Caption = '&Editing'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
                333333333F777773FF333333008888800333333377333F3773F3333077870787
                7033333733337F33373F3308888707888803337F33337F33337F330777880887
                7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
                7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
                0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
                03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
                033333337F73FF737F33B33B778000877333333373F777337333333B30888880
                33333333373FFFF73333333B3300000333333333337777733333}
              NumGlyphs = 2
              OnClick = BtnEditingClick
            end
            object Label5: TLabel
              Left = 136
              Top = 6
              Width = 44
              Height = 13
              Caption = 'Cari Data'
            end
            object ECari3: TEdit
              Left = 136
              Top = 22
              Width = 145
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
            end
            object BitBtn13: TBitBtn
              Left = 288
              Top = 16
              Width = 75
              Height = 25
              Caption = 'F&ilter'
              Default = True
              ModalResult = 1
              TabOrder = 1
              OnClick = BitBtn13Click
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
            object cbOtomatis3: TCheckBox
              Left = 188
              Top = 5
              Width = 97
              Height = 17
              Caption = 'Otomatis'
              TabOrder = 2
              OnClick = cbOtomatisClick
            end
          end
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 49
            Width = 874
            Height = 333
            ControlType.Strings = (
              'ISDETAIL;CheckBox;1;0'
              'KD_CASH;CustomEdit;LookCash;F'
              'MU;CustomEdit;LookMU;F'
              'X1000;CheckBox;1;0')
            Selected.Strings = (
              'JENIS_PROSES'#9'30'#9'JENIS_PROSES'#9'F')
            IniAttributes.Enabled = True
            IniAttributes.SaveToRegistry = True
            IniAttributes.FileName = 'Finishing'
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetHTML
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clSkyBlue
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsQJenis
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
            OnTitleButtonClick = wwDBGrid2TitleButtonClick
            OnDblClick = wwDBGrid2DblClick
            PaintOptions.AlternatingRowColor = clMoneyGreen
            PaintOptions.ActiveRecordColor = clGreen
          end
        end
        object TabSheet8: TTabSheet
          ImageIndex = 2
          TabVisible = False
          OnShow = TabSheet2Show
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 874
            Height = 49
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            Visible = False
            object BtnBrowse2: TSpeedButton
              Left = 82
              Top = 16
              Width = 23
              Height = 25
              GroupIndex = 1
              Down = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
                333333333F777773FF333333008888800333333377333F3773F3333077870787
                7033333733337F33373F3308888707888803337F33337F33337F330777880887
                7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
                7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
                00333337777777777733333308033308033333337F7F337F7F33333308033308
                033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
                7333333373F77733733333333088888033333333373FFFF73333333333000003
                3333333333777773333333333333333333333333333333333333}
              NumGlyphs = 2
              Visible = False
            end
            object BtnEditing2: TSpeedButton
              Left = 8
              Top = 16
              Width = 75
              Height = 25
              GroupIndex = 1
              Caption = '&Editing'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
                333333333F777773FF333333008888800333333377333F3773F3333077870787
                7033333733337F33373F3308888707888803337F33337F33337F330777880887
                7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
                7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
                0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
                03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
                033333337F73FF737F33B33B778000877333333373F777337333333B30888880
                33333333373FFFF73333333B3300000333333333337777733333}
              NumGlyphs = 2
              Visible = False
            end
            object Label16: TLabel
              Left = 136
              Top = 6
              Width = 44
              Height = 13
              Caption = 'Cari Data'
              Visible = False
            end
            object ECari2: TEdit
              Left = 136
              Top = 22
              Width = 145
              Height = 19
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 0
              Visible = False
            end
            object BitBtn14: TBitBtn
              Left = 288
              Top = 16
              Width = 75
              Height = 25
              Caption = 'C&ari'
              Default = True
              ModalResult = 1
              TabOrder = 1
              Visible = False
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
          end
          object wwDBGrid3: TwwDBGrid
            Left = 0
            Top = 49
            Width = 729
            Height = 333
            ControlType.Strings = (
              'ISAKTIF;CheckBox;1;0'
              'ID_SUB_BAG;CustomEdit;LookBagian;F'
              'ID_HAK;CustomEdit;LookJnsMenu;F'
              'ISDETAIL;CheckBox;1;0')
            PictureMasks.Strings = (
              'ID_BAG'#9'*2{#,&}'#9'T'#9'T'
              'KD_JNS_ITEM'#9'#,&'#9'T'#9'T'
              'KD_SATUAN'#9'#,&'#9'T'#9'T'
              'ID_USER'#9'*3{&,#}'#9'T'#9'T')
            Selected.Strings = (
              'MU'#9'7'#9'MU'#9#9
              'TAHUN'#9'10'#9'TAHUN'#9#9
              'B00'#9'10'#9'B00'#9#9
              'B01'#9'10'#9'B01'#9#9
              'B02'#9'10'#9'B02'#9#9
              'B03'#9'10'#9'B03'#9#9
              'B04'#9'10'#9'B04'#9#9
              'B05'#9'10'#9'B05'#9#9
              'B06'#9'10'#9'B06'#9#9
              'B07'#9'10'#9'B07'#9#9
              'B08'#9'10'#9'B08'#9#9
              'B09'#9'10'#9'B09'#9#9
              'B10'#9'10'#9'B10'#9#9
              'B11'#9'10'#9'B11'#9#9
              'B12'#9'10'#9'B12'#9#9)
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
            Align = alLeft
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
            Visible = False
            PaintOptions.AlternatingRowColor = clMoneyGreen
            PaintOptions.ActiveRecordColor = clGreen
            GroupFieldName = 'SUB_BAGIAN'
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Laporan Per Operator'
      ImageIndex = 3
      TabVisible = False
      object Label19: TLabel
        Left = 0
        Top = 52
        Width = 882
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
      object wwDBGrid7: TwwDBGrid
        Left = 0
        Top = 68
        Width = 882
        Height = 438
        Selected.Strings = (
          'REKANAN'#9'30'#9'OPERATOR'#9'F'
          'KONSTRUKSI'#9'50'#9'KONSTRUKSI'#9'F'
          'POTONG'#9'30'#9'POTONG'#9'F'#9'PRODUKSI'
          'QTY'#9'30'#9'KODI'#9'F'#9'PRODUKSI')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Finishing'
        IniAttributes.Delimiter = ';;'
        ExportOptions.ExportType = wwgetSYLK
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsQPerOperator
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgDblClickColSizing]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'REKANAN'
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 52
        Align = alTop
        BevelInner = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object GroupBox5: TGroupBox
          Left = 2
          Top = 2
          Width = 287
          Height = 48
          Align = alLeft
          Caption = 'Filter Tanggal'
          TabOrder = 0
          TabStop = True
          object Label15: TLabel
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
          object VTglAwal5: TwwDBDateTimePicker
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
            OnChange = VTglAwal5Change
          end
          object VTglAkhir5: TwwDBDateTimePicker
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
            OnChange = VTglAkhir5Change
          end
        end
        object Panel13: TPanel
          Left = 289
          Top = 2
          Width = 568
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn9: TBitBtn
            Left = 12
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Filte&r'
            Default = True
            ModalResult = 1
            TabOrder = 0
            OnClick = BitBtn9Click
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
          object BitBtn10: TBitBtn
            Left = 92
            Top = 16
            Width = 97
            Height = 25
            Caption = '&Export2Excel'
            TabOrder = 1
            OnClick = BitBtn10Click
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 566
    Width = 1231
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 3
  end
  object PanelRight: TPanel
    Left = 1027
    Top = 32
    Width = 204
    Height = 534
    Align = alRight
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 4
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.bukti5 a'
      'where kd_transaksi=:kd_transaksi and no_reg=:no_reg'
      'order by a.tgl desc')
    Variables.Data = {
      03000000020000000D0000003A4B445F5452414E53414B534905000000000000
      0000000000070000003A4E4F5F524547030000000000000000000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'IPISMA_DB5.REG_BUKTI5'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000015000000060000004E4F5F5245470100000000000300000054474C01
      00000000000A0000004E4F5F4B4F4E5452414B0100000000000A0000004B4554
      4552414E47414E0100000000000A0000004B445F52454B414E414E0100000000
      00060000005354415455530100000000000A00000054474C5F494E5345525401
      00000000000A0000004F50525F494E534552540100000000000C0000004B445F
      5452414E53414B53490100000000000400000054544431010000000000040000
      005454443201000000000004000000545444330100000000000700000052454B
      414E414E010000000000060000004953504F5354010000000000070000004E4F
      5F4E4F5441010000000000040000004752555001000000000005000000534849
      4654010000000000080000004E4F5F42554B5449010000000000080000004E4F
      5F4F524445520100000000000C0000004A454E49535F50524F53455301000000
      00000B00000054474C5F494E5350454354010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeQuery = QMasterBeforeQuery
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforePost = QMasterBeforePost
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QMasterNewRecord
    Left = 18
    Top = 265
    object QMasterNO_REG: TFloatField
      FieldName = 'NO_REG'
      Required = True
    end
    object QMasterTGL: TDateTimeField
      FieldName = 'TGL'
      Required = True
    end
    object QMasterNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
    end
    object QMasterNO_KONTRAK: TStringField
      FieldName = 'NO_KONTRAK'
    end
    object QMasterKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QMasterKD_REKANAN: TFloatField
      FieldName = 'KD_REKANAN'
    end
    object QMasterSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object QMasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QMasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QMasterKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QMasterTTD1: TStringField
      FieldName = 'TTD1'
      Size = 30
    end
    object QMasterTTD2: TStringField
      FieldName = 'TTD2'
      Size = 30
    end
    object QMasterTTD3: TStringField
      FieldName = 'TTD3'
      Size = 30
    end
    object QMasterREKANAN: TStringField
      FieldName = 'REKANAN'
      Size = 80
    end
    object QMasterISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QMasterGRUP: TStringField
      FieldName = 'GRUP'
      Required = True
      Size = 3
    end
    object QMasterSHIFT: TStringField
      FieldName = 'SHIFT'
      Required = True
      Size = 3
    end
    object QMasterNO_BUKTI: TStringField
      FieldName = 'NO_BUKTI'
    end
    object QMasterNO_ORDER: TStringField
      FieldName = 'NO_ORDER'
    end
    object QMasterJENIS_PROSES: TStringField
      FieldName = 'JENIS_PROSES'
      Size = 50
    end
    object QMasterTGL_INSPECT: TDateTimeField
      FieldName = 'TGL_INSPECT'
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.bukti5_detail a'
      'where a.no_reg = :no_reg')
    Variables.Data = {0300000001000000070000003A4E4F5F524547040000000000000000000000}
    SequenceField.Field = 'NO_REG_DETAIL'
    SequenceField.Sequence = 'IPISMA_DB5.REG_BUKTI5_DETAIL'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      04000000400000000D0000004E4F5F5245475F44455441494C01000000000006
      0000004E4F5F5245470100000000000A0000004B4F4E535452554B5349010000
      00000005000000434F52414B010000000000040000004D555455010000000000
      0A00000054474C5F494E534552540100000000000A0000004F50525F494E5345
      52540100000000000600000053415455414E0100000000000D0000004B445F4B
      4F4E535452554B5349010000000000080000004B445F434F52414B0100000000
      00030000004E494B0100000000000C0000004E4F5F534552495F4245414D0100
      00000000070000004B445F4954454D0100000000000300000051545901000000
      00000A0000004B45544552414E47414E010000000000050000004A454E495301
      0000000000040000004752555001000000000005000000534849465401000000
      0000090000004F50525F54454E554E010000000000090000004E4F5F44455341
      494E0100000000000B0000004D4553494E5F54454E554E010000000000080000
      004E4F5F4D4553494E010000000000080000004E4F5F52455345500100000000
      00050000004E4F5F504F010000000000030000004B5452010000000000030000
      0050444B010000000000020000004D43010000000000020000004B5301000000
      000002000000464301000000000002000000484B010000000000090000004B4F
      44455F50524F44010000000000020000004D4C010000000000020000004D4901
      00000000000300000043454B01000000000005000000414646414C0100000000
      0008000000414646414C5F4E4F01000000000003000000575453010000000000
      020000004C4B0100000000000200000042530100000000000300000043544B01
      00000000000300000057544D010000000000070000004D5F53414D4152010000
      000000070000004D5F525553414B010000000000080000004D5F42454C414E47
      010000000000060000004D5F4F55495401000000000009000000465F53544541
      4D455201000000000007000000465F5052494E540100000000000A000000465F
      5354414D50494E470100000000000A000000544F545F42475241444501000000
      00000C000000505F544F545F4247524144450100000000000800000042535F53
      4F42454B0100000000000600000042535F555453010000000000060000004253
      5F4B4E420100000000000700000042535F464C45580100000000000600000042
      535F5754530100000000000B00000042535F4F53455454494E47010000000000
      0900000042534D5F525553414B01000000000006000000544F545F4253010000
      00000008000000505F544F545F42530100000000000300000054474C01000000
      000002000000534A010000000000050000005741524E41010000000000060000
      00544F545F424B01000000000008000000505F544F545F424B010000000000}
    Master = QMaster
    MasterFields = 'NO_REG'
    DetailFields = 'NO_REG'
    Session = DMFrm.OS
    BeforeEdit = QDetailBeforeEdit
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QDetailNewRecord
    Left = 10
    Top = 209
    object QDetailNO_REG_DETAIL: TFloatField
      FieldName = 'NO_REG_DETAIL'
      Required = True
    end
    object QDetailNO_REG: TFloatField
      FieldName = 'NO_REG'
    end
    object QDetailNIK: TStringField
      FieldName = 'NIK'
      Size = 30
    end
    object QDetailNO_SERI_BEAM: TStringField
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
    end
    object QDetailKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 100
    end
    object QDetailCORAK: TStringField
      FieldName = 'CORAK'
      Size = 50
    end
    object QDetailMUTU: TStringField
      FieldName = 'MUTU'
      Size = 30
    end
    object QDetailTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 10
    end
    object QDetailKD_KONSTRUKSI: TStringField
      FieldName = 'KD_KONSTRUKSI'
      Size = 6
    end
    object QDetailKD_CORAK: TStringField
      FieldName = 'KD_CORAK'
      Size = 6
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QDetailJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object QDetailGRUP: TStringField
      FieldName = 'GRUP'
      Size = 3
    end
    object QDetailSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 3
    end
    object QDetailOPR_TENUN: TStringField
      FieldName = 'OPR_TENUN'
      Size = 50
    end
    object QDetailNO_DESAIN: TStringField
      FieldName = 'NO_DESAIN'
      Size = 30
    end
    object QDetailMESIN_TENUN: TStringField
      FieldName = 'MESIN_TENUN'
    end
    object QDetailNO_MESIN: TStringField
      FieldName = 'NO_MESIN'
    end
    object QDetailNO_RESEP: TStringField
      FieldName = 'NO_RESEP'
    end
    object QDetailNO_PO: TStringField
      FieldName = 'NO_PO'
      Size = 25
    end
    object QDetailKODE_PROD: TStringField
      FieldName = 'KODE_PROD'
      Size = 30
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailML: TFloatField
      FieldName = 'ML'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailMI: TFloatField
      FieldName = 'MI'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCEK: TFloatField
      FieldName = 'CEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailAFFAL: TFloatField
      FieldName = 'AFFAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailAFFAL_NO: TFloatField
      FieldName = 'AFFAL_NO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWTS: TFloatField
      FieldName = 'WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKTR: TFloatField
      FieldName = 'KTR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPDK: TFloatField
      FieldName = 'PDK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLK: TFloatField
      FieldName = 'LK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailMC: TFloatField
      FieldName = 'MC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS: TFloatField
      FieldName = 'BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKS: TFloatField
      FieldName = 'KS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCTK: TFloatField
      FieldName = 'CTK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFC: TFloatField
      FieldName = 'FC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailHK: TFloatField
      FieldName = 'HK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWTM: TFloatField
      FieldName = 'WTM'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_SAMAR: TFloatField
      FieldName = 'M_SAMAR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_RUSAK: TFloatField
      FieldName = 'M_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_BELANG: TFloatField
      FieldName = 'M_BELANG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_OUIT: TFloatField
      FieldName = 'M_OUIT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailF_STEAMER: TFloatField
      FieldName = 'F_STEAMER'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailF_PRINT: TFloatField
      FieldName = 'F_PRINT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailF_STAMPING: TFloatField
      FieldName = 'F_STAMPING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailTOT_BGRADE: TFloatField
      FieldName = 'TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailP_TOT_BGRADE: TFloatField
      FieldName = 'P_TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_SOBEK: TFloatField
      FieldName = 'BS_SOBEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_UTS: TFloatField
      FieldName = 'BS_UTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_KNB: TFloatField
      FieldName = 'BS_KNB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_FLEX: TFloatField
      FieldName = 'BS_FLEX'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_WTS: TFloatField
      FieldName = 'BS_WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_OSETTING: TFloatField
      FieldName = 'BS_OSETTING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBSM_RUSAK: TFloatField
      FieldName = 'BSM_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailTOT_BS: TFloatField
      FieldName = 'TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailP_TOT_BS: TFloatField
      FieldName = 'P_TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailTGL: TDateTimeField
      FieldName = 'TGL'
      DisplayFormat = 'dd-mm-yyyy'
    end
    object QDetailSJ: TStringField
      FieldName = 'SJ'
      Size = 30
    end
    object QDetailWARNA: TStringField
      FieldName = 'WARNA'
      Size = 30
    end
    object QDetailTOT_BK: TFloatField
      FieldName = 'TOT_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailP_TOT_BK: TFloatField
      FieldName = 'P_TOT_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 42
    Top = 161
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 88
    Top = 128
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db5.transaksi'
      'where kd_transaksi=:kd_transaksi')
    Variables.Data = {
      03000000010000000D0000003A4B445F5452414E53414B534905000000040000
      005230320000000000}
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
    Left = 80
    Top = 80
  end
  object FNo_Urut: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db5.fno_urut_p3(:pkode,:ptgl) as no_nota from dual')
    Variables.Data = {
      0300000002000000060000003A504B4F44450500000004000000523032000000
      0000050000003A5054474C0C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000070000004E4F5F4E4F5441010000000000}
    BeforeQuery = FNo_UrutBeforeQuery
    Session = DMFrm.OS
    Left = 72
    Top = 272
    object FNo_UrutNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 4000
    end
  end
  object LookMaster: TwwLookupDialog
    Selected.Strings = (
      'NO_NOTA'#9'16'#9'NO NOTA'#9'F'
      'TGL'#9'12'#9'TGL'#9#9
      'STATUS'#9'10'#9'STATUS'#9#9
      'ISPOST'#9'1'#9'POST'#9#9
      'GRUP'#9'3'#9'GRUP'#9'F'
      'SHIFT'#9'3'#9'SHIFT'#9'F')
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
  object QTotal: TOracleDataSet
    SQL.Strings = (
      
        'select sum(qty) as bk, sum (qty2) as bs, sum(qty3) as parah from' +
        ' ipisma_db5.bukti3_detail a'
      'where a.no_reg = :no_reg')
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000300000002000000424B010000000000020000004253010000000000
      050000005041524148010000000000}
    Session = DMFrm.OS
    BeforeOpen = QTotalBeforeOpen
    Left = 529
    Top = 400
    object QTotalBK: TFloatField
      FieldName = 'BK'
    end
    object QTotalBS: TFloatField
      FieldName = 'BS'
    end
    object QTotalPARAH: TFloatField
      FieldName = 'PARAH'
    end
  end
  object QAmbilData: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db5.proc_hasil_ReInspect(:no_reg);'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    Left = 296
    Top = 400
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      
        'select * from (select * from ipisma_db5.vrekap_hasil_reinspect_p' +
        'roses'
      'where kd_transaksi=:kd_transaksi)'
      ':myparam')
    Variables.Data = {
      0300000002000000080000003A4D59504152414D010000002C00000077686572
      652074676C3D746F5F64617465287379736461746529206F7264657220627920
      4E4F5F4E4F544100000000000D0000003A4B445F5452414E53414B5349050000
      00040000005230320000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000062000000070000004E4F5F4E4F5441010000000000060000004E4F5F
      5245470100000000000300000054474C01000000000004000000475255500100
      000000000500000053484946540100000000000A0000004B4F4E535452554B53
      4901000000000005000000434F52414B010000000000050000004A454E495301
      00000000000D0000004B445F4B4F4E535452554B534901000000000008000000
      4B445F434F52414B010000000000040000004D5554550100000000000A000000
      4B45544552414E47414E0100000000000700000052454B414E414E0100000000
      000C0000004B445F5452414E53414B5349010000000000090000004B4F44455F
      50524F440100000000000A0000004E4F5F4B4F4E5452414B0100000000000A00
      00004B445F52454B414E414E0100000000000600000053544154555301000000
      00000A00000054474C5F494E534552540100000000000A0000004F50525F494E
      53455254010000000000060000004953504F5354010000000000080000004E4F
      5F42554B5449010000000000080000004E4F5F4F524445520100000000000D00
      00004E4F5F5245475F44455441494C010000000000030000004E494B01000000
      00000C0000004E4F5F534552495F4245414D010000000000070000004B445F49
      54454D0100000000000600000053415455414E010000000000090000004F5052
      5F54454E554E010000000000090000004E4F5F44455341494E0100000000000B
      0000004D4553494E5F54454E554E010000000000080000004E4F5F4D4553494E
      010000000000080000004E4F5F5245534550010000000000050000004E4F5F50
      4F01000000000003000000515459010000000000020000004D4C010000000000
      020000004D490100000000000300000043454B01000000000005000000414646
      414C01000000000008000000414646414C5F4E4F010000000000030000005754
      53010000000000030000004B54520100000000000300000050444B0100000000
      00020000004C4B010000000000020000004D4301000000000002000000425301
      0000000000020000004B530100000000000300000043544B0100000000000200
      0000464301000000000002000000484B0100000000000300000057544D010000
      000000070000004D5F53414D4152010000000000070000004D5F525553414B01
      0000000000080000004D5F42454C414E47010000000000060000004D5F4F5549
      5401000000000009000000465F535445414D455201000000000007000000465F
      5052494E540100000000000A000000465F5354414D50494E470100000000000A
      000000544F545F4247524144450100000000000C000000505F544F545F424752
      4144450100000000000800000042535F534F42454B0100000000000600000042
      535F5554530100000000000600000042535F4B4E420100000000000700000042
      535F464C45580100000000000600000042535F5754530100000000000B000000
      42535F4F53455454494E470100000000000900000042534D5F525553414B0100
      0000000006000000544F545F425301000000000008000000505F544F545F4253
      0100000000000A00000054474C5F44455441494C01000000000002000000534A
      010000000000050000005741524E410100000000000C0000004A454E49535F50
      524F53455301000000000006000000544F545F424B0100000000000800000050
      5F544F545F424B010000000000020000004C44010000000000020000004C5401
      0000000000030000004C5054010000000000030000004C524701000000000002
      000000574C01000000000003000000464C4F010000000000040000004E455053
      010000000000020000005050010000000000020000004F4A0100000000000300
      0000435254010000000000030000004254530100000000000300000042544201
      000000000002000000534301000000000003000000534C4C0100000000000200
      0000434B0100000000000300000043414A01000000000002000000544B010000
      0000000C0000004A454E49535F534152554E4701000000000002000000574B01
      00000000000C00000052454B414E414E5F41544153010000000000040000004B
      4F44450100000000000600000050524F5345530100000000000B00000054474C
      5F494E5350454354010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    Left = 204
    Top = 217
    object QBrowseNO_REG: TFloatField
      FieldName = 'NO_REG'
      Required = True
    end
    object QBrowseTGL: TDateTimeField
      FieldName = 'TGL'
      Required = True
    end
    object QBrowseNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
    end
    object QBrowseNO_KONTRAK: TStringField
      FieldName = 'NO_KONTRAK'
    end
    object QBrowseKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QBrowseKD_REKANAN: TFloatField
      FieldName = 'KD_REKANAN'
    end
    object QBrowseSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object QBrowseTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QBrowseOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QBrowseKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QBrowseREKANAN: TStringField
      FieldName = 'REKANAN'
      Size = 80
    end
    object QBrowseISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QBrowseGRUP: TStringField
      FieldName = 'GRUP'
      Required = True
      Size = 3
    end
    object QBrowseSHIFT: TStringField
      FieldName = 'SHIFT'
      Required = True
      Size = 3
    end
    object QBrowseNO_BUKTI: TStringField
      FieldName = 'NO_BUKTI'
    end
    object QBrowseNO_ORDER: TStringField
      FieldName = 'NO_ORDER'
    end
    object QBrowseNO_REG_DETAIL: TFloatField
      FieldName = 'NO_REG_DETAIL'
      Required = True
    end
    object QBrowseNIK: TStringField
      FieldName = 'NIK'
      Size = 30
    end
    object QBrowseNO_SERI_BEAM: TStringField
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
    end
    object QBrowseKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 100
    end
    object QBrowseCORAK: TStringField
      FieldName = 'CORAK'
      Size = 50
    end
    object QBrowseMUTU: TStringField
      FieldName = 'MUTU'
      Size = 30
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 10
    end
    object QBrowseKD_KONSTRUKSI: TStringField
      FieldName = 'KD_KONSTRUKSI'
      Size = 6
    end
    object QBrowseKD_CORAK: TStringField
      FieldName = 'KD_CORAK'
      Size = 6
    end
    object QBrowseJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object QBrowseOPR_TENUN: TStringField
      FieldName = 'OPR_TENUN'
      Size = 50
    end
    object QBrowseNO_DESAIN: TStringField
      FieldName = 'NO_DESAIN'
      Size = 30
    end
    object QBrowseMESIN_TENUN: TStringField
      FieldName = 'MESIN_TENUN'
    end
    object QBrowseNO_MESIN: TStringField
      FieldName = 'NO_MESIN'
    end
    object QBrowseNO_RESEP: TStringField
      FieldName = 'NO_RESEP'
    end
    object QBrowseNO_PO: TStringField
      FieldName = 'NO_PO'
      Size = 25
    end
    object QBrowseKODE_PROD: TStringField
      FieldName = 'KODE_PROD'
      Size = 30
    end
    object QBrowseQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseML: TFloatField
      FieldName = 'ML'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseMI: TFloatField
      FieldName = 'MI'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseCEK: TFloatField
      FieldName = 'CEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseAFFAL: TFloatField
      FieldName = 'AFFAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseAFFAL_NO: TFloatField
      FieldName = 'AFFAL_NO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseWTS: TFloatField
      FieldName = 'WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseKTR: TFloatField
      FieldName = 'KTR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowsePDK: TFloatField
      FieldName = 'PDK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseLK: TFloatField
      FieldName = 'LK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseMC: TFloatField
      FieldName = 'MC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS: TFloatField
      FieldName = 'BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseKS: TFloatField
      FieldName = 'KS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseCTK: TFloatField
      FieldName = 'CTK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseFC: TFloatField
      FieldName = 'FC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseHK: TFloatField
      FieldName = 'HK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseWTM: TFloatField
      FieldName = 'WTM'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseM_SAMAR: TFloatField
      FieldName = 'M_SAMAR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseM_RUSAK: TFloatField
      FieldName = 'M_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseM_BELANG: TFloatField
      FieldName = 'M_BELANG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseM_OUIT: TFloatField
      FieldName = 'M_OUIT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseF_STEAMER: TFloatField
      FieldName = 'F_STEAMER'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseF_PRINT: TFloatField
      FieldName = 'F_PRINT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseF_STAMPING: TFloatField
      FieldName = 'F_STAMPING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTOT_BGRADE: TFloatField
      FieldName = 'TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseP_TOT_BGRADE: TFloatField
      FieldName = 'P_TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_SOBEK: TFloatField
      FieldName = 'BS_SOBEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_UTS: TFloatField
      FieldName = 'BS_UTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_KNB: TFloatField
      FieldName = 'BS_KNB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_FLEX: TFloatField
      FieldName = 'BS_FLEX'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_WTS: TFloatField
      FieldName = 'BS_WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBS_OSETTING: TFloatField
      FieldName = 'BS_OSETTING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBSM_RUSAK: TFloatField
      FieldName = 'BSM_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTOT_BS: TFloatField
      FieldName = 'TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseP_TOT_BS: TFloatField
      FieldName = 'P_TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTGL_DETAIL: TDateTimeField
      FieldName = 'TGL_DETAIL'
    end
    object QBrowseSJ: TStringField
      FieldName = 'SJ'
      Size = 30
    end
    object QBrowseWARNA: TStringField
      FieldName = 'WARNA'
      Size = 30
    end
    object QBrowseJENIS_PROSES: TStringField
      FieldName = 'JENIS_PROSES'
      Size = 50
    end
    object QBrowseTOT_BK: TFloatField
      FieldName = 'TOT_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseP_TOT_BK: TFloatField
      FieldName = 'P_TOT_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseLD: TFloatField
      FieldName = 'LD'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseLT: TFloatField
      FieldName = 'LT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseLPT: TFloatField
      FieldName = 'LPT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseLRG: TFloatField
      FieldName = 'LRG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseWL: TFloatField
      FieldName = 'WL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseFLO: TFloatField
      FieldName = 'FLO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseNEPS: TFloatField
      FieldName = 'NEPS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowsePP: TFloatField
      FieldName = 'PP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseOJ: TFloatField
      FieldName = 'OJ'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseCRT: TFloatField
      FieldName = 'CRT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBTS: TFloatField
      FieldName = 'BTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseBTB: TFloatField
      FieldName = 'BTB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseSC: TFloatField
      FieldName = 'SC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseSLL: TFloatField
      FieldName = 'SLL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseCK: TFloatField
      FieldName = 'CK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseCAJ: TFloatField
      FieldName = 'CAJ'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTK: TFloatField
      FieldName = 'TK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseJENIS_SARUNG: TStringField
      FieldName = 'JENIS_SARUNG'
      Size = 100
    end
    object QBrowseWK: TFloatField
      FieldName = 'WK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseKODE: TStringField
      FieldName = 'KODE'
      Size = 30
    end
    object QBrowsePROSES: TStringField
      FieldName = 'PROSES'
      Size = 30
    end
    object QBrowseTGL_INSPECT: TDateTimeField
      FieldName = 'TGL_INSPECT'
    end
  end
  object QBrowseTotal: TOracleDataSet
    SQL.Strings = (
      'SELECT '
      '  SUM(QTY) AS QTY,'
      '  SUM(ML) AS ML,'
      '  SUM(MI) AS MI,'
      '  SUM(CEK) AS CEK,'
      '  SUM(AFFAL) AS AFFAL,'
      '  SUM(AFFAL_NO) AS AFFAL_NO,'
      '  SUM(WTS) AS WTS,'
      ''
      '  -- CACAT TENUN'
      '  SUM(LD) AS LD,'
      '  SUM(LT) AS LT,'
      '  SUM(LPT) AS LPT,'
      '  SUM(LRG) AS LRG,'
      '  SUM(WL) AS WL,'
      '  SUM(FLO) AS FLO,'
      '  SUM(NEPS) AS NEPS,'
      '  SUM(PP) AS PP,'
      '  SUM(OJ) AS OJ,'
      '  SUM(CRT) AS CRT,'
      '  SUM(BTS) AS BTS,'
      '  SUM(BTB) AS BTB,'
      '  SUM(SC) AS SC,'
      '  SUM(SLL) AS SLL,'
      '  SUM(CK) AS CK,'
      '  SUM(CAJ) AS CAJ,'
      '  SUM(TK) AS TK,'
      ''
      '  -- CACAT FINISH'
      '  SUM(KTR) AS KTR,'
      '  SUM(PDK) AS PDK,'
      '  SUM(LK) AS LK,'
      '  SUM(MC) AS MC,'
      '  SUM(BS) AS BS,'
      '  SUM(KS) AS KS,'
      '  SUM(CTK) AS CTK,'
      '  SUM(FC) AS FC,'
      '  SUM(HK) AS HK,'
      '  SUM(WTM) AS WTM,'
      '  SUM(WK) AS WK,'
      '  SUM(M_SAMAR) AS M_SAMAR,'
      '  SUM(M_RUSAK) AS M_RUSAK,'
      '  SUM(M_BELANG) AS M_BELANG,'
      '  SUM(M_OUIT) AS M_OUIT,'
      '  SUM(F_STEAMER) AS F_STEAMER,'
      '  SUM(F_PRINT) AS F_PRINT,'
      '  SUM(F_STAMPING) AS F_STAMPING,'
      ''
      '  SUM(TOT_BGRADE) AS TOT_BGRADE,'
      '  SUM(P_TOT_BGRADE) AS P_TOT_BGRADE,'
      '  SUM(BS_SOBEK) AS BS_SOBEK,'
      '  SUM(BS_UTS) AS BS_UTS,'
      '  SUM(BS_KNB) AS BS_KNB,'
      '  SUM(BS_FLEX) AS BS_FLEX,'
      '  SUM(BS_WTS) AS BS_WTS,'
      '  SUM(BS_OSETTING) AS BS_OSETTING,'
      '  SUM(BSM_RUSAK) AS BSM_RUSAK,'
      '  SUM(TOT_BS) AS TOT_BS,'
      '  SUM(P_TOT_BS) AS P_TOT_BS,'
      '  SUM(TOT_BK) AS TOT_BK,'
      '  SUM(P_TOT_BK) AS P_TOT_BK'
      ''
      'FROM ipisma_db5.vrekap_hasil_reinspect_proses'
      ':myparam')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000002E00000077686572
      652074676C3D7379736461746520616E64206B645F7472616E73616B7369204C
      494B452027523032270000000000}
    QBEDefinition.QBEFieldDefs = {
      040000003700000003000000515459010000000000020000004D4C0100000000
      00020000004D490100000000000300000043454B010000000000050000004146
      46414C01000000000008000000414646414C5F4E4F0100000000000300000057
      5453010000000000030000004B54520100000000000300000050444B01000000
      0000020000004C4B010000000000020000004D43010000000000020000004253
      010000000000020000004B530100000000000300000043544B01000000000002
      000000464301000000000002000000484B0100000000000300000057544D0100
      00000000070000004D5F53414D4152010000000000070000004D5F525553414B
      010000000000080000004D5F42454C414E47010000000000060000004D5F4F55
      495401000000000009000000465F535445414D45520100000000000700000046
      5F5052494E540100000000000A000000465F5354414D50494E47010000000000
      0A000000544F545F4247524144450100000000000C000000505F544F545F4247
      524144450100000000000800000042535F534F42454B01000000000006000000
      42535F5554530100000000000600000042535F4B4E4201000000000007000000
      42535F464C45580100000000000600000042535F5754530100000000000B0000
      0042535F4F53455454494E470100000000000900000042534D5F525553414B01
      000000000006000000544F545F425301000000000008000000505F544F545F42
      5301000000000006000000544F545F424B01000000000008000000505F544F54
      5F424B010000000000020000004C44010000000000020000004C540100000000
      00030000004C5054010000000000030000004C52470100000000000200000057
      4C01000000000003000000464C4F010000000000040000004E45505301000000
      0000020000005050010000000000020000004F4A010000000000030000004352
      5401000000000003000000425453010000000000030000004254420100000000
      0002000000534301000000000003000000534C4C01000000000002000000434B
      0100000000000300000043414A01000000000002000000544B01000000000002
      000000574B010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 220
    Top = 297
    object QBrowseTotalQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalML: TFloatField
      FieldName = 'ML'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalMI: TFloatField
      FieldName = 'MI'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalCEK: TFloatField
      FieldName = 'CEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalAFFAL: TFloatField
      FieldName = 'AFFAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalAFFAL_NO: TFloatField
      FieldName = 'AFFAL_NO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalWTS: TFloatField
      FieldName = 'WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalKTR: TFloatField
      FieldName = 'KTR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalPDK: TFloatField
      FieldName = 'PDK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalLK: TFloatField
      FieldName = 'LK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalMC: TFloatField
      FieldName = 'MC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS: TFloatField
      FieldName = 'BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalKS: TFloatField
      FieldName = 'KS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalCTK: TFloatField
      FieldName = 'CTK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalFC: TFloatField
      FieldName = 'FC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalHK: TFloatField
      FieldName = 'HK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalWTM: TFloatField
      FieldName = 'WTM'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalM_SAMAR: TFloatField
      FieldName = 'M_SAMAR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalM_RUSAK: TFloatField
      FieldName = 'M_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalM_BELANG: TFloatField
      FieldName = 'M_BELANG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalM_OUIT: TFloatField
      FieldName = 'M_OUIT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalF_STEAMER: TFloatField
      FieldName = 'F_STEAMER'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalF_PRINT: TFloatField
      FieldName = 'F_PRINT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalF_STAMPING: TFloatField
      FieldName = 'F_STAMPING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalTOT_BGRADE: TFloatField
      FieldName = 'TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalP_TOT_BGRADE: TFloatField
      FieldName = 'P_TOT_BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_SOBEK: TFloatField
      FieldName = 'BS_SOBEK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_UTS: TFloatField
      FieldName = 'BS_UTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_KNB: TFloatField
      FieldName = 'BS_KNB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_FLEX: TFloatField
      FieldName = 'BS_FLEX'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_WTS: TFloatField
      FieldName = 'BS_WTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBS_OSETTING: TFloatField
      FieldName = 'BS_OSETTING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalBSM_RUSAK: TFloatField
      FieldName = 'BSM_RUSAK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalTOT_BS: TFloatField
      FieldName = 'TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalP_TOT_BS: TFloatField
      FieldName = 'P_TOT_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseTotalTOT_BK: TFloatField
      FieldName = 'TOT_BK'
    end
    object QBrowseTotalP_TOT_BK: TFloatField
      FieldName = 'P_TOT_BK'
    end
    object QBrowseTotalLD: TFloatField
      FieldName = 'LD'
    end
    object QBrowseTotalLT: TFloatField
      FieldName = 'LT'
    end
    object QBrowseTotalLPT: TFloatField
      FieldName = 'LPT'
    end
    object QBrowseTotalLRG: TFloatField
      FieldName = 'LRG'
    end
    object QBrowseTotalWL: TFloatField
      FieldName = 'WL'
    end
    object QBrowseTotalFLO: TFloatField
      FieldName = 'FLO'
    end
    object QBrowseTotalNEPS: TFloatField
      FieldName = 'NEPS'
    end
    object QBrowseTotalPP: TFloatField
      FieldName = 'PP'
    end
    object QBrowseTotalOJ: TFloatField
      FieldName = 'OJ'
    end
    object QBrowseTotalCRT: TFloatField
      FieldName = 'CRT'
    end
    object QBrowseTotalBTS: TFloatField
      FieldName = 'BTS'
    end
    object QBrowseTotalBTB: TFloatField
      FieldName = 'BTB'
    end
    object QBrowseTotalSC: TFloatField
      FieldName = 'SC'
    end
    object QBrowseTotalSLL: TFloatField
      FieldName = 'SLL'
    end
    object QBrowseTotalCK: TFloatField
      FieldName = 'CK'
    end
    object QBrowseTotalCAJ: TFloatField
      FieldName = 'CAJ'
    end
    object QBrowseTotalTK: TFloatField
      FieldName = 'TK'
    end
    object QBrowseTotalWK: TFloatField
      FieldName = 'WK'
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 365
    Top = 216
  end
  object QPerKonstruksi: TOracleDataSet
    SQL.Strings = (
      'select '
      'distinct(konstruksi) as konstruksi,'
      'kd_produksi,'
      'sum(qty)as potong,'
      'sum(qty)/20 as qty'
      'from ipisma_db5.vrekap_hasil_reinspect_detail '
      'where tgl>=:pawal and tgl<=:pakhir'
      ':myparam'
      '')
    Variables.Data = {
      0300000003000000080000003A4D59504152414D010000002000000067726F75
      70206279206B6F6E737472756B73692C6B645F70726F64756B73690000000000
      060000003A504157414C0C000000070000007873030601010100000000070000
      003A50414B4849520C000000070000007873030601010100000000}
    QBEDefinition.QBEFieldDefs = {
      04000000040000000A0000004B4F4E535452554B534901000000000003000000
      5154590100000000000B0000004B445F50524F44554B53490100000000000600
      0000504F544F4E47010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 1092
    Top = 409
    object QPerKonstruksiKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object QPerKonstruksiQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QPerKonstruksiKD_PRODUKSI: TStringField
      FieldName = 'KD_PRODUKSI'
      Size = 10
    end
    object QPerKonstruksiPOTONG: TFloatField
      FieldName = 'POTONG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object QPerKonstruksi_Tot: TOracleDataSet
    SQL.Strings = (
      'select '
      'sum(qty) as potong,'
      'sum(qty)/20 as total'
      'from (select * from ipisma_db5.vrekap_hasil_reinspect_detail) '
      'where tgl>=:pawal and tgl<=:pakhir'
      ':myparam'
      '')
    Variables.Data = {
      0300000003000000080000003A4D59504152414D010000000000000000000000
      060000003A504157414C0C000000070000007873030601010100000000070000
      003A50414B4849520C000000070000007873030601010100000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000544F54414C01000000000006000000504F544F4E
      47010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 988
    Top = 401
    object QPerKonstruksi_TotTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QPerKonstruksi_TotPOTONG: TFloatField
      FieldName = 'POTONG'
    end
  end
  object DsPerKonstruksi: TwwDataSource
    DataSet = QPerKonstruksi
    Left = 1093
    Top = 368
  end
  object QPerOperator_Tot: TOracleDataSet
    SQL.Strings = (
      'select '
      'sum(qty) as jml_potong,'
      'sum(qty)/20 as total'
      'from (select * from ipisma_db5.vrekap_hasil_reinspect_detail) '
      'where tgl>=:pawal and tgl<=:pakhir'
      ':myparam'
      '')
    Variables.Data = {
      0300000003000000080000003A4D59504152414D010000000000000000000000
      060000003A504157414C0C0000000000000000000000070000003A50414B4849
      520C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000005000000544F54414C0100000000000A0000004A4D4C5F50
      4F544F4E47010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 1108
    Top = 97
    object QPerOperator_TotTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QPerOperator_TotJML_POTONG: TFloatField
      FieldName = 'JML_POTONG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object QPerOperator: TOracleDataSet
    SQL.Strings = (
      'select '
      'distinct rekanan, '
      'konstruksi,'
      'sum(qty)as potong,'
      'sum(qty)/20 as qty'
      'from ipisma_db5.vrekap_hasil_reinspect_detail'
      'where tgl>=:pawal and tgl<=:pakhir'
      ':myparam'
      '')
    Variables.Data = {
      0300000003000000080000003A4D59504152414D010000001C00000067726F75
      70206279206B6F6E737472756B73692C72656B616E616E000000000006000000
      3A504157414C0C0000000000000000000000070000003A50414B4849520C0000
      000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000040000000A0000004B4F4E535452554B534901000000000003000000
      5154590100000000000700000052454B414E414E01000000000006000000504F
      544F4E47010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 1100
    Top = 17
    object QPerOperatorREKANAN: TStringField
      FieldName = 'REKANAN'
      Size = 80
    end
    object QPerOperatorKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object QPerOperatorQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QPerOperatorPOTONG: TFloatField
      FieldName = 'POTONG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object dsQPerOperator: TwwDataSource
    DataSet = QPerOperator
    Left = 1101
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls'
    Options = [ofEnableSizing]
    Title = 'Select Excel files'
    Left = 368
    Top = 304
  end
  object QDeleteDetail: TOracleQuery
    Session = DMFrm.OS
    Left = 229
    Top = 376
  end
  object QInsertDetail: TOracleQuery
    SQL.Strings = (
      'BEGIN'
      '    INSERT INTO ipisma_db5.bukti5_detail '
      '    ('
      
        '        no_reg_detail, no_reg, JENIS_SARUNG, TGL, TGL_INSPECT, S' +
        'J, WARNA, KODE, PROSES, REKANAN, ML, MI, CEK, AFFAL, AFFAL_NO, W' +
        'TS,'
      ''
      '        -- CACAT TENUN'
      
        '        LD, LT, LPT, LRG, WL, FLO, NEPS, PP, OJ, CRT, BTS, BTB, ' +
        'SC, SLL, CK, CAJ, TK,'
      ''
      '        -- CACAT FINISH'
      
        '        KTR, PDK, LK, MC, BS, KS, CTK, FC, HK, WTM, WK, M_SAMAR,' +
        ' M_RUSAK, M_BELANG, M_OUIT,'
      
        '        F_STEAMER, F_PRINT, F_STAMPING, TOT_BGRADE, P_TOT_BGRADE' +
        ', BS_SOBEK, BS_UTS, BS_KNB,'
      
        '        BS_FLEX, BS_WTS, BS_OSETTING, BSM_RUSAK, TOT_BS, P_TOT_B' +
        'S, TOT_BK, P_TOT_BK'
      '    ) '
      '    VALUES '
      '    ('
      
        '        IPISMA_DB5.REG_BUKTI5_DETAIL.nextval, :reg, :JS, :TGL, :' +
        'TGL_INSPECT, :SJ, :WARNA, :KODE, :PROSES, :REKANAN, :ML, :MI, :C' +
        'EK, :AFFAL, :AFFAL_NO, :WTS,'
      ''
      '        -- CACAT TENUN'
      
        '        :LD, :LT, :LPT, :LRG, :WL, :FLO, :NEPS, :PP, :OJ, :CRT, ' +
        ':BTS, :BTB, :SC, :SLL, :CK, :CAJ, :TK,'
      ''
      '        -- CACAT FINISH'
      
        '        :KTR, :PDK, :LK, :MC, :BS, :KS, :CTK, :FC, :HK, :WTM, :W' +
        'K, :M_SAMAR, :M_RUSAK, :M_BELANG, :M_OUIT,'
      
        '        :F_STEAMER, :F_PRINT, :F_STAMPING, :TOT_BGRADE, :P_TOT_B' +
        'GRADE, :BS_SOBEK, :BS_UTS, :BS_KNB,'
      
        '        :BS_FLEX, :BS_WTS, :BS_OSETTING, :BSM_RUSAK, :TOT_BS, :P' +
        '_TOT_BS, :TOT_BK, :P_TOT_BK'
      '    );'
      ''
      '    COMMIT;'
      'END;')
    Session = DMFrm.OS
    Variables.Data = {
      030000003F000000040000003A52454703000000000000000000000004000000
      3A4B5452040000000000000000000000040000003A50444B0400000000000000
      00000000030000003A4D43040000000000000000000000030000003A4B530400
      00000000000000000000030000003A4643040000000000000000000000030000
      003A484B040000000000000000000000080000003A4D5F53414D415204000000
      0000000000000000080000003A4D5F525553414B040000000000000000000000
      090000003A4D5F42454C414E47040000000000000000000000070000003A4D5F
      4F554954040000000000000000000000040000003A54474C0C00000000000000
      00000000030000003A534A050000000000000000000000060000003A5741524E
      41050000000000000000000000030000003A4D4C040000000000000000000000
      030000003A4D49040000000000000000000000040000003A43454B0400000000
      00000000000000060000003A414646414C040000000000000000000000090000
      003A414646414C5F4E4F040000000000000000000000040000003A5754530400
      00000000000000000000030000003A4C4B040000000000000000000000030000
      003A4253040000000000000000000000040000003A43544B0400000000000000
      00000000040000003A57544D0400000000000000000000000A0000003A465F53
      5445414D4552040000000000000000000000080000003A465F5052494E540400
      000000000000000000000B0000003A465F5354414D50494E4704000000000000
      00000000000B0000003A544F545F424752414445040000000000000000000000
      0D0000003A505F544F545F424752414445040000000000000000000000090000
      003A42535F534F42454B040000000000000000000000070000003A42535F5554
      53040000000000000000000000070000003A42535F4B4E420400000000000000
      00000000080000003A42535F464C455804000000000000000000000007000000
      3A42535F5754530400000000000000000000000C0000003A42535F4F53455454
      494E470400000000000000000000000A0000003A42534D5F525553414B040000
      000000000000000000070000003A544F545F4253040000000000000000000000
      090000003A505F544F545F4253040000000000000000000000030000003A4A53
      050000000000000000000000030000003A4C4404000000000000000000000003
      0000003A4C54040000000000000000000000040000003A4C5054040000000000
      000000000000040000003A4C5247040000000000000000000000030000003A57
      4C040000000000000000000000040000003A464C4F0400000000000000000000
      00050000003A4E455053040000000000000000000000030000003A5050040000
      000000000000000000030000003A4F4A04000000000000000000000004000000
      3A435254040000000000000000000000040000003A4254530400000000000000
      00000000040000003A425442040000000000000000000000030000003A534304
      0000000000000000000000040000003A534C4C04000000000000000000000003
      0000003A434B040000000000000000000000040000003A43414A040000000000
      000000000000030000003A544B040000000000000000000000070000003A544F
      545F424B040000000000000000000000090000003A505F544F545F424B040000
      000000000000000000030000003A574B0400000000000000000000000C000000
      3A54474C5F494E53504543540C0000000000000000000000050000003A4B4F44
      45050000000000000000000000070000003A50524F5345530500000000000000
      00000000080000003A52454B414E414E050000000000000000000000}
    Left = 504
    Top = 320
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 645
    Top = 392
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls'
    Options = [ofEnableSizing]
    Title = 'Select Excel files'
    Left = 376
    Top = 376
  end
  object OpenDialog3: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls'
    Options = [ofEnableSizing]
    Title = 'Select Excel files'
    Left = 384
    Top = 440
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'HTML'
    Filter = 'Html File|*.HTML|Excel File|*.XLK'
    Left = 648
    Top = 304
  end
  object QJenis: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.JENIS_REINSPECT_PROSES a'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000160000006F726465
      72206279204A454E49535F50524F5345530000000000}
    QBEDefinition.QBEFieldDefs = {04000000010000000C0000004A454E49535F50524F534553010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    CachedUpdates = True
    Session = DMFrm.OS
    AfterPost = QJenisAfterPost
    AfterDelete = QJenisAfterDelete
    AfterScroll = QJenisAfterScroll
    Left = 796
    Top = 241
    object QJenisJENIS_PROSES: TStringField
      FieldName = 'JENIS_PROSES'
      Size = 50
    end
  end
  object dsQJenis: TwwDataSource
    DataSet = QJenis
    Left = 844
    Top = 305
  end
  object QBrowseMitra: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.JENIS_REINSPECT_PROSES a'
      'order by JENIS_PROSES asc')
    QBEDefinition.QBEFieldDefs = {04000000010000000C0000004A454E49535F50524F534553010000000000}
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 960
    Top = 112
    object QBrowseMitraJENIS_PROSES: TStringField
      DisplayWidth = 50
      FieldName = 'JENIS_PROSES'
      Size = 50
    end
  end
  object dsQBrowseMitra: TwwDataSource
    DataSet = QBrowseMitra
    Left = 968
    Top = 168
  end
end
