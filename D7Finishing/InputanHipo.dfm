object InputanHipoFrm: TInputanHipoFrm
  Left = 195
  Top = 119
  Width = 1146
  Height = 621
  Caption = 'Inputan Defect Hipo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1130
    Height = 583
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Input'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1361
        Height = 555
        Align = alLeft
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 513
          Width = 1359
          Height = 41
          Align = alBottom
          TabOrder = 0
          DesignSize = (
            1359
            41)
          object BitBtn2: TBitBtn
            Left = 108
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
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
          Top = 54
          Width = 1359
          Height = 459
          DittoAttributes.DittoDirection = wwDittoPriorOrNext
          DittoAttributes.ShortCutDittoRecord = 16457
          ControlType.Strings = (
            'KD_ITEM;CustomEdit;LookItem;F'
            'ARAH;CustomEdit;LookArah;F'
            'TANGGAL;CustomEdit;wwDBDateTimePicker1;F'
            'MITRA;CustomEdit;LookBeam;F'
            'KD_PRODUKSI;CustomEdit;LookKdProd2;F'
            'JENIS_SARUNG;CustomEdit;LookSarung;F')
          Selected.Strings = (
            'TANGGAL'#9'10'#9'TANGGAL'#9'F'
            'JENIS_SARUNG'#9'15'#9'JENIS SARUNG'#9'F'
            'KD_PRODUKSI'#9'5'#9'KD PRODUKSI'#9'F'
            'KONSTRUKSI'#9'25'#9'KONSTRUKSI'#9'T'
            'MITRA'#9'20'#9'MITRA'#9'F'
            'PROD_CABUT'#9'10'#9'PROD CABUT'#9'F'#9'PRODUKSI'
            'PROD_TDKCABUT'#9'10'#9'PROD POLOS (TDK CABUT)'#9'F'#9'PRODUKSI'
            'PROD_TOTAL'#9'10'#9'PROD TOTAL'#9'T'#9'PRODUKSI'
            'B1'#9'10'#9'B1'#9'F'#9'PRODUKSI'
            'B2_TENUN'#9'10'#9'CACAT TENUN'#9'T'#9'B2'
            'B2_FINISH'#9'10'#9'CACAT FINISH'#9'T'#9'B2'
            'B2_PRINTING'#9'10'#9'CACAT PRINTING'#9'T'#9'B2'
            'B2_TOTAL'#9'10'#9'TOTAL'#9'T'#9'B2'
            'BS_KAIN'#9'10'#9'CACAT KAIN'#9'T'#9'BS'
            'BS_PRINTING'#9'10'#9'CACAT PRINTING'#9'T'#9'BS'
            'BS_TOTAL'#9'10'#9'TOTAL'#9'T'#9'BS'
            'LPT'#9'10'#9'LPT'#9'F'#9'B2 CACAT TENUN'
            'LRG'#9'10'#9'LRG'#9'F'#9'B2 CACAT TENUN'
            'FLO'#9'10'#9'FLO'#9'F'#9'B2 CACAT TENUN'
            'SLL'#9'10'#9'SLL'#9'F'#9'B2 CACAT TENUN'
            'BTS'#9'10'#9'BTS'#9'F'#9'B2 CACAT TENUN'
            'BTB'#9'10'#9'BTB'#9'F'#9'B2 CACAT TENUN'
            'WP'#9'10'#9'WP'#9'F'#9'B2 CACAT TENUN'
            'WL'#9'10'#9'WL'#9'F'#9'B2 CACAT TENUN'
            'TK'#9'10'#9'TK'#9'F'#9'B2 CACAT TENUN'
            'KTR'#9'10'#9'KTR'#9'F'#9'B2 CACAT FINISHING'
            'MC'#9'10'#9'MC'#9'F'#9'B2 CACAT FINISHING'
            'BOSK'#9'10'#9'BOSK'#9'F'#9'B2 CACAT FINISHING'
            'KS'#9'10'#9'KS'#9'F'#9'B2 CACAT FINISHING'
            'HK'#9'10'#9'HK'#9'F'#9'B2 CACAT FINISHING'
            'WTM'#9'10'#9'WTM'#9'F'#9'B2 CACAT FINISHING'
            'M_SAMAR'#9'10'#9'M_SAMAR'#9'F'#9'B2 CACAT PRINTING'
            'M_RUSAK'#9'10'#9'M_RUSAK'#9'F'#9'B2 CACAT PRINTING'
            'M_BELANG'#9'10'#9'M_BELANG'#9'F'#9'B2 CACAT PRINTING'
            'M_OUIT'#9'10'#9'M_OUIT'#9'F'#9'B2 CACAT PRINTING'
            'MTS'#9'10'#9'MTS'#9'F'#9'B2 CACAT PRINTING'
            'FLEX_PRINT'#9'10'#9'FLEX_PRINT'#9'F'#9'B2 CACAT PRINTING'
            'FLEX_STAMPING'#9'10'#9'FLEX_STAMPING'#9'F'#9'B2 CACAT PRINTING'
            'LPT_L'#9'10'#9'LPT_L'#9'F'#9'L CACAT TENUN'
            'LRG_L'#9'10'#9'LRG_L'#9'F'#9'L CACAT TENUN'
            'FLO_L'#9'10'#9'FLO_L'#9'F'#9'L CACAT TENUN'
            'SLL_L'#9'10'#9'SLL_L'#9'F'#9'L CACAT TENUN'
            'BTS_L'#9'10'#9'BTS_L'#9'F'#9'L CACAT TENUN'
            'BTB_L'#9'10'#9'BTB_L'#9'F'#9'L CACAT TENUN'
            'WP_L'#9'10'#9'WP_L'#9'F'#9'L CACAT TENUN'
            'WL_L'#9'10'#9'WL_L'#9'F'#9'L CACAT TENUN'
            'TK_L'#9'10'#9'TK_L'#9'F'#9'L CACAT TENUN'
            'RSK_L'#9'10'#9'RSK_L'#9'F'#9'L CACAT TENUN'
            'KTR_L'#9'10'#9'KTR_L'#9'F'#9'L CACAT FINISHING'
            'MC_L'#9'10'#9'MC_L'#9'F'#9'L CACAT FINISHING'
            'BOSK_L'#9'10'#9'BOSK_L'#9'F'#9'L CACAT FINISHING'
            'KS_L'#9'10'#9'KS_L'#9'F'#9'L CACAT FINISHING'
            'HK_L'#9'10'#9'HK_L'#9'F'#9'L CACAT FINISHING'
            'WTM_L'#9'10'#9'WTM_L'#9'F'#9'L CACAT FINISHING'
            'M_SAMAR_L'#9'10'#9'M_SAMAR_L'#9'F'#9'L CACAT PRINTING'
            'M_RUSAK_L'#9'10'#9'M_RUSAK_L'#9'F'#9'L CACAT PRINTING'
            'M_BELANG_L'#9'10'#9'M_BELANG_L'#9'F'#9'L CACAT PRINTING'
            'M_OUIT_L'#9'10'#9'M_OUIT_L'#9'F'#9'L CACAT PRINTING'
            'MTS_L'#9'10'#9'MTS_L'#9'F'#9'L CACAT PRINTING'
            'FLEX_PRINT_L'#9'10'#9'FLEX_PRINT_L'#9'F'#9'L CACAT PRINTING'
            'FLEX_STAMPING_L'#9'10'#9'FLEX_STAMPING_L'#9'F'#9'L CACAT PRINTING'
            'RSK_BS'#9'10'#9'RSK/SBK/LBG'#9'F'#9'L BS'
            'KTS'#9'10'#9'KAIN TDK STD'#9'F'#9'L BS')
          IniAttributes.Enabled = True
          IniAttributes.SaveToRegistry = True
          IniAttributes.FileName = 'Finishing'
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
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
          OnEnter = wwDBGrid1Enter
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1359
          Height = 53
          Align = alTop
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          object Label15: TLabel
            Left = 117
            Top = 8
            Width = 83
            Height = 13
            Caption = 'Cari Otomatis [F3]'
          end
          object Label16: TLabel
            Left = 173
            Top = 28
            Width = 43
            Height = 13
            Caption = '[ENTER]'
          end
          object BitBtn1: TBitBtn
            Left = 12
            Top = 20
            Width = 75
            Height = 25
            Caption = '&Hapus Semua'
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object Edit6: TEdit
            Left = 117
            Top = 25
            Width = 49
            Height = 19
            TabOrder = 1
            OnChange = Edit6Change
            OnKeyDown = Edit6KeyDown
          end
          object LookBeam: TwwDBLookupCombo
            Left = 384
            Top = 19
            Width = 121
            Height = 19
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'NAMA_MITRA'#9'10'#9'NAMA_MITRA'#9'F')
            DataField = 'MITRA'
            DataSource = dsDetail
            LookupTable = QBrowseMitra
            LookupField = 'NAMA_MITRA'
            Options = [loColLines, loRowLines, loTitles]
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnEnter = LookBeamEnter
          end
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 237
          Top = 16
          Width = 137
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'TGL_TERIMA'
          DataSource = dsDetail
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 3
        end
        object LookKdProd2: TwwDBLookupComboDlg
          Left = 137
          Top = 262
          Width = 48
          Height = 21
          AutoSize = False
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'LookKdProd2'
          MaxWidth = 0
          MaxHeight = 209
          UserButton1Caption = '&Refresh'
          UserButton2Caption = '&Filter'
          Selected.Strings = (
            'KP'#9'15'#9'KP'#9'F'
            'NAMA_KONSTRUKSI'#9'30'#9'KONSTRUKSI'#9'F')
          DataField = 'KD_PRODUKSI'
          DataSource = dsDetail
          LookupTable = DMFrm.QKonstruksi_finish
          LookupField = 'KP'
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnClick = LookKdProd2Click
          OnCloseUp = LookKdProd2CloseUp
          OnEnter = LookKdProd2Enter
        end
        object LookSarung: TwwDBLookupCombo
          Left = 176
          Top = 176
          Width = 121
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'JENIS_SARUNG'#9'15'#9'JENIS_SARUNG'#9'F')
          DataField = 'JENIS_SARUNG'
          DataSource = dsDetail
          LookupTable = QLookSarung
          LookupField = 'JENIS_SARUNG'
          Options = [loColLines, loRowLines, loTitles]
          TabOrder = 5
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnCloseUp = LookSarungCloseUp
          OnEnter = LookSarungEnter
        end
      end
    end
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.hasil_hipo_detail a'
      'WHERE NO_REG =:NO_REG'
      ':myorder')
    Variables.Data = {
      0300000002000000080000003A4D594F52444552010000000000000000000000
      070000003A4E4F5F524547030000000000000000000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'IPISMA_DB5.REG_HASIL_HIPO_DET'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      04000000530000000600000053415455414E0100000000000A00000054474C5F
      494E534552540100000000000A0000004F50525F494E53455254010000000000
      060000004E4F5F524547010000000000060000004C4F4B415349010000000000
      0A0000004B4F4E535452554B534901000000000005000000434F52414B010000
      0000000700000054414E4747414C010000000000050000005348494654010000
      00000004000000475255500100000000000D0000004B445F4B4F4E535452554B
      5349010000000000080000004B445F434F52414B010000000000070000004E4F
      5F52454646010000000000080000004E4F5F4F52444552010000000000080000
      004E4F5F52455345500100000000000B0000004D4553494E5F54454E554E0100
      00000000080000004E4F5F4D4553494E0100000000000C0000004E4F5F524547
      5F4D49545241010000000000050000004D495452410100000000000A0000004B
      45544552414E47414E0100000000000B0000004B445F50524F44554B53490100
      000000000C0000004A454E49535F534152554E47010000000000090000005447
      4C5F4B4952494D0100000000000A00000054474C5F544552494D410100000000
      000A00000050524F445F43414255540100000000000D00000050524F445F5444
      4B43414255540100000000000A00000050524F445F544F54414C010000000000
      020000004231010000000000030000004C5054010000000000030000004C5247
      01000000000003000000464C4F01000000000003000000534C4C010000000000
      0300000042545301000000000003000000425442010000000000020000005750
      01000000000002000000574C01000000000002000000544B0100000000000300
      00004B5452010000000000020000004D4301000000000004000000424F534B01
      0000000000020000004B5301000000000002000000484B010000000000030000
      0057544D010000000000070000004D5F53414D4152010000000000070000004D
      5F525553414B010000000000080000004D5F42454C414E470100000000000600
      00004D5F4F554954010000000000030000004D54530100000000000A00000046
      4C45585F5052494E540100000000000D000000464C45585F5354414D50494E47
      010000000000050000004C50545F4C010000000000050000004C52475F4C0100
      0000000005000000464C4F5F4C01000000000005000000534C4C5F4C01000000
      0000050000004254535F4C010000000000050000004254425F4C010000000000
      0400000057505F4C01000000000004000000574C5F4C01000000000004000000
      544B5F4C0100000000000500000052534B5F4C010000000000050000004B5452
      5F4C010000000000040000004D435F4C01000000000006000000424F534B5F4C
      010000000000040000004B535F4C01000000000004000000484B5F4C01000000
      00000500000057544D5F4C010000000000090000004D5F53414D41525F4C0100
      00000000090000004D5F525553414B5F4C0100000000000A0000004D5F42454C
      414E475F4C010000000000080000004D5F4F5549545F4C010000000000050000
      004D54535F4C0100000000000C000000464C45585F5052494E545F4C01000000
      00000F000000464C45585F5354414D50494E475F4C0100000000000600000052
      534B5F4253010000000000030000004B54530100000000000800000042325F54
      454E554E0100000000000900000042325F46494E4953480100000000000B0000
      0042325F5052494E54494E470100000000000800000042325F544F54414C0100
      000000000700000042535F4B41494E0100000000000B00000042535F5052494E
      54494E470100000000000800000042535F544F54414C01000000000002000000
      424B010000000000}
    Master = InspectingHipoFrm.QMaster
    MasterFields = 'NO_REG'
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeQuery = QDetailBeforeQuery
    CommitOnPost = False
    CachedUpdates = True
    Session = DMFrm.OS
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
    object QDetailKD_PRODUKSI: TStringField
      FieldName = 'KD_PRODUKSI'
      Size = 30
    end
    object QDetailJENIS_SARUNG: TStringField
      FieldName = 'JENIS_SARUNG'
      Size = 50
    end
    object QDetailTGL_KIRIM: TDateTimeField
      FieldName = 'TGL_KIRIM'
    end
    object QDetailTGL_TERIMA: TDateTimeField
      FieldName = 'TGL_TERIMA'
    end
    object QDetailPROD_CABUT: TFloatField
      FieldName = 'PROD_CABUT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPROD_TDKCABUT: TFloatField
      FieldName = 'PROD_TDKCABUT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailPROD_TOTAL: TFloatField
      FieldName = 'PROD_TOTAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailB1: TFloatField
      FieldName = 'B1'
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
    object QDetailFLO: TFloatField
      FieldName = 'FLO'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailSLL: TFloatField
      FieldName = 'SLL'
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
    object QDetailWL: TFloatField
      FieldName = 'WL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailTK: TFloatField
      FieldName = 'TK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKTR: TFloatField
      FieldName = 'KTR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailMC: TFloatField
      FieldName = 'MC'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBOSK: TFloatField
      FieldName = 'BOSK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKS: TFloatField
      FieldName = 'KS'
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
    object QDetailMTS: TFloatField
      FieldName = 'MTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLEX_PRINT: TFloatField
      FieldName = 'FLEX_PRINT'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLEX_STAMPING: TFloatField
      FieldName = 'FLEX_STAMPING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLPT_L: TFloatField
      FieldName = 'LPT_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailLRG_L: TFloatField
      FieldName = 'LRG_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLO_L: TFloatField
      FieldName = 'FLO_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailSLL_L: TFloatField
      FieldName = 'SLL_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBTS_L: TFloatField
      FieldName = 'BTS_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBTB_L: TFloatField
      FieldName = 'BTB_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWP_L: TFloatField
      FieldName = 'WP_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWL_L: TFloatField
      FieldName = 'WL_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailTK_L: TFloatField
      FieldName = 'TK_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailRSK_L: TFloatField
      FieldName = 'RSK_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKTR_L: TFloatField
      FieldName = 'KTR_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailMC_L: TFloatField
      FieldName = 'MC_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBOSK_L: TFloatField
      FieldName = 'BOSK_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKS_L: TFloatField
      FieldName = 'KS_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailHK_L: TFloatField
      FieldName = 'HK_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailWTM_L: TFloatField
      FieldName = 'WTM_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_SAMAR_L: TFloatField
      FieldName = 'M_SAMAR_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_RUSAK_L: TFloatField
      FieldName = 'M_RUSAK_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_BELANG_L: TFloatField
      FieldName = 'M_BELANG_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailM_OUIT_L: TFloatField
      FieldName = 'M_OUIT_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailMTS_L: TFloatField
      FieldName = 'MTS_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLEX_PRINT_L: TFloatField
      FieldName = 'FLEX_PRINT_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailFLEX_STAMPING_L: TFloatField
      FieldName = 'FLEX_STAMPING_L'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailRSK_BS: TFloatField
      FieldName = 'RSK_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailKTS: TFloatField
      FieldName = 'KTS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailB2_TENUN: TFloatField
      FieldName = 'B2_TENUN'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailB2_FINISH: TFloatField
      FieldName = 'B2_FINISH'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailB2_PRINTING: TFloatField
      FieldName = 'B2_PRINTING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailB2_TOTAL: TFloatField
      FieldName = 'B2_TOTAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_KAIN: TFloatField
      FieldName = 'BS_KAIN'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_PRINTING: TFloatField
      FieldName = 'BS_PRINTING'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBS_TOTAL: TFloatField
      FieldName = 'BS_TOTAL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QDetailBK: TFloatField
      FieldName = 'BK'
    end
  end
  object dsDetail: TwwDataSource
    DataSet = QDetail
    Left = 536
    Top = 176
  end
  object dsQBrowse: TwwDataSource
    Left = 888
    Top = 392
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
      '  delete ipisma_db5.hasil_hipo_detail where no_reg=:no_reg;'
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
    Left = 989
    Top = 393
  end
  object QDetail_Tot: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      '    SUM(PROD_CABUT) as PROD_CABUT,'
      '    SUM(PROD_TDKCABUT) as PROD_TDKCABUT,'
      '    SUM(PROD_TOTAL) as PROD_TOTAL,'
      '    SUM(B1) as B1,'
      '    SUM(LPT) as LPT,'
      '    SUM(LRG) as LRG,'
      '    SUM(FLO) as FLO,'
      '    SUM(SLL) as SLL,'
      '    SUM(BTS) as BTS,'
      '    SUM(BTB) as BTB,'
      '    SUM(WP) as WP,'
      '    SUM(WL) as WL,'
      '    SUM(TK) as TK,'
      '    SUM(KTR) as KTR,'
      '    SUM(MC) as MC,'
      '    SUM(BOSK) as BOSK,'
      '    SUM(KS) as KS,'
      '    SUM(HK) as HK,'
      '    SUM(WTM) as WTM,'
      '    SUM(M_SAMAR) as M_SAMAR,'
      '    SUM(M_RUSAK) as M_RUSAK,'
      '    SUM(M_BELANG) as M_BELANG,'
      '    SUM(M_OUIT) as M_OUIT,'
      '    SUM(MTS) as MTS,'
      '    SUM(FLEX_PRINT) as FLEX_PRINT,'
      '    SUM(FLEX_STAMPING) as FLEX_STAMPING,'
      '    SUM(LPT_L) as LPT_L,'
      '    SUM(LRG_L) as LRG_L,'
      '    SUM(FLO_L) as FLO_L,'
      '    SUM(SLL_L) as SLL_L,'
      '    SUM(BTS_L) as BTS_L,'
      '    SUM(BTB_L) as BTB_L,'
      '    SUM(WP_L) as WP_L,'
      '    SUM(WL_L) as WL_L,'
      '    SUM(TK_L) as TK_L,'
      '    SUM(RSK_L) as RSK_L,'
      '    SUM(KTR_L) as KTR_L,'
      '    SUM(MC_L) as MC_L,'
      '    SUM(BOSK_L) as BOSK_L,'
      '    SUM(KS_L) as KS_L,'
      '    SUM(HK_L) as HK_L,'
      '    SUM(WTM_L) as WTM_L,'
      '    SUM(M_SAMAR_L) as M_SAMAR_L,'
      '    SUM(M_RUSAK_L) as M_RUSAK_L,'
      '    SUM(M_BELANG_L) as M_BELANG_L,'
      '    SUM(M_OUIT_L) as M_OUIT_L,'
      '    SUM(MTS_L) as MTS_L,'
      '    SUM(FLEX_PRINT_L) as FLEX_PRINT_L,'
      '    SUM(FLEX_STAMPING_L) as FLEX_STAMPING_L,'
      '    SUM(RSK_BS) as RSK_BS,'
      '    SUM(KTS) as KTS'
      ''
      'from ipisma_db5.hasil_hipo_detail a'
      'WHERE NO_REG =:NO_REG'
      ':myorder'
      '')
    Variables.Data = {
      0300000002000000070000003A4E4F5F52454703000000000000000000000008
      0000003A4D594F52444552010000000000000000000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db5.REG_FINISH_REINSPECT'
    QBEDefinition.QBEFieldDefs = {
      04000000330000000A00000050524F445F43414255540100000000000D000000
      50524F445F54444B43414255540100000000000A00000050524F445F544F5441
      4C010000000000020000004231010000000000030000004C5054010000000000
      030000004C524701000000000003000000464C4F01000000000003000000534C
      4C01000000000003000000425453010000000000030000004254420100000000
      0002000000575001000000000002000000574C01000000000002000000544B01
      0000000000030000004B5452010000000000020000004D430100000000000400
      0000424F534B010000000000020000004B5301000000000002000000484B0100
      000000000300000057544D010000000000070000004D5F53414D415201000000
      0000070000004D5F525553414B010000000000080000004D5F42454C414E4701
      0000000000060000004D5F4F554954010000000000030000004D545301000000
      00000A000000464C45585F5052494E540100000000000D000000464C45585F53
      54414D50494E47010000000000050000004C50545F4C01000000000005000000
      4C52475F4C01000000000005000000464C4F5F4C01000000000005000000534C
      4C5F4C010000000000050000004254535F4C010000000000050000004254425F
      4C0100000000000400000057505F4C01000000000004000000574C5F4C010000
      00000004000000544B5F4C0100000000000500000052534B5F4C010000000000
      050000004B54525F4C010000000000040000004D435F4C010000000000060000
      00424F534B5F4C010000000000040000004B535F4C0100000000000400000048
      4B5F4C0100000000000500000057544D5F4C010000000000090000004D5F5341
      4D41525F4C010000000000090000004D5F525553414B5F4C0100000000000A00
      00004D5F42454C414E475F4C010000000000080000004D5F4F5549545F4C0100
      00000000050000004D54535F4C0100000000000C000000464C45585F5052494E
      545F4C0100000000000F000000464C45585F5354414D50494E475F4C01000000
      00000600000052534B5F4253010000000000030000004B5453010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeOpen = QDetail_TotBeforeOpen
    Left = 560
    Top = 240
    object QDetail_TotPROD_CABUT: TFloatField
      FieldName = 'PROD_CABUT'
    end
    object QDetail_TotPROD_TDKCABUT: TFloatField
      FieldName = 'PROD_TDKCABUT'
    end
    object QDetail_TotPROD_TOTAL: TFloatField
      FieldName = 'PROD_TOTAL'
    end
    object QDetail_TotB1: TFloatField
      FieldName = 'B1'
    end
    object QDetail_TotLPT: TFloatField
      FieldName = 'LPT'
    end
    object QDetail_TotLRG: TFloatField
      FieldName = 'LRG'
    end
    object QDetail_TotFLO: TFloatField
      FieldName = 'FLO'
    end
    object QDetail_TotSLL: TFloatField
      FieldName = 'SLL'
    end
    object QDetail_TotBTS: TFloatField
      FieldName = 'BTS'
    end
    object QDetail_TotBTB: TFloatField
      FieldName = 'BTB'
    end
    object QDetail_TotWP: TFloatField
      FieldName = 'WP'
    end
    object QDetail_TotWL: TFloatField
      FieldName = 'WL'
    end
    object QDetail_TotTK: TFloatField
      FieldName = 'TK'
    end
    object QDetail_TotKTR: TFloatField
      FieldName = 'KTR'
    end
    object QDetail_TotMC: TFloatField
      FieldName = 'MC'
    end
    object QDetail_TotBOSK: TFloatField
      FieldName = 'BOSK'
    end
    object QDetail_TotKS: TFloatField
      FieldName = 'KS'
    end
    object QDetail_TotHK: TFloatField
      FieldName = 'HK'
    end
    object QDetail_TotWTM: TFloatField
      FieldName = 'WTM'
    end
    object QDetail_TotM_SAMAR: TFloatField
      FieldName = 'M_SAMAR'
    end
    object QDetail_TotM_RUSAK: TFloatField
      FieldName = 'M_RUSAK'
    end
    object QDetail_TotM_BELANG: TFloatField
      FieldName = 'M_BELANG'
    end
    object QDetail_TotM_OUIT: TFloatField
      FieldName = 'M_OUIT'
    end
    object QDetail_TotMTS: TFloatField
      FieldName = 'MTS'
    end
    object QDetail_TotFLEX_PRINT: TFloatField
      FieldName = 'FLEX_PRINT'
    end
    object QDetail_TotFLEX_STAMPING: TFloatField
      FieldName = 'FLEX_STAMPING'
    end
    object QDetail_TotLPT_L: TFloatField
      FieldName = 'LPT_L'
    end
    object QDetail_TotLRG_L: TFloatField
      FieldName = 'LRG_L'
    end
    object QDetail_TotFLO_L: TFloatField
      FieldName = 'FLO_L'
    end
    object QDetail_TotSLL_L: TFloatField
      FieldName = 'SLL_L'
    end
    object QDetail_TotBTS_L: TFloatField
      FieldName = 'BTS_L'
    end
    object QDetail_TotBTB_L: TFloatField
      FieldName = 'BTB_L'
    end
    object QDetail_TotWP_L: TFloatField
      FieldName = 'WP_L'
    end
    object QDetail_TotWL_L: TFloatField
      FieldName = 'WL_L'
    end
    object QDetail_TotTK_L: TFloatField
      FieldName = 'TK_L'
    end
    object QDetail_TotRSK_L: TFloatField
      FieldName = 'RSK_L'
    end
    object QDetail_TotKTR_L: TFloatField
      FieldName = 'KTR_L'
    end
    object QDetail_TotMC_L: TFloatField
      FieldName = 'MC_L'
    end
    object QDetail_TotBOSK_L: TFloatField
      FieldName = 'BOSK_L'
    end
    object QDetail_TotKS_L: TFloatField
      FieldName = 'KS_L'
    end
    object QDetail_TotHK_L: TFloatField
      FieldName = 'HK_L'
    end
    object QDetail_TotWTM_L: TFloatField
      FieldName = 'WTM_L'
    end
    object QDetail_TotM_SAMAR_L: TFloatField
      FieldName = 'M_SAMAR_L'
    end
    object QDetail_TotM_RUSAK_L: TFloatField
      FieldName = 'M_RUSAK_L'
    end
    object QDetail_TotM_BELANG_L: TFloatField
      FieldName = 'M_BELANG_L'
    end
    object QDetail_TotM_OUIT_L: TFloatField
      FieldName = 'M_OUIT_L'
    end
    object QDetail_TotMTS_L: TFloatField
      FieldName = 'MTS_L'
    end
    object QDetail_TotFLEX_PRINT_L: TFloatField
      FieldName = 'FLEX_PRINT_L'
    end
    object QDetail_TotFLEX_STAMPING_L: TFloatField
      FieldName = 'FLEX_STAMPING_L'
    end
    object QDetail_TotRSK_BS: TFloatField
      FieldName = 'RSK_BS'
    end
    object QDetail_TotKTS: TFloatField
      FieldName = 'KTS'
    end
  end
  object LMDGlobalHotKey1: TLMDGlobalHotKey
    HotKey = 114
    OnKeyDown = LMDGlobalHotKey1KeyDown
    Left = 944
    Top = 169
  end
  object QBrowseMitra: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db5.nama_mitra_cw a'
      'order by kd_mitra asc')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004B445F4D495452410100000000000A0000004E41
      4D415F4D49545241010000000000}
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 448
    Top = 304
    object QBrowseMitraNAMA_MITRA: TStringField
      DisplayWidth = 10
      FieldName = 'NAMA_MITRA'
    end
  end
  object QLookSarung: TOracleDataSet
    SQL.Strings = (
      'select t.*, t.rowid from ipisma_db5.JENIS_SARUNG_HIPO t'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000090000004B445F534152554E470100000000000C0000004A
      454E49535F534152554E47010000000000}
    Session = DMFrm.OS
    Left = 376
    Top = 184
    object QLookSarungJENIS_SARUNG: TStringField
      DisplayWidth = 15
      FieldName = 'JENIS_SARUNG'
    end
    object QLookSarungKD_SARUNG: TFloatField
      DisplayWidth = 10
      FieldName = 'KD_SARUNG'
      Visible = False
    end
  end
end
