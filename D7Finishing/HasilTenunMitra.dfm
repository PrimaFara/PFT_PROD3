object HasilTenunMitraFrm: THasilTenunMitraFrm
  Left = 229
  Top = 153
  Width = 1198
  Height = 621
  Caption = 'Hasil Tenun Mitra'
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
    Width = 1182
    Height = 583
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Input'
      OnShow = TabSheet1Show
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1174
        Height = 555
        Align = alClient
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 513
          Width = 1172
          Height = 41
          Align = alBottom
          TabOrder = 0
          object BitBtn2: TBitBtn
            Left = 137
            Top = 8
            Width = 75
            Height = 25
            TabOrder = 0
            Kind = bkClose
          end
          object Button1: TButton
            Left = 32
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
          Top = 54
          Width = 1172
          Height = 459
          DittoAttributes.DittoDirection = wwDittoPriorOrNext
          DittoAttributes.ShortCutDittoRecord = 16457
          ControlType.Strings = (
            'KD_ITEM;CustomEdit;LookItem;F'
            'ARAH;CustomEdit;LookArah;F'
            'GRUP;CustomEdit;LookBeam;F')
          Selected.Strings = (
            'TANGGAL'#9'15'#9'TANGGAL'#9'T'
            'NO_RESEP'#9'15'#9'NO RESEP'#9'T'
            'MITRA'#9'20'#9'MITRA'#9'T'
            'NO_MESIN'#9'5'#9'NO MESIN'#9'T'
            'NO_BEAM'#9'8'#9'NO_BEAM'#9'T'
            'GRUP'#9'3'#9'GRUP'#9'F'
            'METER'#9'10'#9'METER'#9'F'
            'QTY'#9'10'#9'POTONG'#9'F'
            'KD_PRODUKSI'#9'5'#9'KD_PRODUKSI'#9'T'
            'KONSTRUKSI'#9'25'#9'KONSTRUKSI'#9'T'
            'CORAK'#9'20'#9'CORAK'#9'T'
            'MESIN_TENUN'#9'15'#9'MESIN TENUN'#9'T'
            'LD'#9'6'#9'LD/BSR'#9'F'#9'DEFECT B-GRADE'
            'LT'#9'6'#9'LT KEND'#9'F'#9'DEFECT B-GRADE'
            'LPT'#9'6'#9'LPT'#9'F'#9'DEFECT B-GRADE'
            'LRG'#9'6'#9'LRG'#9'F'#9'DEFECT B-GRADE'
            'WL'#9'6'#9'WL'#9'F'#9'DEFECT B-GRADE'
            'FLS'#9'6'#9'FLS'#9'F'#9'DEFECT B-GRADE'
            'FLP'#9'6'#9'FLP'#9'F'#9'DEFECT B-GRADE'
            'NEPS'#9'6'#9'NEPS'#9'F'#9'DEFECT B-GRADE'
            'PP'#9'6'#9'PP'#9'F'#9'DEFECT B-GRADE'
            'WP'#9'6'#9'WP'#9'F'#9'DEFECT B-GRADE'
            'OJ'#9'6'#9'OJ'#9'F'#9'DEFECT B-GRADE'
            'CRT'#9'6'#9'CRT'#9'F'#9'DEFECT B-GRADE'
            'BTS'#9'6'#9'BTS'#9'F'#9'DEFECT B-GRADE'
            'BTB'#9'6'#9'BTB'#9'F'#9'DEFECT B-GRADE'
            'BO'#9'6'#9'BO'#9'F'#9'DEFECT B-GRADE'
            'SC'#9'6'#9'SC'#9'F'#9'DEFECT B-GRADE'
            'SLL'#9'6'#9'SLL'#9'F'#9'DEFECT B-GRADE'
            'CK'#9'6'#9'TK'#9'F'#9'DEFECT B-GRADE'
            'CAJ'#9'6'#9'T TUCK IN'#9'F'#9'DEFECT B-GRADE'
            'KTR'#9'6'#9'KTR'#9'F'#9'DEFECT B-GRADE'
            'PDK'#9'6'#9'PDK'#9'F'#9'DEFECT B-GRADE'
            'KP'#9'6'#9'LBR KRG'#9'F'#9'DEFECT B-GRADE'
            'KECOES_BG'#9'6'#9'CACAT MENDING'#9'F'#9'DEFECT B-GRADE'
            'KBR'#9'6'#9'KMBG RSK'#9'F'#9'DEFECT B-GRADE'
            'SBK'#9'10'#9'RSK / SBK / LUB'#9'F'#9'BS'
            'KNT'#9'10'#9'LBG'#9'F'#9'BS'
            'UTS'#9'6'#9'UTS'#9'F'#9'BS'
            'KNB'#9'6'#9'KNB'#9'F'#9'BS'
            'BS_FLS'#9'6'#9'SLL'#9'F'#9'BS'
            'BS_FLP'#9'6'#9'FLP'#9'F'#9'BS'
            'BS_BTS'#9'6'#9'BTS'#9'F'#9'BS'
            'BS_BTB'#9'6'#9'SC'#9'F'#9'BS'
            'BS_TK'#9'6'#9'TK'#9'F'#9'BS'
            'AFL'#9'6'#9'KMBG RSK'#9'F'#9'BS'
            'KECOES_BS'#9'6'#9'CACAT MENDING'#9'F'#9'BS'
            'LK'#9'6'#9'AFL LGS (CM)'#9'F'#9'AFFAL'
            'LB'#9'6'#9'AFL TDK LGS (CM)'#9'F'#9'AFFAL'
            'QTY3'#9'6'#9'BK'#9'F'#9'DITERIMA'
            'BGRADE'#9'6'#9'BGRADE'#9'F'#9'DITERIMA'
            'QTY2'#9'6'#9'BS'#9'F'#9'DITERIMA'
            'PJG'#9'6'#9'PJG'#9'F'#9'DATA'
            'LBR'#9'6'#9'LBR'#9'F'#9'DATA'
            'KETERANGAN'#9'15'#9'KETERANGAN'#9'F')
          IniAttributes.Enabled = True
          IniAttributes.SaveToRegistry = True
          IniAttributes.FileName = 'Finishing'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 7
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgDblClickColSizing]
          ParentFont = False
          RowHeightPercent = 150
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Lucida Sans'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = wwDBGrid1CalcCellColors
          OnTitleButtonClick = wwDBGrid1TitleButtonClick
          OnDblClick = wwDBGrid1DblClick
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1172
          Height = 53
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label6: TLabel
            Left = 16
            Top = 7
            Width = 148
            Height = 13
            Caption = 'Cari No Nota Hasil Tenun MItra'
          end
          object Label10: TLabel
            Left = 320
            Top = 7
            Width = 23
            Height = 13
            Caption = 'Mitra'
          end
          object Label12: TLabel
            Left = 216
            Top = 7
            Width = 76
            Height = 13
            Caption = 'Tanggal Potong'
          end
          object Label13: TLabel
            Left = 588
            Top = 7
            Width = 23
            Height = 13
            Caption = 'Grup'
            Visible = False
          end
          object Label14: TLabel
            Left = 532
            Top = 7
            Width = 48
            Height = 13
            Caption = 'No. Mesin'
          end
          object Label15: TLabel
            Left = 829
            Top = 12
            Width = 83
            Height = 13
            Caption = 'Cari Otomatis [F3]'
          end
          object Label16: TLabel
            Left = 885
            Top = 32
            Width = 43
            Height = 13
            Caption = '[ENTER]'
          end
          object look_mitra: TwwDBLookupComboDlg
            Left = 319
            Top = 26
            Width = 201
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'NAMA_MITRA'#9'50'#9'NAMA_MITRA'#9'F')
            LookupTable = DMFrm.QLookMitra
            LookupField = 'NAMA_MITRA'
            TabOrder = 8
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = look_mitraCloseUp
            OnEnter = look_mitraEnter
          end
          object Button2: TButton
            Left = 128
            Top = 24
            Width = 75
            Height = 25
            Caption = '&Ambil Data'
            TabOrder = 1
            OnClick = Button2Click
          end
          object Edit1: TEdit
            Left = 16
            Top = 27
            Width = 105
            Height = 19
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 320
            Top = 26
            Width = 183
            Height = 19
            TabOrder = 3
          end
          object wwDBDateTimePicker2: TwwDBDateTimePicker
            Left = 216
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
            Left = 636
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Ambil &Data'
            TabOrder = 6
            OnClick = Button3Click
          end
          object Edit4: TEdit
            Left = 588
            Top = 27
            Width = 33
            Height = 19
            TabOrder = 5
            Visible = False
          end
          object Edit5: TEdit
            Left = 532
            Top = 27
            Width = 49
            Height = 19
            TabOrder = 4
          end
          object BitBtn1: TBitBtn
            Left = 724
            Top = 24
            Width = 75
            Height = 25
            Caption = '&Hapus Semua'
            TabOrder = 7
            OnClick = BitBtn1Click
          end
          object Edit6: TEdit
            Left = 829
            Top = 27
            Width = 49
            Height = 19
            TabOrder = 9
            OnChange = Edit6Change
            OnKeyDown = Edit6KeyDown
          end
        end
        object LookBeam: TwwDBLookupCombo
          Left = 272
          Top = 203
          Width = 121
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'GRUP'#9'10'#9'GRUP'#9'F')
          DataField = 'GRUP'
          DataSource = dsDetail
          LookupTable = DMFrm.QLookGrup
          LookupField = 'GRUP'
          Options = [loColLines, loRowLines, loTitles]
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.hasil_mitra_detail a'
      'WHERE NO_REG =:NO_REG'
      ':myorder')
    Variables.Data = {
      0300000002000000080000003A4D594F52444552010000000000000000000000
      070000003A4E4F5F52454703000000040000003F1F000000000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db5.REG_FINISH_REINSPECT'
    QBEDefinition.QBEFieldDefs = {
      04000000480000000600000053415455414E0100000000000300000051545901
      00000000000A00000054474C5F494E534552540100000000000A0000004F5052
      5F494E53455254010000000000060000004E4F5F524547010000000000060000
      004C4F4B4153490100000000000A0000004B4F4E535452554B53490100000000
      0005000000434F52414B0100000000000700000054414E4747414C0100000000
      0005000000534849465401000000000004000000475255500100000000000200
      00004C44010000000000020000004C42010000000000020000004C5401000000
      0000020000004C4B01000000000002000000574C01000000000002000000434B
      0100000000000300000043525401000000000002000000504401000000000002
      0000005050010000000000020000005750010000000000020000005343010000
      00000002000000424F0100000000000400000051545932010000000000040000
      00515459330100000000000D0000004B445F4B4F4E535452554B534901000000
      0000080000004B445F434F52414B01000000000003000000534C4C0100000000
      00070000004E4F5F524546460100000000000500000050494C49480100000000
      00020000004F4A010000000000030000004C5054010000000000030000004C52
      470100000000000300000043414A010000000000030000004254420100000000
      000300000055545301000000000003000000464C530100000000000300000042
      545301000000000003000000504A47010000000000030000004C425201000000
      000003000000435550010000000000080000004E4F5F4F524445520100000000
      000200000050520100000000000300000050444B010000000000030000004B4E
      540100000000000300000053424B010000000000030000004B4E420100000000
      00080000004E4F5F52455345500100000000000B0000004D4553494E5F54454E
      554E010000000000080000004E4F5F4D4553494E01000000000003000000414E
      520100000000000C0000004E4F5F5245475F4D49545241010000000000030000
      00464C50010000000000050000004D495452410100000000000A0000004B4554
      4552414E47414E0100000000000B0000004B445F50524F44554B534901000000
      0000070000004E4F5F4245414D010000000000050000004D4554455201000000
      0000040000004E455053010000000000030000004B5452010000000000020000
      004B500100000000000300000041464C01000000000006000000424752414445
      0100000000000600000042535F464C530100000000000600000042535F464C50
      0100000000000600000042535F4254530100000000000600000042535F425442
      0100000000000500000042535F544B010000000000090000004B45434F45535F
      4247010000000000090000004B45434F45535F42530100000000000500000052
      4153494F010000000000030000004B4252010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    CachedUpdates = True
    Session = DMFrm.OS
    BeforeOpen = QDetailBeforeOpen
    BeforePost = QDetailBeforePost
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 736
    Top = 280
    object QDetailNO_REG: TFloatField
      FieldName = 'NO_REG'
    end
    object QDetailNO_REG_MITRA: TFloatField
      FieldName = 'NO_REG_MITRA'
    end
    object QDetailNO_REFF: TStringField
      FieldName = 'NO_REFF'
      Size = 30
    end
    object QDetailTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object QDetailNO_ORDER: TStringField
      FieldName = 'NO_ORDER'
      Size = 30
    end
    object QDetailKD_KONSTRUKSI: TStringField
      FieldName = 'KD_KONSTRUKSI'
      Size = 6
    end
    object QDetailKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object QDetailMESIN_TENUN: TStringField
      FieldName = 'MESIN_TENUN'
      Size = 30
    end
    object QDetailKD_CORAK: TStringField
      FieldName = 'KD_CORAK'
      Size = 6
    end
    object QDetailCORAK: TStringField
      FieldName = 'CORAK'
      Size = 30
    end
    object QDetailNO_RESEP: TStringField
      FieldName = 'NO_RESEP'
      Size = 25
    end
    object QDetailNO_MESIN: TStringField
      FieldName = 'NO_MESIN'
      Size = 25
    end
    object QDetailSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 10
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0,0;(0.0,0); '
    end
    object QDetailQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '0.0,0;(0.0,0);'
    end
    object QDetailQTY3: TFloatField
      FieldName = 'QTY3'
      DisplayFormat = '0.0,0;(0.0,0);'
    end
    object QDetailMITRA: TStringField
      FieldName = 'MITRA'
      Size = 25
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 30
    end
    object QDetailTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailLOKASI: TStringField
      FieldName = 'LOKASI'
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
    object QDetailPILIH: TStringField
      FieldName = 'PILIH'
      Size = 1
    end
    object QDetailLD: TFloatField
      FieldName = 'LD'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLB: TFloatField
      FieldName = 'LB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLT: TFloatField
      FieldName = 'LT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLK: TFloatField
      FieldName = 'LK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLS: TFloatField
      FieldName = 'FLS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLP: TFloatField
      FieldName = 'FLP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLPT: TFloatField
      FieldName = 'LPT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLRG: TFloatField
      FieldName = 'LRG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWL: TFloatField
      FieldName = 'WL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCK: TFloatField
      FieldName = 'CK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailOJ: TFloatField
      FieldName = 'OJ'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCRT: TFloatField
      FieldName = 'CRT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCAJ: TFloatField
      FieldName = 'CAJ'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPD: TFloatField
      FieldName = 'PD'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPP: TFloatField
      FieldName = 'PP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBTS: TFloatField
      FieldName = 'BTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBTB: TFloatField
      FieldName = 'BTB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWP: TFloatField
      FieldName = 'WP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailSC: TFloatField
      FieldName = 'SC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPDK: TFloatField
      FieldName = 'PDK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBO: TFloatField
      FieldName = 'BO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKNT: TFloatField
      FieldName = 'KNT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailSLL: TFloatField
      FieldName = 'SLL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailSBK: TFloatField
      FieldName = 'SBK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailANR: TFloatField
      FieldName = 'ANR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailUTS: TFloatField
      FieldName = 'UTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKNB: TFloatField
      FieldName = 'KNB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPJG: TFloatField
      FieldName = 'PJG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLBR: TFloatField
      FieldName = 'LBR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailCUP: TFloatField
      FieldName = 'CUP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPR: TFloatField
      FieldName = 'PR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKD_PRODUKSI: TStringField
      FieldName = 'KD_PRODUKSI'
    end
    object QDetailNO_BEAM: TStringField
      FieldName = 'NO_BEAM'
      Size = 52
    end
    object QDetailMETER: TFloatField
      FieldName = 'METER'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailNEPS: TFloatField
      FieldName = 'NEPS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKTR: TFloatField
      FieldName = 'KTR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKP: TFloatField
      FieldName = 'KP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailAFL: TFloatField
      FieldName = 'AFL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBGRADE: TFloatField
      FieldName = 'BGRADE'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_FLS: TFloatField
      FieldName = 'BS_FLS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_FLP: TFloatField
      FieldName = 'BS_FLP'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_BTS: TFloatField
      FieldName = 'BS_BTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_BTB: TFloatField
      FieldName = 'BS_BTB'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_TK: TFloatField
      FieldName = 'BS_TK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKECOES_BG: TFloatField
      FieldName = 'KECOES_BG'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKECOES_BS: TFloatField
      FieldName = 'KECOES_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKBR: TFloatField
      FieldName = 'KBR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object dsDetail: TwwDataSource
    DataSet = QDetail
    Left = 536
    Top = 176
  end
  object dsQBrowse: TwwDataSource
    Left = 648
  end
  object dsMaster: TwwDataSource
    Left = 1096
    Top = 176
  end
  object QLookLokasiProses: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db4.vbeam_isi'
      'order by kode')
    Session = DMFrm.OS
    Left = 1016
    Top = 208
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
      'proc_ambil_Reinspect(:no_nota);'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000001000000080000003A4E4F5F4E4F5441050000000000000000000000}
    Left = 752
    Top = 144
  end
  object QAmbilData2: TOracleQuery
    Session = DMFrm.OS
    Left = 760
    Top = 216
  end
  object QHapus: TOracleQuery
    SQL.Strings = (
      'begin'
      '  delete ipisma_db5.hasil_mitra_detail where no_reg=:no_reg;'
      '  commit;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    Left = 968
    Top = 232
  end
  object wwRecordViewDialog1: TwwRecordViewDialog
    DataSource = dsDetail
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = []
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
      'LD'#9'10'#9'LD'#9#9
      'LB'#9'10'#9'LB'#9#9
      'LT'#9'10'#9'LT'#9#9
      'LK'#9'10'#9'LK'#9#9
      'LL'#9'10'#9'LL'#9#9
      'LP'#9'10'#9'LP'#9#9
      'LR'#9'10'#9'LR'#9#9
      'WL'#9'10'#9'WL'#9#9
      'CB'#9'10'#9'CB'#9#9
      'CK'#9'10'#9'CK'#9#9
      'CRT'#9'10'#9'CRT'#9#9
      '<New Line>'
      'PD'#9'10'#9'PD'#9#9
      'PL'#9'10'#9'PL'#9#9
      'PP'#9'10'#9'PP'#9#9
      'PS'#9'10'#9'PS'#9#9
      'NG'#9'10'#9'NG'#9#9
      'WP'#9'10'#9'WP'#9#9
      'SLL'#9'10'#9'SLL'#9#9
      '<New Line>'
      'SC'#9'10'#9'SC'#9#9
      'KS'#9'10'#9'KS'#9#9
      'KP'#9'10'#9'KP'#9#9
      'BO'#9'10'#9'BO'#9#9
      'LN'#9'10'#9'LN'#9#9
      'PR'#9'10'#9'PR'#9#9
      '<New Line>'
      'UTB'#9'10'#9'UTB'#9#9
      'UTK'#9'10'#9'UTK'#9#9
      'LBK'#9'10'#9'LBK'#9#9)
    NavigatorFlat = True
    Left = 701
    Top = 1
  end
  object QDetail_Tot: TOracleDataSet
    SQL.Strings = (
      'select'
      'sum(a.qty)as qty,'
      'sum(a.meter) as meter,'
      'sum(a.qty3)as qty3,'
      'sum(a.qty2)as qty2,'
      'sum(a.pr)as pr,'
      'sum(a.bgrade) as bgrade'
      'from ipisma_db5.hasil_mitra_detail a'
      'WHERE NO_REG =:NO_REG'
      ':myorder'
      '')
    Variables.Data = {
      0300000001000000070000003A4E4F5F5245470300000004000000B21E000000
      000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db5.REG_FINISH_REINSPECT'
    QBEDefinition.QBEFieldDefs = {
      040000000600000003000000515459010000000000050000004D455445520100
      0000000004000000515459330100000000000400000051545932010000000000
      02000000505201000000000006000000424752414445010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeOpen = QDetail_TotBeforeOpen
    Left = 560
    Top = 240
    object QDetail_TotQTY: TFloatField
      FieldName = 'QTY'
    end
    object QDetail_TotMETER: TFloatField
      FieldName = 'METER'
    end
    object QDetail_TotQTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QDetail_TotQTY2: TFloatField
      FieldName = 'QTY2'
    end
    object QDetail_TotPR: TFloatField
      FieldName = 'PR'
    end
    object QDetail_TotBGRADE: TFloatField
      FieldName = 'BGRADE'
    end
  end
  object LMDGlobalHotKey1: TLMDGlobalHotKey
    HotKey = 114
    OnKeyDown = LMDGlobalHotKey1KeyDown
    Left = 944
    Top = 169
  end
end
