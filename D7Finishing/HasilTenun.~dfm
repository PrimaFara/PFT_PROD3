object HasilTenunFrm: THasilTenunFrm
  Left = 268
  Top = 154
  Width = 1261
  Height = 558
  Caption = 'HasilTenunFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1245
    Height = 520
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Input'
      OnShow = TabSheet1Show
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1237
        Height = 492
        Align = alClient
        TabOrder = 0
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1235
          Height = 168
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 59
            Height = 13
            Caption = 'No. Register'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 16
            Top = 56
            Width = 39
            Height = 13
            Caption = 'Tanggal'
          end
          object Label7: TLabel
            Left = 16
            Top = 96
            Width = 55
            Height = 13
            Caption = 'Keterangan'
          end
          object Label8: TLabel
            Left = 472
            Top = 16
            Width = 47
            Height = 13
            Caption = 'Tgl. Insert'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 472
            Top = 56
            Width = 49
            Height = 13
            Caption = 'Opr. Insert'
            FocusControl = DBEdit9
          end
          object Label2: TLabel
            Left = 256
            Top = 56
            Width = 44
            Height = 13
            Caption = 'Inspector'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 472
            Top = 120
            Width = 107
            Height = 13
            Caption = 'Lokasi Pertenunan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 160
            Top = 56
            Width = 18
            Height = 13
            Caption = 'NIK'
            FocusControl = DBEdit2
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 32
            Width = 169
            Height = 19
            Color = clMoneyGreen
            DataField = 'NO_REG'
            DataSource = dsMaster
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 472
            Top = 32
            Width = 129
            Height = 19
            Color = clMoneyGreen
            DataField = 'TGL_INSERT'
            DataSource = dsMaster
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 472
            Top = 72
            Width = 129
            Height = 19
            Color = clMoneyGreen
            DataField = 'OPR_INSERT'
            DataSource = dsMaster
            TabOrder = 2
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 112
            Width = 297
            Height = 49
            DataField = 'KETERANGAN'
            DataSource = dsMaster
            TabOrder = 3
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 16
            Top = 72
            Width = 137
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'TANGGAL'
            DataSource = dsMaster
            Epoch = 1950
            ShowButton = True
            TabOrder = 4
          end
          object DBEdit2: TDBEdit
            Left = 256
            Top = 72
            Width = 201
            Height = 19
            Color = clMoneyGreen
            DataField = 'INSPECTOR'
            DataSource = dsMaster
            TabOrder = 5
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 472
            Top = 136
            Width = 33
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            DataField = 'SHIFT'
            DataSource = dsMaster
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5')
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
          end
          object LookKaryawan: TwwDBLookupComboDlg
            Left = 160
            Top = 72
            Width = 89
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'NAMA_KARYAWAN'#9'19'#9'NAMA KARYAWAN'#9#9
              'NIK'#9'5'#9'NIK'#9#9
              'BAGIAN'#9'13'#9'BAGIAN'#9#9
              'SUB_BAGIAN'#9'12'#9'SUB BAGIAN'#9'F'
              'JABATAN'#9'12'#9'JABATAN'#9'F')
            DataField = 'NIK'
            DataSource = dsMaster
            LookupField = 'NIK'
            TabOrder = 7
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
          end
          object wwCheckBox1: TwwCheckBox
            Left = 328
            Top = 139
            Width = 97
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = 'Posted'
            DataField = 'ISPOST'
            DataSource = dsMaster
            TabOrder = 8
          end
          object RAmbil: TRadioGroup
            Left = 624
            Top = 56
            Width = 345
            Height = 81
            Caption = 'Transaksi'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Jenis Sarung'
              'Jenis Non Sarung'
              'Nota Sarung'
              'Nota Non Sarung'
              'Jenis Non Sarung Tanpa Jenis')
            TabOrder = 9
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 450
          Width = 1235
          Height = 41
          Align = alBottom
          TabOrder = 1
          object BitBtn2: TBitBtn
            Left = 101
            Top = 8
            Width = 75
            Height = 25
            TabOrder = 0
            Kind = bkClose
          end
          object Button1: TButton
            Left = 16
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Simpan'
            TabOrder = 1
            OnClick = Button1Click
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 1
          Top = 222
          Width = 1235
          Height = 228
          DittoAttributes.DittoDirection = wwDittoPriorOrNext
          DittoAttributes.ShortCutDittoRecord = 16457
          ControlType.Strings = (
            'KD_ITEM;CustomEdit;LookItem;F'
            'ARAH;CustomEdit;LookArah;F'
            'KD_PRODUKSI;CustomEdit;Look_KP;F'
            'NO_SERI_BEAM;CustomEdit;LookBeam;F')
          Selected.Strings = (
            'NO_URUT'#9'5'#9'URUT'#9'T'
            'LOKASI'#9'6'#9'LOKASI'#9'T'
            'GRUP'#9'5'#9'GRUP'#9'T'
            'NO_REG_TENUN'#9'6'#9'NOTA'#9'T'#9'DARI TENUN'
            'TANGGAL'#9'12'#9'TGL PRODUKSI'#9'T'#9'DARI TENUN'
            'SATUAN'#9'7'#9'SATUAN'#9'T'#9'DARI TENUN'
            'QTY'#9'12'#9'QTY'#9'T'#9'DARI TENUN'
            'PROSES'#9'5'#9'NO MESIN'#9'F'#9'DATA BEAM'
            'NO_SERI_BEAM'#9'15'#9'NO SERI BEAM'#9'F'#9'DATA BEAM'
            'NO_DESAIN'#9'15'#9'NO RESEP'#9'F'#9'DATA BEAM'
            'KD_PRODUKSI'#9'6'#9'KP'#9'T'#9'DATA BEAM'
            'KONSTRUKSI'#9'15'#9'KONSTRUKSI'#9'T'#9'DATA BEAM'
            'MESIN'#9'15'#9'LOOM'#9'T'#9'DATA BEAM'
            'CORAK'#9'12'#9'CORAK'#9'T'#9'DATA BEAM'
            'LD'#9'5'#9'LD'#9'F'#9'B-GRADE'
            'LT'#9'5'#9'LT'#9'F'#9'B-GRADE'
            'LPT'#9'5'#9'LPT'#9'F'#9'B-GRADE'
            'LRG'#9'5'#9'LRG'#9'F'#9'B-GRADE'
            'WL'#9'5'#9'WL'#9'F'#9'B-GRADE'
            'FLS'#9'5'#9'FLS'#9'F'#9'B-GRADE'
            'FLP'#9'5'#9'FLP'#9'F'#9'B-GRADE'
            'NEPS'#9'5'#9'NEPS'#9'F'#9'B-GRADE'
            'PP'#9'5'#9'PP'#9'F'#9'B-GRADE'
            'WP'#9'5'#9'WP'#9'F'#9'B-GRADE'
            'OJ'#9'5'#9'OJ'#9'F'#9'B-GRADE'
            'CRT'#9'5'#9'RT'#9'F'#9'B-GRADE'
            'BTS'#9'5'#9'BTS'#9'F'#9'B-GRADE'
            'BTB'#9'5'#9'BTB'#9'F'#9'B-GRADE'
            'BO'#9'5'#9'BO'#9'F'#9'B-GRADE'
            'SC'#9'5'#9'SC'#9'F'#9'B-GRADE'
            'SLL'#9'5'#9'SLL'#9'F'#9'B-GRADE'
            'CK'#9'5'#9'TK'#9'F'#9'B-GRADE'
            'CAJ'#9'5'#9'TTI'#9'F'#9'B-GRADE'
            'KTR'#9'5'#9'KTR OLI'#9'F'#9'B-GRADE'
            'PDK'#9'5'#9'PDK'#9'F'#9'B-GRADE'
            'KP'#9'5'#9'LK'#9'F'#9'B-GRADE'
            'KECOES_BG'#9'5'#9'CACAT MENDING'#9'F'#9'B-GRADE'
            'KBR'#9'5'#9'KMBG RSK'#9'F'#9'B-GRADE'
            'SBK'#9'5'#9'SBK'#9'F'#9'BS'
            'KNT'#9'5'#9'LBG'#9'F'
            'UTS'#9'5'#9'UTS'#9'F'#9'BS'
            'KNB'#9'5'#9'KNB'#9'F'#9'BS'
            'BS_FLS'#9'5'#9'BS_SLL'#9'F'#9'BS'
            'BS_FLP'#9'5'#9'BS_FLP'#9'F'#9'BS'
            'BS_BTS'#9'5'#9'BS_BTS'#9'F'#9'BS'
            'BS_BTB'#9'5'#9'BS_SC'#9'F'#9'BS'
            'BS_TK'#9'5'#9'BS_TK'#9'F'#9'BS'
            'AFL'#9'5'#9'KMBG RSK'#9'F'#9'BS'
            'KECOES_BS'#9'5'#9'CACAT MENDING'#9'F'#9'BS'
            'LK'#9'5'#9'AFL LGS (CM)'#9'F'#9'AFFAL'
            'LB'#9'5'#9'AFL TDK LGS (CM)'#9'F'#9'AFFAL'
            'QTY3'#9'5'#9'BK'#9'F'#9'DITERIMA'
            'BGRADE'#9'10'#9'BGRADE'#9'F'#9'DITERIMA'
            'QTY2'#9'5'#9'BS'#9'T'#9'DITERIMA'
            'DITERIMA'#9'7'#9'TOTAL'#9'T'#9'DITERIMA'
            'UTB'#9'6'#9'PJG'#9'F'#9'DATA'
            'LBK'#9'6'#9'LBR'#9'F'#9'DATA'
            'KETERANGAN'#9'15'#9'KETERANGAN'#9'F')
          IniAttributes.Enabled = True
          IniAttributes.SaveToRegistry = True
          IniAttributes.FileName = 'Finishing'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 10
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsDetail
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgDblClickColSizing]
          RowHeightPercent = 150
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = True
          UseTFields = False
          OnCalcCellColors = wwDBGrid1CalcCellColors
          OnTitleButtonClick = wwDBGrid1TitleButtonClick
          OnDblClick = wwDBGrid1DblClick
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object Panel6: TPanel
          Left = 1
          Top = 169
          Width = 1235
          Height = 53
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          object Label6: TLabel
            Left = 888
            Top = 7
            Width = 104
            Height = 13
            Caption = 'Cari Nota Hasil Tenun'
            Visible = False
          end
          object Label10: TLabel
            Left = 232
            Top = 7
            Width = 68
            Height = 13
            Caption = 'No. Seri Beam'
          end
          object Label11: TLabel
            Left = 344
            Top = 7
            Width = 31
            Height = 13
            Caption = 'Lokasi'
          end
          object Label12: TLabel
            Left = 16
            Top = 7
            Width = 76
            Height = 13
            Caption = 'Tanggal Potong'
          end
          object Label13: TLabel
            Left = 440
            Top = 7
            Width = 23
            Height = 13
            Caption = 'Grup'
          end
          object Label14: TLabel
            Left = 384
            Top = 7
            Width = 48
            Height = 13
            Caption = 'No. Mesin'
          end
          object Label15: TLabel
            Left = 744
            Top = 9
            Width = 83
            Height = 13
            Caption = 'Cari Otomatis [F3]'
          end
          object Label16: TLabel
            Left = 800
            Top = 29
            Width = 43
            Height = 13
            Caption = '[ENTER]'
          end
          object Label17: TLabel
            Left = 120
            Top = 7
            Width = 43
            Height = 13
            Caption = 'No. Nota'
          end
          object Button2: TButton
            Left = 1000
            Top = 24
            Width = 75
            Height = 25
            Caption = '&Ambil Data'
            TabOrder = 1
            Visible = False
            OnClick = Button2Click
          end
          object Edit1: TEdit
            Left = 888
            Top = 27
            Width = 105
            Height = 19
            TabOrder = 0
            Visible = False
          end
          object Edit2: TEdit
            Left = 232
            Top = 27
            Width = 105
            Height = 19
            TabOrder = 3
          end
          object Edit3: TEdit
            Left = 344
            Top = 27
            Width = 33
            Height = 19
            TabOrder = 4
          end
          object wwDBDateTimePicker2: TwwDBDateTimePicker
            Left = 16
            Top = 26
            Width = 97
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Epoch = 1950
            ShowButton = True
            TabOrder = 2
            DisplayFormat = 'dd mmm yyyy'
          end
          object Button3: TButton
            Left = 480
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Ambil &Data'
            TabOrder = 7
            OnClick = Button3Click
          end
          object Edit4: TEdit
            Left = 440
            Top = 27
            Width = 33
            Height = 19
            TabOrder = 6
          end
          object Edit5: TEdit
            Left = 384
            Top = 27
            Width = 49
            Height = 19
            TabOrder = 5
          end
          object BitBtn1: TBitBtn
            Left = 568
            Top = 24
            Width = 75
            Height = 25
            Caption = '&Hapus Semua'
            TabOrder = 8
            OnClick = BitBtn1Click
          end
          object Edit6: TEdit
            Left = 744
            Top = 26
            Width = 49
            Height = 19
            TabOrder = 9
            OnChange = Edit6Change
            OnKeyDown = Edit6KeyDown
          end
          object Edit7: TEdit
            Left = 120
            Top = 27
            Width = 97
            Height = 19
            TabOrder = 10
          end
        end
        object Look_KP: TwwDBLookupComboDlg
          Left = 591
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
            'KP'#9'15'#9'KP'#9'F'
            'KD_KONSTRUKSI'#9'4'#9'KODE'#9'F'
            'NAMA_KONSTRUKSI'#9'20'#9'NAMA_KONSTRUKSI'#9'F')
          DataField = 'KD_PRODUKSI'
          DataSource = dsDetail
          LookupTable = DMFrm.QKP_Hasil_Inspect
          LookupField = 'KP'
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnClick = Look_KPClick
          OnCloseUp = Look_KPCloseUp
          OnEnter = Look_KPEnter
        end
        object LookBeam: TwwDBLookupCombo
          Left = 448
          Top = 336
          Width = 121
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NO_SERI_BEAM'#9'15'#9'NO SERI BEAM'#9'F'
            'PROSES'#9'10'#9'PROSES'#9'F'
            'RESEP'#9'15'#9'RESEP'#9'F')
          DataField = 'NO_SERI_BEAM'
          DataSource = dsQBrowse
          LookupTable = QLookBeam
          LookupField = 'NO_SERI_BEAM'
          Options = [loColLines, loRowLines, loTitles]
          TabOrder = 5
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = LookBeamCloseUp
          OnEnter = LookBeamEnter
        end
      end
    end
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db4.hasil_tenun a'
      'where no_reg=:no_reg')
    Variables.Data = {
      0300000001000000070000003A4E4F5F52454703000000040000003D00000000
      000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db4.NO_PROD'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      040000000E0000000700000054414E4747414C010000000000060000004E4F5F
      524547010000000000070000004E4F5F4E4F5441010000000000060000004953
      504F53540100000000000A00000054474C5F494E534552540100000000000A00
      00004F50525F494E534552540100000000000A0000004B45544552414E47414E
      0100000000000400000047525550010000000000050000005348494654010000
      00000009000000494E53504543544F52010000000000030000004E494B010000
      0000000600000050524F534553010000000000060000004C4F4B415349010000
      0000000D0000004A4E535F5452414E53414B5349010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeEdit = QMasterBeforeEdit
    BeforeDelete = QMasterBeforeEdit
    OnNewRecord = QMasterNewRecord
    Left = 144
    object QMasterTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QMasterKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QMasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
    object QMasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QMasterISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QMasterNO_REG: TFloatField
      FieldName = 'NO_REG'
    end
    object QMasterNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 16
    end
    object QMasterGRUP: TStringField
      FieldName = 'GRUP'
      Size = 3
    end
    object QMasterSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 3
    end
    object QMasterINSPECTOR: TStringField
      FieldName = 'INSPECTOR'
      Size = 50
    end
    object QMasterNIK: TStringField
      FieldName = 'NIK'
      Size = 10
    end
    object QMasterJNS_TRANSAKSI: TStringField
      FieldName = 'JNS_TRANSAKSI'
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.hasil_tenun_detail a'
      'where a.no_reg=:no_reg'
      ':myorder')
    Variables.Data = {
      0300000002000000070000003A4E4F5F52454703000000000000000000000008
      0000003A4D594F52444552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000005F0000000600000053415455414E0100000000000C0000004E4F5F53
      4552495F4245414D01000000000003000000515459010000000000090000004F
      50525F54454E554E0100000000000A00000054474C5F494E5345525401000000
      00000A0000004F50525F494E53455254010000000000060000004E4F5F524547
      0100000000000600000050524F534553010000000000060000004C4F4B415349
      0100000000000A0000004B4F4E535452554B534901000000000005000000434F
      52414B0100000000000700000054414E4747414C010000000000030000004E49
      4B0100000000000500000053484946540100000000000B0000004E4F5F50524F
      44554B534901000000000004000000475255500100000000000C0000004E4F5F
      5245475F54454E554E010000000000020000004C44010000000000020000004C
      42010000000000020000004C54010000000000020000004C4B01000000000002
      0000004C4C010000000000020000004C50010000000000020000004C52010000
      00000002000000574C0100000000000200000043420100000000000200000043
      4B01000000000003000000435254010000000000020000005044010000000000
      02000000504C0100000000000200000050500100000000000200000050530100
      00000000020000004E4701000000000002000000575001000000000002000000
      5343010000000000020000004B53010000000000020000004B50010000000000
      02000000424F010000000000020000004C4E0100000000000400000051545932
      01000000000004000000515459330100000000000D0000004B445F4B4F4E5354
      52554B5349010000000000080000004B445F434F52414B010000000000020000
      005052010000000000030000005554420100000000000300000055544B010000
      000000030000004C424B01000000000003000000534C4C010000000000020000
      0054470100000000000300000054435301000000000003000000435550010000
      000000070000004E4F5F55525554010000000000030000004C50420100000000
      00030000004C5053010000000000030000004C5242010000000000030000004C
      5253010000000000020000004C53010000000000030000004C53420100000000
      00030000004C5353010000000000020000004F4A010000000000030000004C50
      54010000000000030000004C524701000000000003000000434B4B0100000000
      000300000043414A01000000000003000000504B500100000000000300000042
      544201000000000003000000414E520100000000000300000055545301000000
      0000030000004B4252010000000000090000004E4F5F44455341494E01000000
      00000500000050494C4948010000000000050000004D4553494E010000000000
      0B0000004B445F50524F44554B5349010000000000050000004A454E49530100
      000000000300000041464C010000000000030000005052410100000000000700
      000054474C5F50544701000000000003000000464C5301000000000003000000
      464C50010000000000040000004E455053010000000000030000004254530100
      00000000030000004B54520100000000000300000050444B0100000000000300
      000053424B010000000000030000004B4E420100000000000600000042475241
      44450100000000000600000042535F464C530100000000000600000042535F46
      4C500100000000000600000042535F4254530100000000000600000042535F42
      54420100000000000500000042535F544B010000000000090000004B45434F45
      535F4247010000000000090000004B45434F45535F4253010000000000030000
      004B4E540100000000000A0000004B45544552414E47414E010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    CachedUpdates = True
    Session = DMFrm.OS
    BeforeOpen = QDetailBeforeOpen
    BeforePost = QDetailBeforePost
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 1040
    Top = 104
    object QDetailNO_SERI_BEAM: TStringField
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QDetailSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 6
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object QDetailOPR_TENUN: TStringField
      FieldName = 'OPR_TENUN'
    end
    object QDetailTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailNO_REG: TFloatField
      FieldName = 'NO_REG'
    end
    object QDetailLOKASI: TStringField
      FieldName = 'LOKASI'
      Size = 10
    end
    object QDetailPROSES: TStringField
      FieldName = 'PROSES'
      Size = 30
    end
    object QDetailKONSTRUKSI: TStringField
      DisplayWidth = 50
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object QDetailCORAK: TStringField
      FieldName = 'CORAK'
      Size = 30
    end
    object QDetailTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QDetailNIK: TStringField
      FieldName = 'NIK'
      Size = 10
    end
    object QDetailBERAT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BERAT'
      Calculated = True
    end
    object QDetailKODI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'KODI'
      Calculated = True
    end
    object QDetailNO_PRODUKSI: TStringField
      FieldName = 'NO_PRODUKSI'
      Size = 30
    end
    object QDetailGRUP: TStringField
      FieldName = 'GRUP'
      Size = 3
    end
    object QDetailSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 3
    end
    object QDetailNO_REG_TENUN: TFloatField
      FieldName = 'NO_REG_TENUN'
    end
    object QDetailLD: TIntegerField
      FieldName = 'LD'
    end
    object QDetailLB: TIntegerField
      FieldName = 'LB'
    end
    object QDetailLT: TIntegerField
      FieldName = 'LT'
    end
    object QDetailLK: TIntegerField
      FieldName = 'LK'
    end
    object QDetailLL: TIntegerField
      FieldName = 'LL'
      LookupDataSet = DMFrm.QCorak
    end
    object QDetailLP: TIntegerField
      FieldName = 'LP'
    end
    object QDetailLR: TIntegerField
      FieldName = 'LR'
    end
    object QDetailWL: TIntegerField
      FieldName = 'WL'
    end
    object QDetailCB: TIntegerField
      FieldName = 'CB'
    end
    object QDetailCK: TIntegerField
      FieldName = 'CK'
    end
    object QDetailCRT: TIntegerField
      FieldName = 'CRT'
    end
    object QDetailPD: TIntegerField
      FieldName = 'PD'
    end
    object QDetailPL: TIntegerField
      FieldName = 'PL'
    end
    object QDetailPP: TIntegerField
      FieldName = 'PP'
    end
    object QDetailPS: TIntegerField
      FieldName = 'PS'
    end
    object QDetailNG: TIntegerField
      FieldName = 'NG'
    end
    object QDetailWP: TIntegerField
      FieldName = 'WP'
    end
    object QDetailSC: TIntegerField
      FieldName = 'SC'
    end
    object QDetailKS: TIntegerField
      FieldName = 'KS'
    end
    object QDetailKP: TIntegerField
      FieldName = 'KP'
    end
    object QDetailBO: TIntegerField
      FieldName = 'BO'
    end
    object QDetailLN: TIntegerField
      FieldName = 'LN'
    end
    object QDetailQTY2: TFloatField
      FieldName = 'QTY2'
    end
    object QDetailQTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QDetailDITERIMA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DITERIMA'
      Calculated = True
    end
    object QDetailPR: TFloatField
      FieldName = 'PR'
    end
    object QDetailUTB: TIntegerField
      FieldName = 'UTB'
    end
    object QDetailUTK: TIntegerField
      FieldName = 'UTK'
    end
    object QDetailLBK: TIntegerField
      FieldName = 'LBK'
    end
    object QDetailSLL: TIntegerField
      FieldName = 'SLL'
    end
    object QDetailTG: TIntegerField
      FieldName = 'TG'
    end
    object QDetailTCS: TIntegerField
      FieldName = 'TCS'
    end
    object QDetailCUP: TIntegerField
      FieldName = 'CUP'
    end
    object QDetailNO_URUT: TFloatField
      FieldName = 'NO_URUT'
    end
    object QDetailLPB: TIntegerField
      FieldName = 'LPB'
    end
    object QDetailLPS: TIntegerField
      FieldName = 'LPS'
    end
    object QDetailLRB: TIntegerField
      FieldName = 'LRB'
    end
    object QDetailLRS: TIntegerField
      FieldName = 'LRS'
    end
    object QDetailLS: TIntegerField
      FieldName = 'LS'
    end
    object QDetailLSB: TIntegerField
      FieldName = 'LSB'
    end
    object QDetailLSS: TIntegerField
      FieldName = 'LSS'
    end
    object QDetailOJ: TIntegerField
      FieldName = 'OJ'
    end
    object QDetailLPT: TIntegerField
      FieldName = 'LPT'
    end
    object QDetailLRG: TIntegerField
      FieldName = 'LRG'
    end
    object QDetailCKK: TIntegerField
      FieldName = 'CKK'
    end
    object QDetailCAJ: TIntegerField
      FieldName = 'CAJ'
    end
    object QDetailPKP: TIntegerField
      FieldName = 'PKP'
    end
    object QDetailBTB: TIntegerField
      FieldName = 'BTB'
    end
    object QDetailANR: TIntegerField
      FieldName = 'ANR'
    end
    object QDetailUTS: TIntegerField
      FieldName = 'UTS'
    end
    object QDetailKBR: TIntegerField
      FieldName = 'KBR'
    end
    object QDetailAFL: TIntegerField
      FieldName = 'AFL'
    end
    object QDetailNO_DESAIN: TStringField
      FieldName = 'NO_DESAIN'
    end
    object QDetailMESIN: TStringField
      FieldName = 'MESIN'
    end
    object QDetailKD_PRODUKSI: TStringField
      FieldName = 'KD_PRODUKSI'
      Size = 10
    end
    object QDetailJENIS: TStringField
      FieldName = 'JENIS'
      Size = 6
    end
    object QDetailPRA: TIntegerField
      FieldName = 'PRA'
    end
    object QDetailFLS: TIntegerField
      FieldName = 'FLS'
    end
    object QDetailFLP: TIntegerField
      FieldName = 'FLP'
    end
    object QDetailNEPS: TIntegerField
      FieldName = 'NEPS'
    end
    object QDetailBTS: TIntegerField
      FieldName = 'BTS'
    end
    object QDetailKTR: TIntegerField
      FieldName = 'KTR'
    end
    object QDetailPDK: TIntegerField
      FieldName = 'PDK'
    end
    object QDetailSBK: TIntegerField
      FieldName = 'SBK'
    end
    object QDetailKNB: TIntegerField
      FieldName = 'KNB'
    end
    object QDetailBGRADE: TIntegerField
      FieldName = 'BGRADE'
    end
    object QDetailBS_FLS: TFloatField
      FieldName = 'BS_FLS'
    end
    object QDetailBS_FLP: TFloatField
      FieldName = 'BS_FLP'
    end
    object QDetailBS_BTS: TFloatField
      FieldName = 'BS_BTS'
    end
    object QDetailBS_BTB: TFloatField
      FieldName = 'BS_BTB'
    end
    object QDetailBS_TK: TFloatField
      FieldName = 'BS_TK'
    end
    object QDetailKECOES_BG: TFloatField
      FieldName = 'KECOES_BG'
    end
    object QDetailKECOES_BS: TFloatField
      FieldName = 'KECOES_BS'
    end
    object QDetailKNT: TFloatField
      FieldName = 'KNT'
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
  end
  object dsDetail: TwwDataSource
    DataSet = QDetail
    Left = 192
    Top = 24
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 336
    Top = 336
  end
  object dsMaster: TwwDataSource
    DataSet = QMaster
    Left = 672
    Top = 40
  end
  object QLookLokasiProses: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db4.vbeam_isi'
      'order by kode')
    Session = DMFrm.OS
    Left = 400
    Top = 16
    object QLookLokasiProsesKODE: TStringField
      DisplayWidth = 12
      FieldName = 'KODE'
      Size = 61
    end
    object QLookLokasiProsesNO_SERI_BEAM: TStringField
      DisplayLabel = 'NO SERI BEAM'
      DisplayWidth = 30
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QLookLokasiProsesKONSTRUKSI: TStringField
      DisplayWidth = 20
      FieldName = 'KONSTRUKSI'
      Size = 30
    end
    object QLookLokasiProsesCORAK: TStringField
      DisplayWidth = 20
      FieldName = 'CORAK'
      Size = 50
    end
    object QLookLokasiProsesISI: TFloatField
      DisplayWidth = 10
      FieldName = 'ISI'
      DisplayFormat = '0.0,0 %'
    end
    object QLookLokasiProsesLOKASI: TStringField
      FieldName = 'LOKASI'
      Visible = False
      Size = 30
    end
    object QLookLokasiProsesPROSES: TStringField
      FieldName = 'PROSES'
      Visible = False
      Size = 30
    end
  end
  object QAmbilData: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db5.proc_hasil_tenun(:no_reg,:no_reg_tenun);'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000002000000070000003A4E4F5F5245470300000000000000000000000D
      0000003A4E4F5F5245475F54454E554E030000000000000000000000}
    Left = 1080
    Top = 40
  end
  object QAmbilData2: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db5.proc_hasil_inspect(:no_reg,:no_reg_tenun);'
      'end;')
    Session = DMFrm.OS
    Left = 1000
    Top = 16
  end
  object QHapus: TOracleQuery
    SQL.Strings = (
      'begin'
      '  delete ipisma_db5.hasil_tenun_detail where no_reg=:no_reg;'
      '  commit;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    Left = 728
    Top = 56
  end
  object LMDGlobalHotKey1: TLMDGlobalHotKey
    HotKey = 114
    OnKeyDown = LMDGlobalHotKey1KeyDown
    Left = 957
    Top = 41
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      'select sum(qty) as qty from ipisma_db5.hasil_tenun_detail a'
      'where a.no_reg=:no_reg')
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {040000000100000003000000515459010000000000}
    Session = DMFrm.OS
    BeforeOpen = QTotalBeforeOpen
    Left = 829
    Top = 49
    object QTotalQTY: TFloatField
      FieldName = 'QTY'
    end
  end
  object wwRecordViewDialog1: TwwRecordViewDialog
    DataSource = dsDetail
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 300
    FormPosition.Height = 0
    NavigatorButtons = []
    Style = rvsHorizontal
    Options = [rvoUseCustomControls, rvoShortenEditBox, rvoModalForm, rvoEnterToTab, rvoConfirmCancel, rvoCloseIsCancel, rvoMaximizeMemoWidth, rvoUseDateTimePicker]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Record View'
    Selected.Strings = (
      'LD'#9'4'#9'LD'#9'F'#9'CACAT ARAH LUSI'
      'LB'#9'4'#9'LB'#9'F'#9'CACAT ARAH LUSI'
      'LT'#9'4'#9'LT'#9'F'#9'CACAT ARAH LUSI'
      'LK'#9'4'#9'LK'#9'F'#9'CACAT ARAH LUSI'
      'LL'#9'4'#9'LL'#9'F'#9'CACAT ARAH LUSI'
      'LP'#9'4'#9'LP'#9'F'#9'CACAT ARAH LUSI'
      'LPB'#9'4'#9'LPB'#9'F'#9'CACAT ARAH LUSI'
      'LPS'#9'4'#9'LPS'#9'F'#9'CACAT ARAH LUSI'
      'LR'#9'4'#9'LR'#9'F'#9'CACAT ARAH LUSI'
      'LRB'#9'4'#9'LRB'#9'F'#9'CACAT ARAH LUSI'
      'LRS'#9'4'#9'LRS'#9'F'#9'CACAT ARAH LUSI'
      'WL'#9'4'#9'WL'#9'F'#9'CACAT ARAH LUSI'
      'LS'#9'4'#9'LS'#9'F'#9'CACAT ARAH LUSI'
      'LSB'#9'4'#9'LSB'#9'F'#9'CACAT ARAH LUSI'
      'LSS'#9'4'#9'LSS'#9'F'#9'CACAT ARAH LUSI'
      'CK'#9'4'#9'CK'#9'F'#9'CACAT ARAH LUSI'
      'OJ'#9'4'#9'OJ'#9'F'#9'CACAT ARAH LUSI'
      'CRT'#9'4'#9'CRT'#9'F'#9'CACAT ARAH LUSI'
      'CB'#9'4'#9'CB'#9'F'#9'CACAT ARAH LUSI'
      '<New Line>'
      'PD'#9'4'#9'PD'#9'F'#9'CACAT ARAH PAKAN'
      'PL'#9'4'#9'PL'#9'F'#9'CACAT ARAH PAKAN'
      'PP'#9'4'#9'PP'#9'F'#9'CACAT ARAH PAKAN'
      'PS'#9'4'#9'PS'#9'F'#9'CACAT ARAH PAKAN'
      'NG'#9'4'#9'NG'#9'F'#9'CACAT ARAH PAKAN'
      'WP'#9'4'#9'WP'#9'F'#9'CACAT ARAH PAKAN'
      '<New Line>'
      'SC'#9'4'#9'SC'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      'KS'#9'4'#9'KS'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      'KP'#9'4'#9'KP'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      'BO'#9'4'#9'BO'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      'TCS'#9'4'#9'KTR'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      'LN'#9'4'#9'LN'#9'F'#9'CACAT ARAH LUSI/ PAKAN'
      '<New Line>'
      'UTB'#9'4'#9'UTB'#9'F'#9'DATA'
      'UTK'#9'4'#9'UTK'#9'F'#9'DATA'
      'LBK'#9'4'#9'LBK'#9'F'#9'DATA'
      'SLL'#9'4'#9'SLL'#9'F'#9'DATA'
      'CUP'#9'4'#9'CUP'#9'F'#9'DATA'
      '<New Line>'
      'QTY2'#9'5'#9'BS'#9'T'#9'DITERIMA'
      'QTY3'#9'4'#9'BK'#9'F'#9'DITERIMA'
      'PR'#9'4'#9'Parah'#9'F'#9'DITERIMA'
      'DITERIMA'#9'4'#9'Total'#9'T'#9'DITERIMA')
    NavigatorFlat = True
    Left = 917
    Top = 57
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db4.bp_hasil_tenun a'
      'where no_reg=:no_reg and lokasi=:plokasi'
      ':vorder')
    Variables.Data = {
      0300000003000000070000003A4E4F5F52454703000000000000000000000008
      0000003A504C4F4B4153490500000002000000330000000000070000003A564F
      5244455201000000330000006F726465722062792073756273747228612E7072
      6F7365732C342C32292C73756273747228612E70726F7365732C312C32290000
      000000}
    QBEDefinition.QBEFieldDefs = {
      04000000190000000C0000004E4F5F534552495F4245414D0100000000000600
      00004E4F5F5245470100000000000600000050524F5345530100000000000600
      00004C4F4B415349010000000000070000004E4F5F4E4F544101000000000002
      0000004131010000000000020000004132010000000000020000004231010000
      0000000200000042320100000000000200000043310100000000000200000043
      3201000000000002000000443101000000000002000000443201000000000005
      000000544F54414C0100000000000400000054474C3101000000000004000000
      54474C320100000000000B0000004A454E49535F4D4553494E01000000000002
      0000004531010000000000020000004532010000000000020000004631010000
      0000000200000046320100000000000200000047310100000000000200000047
      3201000000000004000000534953410100000000000500000052455345500100
      00000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    CachedUpdates = True
    Session = DMFrm.OS
    BeforeOpen = QDetailBeforeOpen
    BeforePost = QDetailBeforePost
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 216
    Top = 352
    object StringField2: TStringField
      FieldName = 'SATUAN'
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'QTY'
    end
    object StringField3: TStringField
      FieldName = 'OPR_TENUN'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object StringField4: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object FloatField2: TFloatField
      FieldName = 'NO_REG'
    end
    object StringField5: TStringField
      FieldName = 'LOKASI'
      Size = 10
    end
    object StringField7: TStringField
      DisplayWidth = 50
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'CORAK'
      Size = 30
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'TANGGAL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object StringField9: TStringField
      FieldName = 'NIK'
      Size = 10
    end
    object re: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BERAT'
      Calculated = True
    end
    object FloatField4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'KODI'
      Calculated = True
    end
    object StringField10: TStringField
      FieldName = 'NO_PRODUKSI'
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'GRUP'
      Size = 3
    end
    object StringField12: TStringField
      FieldName = 'SHIFT'
      Size = 3
    end
    object FloatField5: TFloatField
      FieldName = 'NO_REG_TENUN'
    end
    object IntegerField1: TIntegerField
      FieldName = 'LD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'LB'
    end
    object IntegerField3: TIntegerField
      FieldName = 'LT'
    end
    object IntegerField4: TIntegerField
      FieldName = 'LK'
    end
    object IntegerField5: TIntegerField
      FieldName = 'LL'
      LookupDataSet = DMFrm.QCorak
    end
    object IntegerField6: TIntegerField
      FieldName = 'LP'
    end
    object IntegerField7: TIntegerField
      FieldName = 'LR'
    end
    object IntegerField8: TIntegerField
      FieldName = 'WL'
    end
    object IntegerField9: TIntegerField
      FieldName = 'CB'
    end
    object IntegerField10: TIntegerField
      FieldName = 'CK'
    end
    object IntegerField11: TIntegerField
      FieldName = 'CRT'
    end
    object IntegerField12: TIntegerField
      FieldName = 'PD'
    end
    object IntegerField13: TIntegerField
      FieldName = 'PL'
    end
    object IntegerField14: TIntegerField
      FieldName = 'PP'
    end
    object IntegerField15: TIntegerField
      FieldName = 'PS'
    end
    object IntegerField16: TIntegerField
      FieldName = 'NG'
    end
    object IntegerField17: TIntegerField
      FieldName = 'WP'
    end
    object IntegerField18: TIntegerField
      FieldName = 'SC'
    end
    object IntegerField19: TIntegerField
      FieldName = 'KS'
    end
    object IntegerField20: TIntegerField
      FieldName = 'KP'
    end
    object IntegerField21: TIntegerField
      FieldName = 'BO'
    end
    object IntegerField22: TIntegerField
      FieldName = 'LN'
    end
    object FloatField6: TFloatField
      FieldName = 'QTY2'
    end
    object FloatField7: TFloatField
      FieldName = 'QTY3'
    end
    object FloatField8: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DITERIMA'
      Calculated = True
    end
    object FloatField9: TFloatField
      FieldName = 'PR'
    end
    object IntegerField23: TIntegerField
      FieldName = 'UTB'
    end
    object IntegerField24: TIntegerField
      FieldName = 'UTK'
    end
    object IntegerField25: TIntegerField
      FieldName = 'LBK'
    end
    object IntegerField26: TIntegerField
      FieldName = 'SLL'
    end
    object IntegerField27: TIntegerField
      FieldName = 'TG'
    end
    object IntegerField28: TIntegerField
      FieldName = 'TCS'
    end
    object IntegerField29: TIntegerField
      FieldName = 'CUP'
    end
    object FloatField10: TFloatField
      FieldName = 'NO_URUT'
    end
    object IntegerField30: TIntegerField
      FieldName = 'LPB'
    end
    object IntegerField31: TIntegerField
      FieldName = 'LPS'
    end
    object IntegerField32: TIntegerField
      FieldName = 'LRB'
    end
    object IntegerField33: TIntegerField
      FieldName = 'LRS'
    end
    object IntegerField34: TIntegerField
      FieldName = 'LS'
    end
    object IntegerField35: TIntegerField
      FieldName = 'LSB'
    end
    object IntegerField36: TIntegerField
      FieldName = 'LSS'
    end
    object IntegerField37: TIntegerField
      FieldName = 'OJ'
    end
    object IntegerField38: TIntegerField
      FieldName = 'LPT'
    end
    object IntegerField39: TIntegerField
      FieldName = 'LRG'
    end
    object IntegerField40: TIntegerField
      FieldName = 'CKK'
    end
    object IntegerField41: TIntegerField
      FieldName = 'CAJ'
    end
    object IntegerField42: TIntegerField
      FieldName = 'PKP'
    end
    object IntegerField43: TIntegerField
      FieldName = 'BTB'
    end
    object IntegerField44: TIntegerField
      FieldName = 'ANR'
    end
    object IntegerField45: TIntegerField
      FieldName = 'UTS'
    end
    object IntegerField46: TIntegerField
      FieldName = 'KBR'
    end
    object IntegerField47: TIntegerField
      FieldName = 'AFL'
    end
    object StringField13: TStringField
      FieldName = 'NO_DESAIN'
    end
    object StringField14: TStringField
      FieldName = 'MESIN'
    end
    object StringField15: TStringField
      FieldName = 'KD_PRODUKSI'
      Size = 10
    end
    object StringField16: TStringField
      FieldName = 'JENIS'
      Size = 6
    end
    object IntegerField48: TIntegerField
      FieldName = 'PRA'
    end
    object IntegerField49: TIntegerField
      FieldName = 'FLS'
    end
    object IntegerField50: TIntegerField
      FieldName = 'FLP'
    end
    object IntegerField51: TIntegerField
      FieldName = 'NEPS'
    end
    object IntegerField52: TIntegerField
      FieldName = 'BTS'
    end
    object IntegerField53: TIntegerField
      FieldName = 'KTR'
    end
    object IntegerField54: TIntegerField
      FieldName = 'PDK'
    end
    object IntegerField55: TIntegerField
      FieldName = 'SBK'
    end
    object IntegerField56: TIntegerField
      FieldName = 'KNB'
    end
    object IntegerField57: TIntegerField
      FieldName = 'BGRADE'
    end
    object QBrowsePROSES: TStringField
      FieldName = 'PROSES'
      Required = True
      Size = 30
    end
    object QBrowseNO_SERI_BEAM: TStringField
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QBrowseRESEP: TStringField
      FieldName = 'RESEP'
    end
  end
  object QLookBeam: TOracleDataSet
    SQL.Strings = (
      
        'select distinct a.no_seri_beam, a.proses, a.resep from ipisma_db' +
        '4.vlook_beam_hasiltenun a'
      
        'where a.tanggal<=trunc(:ptgl)+1-1/86400 and a.lokasi=:plokasi or' +
        ' a.proses=:pproses'
      '')
    Variables.Data = {
      0300000003000000080000003A504C4F4B415349050000000000000000000000
      080000003A5050524F534553050000000000000000000000050000003A505447
      4C0C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000C0000004E4F5F534552495F4245414D0100000000000500
      000052455345500100000000000600000050524F534553010000000000}
    Session = DMFrm.OS
    Left = 80
    Top = 336
    object QLookBeamNO_SERI_BEAM: TStringField
      DisplayLabel = 'NO SERI BEAM'
      DisplayWidth = 15
      FieldName = 'NO_SERI_BEAM'
      Size = 30
    end
    object QLookBeamPROSES: TStringField
      DisplayWidth = 10
      FieldName = 'PROSES'
      Size = 30
    end
    object QLookBeamRESEP: TStringField
      DisplayWidth = 15
      FieldName = 'RESEP'
      Size = 30
    end
  end
end
