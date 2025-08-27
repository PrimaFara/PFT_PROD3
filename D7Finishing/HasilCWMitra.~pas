unit HasilCWMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, jpeg, OleCtrls, SHDocVw,MSHTML,ActiveX,Registry;

type
  THasilCWMitraFrm = class(TForm)
    PanelCenter: TPanel;
    PanelHeader: TPanel;
    PanelFooter: TPanel;
    PanelTop: TPanel;
    wwDBGrid1: TwwDBGrid;
    PanelBanner: TPanel;
    BitBtn1: TBitBtn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    QMaster: TOracleDataSet;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    dsQMaster: TwwDataSource;
    DBText1: TDBText;
    wwDBNavigator1Delete: TwwNavButton;
    Edit1: TEdit;
    Label1: TLabel;
    wwDBNavigator1Button: TwwNavButton;
    BitBtn2: TBitBtn;
    wwCheckBox1: TwwCheckBox;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    QTransaksi: TOracleDataSet;
    QTransaksiNAMA_TRANSAKSI: TStringField;
    QTransaksiKD_TRANSAKSI: TStringField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QTransaksiDIV1: TStringField;
    QTransaksiDIV2: TStringField;
    QTransaksiDIV3: TStringField;
    QTransaksiDIV4: TStringField;
    QTransaksiJAB1: TStringField;
    QTransaksiJAB2: TStringField;
    QTransaksiJAB3: TStringField;
    QTransaksiJAB4: TStringField;
    QTransaksiDISTRIBUSI: TStringField;
    Label6: TLabel;
    DBText2: TDBText;
    dsQTransaksi: TwwDataSource;
    DBText3: TDBText;
    Label7: TLabel;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    FNo_Urut: TOracleDataSet;
    LookMaster: TwwLookupDialog;
    DBText4: TDBText;
    cbPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label2: TLabel;
    Label4: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Panel4: TPanel;
    vOperand: TLabel;
    cbTanggal: TCheckBox;
    BitBtn3: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    dbcField: TwwDBComboBox;
    BtnExport: TBitBtn;
    wwDBGrid1xxxxx: TwwDBGrid;
    QBrowseTotal: TOracleDataSet;
    QTotal: TOracleDataSet;
    Label9: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    LabelBanner: TLabel;
    LookGrup: TwwDBComboBox;
    LookKonstruksi: TwwDBLookupComboDlg;
    LookCorak: TwwDBLookupComboDlg;
    Label14: TLabel;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape13: TQRShape;
    QRBand7: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRGroup1: TQRGroup;
    QRBand9: TQRBand;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText3: TQRDBText;
    QRBand10: TQRBand;
    QRDBText4: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand11: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape18: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    VTglAwal2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BtnExport2: TBitBtn;
    Label20: TLabel;
    dsQPer_Hari: TwwDataSource;
    BitBtn6: TBitBtn;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    Label16: TLabel;
    Label17: TLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText14: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand5: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText24: TQRDBText;
    VTglakhir2: TwwDBDateTimePicker;
    Label18: TLabel;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QMesin: TOracleDataSet;
    QMesinKD_MESIN: TStringField;
    QMesinNAMA_MESIN: TStringField;
    QMesinKELOMPOK: TStringField;
    dsQMesin: TwwDataSource;
    QRLabel13: TQRLabel;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    QAmbil: TOracleDataSet;
    LookSatuan: TwwDBComboBox;
    QProcmeter: TOracleQuery;
    QPerKonstruksi_M: TOracleDataSet;
    dsQPerKonstruksi_M: TwwDataSource;
    QPerKonstruksi_MGULUNG_POTONG: TFloatField;
    QPerKonstruksi_MPOTONG: TFloatField;
    QPerKonstruksi_MGULUNG_METER: TFloatField;
    QPerKonstruksi_MMETER: TFloatField;
    QRShape1: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRDBText25: TQRDBText;
    QRShape20: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QPerKonstruksi_M_Tot: TOracleDataSet;
    QPerKonstruksi_M_TotGULUNG_POTONG: TFloatField;
    QPerKonstruksi_M_TotPOTONG: TFloatField;
    QPerKonstruksi_M_TotGULUNG_METER: TFloatField;
    QPerKonstruksi_M_TotMETER: TFloatField;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QPerKonstruksi_MKONSTRUKSI: TStringField;
    QKdProd: TOracleDataSet;
    LookJenis: TwwDBComboBox;
    QPerKonstruksi_MKD_PRODUKSI: TStringField;
    QAmbilKD_PRODUKSI: TStringField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilSUB_KELOMPOK: TStringField;
    LookKdProd: TwwDBLookupComboDlg;
    FNo_UrutNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_NOTA: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterOPERATOR: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QMasterSTATUS: TStringField;
    QMasterISPOST: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterNO_BUKTI: TStringField;
    QMasterNO_ORDER: TStringField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNO_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailMUTU: TStringField;
    QDetailQTY: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailSATUAN: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailNO_SPB: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailMITRA: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QMasterJENIS: TStringField;
    QDetailNO_BATCH: TStringField;
    Label10: TLabel;
    QKdProdNO_REG: TFloatField;
    QKdProdTGL: TDateTimeField;
    QKdProdNO_NOTA: TStringField;
    QKdProdGRUP: TStringField;
    QKdProdSHIFT: TStringField;
    QKdProdTGL_INSERT: TDateTimeField;
    QKdProdOPR_INSERT: TStringField;
    QKdProdISPOST: TStringField;
    QKdProdKETERANGAN2: TStringField;
    QKdProdKD_KONSTRUKSI: TStringField;
    QKdProdKONSTRUKSI: TStringField;
    QKdProdKET_KONSTRUKSI: TStringField;
    QKdProdKD_CORAK: TStringField;
    QKdProdCORAK: TStringField;
    QKdProdMUTU: TStringField;
    QKdProdNO_PART: TStringField;
    QKdProdMERK: TStringField;
    QKdProdQTY_METER: TFloatField;
    QKdProdQTY_GULUNG: TFloatField;
    QKdProdQTY_TERIMA: TFloatField;
    QKdProdJENIS: TStringField;
    QKdProdNO_ORDER: TStringField;
    QKdProdNO_DESAIN: TStringField;
    QKdProdBK: TFloatField;
    QKdProdBGRADE: TFloatField;
    QKdProdBS_PARAH: TFloatField;
    QKdProdTOTAL: TFloatField;
    QKdProdAFFAL: TFloatField;
    QKdProdKET_DETAIL: TStringField;
    QKdProdCORAK_PRINTING: TStringField;
    QKdProdPEMESAN: TStringField;
    QKdProdKELOMPOK: TStringField;
    QKdProdKD_WARNA2: TStringField;
    QKdProdWARNA2: TStringField;
    QKdProdPETUGAS: TStringField;
    QKdProdKD_PRODUKSI: TStringField;
    QKdProdSTS_TETAP: TStringField;
    QKdProdSUPLIER: TStringField;
    QKdProdTAHUN: TFloatField;
    QKdProdNAMA_ITEM: TStringField;
    LookKdProd2: TwwDBLookupComboDlg;
    QKdProd2: TOracleDataSet;
    QKdProd2KD_PRODUKSI: TStringField;
    QKdProd2KD_KONSTRUKSI: TStringField;
    QKdProd2SUB_KELOMPOK: TStringField;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel4: TQRLabel;
    QDetailQTY4: TFloatField;
    QDetailQTY5: TFloatField;
    QDetailKETERANGAN2: TStringField;
    QDetailKD_WARNA: TFloatField;
    QDetailWARNA: TStringField;
    LookProses: TwwDBComboBox;
    LookWarna: TwwDBLookupComboDlg;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel8: TPanel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    BitBtn9: TBitBtn;
    LabelBanner3: TLabel;
    dsQBrowse_Rekap: TwwDataSource;
    QBrowse_Rekap: TOracleDataSet;
    QTotalRekap: TOracleDataSet;
    wwDBGrid3: TwwDBGrid;
    QDetailKD_PRINT: TStringField;
    QDetailDEFECT: TStringField;
    QDetailAFFAL: TFloatField;
    QBrowseTotalBK: TFloatField;
    QBrowseTotalBGRADE: TFloatField;
    QBrowseTotalBS: TFloatField;
    QBrowseTotalTOTAL: TFloatField;
    QBrowseTotalP_BK: TFloatField;
    QBrowseTotalP_BGRADE: TFloatField;
    QBrowseTotalP_BS: TFloatField;
    QBrowseTotalFLEX_PRINT: TFloatField;
    QBrowseTotalFLEX_STEAM: TFloatField;
    QBrowseTotalFLEX_STAMPING: TFloatField;
    QBrowseTotalWTS: TFloatField;
    QBrowseTotalM_SAMAR: TFloatField;
    QBrowseTotalM_RUSAK: TFloatField;
    QBrowseTotalM_BELANG: TFloatField;
    QBrowseTotalO_SETTING: TFloatField;
    QBrowseTotalSOBEK: TFloatField;
    QBrowseTotalAFFAL: TFloatField;
    QBrowseTotalP_FLEX_PRINT: TFloatField;
    QBrowseTotalP_FLEX_STEAM: TFloatField;
    QBrowseTotalP_FLEX_STAMPING: TFloatField;
    QBrowseTotalP_WTS: TFloatField;
    QBrowseTotalP_M_SAMAR: TFloatField;
    QBrowseTotalP_M_RUSAK: TFloatField;
    QBrowseTotalP_M_BELANG: TFloatField;
    QBrowseTotalP_O_SETTING: TFloatField;
    QBrowseTotalP_SOBEK: TFloatField;
    QBrowseTotalP_AFFAL: TFloatField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseOPERATOR: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseNO_BATCH: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseQTY3: TFloatField;
    QBrowseQTY4: TFloatField;
    QBrowseQTY5: TFloatField;
    QBrowseKETERANGAN2: TStringField;
    QBrowseKD_WARNA: TFloatField;
    QBrowseWARNA: TStringField;
    QBrowseKD_PRINT: TStringField;
    QBrowseDEFECT: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseAFFAL: TFloatField;
    QBrowseP_BK: TFloatField;
    QBrowseP_BGRADE: TFloatField;
    QBrowseP_BS: TFloatField;
    QBrowseP_FLEX_PRINT: TFloatField;
    QBrowseP_FLEX_STEAM: TFloatField;
    QBrowseP_FLEX_STAMPING: TFloatField;
    QBrowseP_WTS: TFloatField;
    QBrowseP_M_SAMAR: TFloatField;
    QBrowseP_M_RUSAK: TFloatField;
    QBrowseP_M_BELANG: TFloatField;
    QBrowseP_O_SETTING: TFloatField;
    QBrowseP_SOBEK: TFloatField;
    QBrowseP_AFFAL: TFloatField;
    BitBtn8: TBitBtn;
    QDetailN_OLI: TFloatField;
    QBrowseP_N_OLI: TFloatField;
    QBrowseTotalN_OLI: TFloatField;
    QBrowseTotalP_N_OLI: TFloatField;
    QDetailTGS: TFloatField;
    QBrowseP_TGS: TFloatField;
    QBrowseTotalTGS: TFloatField;
    QBrowseTotalP_TGS: TFloatField;
    rgKonversi: TRadioGroup;
    QBrowse_RekapKodi: TOracleDataSet;
    QTotalRekapKodi: TOracleDataSet;
    wwDBGrid10: TwwDBGrid;
    dsQBrowse_RekapKodi: TwwDataSource;
    QDetailSOBEK_MT: TFloatField;
    QBrowseP_SOBEK_MT: TFloatField;
    QBrowseTotalSOBEK_MT: TFloatField;
    QBrowseTotalP_SOBEK_MT: TFloatField;
    QDetailFLEX_LUNTUR: TFloatField;
    QBrowseP_FLEX_LUNTUR: TFloatField;
    QBrowseTotalFLEX_LUNTUR: TFloatField;
    QBrowseTotalP_FLEX_LUNTUR: TFloatField;
    QDetailJENIS_SARUNG: TStringField;
    LookSarung: TwwDBLookupCombo;
    QLookSarung: TOracleDataSet;
    QLookSarungKD_SARUNG: TFloatField;
    QLookSarungJENIS_SARUNG: TStringField;
    QBrowseJENIS_SARUNG: TStringField;
    LookBeam: TwwDBLookupCombo;
    QBrowseMitra: TOracleDataSet;
    dsQBrowseMitra: TwwDataSource;
    QBrowseMitraNAMA_MITRA: TStringField;
    QDetailMET_LABEL: TFloatField;
    QDetailMET_INSPEC: TFloatField;
    QDetailTGL_KIRIM: TDateTimeField;
    QDetailTGL_TERIMA: TDateTimeField;
    LookTgl_Terima: TwwDBDateTimePicker;
    LookTgl_Kirim: TwwDBDateTimePicker;
    QBrowseTGL_KIRIM: TDateTimeField;
    QBrowseTGL_TERIMA: TDateTimeField;
    QBrowseTotalMET_LABEL: TFloatField;
    QBrowseTotalMET_INSPEC: TFloatField;
    QBrowseTotalP_MET_LABEL: TFloatField;
    QBrowseTotalP_MET_INSPEC: TFloatField;
    QDetailDESIGN: TStringField;
    QDetailPROSES: TStringField;
    QBrowseDESIGN: TStringField;
    QBrowsePROSES: TStringField;
    QUnpost: TOracleQuery;
    LookProses21: TwwDBComboBox;
    LookPrint: TwwDBLookupComboDlg;
    QAmbilPrint: TOracleDataSet;
    QAmbilPrintKETERANGAN2: TStringField;
    QAmbilPrintTGL: TDateTimeField;
    QAmbilPrintKD_CORAK: TStringField;
    QAmbilPrintCORAK: TStringField;
    QAmbilPrintQTY_METER: TFloatField;
    QAmbilPrintKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QBrowseJENIS: TStringField;
    QBrowse_RekapJENIS_ATAS: TStringField;
    QBrowse_RekapKD_PRODUKSI: TStringField;
    QBrowse_RekapKONSTRUKSI: TStringField;
    QBrowse_RekapJENIS_SARUNG: TStringField;
    QBrowse_RekapQTY: TFloatField;
    QBrowse_RekapQTY2: TFloatField;
    QBrowse_RekapQTY3: TFloatField;
    QBrowse_RekapQTY4: TFloatField;
    QBrowse_RekapQTY5: TFloatField;
    QBrowse_RekapAFFAL: TFloatField;
    QBrowse_RekapP_BK: TFloatField;
    QBrowse_RekapP_BGRADE: TFloatField;
    QBrowse_RekapP_BS: TFloatField;
    QBrowse_RekapP_FLEX_PRINT: TFloatField;
    QBrowse_RekapP_FLEX_STEAM: TFloatField;
    QBrowse_RekapP_FLEX_STAMPING: TFloatField;
    QBrowse_RekapP_FLEX_LUNTUR: TFloatField;
    QBrowse_RekapP_WTS: TFloatField;
    QBrowse_RekapP_M_SAMAR: TFloatField;
    QBrowse_RekapP_M_RUSAK: TFloatField;
    QBrowse_RekapP_M_BELANG: TFloatField;
    QBrowse_RekapP_O_SETTING: TFloatField;
    QBrowse_RekapP_N_OLI: TFloatField;
    QBrowse_RekapP_SOBEK: TFloatField;
    QBrowse_RekapP_SOBEK_MT: TFloatField;
    QBrowse_RekapP_TGS: TFloatField;
    QBrowse_RekapP_AFFAL: TFloatField;
    QBrowse_RekapKodiJENIS_ATAS: TStringField;
    QBrowse_RekapKodiKD_PRODUKSI: TStringField;
    QBrowse_RekapKodiKONSTRUKSI: TStringField;
    QBrowse_RekapKodiJENIS_SARUNG: TStringField;
    QBrowse_RekapKodiPROD_KODI: TFloatField;
    QBrowse_RekapKodiBK_KODI: TFloatField;
    QBrowse_RekapKodiBGRADE_KODI: TFloatField;
    QBrowse_RekapKodiBS_KODI: TFloatField;
    QBrowse_RekapKodiP_BK: TFloatField;
    QBrowse_RekapKodiP_BGRADE: TFloatField;
    QBrowse_RekapKodiP_BS: TFloatField;
    QBrowse_RekapKodiP_FLEX_PRINT: TFloatField;
    QBrowse_RekapKodiP_FLEX_STEAM: TFloatField;
    QBrowse_RekapKodiP_FLEX_STAMPING: TFloatField;
    QBrowse_RekapKodiP_FLEX_LUNTUR: TFloatField;
    QBrowse_RekapKodiP_WTS: TFloatField;
    QBrowse_RekapKodiP_M_SAMAR: TFloatField;
    QBrowse_RekapKodiP_M_RUSAK: TFloatField;
    QBrowse_RekapKodiP_M_BELANG: TFloatField;
    QBrowse_RekapKodiP_O_SETTING: TFloatField;
    QBrowse_RekapKodiP_N_OLI: TFloatField;
    QBrowse_RekapKodiP_SOBEK: TFloatField;
    QBrowse_RekapKodiP_SOBEK_MT: TFloatField;
    QBrowse_RekapKodiP_TGS: TFloatField;
    QBrowse_RekapKodiP_AFFAL: TFloatField;
    QBrowse_RekapKodiAFFAL: TFloatField;
    QBrowse_RekapDICABUT: TFloatField;
    QBrowse_RekapTDKDICABUT: TFloatField;
    QBrowse_RekapKodiDICABUT: TFloatField;
    QBrowse_RekapKodiTDKDICABUT: TFloatField;
    BitBtn10: TBitBtn;
    WebBrowser1: TWebBrowser;
    RTgl5: TRadioGroup;
    QDetailFLEX: TFloatField;
    QDetailWTS: TFloatField;
    QDetailM_SAMAR: TFloatField;
    QDetailM_RUSAK: TFloatField;
    QDetailO_SETTING: TFloatField;
    QDetailSOBEK: TFloatField;
    QDetailFLEX_PRINT: TFloatField;
    QDetailFLEX_STEAM: TFloatField;
    QDetailFLEX_STAMPING: TFloatField;
    QDetailM_BELANG: TFloatField;
    QBrowseISPOST: TStringField;
    QBrowsePROD_CABUT: TFloatField;
    QBrowsePROD_TDKCABUT: TFloatField;
    QBrowseFLEX_PRINT: TFloatField;
    QBrowseFLEX_STEAM: TFloatField;
    QBrowseFLEX_STAMPING: TFloatField;
    QBrowseFLEX_LUNTUR: TFloatField;
    QBrowseWTS: TFloatField;
    QBrowseM_SAMAR: TFloatField;
    QBrowseM_RUSAK: TFloatField;
    QBrowseM_BELANG: TFloatField;
    QBrowseO_SETTING: TFloatField;
    QBrowseN_OLI: TFloatField;
    QBrowseSOBEK: TFloatField;
    QBrowseSOBEK_MT: TFloatField;
    QBrowseTGS: TFloatField;
    QBrowseMET_LABEL: TFloatField;
    QBrowseMET_INSPEC: TFloatField;
    QBrowseP_MET_INSPEC: TFloatField;
    QBrowseP_MET_LABEL: TFloatField;
    QBrowse_RekapFLEX_PRINT: TFloatField;
    QBrowse_RekapFLEX_STEAM: TFloatField;
    QBrowse_RekapFLEX_STAMPING: TFloatField;
    QBrowse_RekapFLEX_LUNTUR: TFloatField;
    QBrowse_RekapWTS: TFloatField;
    QBrowse_RekapM_SAMAR: TFloatField;
    QBrowse_RekapM_RUSAK: TFloatField;
    QBrowse_RekapM_BELANG: TFloatField;
    QBrowse_RekapO_SETTING: TFloatField;
    QBrowse_RekapN_OLI: TFloatField;
    QBrowse_RekapSOBEK: TFloatField;
    QBrowse_RekapSOBEK_MT: TFloatField;
    QBrowse_RekapTGS: TFloatField;
    QBrowse_RekapKodiFLEX_PRINT: TFloatField;
    QBrowse_RekapKodiFLEX_STEAM: TFloatField;
    QBrowse_RekapKodiFLEX_STAMPING: TFloatField;
    QBrowse_RekapKodiFLEX_LUNTUR: TFloatField;
    QBrowse_RekapKodiWTS: TFloatField;
    QBrowse_RekapKodiM_SAMAR: TFloatField;
    QBrowse_RekapKodiM_RUSAK: TFloatField;
    QBrowse_RekapKodiM_BELANG: TFloatField;
    QBrowse_RekapKodiO_SETTING: TFloatField;
    QBrowse_RekapKodiN_OLI: TFloatField;
    QBrowse_RekapKodiSOBEK: TFloatField;
    QBrowse_RekapKodiSOBEK_MT: TFloatField;
    QBrowse_RekapKodiTGS: TFloatField;
    RTgl6: TRadioGroup;
    Label11: TLabel;
    LookOperator: TwwDBLookupComboDlg;
    DBText7: TDBText;
    Qoperator: TOracleDataSet;
    QoperatorNIK: TStringField;
    QoperatorNAMA: TStringField;
    QMasterNIK: TStringField;
    QBrowseNIK: TStringField;
    LookProses2: TwwDBLookupCombo;
    QLookProses2: TOracleDataSet;
    QLookProses2KD_PROSES: TFloatField;
    QLookProses2JENIS_PROSES: TStringField;
    QTotalRekapBK: TFloatField;
    QTotalRekapBGRADE: TFloatField;
    QTotalRekapBS: TFloatField;
    QTotalRekapTOTAL: TFloatField;
    QTotalRekapAFFAL: TFloatField;
    QTotalRekapDICABUT: TFloatField;
    QTotalRekapTDKDICABUT: TFloatField;
    QTotalRekapFLEX_PRINT: TFloatField;
    QTotalRekapFLEX_STEAM: TFloatField;
    QTotalRekapFLEX_STAMPING: TFloatField;
    QTotalRekapFLEX_LUNTUR: TFloatField;
    QTotalRekapWTS: TFloatField;
    QTotalRekapM_SAMAR: TFloatField;
    QTotalRekapM_RUSAK: TFloatField;
    QTotalRekapM_BELANG: TFloatField;
    QTotalRekapO_SETTING: TFloatField;
    QTotalRekapN_OLI: TFloatField;
    QTotalRekapSOBEK: TFloatField;
    QTotalRekapSOBEK_MT: TFloatField;
    QTotalRekapTGS: TFloatField;
    QTotalRekapP_BK: TFloatField;
    QTotalRekapP_BGRADE: TFloatField;
    QTotalRekapP_BS: TFloatField;
    QTotalRekapP_FLEX_PRINT: TFloatField;
    QTotalRekapP_FLEX_STEAM: TFloatField;
    QTotalRekapP_FLEX_STAMPING: TFloatField;
    QTotalRekapP_FLEX_LUNTUR: TFloatField;
    QTotalRekapP_WTS: TFloatField;
    QTotalRekapP_M_SAMAR: TFloatField;
    QTotalRekapP_M_RUSAK: TFloatField;
    QTotalRekapP_M_BELANG: TFloatField;
    QTotalRekapP_O_SETTING: TFloatField;
    QTotalRekapP_N_OLI: TFloatField;
    QTotalRekapP_SOBEK: TFloatField;
    QTotalRekapP_SOBEK_MT: TFloatField;
    QTotalRekapP_TGS: TFloatField;
    QTotalRekapP_AFFAL: TFloatField;
    QTotalRekapKodiTOTAL: TFloatField;
    QTotalRekapKodiDICABUT: TFloatField;
    QTotalRekapKodiTDKDICABUT: TFloatField;
    QTotalRekapKodiBK: TFloatField;
    QTotalRekapKodiBGRADE: TFloatField;
    QTotalRekapKodiBS: TFloatField;
    QTotalRekapKodiAFFAL: TFloatField;
    QTotalRekapKodiP_BK: TFloatField;
    QTotalRekapKodiP_BGRADE: TFloatField;
    QTotalRekapKodiP_BS: TFloatField;
    QTotalRekapKodiFLEX_PRINT: TFloatField;
    QTotalRekapKodiFLEX_STEAM: TFloatField;
    QTotalRekapKodiFLEX_STAMPING: TFloatField;
    QTotalRekapKodiFLEX_LUNTUR: TFloatField;
    QTotalRekapKodiWTS: TFloatField;
    QTotalRekapKodiM_SAMAR: TFloatField;
    QTotalRekapKodiM_RUSAK: TFloatField;
    QTotalRekapKodiM_BELANG: TFloatField;
    QTotalRekapKodiO_SETTING: TFloatField;
    QTotalRekapKodiN_OLI: TFloatField;
    QTotalRekapKodiSOBEK: TFloatField;
    QTotalRekapKodiSOBEK_MT: TFloatField;
    QTotalRekapKodiTGS: TFloatField;
    QTotalRekapKodiP_FLEX_PRINT: TFloatField;
    QTotalRekapKodiP_FLEX_STEAM: TFloatField;
    QTotalRekapKodiP_FLEX_STAMPING: TFloatField;
    QTotalRekapKodiP_FLEX_LUNTUR: TFloatField;
    QTotalRekapKodiP_WTS: TFloatField;
    QTotalRekapKodiP_M_SAMAR: TFloatField;
    QTotalRekapKodiP_M_RUSAK: TFloatField;
    QTotalRekapKodiP_M_BELANG: TFloatField;
    QTotalRekapKodiP_O_SETTING: TFloatField;
    QTotalRekapKodiP_N_OLI: TFloatField;
    QTotalRekapKodiP_SOBEK: TFloatField;
    QTotalRekapKodiP_SOBEK_MT: TFloatField;
    QTotalRekapKodiP_TGS: TFloatField;
    QTotalRekapKodiP_AFFAL: TFloatField;
    QTotalBK: TFloatField;
    QTotalTOTAL: TFloatField;
    QTotalBGRADE: TFloatField;
    QTotalBS: TFloatField;
    QTotalFLEX_PRINT: TFloatField;
    QTotalFLEX_STEAM: TFloatField;
    QTotalFLEX_STAMPING: TFloatField;
    QTotalFLEX_LUNTUR: TFloatField;
    QTotalWTS: TFloatField;
    QTotalM_SAMAR: TFloatField;
    QTotalM_RUSAK: TFloatField;
    QTotalM_BELANG: TFloatField;
    QTotalO_SETTING: TFloatField;
    QTotalN_OLI: TFloatField;
    QTotalSOBEK: TFloatField;
    QTotalSOBEK_MT: TFloatField;
    QTotalTGS: TFloatField;
    QTotalAFFAL: TFloatField;
    QTotalMET_LABEL: TFloatField;
    QTotalMET_INSPEC: TFloatField;
    QBrowseRekPer: TOracleDataSet;
    QTotalRekPer: TOracleDataSet;
    QBrowRekKod: TOracleDataSet;
    QTotalRekKod: TOracleDataSet;
    QBrowseRekPerJENIS_ATAS: TStringField;
    QBrowseRekPerKD_PRODUKSI: TStringField;
    QBrowseRekPerKONSTRUKSI: TStringField;
    QBrowseRekPerJENIS_SARUNG: TStringField;
    QBrowseRekPerQTY5: TFloatField;
    QBrowseRekPerDICABUT: TFloatField;
    QBrowseRekPerTDKDICABUT: TFloatField;
    QBrowseRekPerQTY: TFloatField;
    QBrowseRekPerQTY2: TFloatField;
    QBrowseRekPerQTY3: TFloatField;
    QBrowseRekPerQTY4: TFloatField;
    QBrowseRekPerAFFAL: TFloatField;
    QBrowseRekPerFLEX_PRINT: TFloatField;
    QBrowseRekPerFLEX_STEAM: TFloatField;
    QBrowseRekPerFLEX_STAMPING: TFloatField;
    QBrowseRekPerFLEX_LUNTUR: TFloatField;
    QBrowseRekPerWTS: TFloatField;
    QBrowseRekPerM_SAMAR: TFloatField;
    QBrowseRekPerM_RUSAK: TFloatField;
    QBrowseRekPerM_BELANG: TFloatField;
    QBrowseRekPerO_SETTING: TFloatField;
    QBrowseRekPerN_OLI: TFloatField;
    QBrowseRekPerSOBEK: TFloatField;
    QBrowseRekPerSOBEK_MT: TFloatField;
    QBrowseRekPerTGS: TFloatField;
    QBrowseRekPerP_BK: TFloatField;
    QBrowseRekPerP_BGRADE: TFloatField;
    QBrowseRekPerP_BS: TFloatField;
    QBrowseRekPerP_FLEX_PRINT: TFloatField;
    QBrowseRekPerP_FLEX_STEAM: TFloatField;
    QBrowseRekPerP_FLEX_STAMPING: TFloatField;
    QBrowseRekPerP_FLEX_LUNTUR: TFloatField;
    QBrowseRekPerP_WTS: TFloatField;
    QBrowseRekPerP_M_SAMAR: TFloatField;
    QBrowseRekPerP_M_RUSAK: TFloatField;
    QBrowseRekPerP_M_BELANG: TFloatField;
    QBrowseRekPerP_O_SETTING: TFloatField;
    QBrowseRekPerP_N_OLI: TFloatField;
    QBrowseRekPerP_SOBEK: TFloatField;
    QBrowseRekPerP_SOBEK_MT: TFloatField;
    QBrowseRekPerP_TGS: TFloatField;
    QBrowseRekPerP_AFFAL: TFloatField;
    QBrowRekKodJENIS_ATAS: TStringField;
    QBrowRekKodKD_PRODUKSI: TStringField;
    QBrowRekKodKONSTRUKSI: TStringField;
    QBrowRekKodJENIS_SARUNG: TStringField;
    QBrowRekKodDICABUT: TFloatField;
    QBrowRekKodTDKDICABUT: TFloatField;
    QBrowRekKodPROD_KODI: TFloatField;
    QBrowRekKodBK_KODI: TFloatField;
    QBrowRekKodBGRADE_KODI: TFloatField;
    QBrowRekKodBS_KODI: TFloatField;
    QBrowRekKodAFFAL: TFloatField;
    QBrowRekKodP_BK: TFloatField;
    QBrowRekKodP_BGRADE: TFloatField;
    QBrowRekKodP_BS: TFloatField;
    QBrowRekKodFLEX_PRINT: TFloatField;
    QBrowRekKodFLEX_STEAM: TFloatField;
    QBrowRekKodFLEX_STAMPING: TFloatField;
    QBrowRekKodFLEX_LUNTUR: TFloatField;
    QBrowRekKodWTS: TFloatField;
    QBrowRekKodM_SAMAR: TFloatField;
    QBrowRekKodM_RUSAK: TFloatField;
    QBrowRekKodM_BELANG: TFloatField;
    QBrowRekKodO_SETTING: TFloatField;
    QBrowRekKodN_OLI: TFloatField;
    QBrowRekKodSOBEK: TFloatField;
    QBrowRekKodSOBEK_MT: TFloatField;
    QBrowRekKodTGS: TFloatField;
    QBrowRekKodP_FLEX_PRINT: TFloatField;
    QBrowRekKodP_FLEX_STEAM: TFloatField;
    QBrowRekKodP_FLEX_STAMPING: TFloatField;
    QBrowRekKodP_FLEX_LUNTUR: TFloatField;
    QBrowRekKodP_WTS: TFloatField;
    QBrowRekKodP_M_SAMAR: TFloatField;
    QBrowRekKodP_M_RUSAK: TFloatField;
    QBrowRekKodP_M_BELANG: TFloatField;
    QBrowRekKodP_O_SETTING: TFloatField;
    QBrowRekKodP_N_OLI: TFloatField;
    QBrowRekKodP_SOBEK: TFloatField;
    QBrowRekKodP_SOBEK_MT: TFloatField;
    QBrowRekKodP_TGS: TFloatField;
    QBrowRekKodP_AFFAL: TFloatField;
    QTotalRekPerTOTAL: TFloatField;
    QTotalRekPerDICABUT: TFloatField;
    QTotalRekPerTDKDICABUT: TFloatField;
    QTotalRekPerBK: TFloatField;
    QTotalRekPerBS: TFloatField;
    QTotalRekPerQTY3: TFloatField;
    QTotalRekPerBGRADE: TFloatField;
    QTotalRekPerAFFAL: TFloatField;
    QTotalRekPerFLEX_PRINT: TFloatField;
    QTotalRekPerFLEX_STEAM: TFloatField;
    QTotalRekPerFLEX_STAMPING: TFloatField;
    QTotalRekPerFLEX_LUNTUR: TFloatField;
    QTotalRekPerWTS: TFloatField;
    QTotalRekPerM_SAMAR: TFloatField;
    QTotalRekPerM_RUSAK: TFloatField;
    QTotalRekPerM_BELANG: TFloatField;
    QTotalRekPerO_SETTING: TFloatField;
    QTotalRekPerN_OLI: TFloatField;
    QTotalRekPerSOBEK: TFloatField;
    QTotalRekPerSOBEK_MT: TFloatField;
    QTotalRekPerTGS: TFloatField;
    QTotalRekPerP_BK: TFloatField;
    QTotalRekPerP_BGRADE: TFloatField;
    QTotalRekPerP_BS: TFloatField;
    QTotalRekPerP_FLEX_PRINT: TFloatField;
    QTotalRekPerP_FLEX_STEAM: TFloatField;
    QTotalRekPerP_FLEX_STAMPING: TFloatField;
    QTotalRekPerP_FLEX_LUNTUR: TFloatField;
    QTotalRekPerP_WTS: TFloatField;
    QTotalRekPerP_M_SAMAR: TFloatField;
    QTotalRekPerP_M_RUSAK: TFloatField;
    QTotalRekPerP_M_BELANG: TFloatField;
    QTotalRekPerP_O_SETTING: TFloatField;
    QTotalRekPerP_N_OLI: TFloatField;
    QTotalRekPerP_SOBEK: TFloatField;
    QTotalRekPerP_SOBEK_MT: TFloatField;
    QTotalRekPerP_TGS: TFloatField;
    QTotalRekPerP_AFFAL: TFloatField;
    QTotalRekKodDICABUT: TFloatField;
    QTotalRekKodTDKDICABUT: TFloatField;
    QTotalRekKodTOTAL: TFloatField;
    QTotalRekKodBK: TFloatField;
    QTotalRekKodBGRADE: TFloatField;
    QTotalRekKodBS: TFloatField;
    QTotalRekKodAFFAL: TFloatField;
    QTotalRekKodP_BK: TFloatField;
    QTotalRekKodP_BGRADE: TFloatField;
    QTotalRekKodP_BS: TFloatField;
    QTotalRekKodFLEX_PRINT: TFloatField;
    QTotalRekKodFLEX_STEAM: TFloatField;
    QTotalRekKodFLEX_STAMPING: TFloatField;
    QTotalRekKodFLEX_LUNTUR: TFloatField;
    QTotalRekKodWTS: TFloatField;
    QTotalRekKodM_SAMAR: TFloatField;
    QTotalRekKodM_RUSAK: TFloatField;
    QTotalRekKodM_BELANG: TFloatField;
    QTotalRekKodO_SETTING: TFloatField;
    QTotalRekKodN_OLI: TFloatField;
    QTotalRekKodSOBEK: TFloatField;
    QTotalRekKodSOBEK_MT: TFloatField;
    QTotalRekKodTGS: TFloatField;
    QTotalRekKodP_FLEX_PRINT: TFloatField;
    QTotalRekKodP_FLEX_STEAM: TFloatField;
    QTotalRekKodP_FLEX_STAMPING: TFloatField;
    QTotalRekKodP_FLEX_LUNTUR: TFloatField;
    QTotalRekKodP_WTS: TFloatField;
    QTotalRekKodP_M_SAMAR: TFloatField;
    QTotalRekKodP_M_RUSAK: TFloatField;
    QTotalRekKodP_M_BELANG: TFloatField;
    QTotalRekKodP_O_SETTING: TFloatField;
    QTotalRekKodP_N_OLI: TFloatField;
    QTotalRekKodP_SOBEK: TFloatField;
    QTotalRekKodP_SOBEK_MT: TFloatField;
    QTotalRekKodP_TGS: TFloatField;
    QTotalRekKodP_AFFAL: TFloatField;
    wwDBGrid4: TwwDBGrid;
    dsQBrowseRekPer: TwwDataSource;
    dsQBrowRekKod: TwwDataSource;
    wwDBGrid5: TwwDBGrid;
    QBrowseKETERANGAN: TStringField;
    QDetailNO_ORDER: TStringField;
    QBrowseNO_ORDER: TStringField;
    RPrint: TRadioGroup;
    QBrowseFLEX: TFloatField;
    QBrowseP_FLEX: TFloatField;
    QBrowseTotalFLEX: TFloatField;
    QBrowseTotalP_FLEX: TFloatField;
    QTotalRekKodFLEX: TFloatField;
    QTotalRekKodP_FLEX: TFloatField;
    QTotalRekPerFLEX: TFloatField;
    QTotalRekPerP_FLEX: TFloatField;
    QBrowRekKodFLEX: TFloatField;
    QBrowRekKodP_FLEX: TFloatField;
    QBrowseRekPerFLEX: TFloatField;
    QBrowseRekPerP_FLEX: TFloatField;
    QTotalRekapKodiFLEX: TFloatField;
    QTotalRekapKodiP_FLEX: TFloatField;
    QTotalRekapFLEX: TFloatField;
    QTotalRekapP_FLEX: TFloatField;
    QBrowse_RekapKodiFLEX: TFloatField;
    QBrowse_RekapKodiP_FLEX: TFloatField;
    QBrowse_RekapFLEX: TFloatField;
    QBrowse_RekapP_FLEX: TFloatField;
    QTotalFLEX: TFloatField;
    QAmbilPrintNO_REG: TFloatField;
    QAmbilPrintKD_KONSTRUKSI: TStringField;
    QAmbilPrintNO_ORDER: TStringField;
    QAmbilPrintKONSTRUKSI: TStringField;
    QAmbilPrintNO_DESAIN: TStringField;
    QAmbilPrintKD_TRANSAKSI: TStringField;
    Label13: TLabel;
    ECari_Order: TEdit;
    BitBtn11: TBitBtn;
    QAmbilData: TOracleQuery;
    QAmbilData2: TOracleQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LookRekananEnter(Sender: TObject);
    procedure LookRekananClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
    procedure QDetailBeforeEdit(DataSet: TDataSet);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    //procedure dbcFieldEnter(Sender: TObject);
    //procedure dbcFieldEnter(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    //procedure cbTanggalClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    //procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    // procedure BtnExportClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    //procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
    //  AFieldName: String);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1xxxxxEnter(Sender: TObject);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure LookCorakEnter(Sender: TObject);
    procedure LookKonstruksiClick(Sender: TObject);
    procedure LookCorakClick(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure LookKonClick(Sender: TObject);
    procedure LookKonEnter(Sender: TObject);
    procedure LookKonCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QPer_HariAfterScroll(DataSet: TDataSet);
    procedure look_mesinEnter(Sender: TObject);
    procedure Look_CorakEnter(Sender: TObject);
    procedure LookMsnTenunEnter(Sender: TObject);
    procedure LookMsnTenunClick(Sender: TObject);
    procedure LookMsnTenunCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure LookAmbilClick(Sender: TObject);
    procedure LookAmbilEnter(Sender: TObject);
    procedure LookAmbilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAmbilUserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure LookKdProdClick(Sender: TObject);
    procedure LookKdProdCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKdProdEnter(Sender: TObject);
    procedure LookKdProd2Click(Sender: TObject);
    procedure LookKdProd2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKdProd2Enter(Sender: TObject);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaClick(Sender: TObject);
    procedure LookWarnaEnter(Sender: TObject);
    procedure QDetailQTY5Change(Sender: TField);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure QBrowse_RekapAfterScroll(DataSet: TDataSet);
    procedure BitBtn9Click(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure QDetailTGSChange(Sender: TField);
    procedure QBrowse_RekapKodiAfterScroll(DataSet: TDataSet);
    procedure QDetailSOBEK_MTChange(Sender: TField);
    procedure LookSarungEnter(Sender: TObject);
    procedure LookSarungCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookBeamEnter(Sender: TObject);
    procedure LookPrintClick(Sender: TObject);
    procedure LookPrintEnter(Sender: TObject);
    procedure LookPrintCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BtnOk2Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure LookOperatorEnter(Sender: TObject);
    procedure LookOperatorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookProses2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookProses2Enter(Sender: TObject);
    procedure QBrowseRekPerAfterScroll(DataSet: TDataSet);
    procedure QBrowRekKodAfterScroll(DataSet: TDataSet);
    procedure rgKonversiClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    //procedure dbcField5Change(Sender: TObject);
    //procedure GroupBox3Click(Sender: TObject);
    //procedure Label12Click(Sender: TObject);
    //procedure Label12Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;

    procedure PCSPersenIntern;
    procedure PCSPersenPPC;
  public
    { Public declarations }
  end;

var
HasilCWMitraFrm: THasilCWMitraFrm;

implementation

uses DM, Math, FinishOpening, HasilInspectKeFolding, SerahKeOpening,
  HasilBSParah;

{$R *.dfm}

procedure THasilCWMitraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishOpeningFrm:=Nil;
end;

procedure THasilCWMitraFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure THasilCWMitraFrm.wwDBGrid1Enter(Sender: TObject);
begin
 If QMaster.State<> dsBrowse then QMaster.Post;
 QDetail.Open;
end;

procedure THasilCWMitraFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','992');
 QTransaksi.Open;
 HasilCWMitraFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure THasilCWMitraFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure THasilCWMitraFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure THasilCWMitraFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure THasilCWMitraFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure THasilCWMitraFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure THasilCWMitraFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure THasilCWMitraFrm.QDetailNewRecord(DataSet: TDataSet);
begin
{DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;    }

   
  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AYP}
  //QDetail.Close;
  //QDetail.Open;
  //QMaster.Post;

  QDetailFLEX_PRINT.AsFloat:=0;
  QDetailFLEX_STAMPING.AsFloat:=0;
  QDetailFLEX_STEAM.AsFloat:=0;
  QDetailFLEX_LUNTUR.AsFloat:=0;
  QDetailWTS.AsFloat:=0;
  QDetailM_SAMAR.AsFloat:=0;
  QDetailM_RUSAK.AsFloat:=0;
  QDetailM_BELANG.AsFloat:=0;
  QDetailO_SETTING.AsFloat:=0;
  QDetailN_OLI.AsFloat:=0;
  QDetailTGS.AsFloat:=0;
  QDetailMET_LABEL.AsFloat:=0;
  QDetailSOBEK.AsFloat:=0;
  QDetailFLEX.AsFloat:=0;
  QDetailSOBEK_MT.AsFloat:=0;
  QDetailQTY.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY5.AsFloat:=0;
  //QDetail.Post;
{AYP}
end;

procedure THasilCWMitraFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure THasilCWMitraFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure THasilCWMitraFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure THasilCWMitraFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure THasilCWMitraFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure THasilCWMitraFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure THasilCWMitraFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1xxxxx.Options:=wwDBGrid1xxxxx.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1xxxxx.Options:=wwDBGrid1xxxxx.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;
end;

procedure THasilCWMitraFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TGL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure THasilCWMitraFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure THasilCWMitraFrm.cbTanggalClick(Sender: TObject);
begin
  if cbTanggal.Checked then
  begin
    VTglAwal.Enabled:=cbTanggal.Checked;
    vTglAkhir.Enabled:=cbTanggal.Checked;
    VTglAwal.SetFocus;
  end
  else
    ECari.SetFocus;
end;

procedure THasilCWMitraFrm.BitBtn3Click(Sender: TObject);
var
  i: Word;
  vpertama: Boolean;
begin
    QBrowse.Open;
    vpertama := True;

    if cbTanggal.Checked then
        if RTgl5.ItemIndex=0 then
            vfilter := ' where (tgl >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal.Date) + ''', ''dd/mm/yyyy'') and tgl <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter := ' where (tgl_terima >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal.Date) + ''', ''dd/mm/yyyy'') and tgl_terima <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
    else
        vfilter := ' where (';

    if (QBrowse.FieldCount >= 1) then
    begin
        if dbcField.ItemIndex = 0 then
        begin
        for i := 0 to wwDBGrid1xxxxx.Selected.Count - 1 do
        begin
            if (QBrowse.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind = fkData) and
            (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName) <> 'TGL') then
            begin
            if vpertama then
            begin
                if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
                else
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
                vpertama := False;
            end
            else
            begin
                if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
                else
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
            end;
            end;
        end;
        end
        else
        begin
        if vOperand.Caption = 'LIKE' then
            vfilter := vfilter + dbcField.Text + ' like ''%' + ECari.Text + '%'''
        else
            vfilter := vfilter + dbcField.Text + ' = ''' + ECari.Text + '''';
        end;

        vfilter := vfilter + ')';

        if QBrowse.Active then
        vorder := ' order by ' + wwDBGrid1xxxxx.Columns[0].FieldName
        else
        vorder := ' order by no_nota';
    end;

    QBrowse.DisableControls;
    QBrowse.Close;
    QBrowse.SetVariable('myparam', vfilter + vorder);
    QBrowse.Open;

    QBrowseTotal.Close;
    QBrowseTotal.SetVariable('myparam', vfilter);
    QBrowseTotal.Open;
    QBrowse.EnableControls;

    wwDBGrid1xxxxx.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('QTY4').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBGRADE.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('QTY5').FooterValue:=FormatFloat('#.#,#',QBrowseTotalTOTAL.AsFloat);

    wwDBGrid1xxxxx.ColumnByName('P_BK').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBK.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBGRADE.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_BS').FooterValue:=FormatFloat('#.#,#',QBrowseTotalBS.AsFloat/QBrowseTotalTOTAL.AsFloat*100);

    wwDBGrid1xxxxx.ColumnByName('FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_PRINT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_STEAM.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_STAMPING.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_LUNTUR.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('WTS').FooterValue:=FormatFloat('#.#,#',QBrowseTotalWTS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_SAMAR').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_SAMAR.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_RUSAK').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_RUSAK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_BELANG').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_BELANG.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('O_SETTING').FooterValue:=FormatFloat('#.#,#',QBrowseTotalO_SETTING.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('N_OLI').FooterValue:=FormatFloat('#.#,#',QBrowseTotalN_OLI.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('SOBEK').FooterValue:=FormatFloat('#.#,#',QBrowseTotalSOBEK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QBrowseTotalSOBEK_MT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('TGS').FooterValue:=FormatFloat('#.#,#',QBrowseTotalTGS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('AFFAL').FooterValue:=FormatFloat('#.#,#',QBrowseTotalAFFAL.AsFloat);

    wwDBGrid1xxxxx.ColumnByName('MET_LABEL').FooterValue:=FormatFloat('#.#,#',QBrowseTotalMET_LABEL.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FLEX').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX.AsFloat);

    wwDBGrid1xxxxx.ColumnByName('P_FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_PRINT.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_STEAM.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_STAMPING.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX_LUNTUR.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_WTS').FooterValue:=FormatFloat('#.#,#',QBrowseTotalWTS.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_M_SAMAR').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_SAMAR.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_M_RUSAK').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_RUSAK.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_M_BELANG').FooterValue:=FormatFloat('#.#,#',QBrowseTotalM_BELANG.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_O_SETTING').FooterValue:=FormatFloat('#.#,#',QBrowseTotalO_SETTING.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_N_OLI').FooterValue:=FormatFloat('#.#,#',QBrowseTotalN_OLI.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_SOBEK').FooterValue:=FormatFloat('#.#,#',QBrowseTotalSOBEK.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QBrowseTotalSOBEK_MT.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_TGS').FooterValue:=FormatFloat('#.#,#',QBrowseTotalTGS.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_AFFAL').FooterValue:=FormatFloat('#.#,#',QBrowseTotalAFFAL.AsFloat/QBrowseTotalTOTAL.AsFloat*100);

    wwDBGrid1xxxxx.ColumnByName('P_MET_LABEL').FooterValue:=FormatFloat('#.#,#',QBrowseTotalMET_LABEL.AsFloat/QBrowseTotalTOTAL.AsFloat*100);
    wwDBGrid1xxxxx.ColumnByName('P_FLEX').FooterValue:=FormatFloat('#.#,#',QBrowseTotalFLEX.AsFloat/QBrowseTotalTOTAL.AsFloat*100);

end;

procedure THasilCWMitraFrm.BtnExportClick(Sender: TObject);
begin
          if QBrowse.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=Caption;
             wwDBGrid1xxxxx.ExportOptions.TitleName:=Caption;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid1xxxxx.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid1xxxxx.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure THasilCWMitraFrm.wwDBGrid1xxxxxTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

procedure THasilCWMitraFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         //QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure THasilCWMitraFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;

  wwDBGrid1.ColumnByName('FLEX_PRINT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalFLEX_PRINT.AsFloat);
  wwDBGrid1.ColumnByName('FLEX_STEAM').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalFLEX_STEAM.AsFloat);
  wwDBGrid1.ColumnByName('FLEX_STAMPING').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalFLEX_STAMPING.AsFloat);
  wwDBGrid1.ColumnByName('FLEX_LUNTUR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalFLEX_LUNTUR.AsFloat);
  wwDBGrid1.ColumnByName('WTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalWTS.AsFloat);
  wwDBGrid1.ColumnByName('M_SAMAR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalM_SAMAR.AsFloat);
  wwDBGrid1.ColumnByName('M_RUSAK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalM_RUSAK.AsFloat);
  wwDBGrid1.ColumnByName('M_BELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalM_BELANG.AsFloat);
  wwDBGrid1.ColumnByName('O_SETTING').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalO_SETTING.AsFloat);
  wwDBGrid1.ColumnByName('N_OLI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalN_OLI.AsFloat);
  wwDBGrid1.ColumnByName('SOBEK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalSOBEK.AsFloat);
  wwDBGrid1.ColumnByName('SOBEK_MT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalSOBEK_MT.AsFloat);
  wwDBGrid1.ColumnByName('TGS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalTGS.AsFloat);
  wwDBGrid1.ColumnByName('AFFAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalAFFAL.AsFloat);
  wwDBGrid1.ColumnByName('FLEX').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalFLEX.AsFloat);

  wwDBGrid1.ColumnByName('MET_LABEL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalMET_LABEL.AsFloat);

  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalTOTAL.AsFloat);
  
end;

procedure THasilCWMitraFrm.FormShow(Sender: TObject);
begin
{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  vTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());
{azmi}
end;

procedure THasilCWMitraFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure THasilCWMitraFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure THasilCWMitraFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    //QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    //QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    //QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    //QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure THasilCWMitraFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    //QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure THasilCWMitraFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi.Open;
end;

procedure THasilCWMitraFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure THasilCWMitraFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi.Open;
end;

procedure THasilCWMitraFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure THasilCWMitraFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='IN';
QMasterGRUP.AsString:='E';
QMasterSHIFT.AsString:='0';

end;

procedure THasilCWMitraFrm.LookKonClick(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure THasilCWMitraFrm.LookKonEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure THasilCWMitraFrm.LookKonCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
{QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
DBText7.Caption := DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
}
end;

procedure THasilCWMitraFrm.BitBtn4Click(Sender: TObject);
begin
   if QBrowse.Active then
      begin
        DMFrm.QUserTime.Close;
        DMFrm.QUserTime.Open;

      if cbPreview.Checked then
         begin
            QuickRep2.Preview
         end
         else
            QuickRep2.Print;
      end;
    end;


procedure THasilCWMitraFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
  vjam : string;
  vjam1,vjam2 : Integer;
begin
 DMFrm.QHak_jam.Open;
 vjam := DMFrm.QUserTimeVJAM.AsString;
 vjam1:= StrToInt(DMFrm.QHak_JamJAM1.AsString);
 vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

//if (DMFrm.QUserTimeVJAM.AsString >= QHak_JamJAM1.AsString) And (DMFrm.QUserTimeVJAM.AsString <= QHak_JamJAM2.AsString) then
if (StrToInt(vjam) >= vjam1) And (StrToInt(vjam) <= vjam2) then
begin
//ShowMessage(IntToStr(vjam1));
ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
QPerKonstruksi_M.Close;
QPerKonstruksi_M_Tot.Close;
QProcmeter.Close;
abort;
end
else
  QPerKonstruksi_M.Close;
  QProcmeter.Close;
  QProcmeter.SetVariable('pawal',VTglAwal2.Date);
  QProcmeter.SetVariable('pakhir',VTglakhir2.Date);
  QProcmeter.Execute;
  //QPerKonstruksi_M.SetVariable('myparam',vfilter);
  QPerKonstruksi_M.Open;
  QPerKonstruksi_M_Tot.Close;
  //QPerKonstruksi_M_Tot.SetVariable('myparam',vfilter);
  QPerKonstruksi_M_Tot.Open;
 // QPerKonstruksi_M.EnableControls;

  wwDBGrid2.ColumnByName('GULUNG_POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerKonstruksi_M_TotGULUNG_POTONG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QPerKonstruksi_M_TotPOTONG.AsFloat);
  wwDBGrid2.ColumnByName('GULUNG_METER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerKonstruksi_M_TotGULUNG_METER.AsFloat);
  wwDBGrid2.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QPerKonstruksi_M_TotMETER.AsFloat);



  //  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPer_Hari_TotGULUNG.AsFloat);
 // wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPer_Hari_TotPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);


end;

procedure THasilCWMitraFrm.BtnExport2Click(Sender: TObject);
begin
 if QPerKonstruksi_M.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=Caption;
             wwDBGrid2.ExportOptions.TitleName:=Caption;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid2.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure THasilCWMitraFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure THasilCWMitraFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QPerKonstruksi_M.DisableControls;
  QPerKonstruksi_M.Close;
  QPerKonstruksi_M.SetVariable('myparam','group by konstruksi, kd_produksi');
  QPerKonstruksi_M.Open;
  QPerKonstruksi_M_Tot.Close;
  QPerKonstruksi_M_Tot.SetVariable('myparam','');
  QPerKonstruksi_M_Tot.Open;
  QPerKonstruksi_M.EnableControls;

  wwDBGrid2.ColumnByName('GULUNG_POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#;',QPerKonstruksi_M_TotGULUNG_POTONG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QPerKonstruksi_M_TotPOTONG.AsFloat);
  wwDBGrid2.ColumnByName('GULUNG_METER').FooterValue:=FormatFloat('#.#,#;#.#,#;',QPerKonstruksi_M_TotGULUNG_METER.AsFloat);
  wwDBGrid2.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QPerKonstruksi_M_TotMETER.AsFloat);end;

procedure THasilCWMitraFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure THasilCWMitraFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure THasilCWMitraFrm.DBText1Click(Sender: TObject);
begin
 InputBox (' Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

procedure THasilCWMitraFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabel8.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure THasilCWMitraFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
 if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

procedure THasilCWMitraFrm.QPer_HariAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QPerKonstruksi_M.RecNo)+' dari '+FormatFloat('#,#',QPerKonstruksi_M.RecordCount)+' Records';
end;

procedure THasilCWMitraFrm.look_mesinEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure THasilCWMitraFrm.Look_CorakEnter(Sender: TObject);
Begin
DMFrm.QCorak.Open;
end;

procedure THasilCWMitraFrm.LookMsnTenunEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure THasilCWMitraFrm.LookMsnTenunClick(Sender: TObject);
begin
QMesin.Open;
end;

procedure THasilCWMitraFrm.LookMsnTenunCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailMESIN.AsString:=QMesinNAMA_MESIN.AsString;
   // QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure THasilCWMitraFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
QMesin.Open;
end;

procedure THasilCWMitraFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
{QMasterMESIN.AsString:=QMesinNAMA_MESIN.AsString;
DBText7.Caption := QMesinNAMA_MESIN.AsString;
}
end;

procedure THasilCWMitraFrm.BitBtn7Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilInspectKeFoldingFrm:=THasilInspectKeFoldingFrm.Create(Self);
  HasilInspectKeFoldingFrm.QDetail.Close;
  HasilInspectKeFoldingFrm.QDetail.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  HasilInspectKeFoldingFrm.QDetail.Open;
 { HasilInspectKeFoldingFrm.QMaster.Close;
  HasilInspectKeFoldingFrm.QMaster.SetVariable('no_reg',HasilInspectKeFoldingFrm.QDetailNO_REG_TENUN.AsInteger);
  HasilInspectKeFoldingFrm.QMaster.Open; }
  HasilInspectKeFoldingFrm.ShowModal;
  HasilInspectKeFoldingFrm.Free;
end;

procedure THasilCWMitraFrm.LookAmbilClick(Sender: TObject);
begin
QKdProd.Open;
end;

procedure THasilCWMitraFrm.LookAmbilEnter(Sender: TObject);
begin
QKdProd.Open;
end;

procedure THasilCWMitraFrm.LookAmbilCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    QDetailNO_BATCH.AsString:=QKdProdKETERANGAN2.AsString;
end;

procedure THasilCWMitraFrm.LookAmbilUserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
Var
  vfilter : String;
begin
{QAmbil.Open;
  if InputQuery('Filter','Filter : ',vfilter) then
  begin
    QAmbil.Close;
    QAmbil.SetVariable('myparam',' (no_mesin like ''%'+vfilter+'%'')');
    Qambil.Open;
  end;
}
end;

procedure THasilCWMitraFrm.LookKdProdClick(Sender: TObject);
begin
//QKdProd.Open;
end;

procedure THasilCWMitraFrm.LookKdProdCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  QDetailNO_BATCH.AsString:=QKdProdKETERANGAN2.AsString;
  QDetailKD_PRODUKSI.AsString:=QKdProdKD_PRODUKSI.AsString;
  QDetailKONSTRUKSI.AsString:=QKdProdKONSTRUKSI.AsString;
end;

procedure THasilCWMitraFrm.LookKdProdEnter(Sender: TObject);
begin
QKdProd.Open;
end;

procedure THasilCWMitraFrm.LookKdProd2Click(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure THasilCWMitraFrm.LookKdProd2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
If modified then
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_finishKP.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure THasilCWMitraFrm.LookKdProd2Enter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure THasilCWMitraFrm.LookWarnaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_WARNA.AsString:=DMFrm.QLookWarnaKD_WARNA.AsString;
    QDetailWARNA.AsString:=DMFrm.QLookWarnaWARNA.AsString;
end;

procedure THasilCWMitraFrm.LookWarnaClick(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure THasilCWMitraFrm.LookWarnaEnter(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure THasilCWMitraFrm.QDetailQTY5Change(Sender: TField);
begin
//TOTAL PRODUKSI = DALAM QTY5
//RUMUS BK
 // QDetailQTY.AsFloat := QDetailQTY5.AsFloat - (QDetailQTY4.AsFloat+QDetailQTY2.AsFloat);

end;

procedure THasilCWMitraFrm.VTglAwal5Change(Sender: TObject);
begin
VTglAkhir5.Date:=trunc(EndOfTheMonth(VTglAwal5.Date));
end;

procedure THasilCWMitraFrm.VTglAkhir5Change(Sender: TObject);
begin
if VTglAwal5.Date>VTglAkhir5.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir5.Date:=VTglAwal5.Date;
  end;
end;

procedure THasilCWMitraFrm.BitBtn8Click(Sender: TObject);
var
  i: word;
  vpertama: boolean;
  vkd: string;
begin
    // Tanggal Produksi
    if RTgl6.ItemIndex = 0 then
    begin
        case rgKonversi.ItemIndex of
        0: begin
            wwDBGrid3.BringToFront;
            BitBtn10.SendToBack;

                // Tambahkan kode untuk kasus 0 di sini
                QBrowse_Rekap.DisableControls;
                try
                    QBrowse_Rekap.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowse_Rekap.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowse_Rekap.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowse_Rekap.SetVariable('pawal', VTglAwal5.Date);
                    QBrowse_Rekap.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowse_Rekap.Open;

                    QTotalRekap.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekap.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekap.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekap.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekap.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekap.Open;
                finally
                    QBrowse_Rekap.EnableControls;
                end;

                // Set footer values for wwDBGrid3
                wwDBGrid3.ColumnByName('QTY').FooterValue := FormatFloat('#.#,#', QTotalRekapBK.AsFloat);
                wwDBGrid3.ColumnByName('QTY4').FooterValue := FormatFloat('#.#,#', QTotalRekapBGRADE.AsFloat);
                wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('#.#,#', QTotalRekapBS.AsFloat);

                wwDBGrid3.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapDICABUT.AsFloat);
                wwDBGrid3.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapTDKDICABUT.AsFloat);
                wwDBGrid3.ColumnByName('QTY5').FooterValue := FormatFloat('#.#,#', QTotalRekapTOTAL.AsFloat);

                wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekapBK.AsFloat / QTotalRekapDICABUT.AsFloat * 100);
                wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekapBGRADE.AsFloat / QTotalRekapDICABUT.AsFloat * 100);
                wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekapBS.AsFloat / QTotalRekapDICABUT.AsFloat * 100);

                wwDBGrid3.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_PRINT.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_STEAM.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_STAMPING.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_LUNTUR.AsFloat);
                wwDBGrid3.ColumnByName('WTS').FooterValue := FormatFloat('#.#,#', QTotalRekapWTS.AsFloat);
                wwDBGrid3.ColumnByName('M_SAMAR').FooterValue := FormatFloat('#.#,#', QTotalRekapM_SAMAR.AsFloat);
                wwDBGrid3.ColumnByName('M_RUSAK').FooterValue := FormatFloat('#.#,#', QTotalRekapM_RUSAK.AsFloat);
                wwDBGrid3.ColumnByName('M_BELANG').FooterValue := FormatFloat('#.#,#', QTotalRekapM_BELANG.AsFloat);
                wwDBGrid3.ColumnByName('O_SETTING').FooterValue := FormatFloat('#.#,#', QTotalRekapO_SETTING.AsFloat);
                wwDBGrid3.ColumnByName('N_OLI').FooterValue := FormatFloat('#.#,#', QTotalRekapN_OLI.AsFloat);
                wwDBGrid3.ColumnByName('SOBEK').FooterValue := FormatFloat('#.#,#', QTotalRekapSOBEK.AsFloat);
                wwDBGrid3.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('#.#,#', QTotalRekapSOBEK_MT.AsFloat);
                wwDBGrid3.ColumnByName('TGS').FooterValue := FormatFloat('#.#,#', QTotalRekapTGS.AsFloat);
                wwDBGrid3.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekapAFFAL.AsFloat);

                wwDBGrid3.ColumnByName('FLEX').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX.AsFloat);
            end;
        1: begin
            wwDBGrid10.BringToFront;
            BitBtn10.SendToBack;

                // Tambahkan kode untuk kasus 1 di sini

                QBrowse_RekapKodi.DisableControls;
                try
                    QBrowse_RekapKodi.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowse_RekapKodi.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowse_RekapKodi.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowse_RekapKodi.SetVariable('pawal', VTglAwal5.Date);
                    QBrowse_RekapKodi.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowse_RekapKodi.Open;

                    QTotalRekapKodi.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekapKodi.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekapKodi.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekapKodi.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekapKodi.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekapKodi.Open;
                finally
                    QBrowse_RekapKodi.EnableControls;
                end;

                // Set footer values for wwDBGrid10
                wwDBGrid10.ColumnByName('BK_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBK.AsFloat);
                wwDBGrid10.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBGRADE.AsFloat);
                wwDBGrid10.ColumnByName('BS_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBS.AsFloat);
                wwDBGrid10.ColumnByName('PROD_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTOTAL.AsFloat);

                wwDBGrid10.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiDICABUT.AsFloat);
                wwDBGrid10.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTDKDICABUT.AsFloat);

                wwDBGrid10.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBK.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);
                wwDBGrid10.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBGRADE.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);
                wwDBGrid10.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBS.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);

                wwDBGrid10.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_PRINT.AsString));
                wwDBGrid10.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_STEAM.AsString));
                wwDBGrid10.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_STAMPING.AsString));
                wwDBGrid10.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiFLEX_LUNTUR.AsFloat);
                wwDBGrid10.ColumnByName('WTS').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiWTS.AsString));
                wwDBGrid10.ColumnByName('M_SAMAR').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_SAMAR.AsString));
                wwDBGrid10.ColumnByName('M_RUSAK').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_RUSAK.AsString));
                wwDBGrid10.ColumnByName('M_BELANG').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_BELANG.AsString));
                wwDBGrid10.ColumnByName('O_SETTING').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiO_SETTING.AsString));
                wwDBGrid10.ColumnByName('N_OLI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiN_OLI.AsFloat);
                wwDBGrid10.ColumnByName('SOBEK').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiSOBEK.AsString));
                wwDBGrid10.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiSOBEK_MT.AsFloat);
                wwDBGrid10.ColumnByName('TGS').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTGS.AsFloat);
                wwDBGrid10.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiAFFAL.AsFloat);

                wwDBGrid10.ColumnByName('FLEX').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiFLEX.AsFloat);
            end;
        2: begin
            wwDBGrid4.BringToFront;
            BitBtn10.BringToFront;

                // Tambahkan kode untuk kasus 2 di sini

                QBrowseRekPer.DisableControls;
                try
                    QBrowseRekPer.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowseRekPer.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowseRekPer.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowseRekPer.SetVariable('pawal', VTglAwal5.Date);
                    QBrowseRekPer.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowseRekPer.Open;

                    QTotalRekPer.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekPer.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekPer.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekPer.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekPer.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekPer.Open;
                finally
                    QBrowseRekPer.EnableControls;
                end;

                // Set footer values for wwDBGrid4
                wwDBGrid4.ColumnByName('QTY').FooterValue := FormatFloat('#.#,#', QTotalRekPerBK.AsFloat);
                wwDBGrid4.ColumnByName('QTY4').FooterValue := FormatFloat('#.#,#', QTotalRekPerBGRADE.AsFloat);
                wwDBGrid4.ColumnByName('QTY2').FooterValue := FormatFloat('#.#,#', QTotalRekPerBS.AsFloat);

                wwDBGrid4.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekPerDICABUT.AsFloat);
                wwDBGrid4.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekPerTDKDICABUT.AsFloat);
                wwDBGrid4.ColumnByName('QTY5').FooterValue := FormatFloat('#.#,#', QTotalRekPerTOTAL.AsFloat);

                wwDBGrid4.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekPerBK.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);
                wwDBGrid4.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekPerBGRADE.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);
                wwDBGrid4.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekPerBS.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);

                // Persen
                wwDBGrid4.ColumnByName('P_FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_PRINT.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_STEAM.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_STAMPING.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_LUNTUR.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_WTS').FooterValue:=FormatFloat('#.#,#',QTotalRekPerWTS.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_SAMAR').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_SAMAR.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_RUSAK').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_RUSAK.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_BELANG').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_BELANG.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_O_SETTING').FooterValue:=FormatFloat('#.#,#',QTotalRekPerO_SETTING.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_N_OLI').FooterValue:=FormatFloat('#.#,#',QTotalRekPerN_OLI.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_SOBEK').FooterValue:=FormatFloat('#.#,#',QTotalRekPerSOBEK.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QTotalRekPerSOBEK_MT.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_TGS').FooterValue:=FormatFloat('#.#,#',QTotalRekPerTGS.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_AFFAL').FooterValue:=FormatFloat('#.#,#',QTotalRekPerAFFAL.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekPerAFFAL.AsFloat);

                wwDBGrid4.ColumnByName('P_FLEX').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX.AsFloat/QTotalRekPerDICABUT.AsFloat*100);

            end;
        3: begin
            wwDBGrid5.BringToFront;
            BitBtn10.SendToBack;

                    // Tambahkan kode untuk kasus 3 di sini

                    QBrowRekKod.DisableControls;
                    try
                        QBrowRekKod.Close;

                        if RTgl6.ItemIndex = 0 then
                            QBrowRekKod.SetVariable('ptgl', 'a.tgl')
                        else   
                            QBrowRekKod.SetVariable('ptgl', 'b.tgl_terima');
                            
                        QBrowRekKod.SetVariable('pawal', VTglAwal5.Date);
                        QBrowRekKod.SetVariable('pakhir', VTglAkhir5.Date);
                        QBrowRekKod.Open;

                        QTotalRekKod.Close;

                        if RTgl6.ItemIndex = 0 then
                            QTotalRekKod.SetVariable('ptgl', 'a.tgl')
                        else   
                            QTotalRekKod.SetVariable('ptgl', 'b.tgl_terima');

                        QTotalRekKod.SetVariable('pawal', VTglAwal5.Date);
                        QTotalRekKod.SetVariable('pakhir', VTglAkhir5.Date);
                        QTotalRekKod.Open;
                    finally
                        QBrowRekKod.EnableControls;
                    end;

                    // Set footer values for wwDBGrid5
                    wwDBGrid5.ColumnByName('BK_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBK.AsFloat);
                    wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBGRADE.AsFloat);
                    wwDBGrid5.ColumnByName('BS_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBS.AsFloat);
                    wwDBGrid5.ColumnByName('PROD_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodTOTAL.AsFloat);

                    wwDBGrid5.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekKodDICABUT.AsFloat);
                    wwDBGrid5.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekKodTDKDICABUT.AsFloat);

                    wwDBGrid5.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekKodBK.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);
                    wwDBGrid5.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekKodBGRADE.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);
                    wwDBGrid5.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekKodBS.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);

                    // Persen
                    wwDBGrid5.ColumnByName('P_FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_PRINT.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_STEAM.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_STAMPING.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QTotalRekKodFLEX_LUNTUR.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_WTS').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodWTS.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_M_SAMAR').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_SAMAR.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_M_RUSAK').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_RUSAK.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_M_BELANG').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_BELANG.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_O_SETTING').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodO_SETTING.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_N_OLI').FooterValue:=FormatFloat('#.#,#',QTotalRekKodN_OLI.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_SOBEK').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodSOBEK.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QTotalRekKodSOBEK_MT.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_TGS').FooterValue:=FormatFloat('#.#,#',QTotalRekKodTGS.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('P_AFFAL').FooterValue:=FormatFloat('#.#,#',QTotalRekKodAFFAL.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                    wwDBGrid5.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekKodAFFAL.AsFloat);

                    wwDBGrid5.ColumnByName('P_FLEX').FooterValue:=FormatFloat('#.#,#',QTotalRekKodFLEX.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
            end;
        else
            ShowMessage('Yang Anda Telusuri tidak ada');
        end;
    end
    
    // Tanggal Terima
    else
    begin
        case rgKonversi.ItemIndex of
        0: begin
            wwDBGrid3.BringToFront;
            BitBtn10.SendToBack;

                // Tambahkan kode untuk kasus 0 di sini
                QBrowse_Rekap.DisableControls;
                try
                    QBrowse_Rekap.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowse_Rekap.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowse_Rekap.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowse_Rekap.SetVariable('pawal', VTglAwal5.Date);
                    QBrowse_Rekap.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowse_Rekap.Open;

                    QTotalRekap.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekap.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekap.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekap.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekap.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekap.Open;
                finally
                    QBrowse_Rekap.EnableControls;
                end;

                // Set footer values for wwDBGrid3
                wwDBGrid3.ColumnByName('QTY').FooterValue := FormatFloat('#.#,#', QTotalRekapBK.AsFloat);
                wwDBGrid3.ColumnByName('QTY4').FooterValue := FormatFloat('#.#,#', QTotalRekapBGRADE.AsFloat);
                wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('#.#,#', QTotalRekapBS.AsFloat);

                wwDBGrid3.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapDICABUT.AsFloat);
                wwDBGrid3.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapTDKDICABUT.AsFloat);
                wwDBGrid3.ColumnByName('QTY5').FooterValue := FormatFloat('#.#,#', QTotalRekapTOTAL.AsFloat);

                wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekapBK.AsFloat / QTotalRekapDICABUT.AsFloat * 100);
                wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekapBGRADE.AsFloat / QTotalRekapDICABUT.AsFloat * 100);
                wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekapBS.AsFloat / QTotalRekapDICABUT.AsFloat * 100);

                wwDBGrid3.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_PRINT.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_STEAM.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_STAMPING.AsFloat);
                wwDBGrid3.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX_LUNTUR.AsFloat);
                wwDBGrid3.ColumnByName('WTS').FooterValue := FormatFloat('#.#,#', QTotalRekapWTS.AsFloat);
                wwDBGrid3.ColumnByName('M_SAMAR').FooterValue := FormatFloat('#.#,#', QTotalRekapM_SAMAR.AsFloat);
                wwDBGrid3.ColumnByName('M_RUSAK').FooterValue := FormatFloat('#.#,#', QTotalRekapM_RUSAK.AsFloat);
                wwDBGrid3.ColumnByName('M_BELANG').FooterValue := FormatFloat('#.#,#', QTotalRekapM_BELANG.AsFloat);
                wwDBGrid3.ColumnByName('O_SETTING').FooterValue := FormatFloat('#.#,#', QTotalRekapO_SETTING.AsFloat);
                wwDBGrid3.ColumnByName('N_OLI').FooterValue := FormatFloat('#.#,#', QTotalRekapN_OLI.AsFloat);
                wwDBGrid3.ColumnByName('SOBEK').FooterValue := FormatFloat('#.#,#', QTotalRekapSOBEK.AsFloat);
                wwDBGrid3.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('#.#,#', QTotalRekapSOBEK_MT.AsFloat);
                wwDBGrid3.ColumnByName('TGS').FooterValue := FormatFloat('#.#,#', QTotalRekapTGS.AsFloat);
                wwDBGrid3.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekapAFFAL.AsFloat);

                wwDBGrid3.ColumnByName('FLEX').FooterValue := FormatFloat('#.#,#', QTotalRekapFLEX.AsFloat);
            end;
        1: begin
            wwDBGrid10.BringToFront;
            BitBtn10.SendToBack;

                // Tambahkan kode untuk kasus 1 di sini

                QBrowse_RekapKodi.DisableControls;
                try
                    QBrowse_RekapKodi.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowse_RekapKodi.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowse_RekapKodi.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowse_RekapKodi.SetVariable('pawal', VTglAwal5.Date);
                    QBrowse_RekapKodi.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowse_RekapKodi.Open;

                    QTotalRekapKodi.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekapKodi.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekapKodi.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekapKodi.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekapKodi.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekapKodi.Open;
                finally
                    QBrowse_RekapKodi.EnableControls;
                end;

                // Set footer values for wwDBGrid10
                wwDBGrid10.ColumnByName('BK_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBK.AsFloat);
                wwDBGrid10.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBGRADE.AsFloat);
                wwDBGrid10.ColumnByName('BS_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBS.AsFloat);
                wwDBGrid10.ColumnByName('PROD_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTOTAL.AsFloat);

                wwDBGrid10.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiDICABUT.AsFloat);
                wwDBGrid10.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTDKDICABUT.AsFloat);

                wwDBGrid10.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBK.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);
                wwDBGrid10.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBGRADE.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);
                wwDBGrid10.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiBS.AsFloat / QTotalRekapKodiDICABUT.AsFloat * 100);

                wwDBGrid10.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_PRINT.AsString));
                wwDBGrid10.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_STEAM.AsString));
                wwDBGrid10.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiFLEX_STAMPING.AsString));
                wwDBGrid10.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiFLEX_LUNTUR.AsFloat);
                wwDBGrid10.ColumnByName('WTS').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiWTS.AsString));
                wwDBGrid10.ColumnByName('M_SAMAR').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_SAMAR.AsString));
                wwDBGrid10.ColumnByName('M_RUSAK').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_RUSAK.AsString));
                wwDBGrid10.ColumnByName('M_BELANG').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiM_BELANG.AsString));
                wwDBGrid10.ColumnByName('O_SETTING').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiO_SETTING.AsString));
                wwDBGrid10.ColumnByName('N_OLI').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiN_OLI.AsFloat);
                wwDBGrid10.ColumnByName('SOBEK').FooterValue := FormatFloat('#.#,#', StrToInt(QTotalRekapKodiSOBEK.AsString));
                wwDBGrid10.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiSOBEK_MT.AsFloat);
                wwDBGrid10.ColumnByName('TGS').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiTGS.AsFloat);
                wwDBGrid10.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiAFFAL.AsFloat);

                wwDBGrid10.ColumnByName('FLEX').FooterValue := FormatFloat('#.#,#', QTotalRekapKodiFLEX.AsFloat);
            end;
        2: begin
            wwDBGrid4.BringToFront;
            BitBtn10.BringToFront;

                // Tambahkan kode untuk kasus 2 di sini

                QBrowseRekPer.DisableControls;
                try
                    QBrowseRekPer.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowseRekPer.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowseRekPer.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowseRekPer.SetVariable('pawal', VTglAwal5.Date);
                    QBrowseRekPer.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowseRekPer.Open;

                    QTotalRekPer.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekPer.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekPer.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekPer.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekPer.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekPer.Open;
                finally
                    QBrowseRekPer.EnableControls;
                end;

                // Set footer values for wwDBGrid4
                wwDBGrid4.ColumnByName('QTY').FooterValue := FormatFloat('#.#,#', QTotalRekPerBK.AsFloat);
                wwDBGrid4.ColumnByName('QTY4').FooterValue := FormatFloat('#.#,#', QTotalRekPerBGRADE.AsFloat);
                wwDBGrid4.ColumnByName('QTY2').FooterValue := FormatFloat('#.#,#', QTotalRekPerBS.AsFloat);

                wwDBGrid4.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekPerDICABUT.AsFloat);
                wwDBGrid4.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekPerTDKDICABUT.AsFloat);
                wwDBGrid4.ColumnByName('QTY5').FooterValue := FormatFloat('#.#,#', QTotalRekPerTOTAL.AsFloat);

                wwDBGrid4.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekPerBK.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);
                wwDBGrid4.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekPerBGRADE.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);
                wwDBGrid4.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekPerBS.AsFloat / QTotalRekPerDICABUT.AsFloat * 100);

                // Persen
                wwDBGrid4.ColumnByName('P_FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_PRINT.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_STEAM.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_STAMPING.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX_LUNTUR.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_WTS').FooterValue:=FormatFloat('#.#,#',QTotalRekPerWTS.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_SAMAR').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_SAMAR.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_RUSAK').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_RUSAK.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_M_BELANG').FooterValue:=FormatFloat('#.#,#',QTotalRekPerM_BELANG.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_O_SETTING').FooterValue:=FormatFloat('#.#,#',QTotalRekPerO_SETTING.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_N_OLI').FooterValue:=FormatFloat('#.#,#',QTotalRekPerN_OLI.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_SOBEK').FooterValue:=FormatFloat('#.#,#',QTotalRekPerSOBEK.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QTotalRekPerSOBEK_MT.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_TGS').FooterValue:=FormatFloat('#.#,#',QTotalRekPerTGS.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('P_AFFAL').FooterValue:=FormatFloat('#.#,#',QTotalRekPerAFFAL.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
                wwDBGrid4.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekPerAFFAL.AsFloat);

                wwDBGrid4.ColumnByName('P_FLEX').FooterValue:=FormatFloat('#.#,#',QTotalRekPerFLEX.AsFloat/QTotalRekPerDICABUT.AsFloat*100);
            end;
        3: begin
            wwDBGrid5.BringToFront;
            BitBtn10.SendToBack;

                // Tambahkan kode untuk kasus 3 di sini

                QBrowRekKod.DisableControls;
                try
                    QBrowRekKod.Close;

                    if RTgl6.ItemIndex = 0 then
                        QBrowRekKod.SetVariable('ptgl', 'a.tgl')
                    else   
                        QBrowRekKod.SetVariable('ptgl', 'b.tgl_terima');

                    QBrowRekKod.SetVariable('pawal', VTglAwal5.Date);
                    QBrowRekKod.SetVariable('pakhir', VTglAkhir5.Date);
                    QBrowRekKod.Open;

                    QTotalRekKod.Close;

                    if RTgl6.ItemIndex = 0 then
                        QTotalRekKod.SetVariable('ptgl', 'a.tgl')
                    else   
                        QTotalRekKod.SetVariable('ptgl', 'b.tgl_terima');

                    QTotalRekKod.SetVariable('pawal', VTglAwal5.Date);
                    QTotalRekKod.SetVariable('pakhir', VTglAkhir5.Date);
                    QTotalRekKod.Open;
                finally
                    QBrowRekKod.EnableControls;
                end;

                // Set footer values for wwDBGrid5
                wwDBGrid5.ColumnByName('BK_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBK.AsFloat);
                wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBGRADE.AsFloat);
                wwDBGrid5.ColumnByName('BS_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodBS.AsFloat);
                wwDBGrid5.ColumnByName('PROD_KODI').FooterValue := FormatFloat('#.#,#', QTotalRekKodTOTAL.AsFloat);

                wwDBGrid5.ColumnByName('DICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekKodDICABUT.AsFloat);
                wwDBGrid5.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('#.#,#', QTotalRekKodTDKDICABUT.AsFloat);

                wwDBGrid5.ColumnByName('P_BK').FooterValue := FormatFloat('#.#,#', QTotalRekKodBK.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);
                wwDBGrid5.ColumnByName('P_BGRADE').FooterValue := FormatFloat('#.#,#', QTotalRekKodBGRADE.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);
                wwDBGrid5.ColumnByName('P_BS').FooterValue := FormatFloat('#.#,#', QTotalRekKodBS.AsFloat / QTotalRekKodDICABUT.AsFloat * 100);

                // Persen
                wwDBGrid5.ColumnByName('P_FLEX_PRINT').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_PRINT.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_FLEX_STEAM').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_STEAM.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_FLEX_STAMPING').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodFLEX_STAMPING.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_FLEX_LUNTUR').FooterValue:=FormatFloat('#.#,#',QTotalRekKodFLEX_LUNTUR.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_WTS').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodWTS.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_M_SAMAR').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_SAMAR.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_M_RUSAK').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_RUSAK.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_M_BELANG').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodM_BELANG.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_O_SETTING').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodO_SETTING.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_N_OLI').FooterValue:=FormatFloat('#.#,#',QTotalRekKodN_OLI.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_SOBEK').FooterValue:=FormatFloat('#.#,#',strtoint(QTotalRekKodSOBEK.AsString)/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_SOBEK_MT').FooterValue:=FormatFloat('#.#,#',QTotalRekKodSOBEK_MT.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_TGS').FooterValue:=FormatFloat('#.#,#',QTotalRekKodTGS.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('P_AFFAL').FooterValue:=FormatFloat('#.#,#',QTotalRekKodAFFAL.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
                wwDBGrid5.ColumnByName('AFFAL').FooterValue := FormatFloat('#.#,#', QTotalRekKodAFFAL.AsFloat);

                wwDBGrid5.ColumnByName('P_FLEX').FooterValue:=FormatFloat('#.#,#',QTotalRekKodFLEX.AsFloat/QTotalRekKodDICABUT.AsFloat*100);
            end;
        else
            ShowMessage('Yang Anda Telusuri tidak ada');
        end;
    end;
end;

procedure THasilCWMitraFrm.QBrowse_RekapAfterScroll(DataSet: TDataSet);
begin
   LabelBanner.Caption:='Record ke '+IntToStr(QBrowse_Rekap.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Rekap.RecordCount)+' Records';
end;

procedure THasilCWMitraFrm.BitBtn9Click(Sender: TObject);
var
  i: word;
  vpertama: boolean;
  vkd: string;
begin
    //wwDBGrid3.BringToFront;

    // Tanggal Produksi
    if RTgl6.ItemIndex = 0 then
    begin
        case rgKonversi.ItemIndex of
        0: begin
            // Tambahkan kode untuk kasus 0 di sini
                wwDBGrid3.BringToFront;
                if QBrowse_Rekap.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid3.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid3.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        1: begin
            // Tambahkan kode untuk kasus 1 di sini
                wwDBGrid10.BringToFront;
                if QBrowse_RekapKodi.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid10.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid10.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid10.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        2: begin
            // Tambahkan kode untuk kasus 2 di sini
                wwDBGrid4.BringToFront;
                if QBrowseRekPer.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid4.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid4.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        3: begin
            // Tambahkan kode untuk kasus 3 di sini
                wwDBGrid5.BringToFront;
                if QBrowRekKod.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid5.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid5.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid5.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');                
            end;
        else
            ShowMessage('Yang Anda Telusuri tidak ada');
        end;
    end
  
    // Tanggal Terima
    else
    begin
        case rgKonversi.ItemIndex of
        0: begin
            // Tambahkan kode untuk kasus 0 di sini
                wwDBGrid3.BringToFront;
                if QBrowse_Rekap.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid3.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid3.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        1: begin
            // Tambahkan kode untuk kasus 1 di sini
                wwDBGrid10.BringToFront;
                if QBrowse_RekapKodi.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid10.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid10.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid10.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        2: begin
            // Tambahkan kode untuk kasus 2 di sini
                wwDBGrid4.BringToFront;
                if QBrowseRekPer.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid4.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid4.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
            end;
        3: begin
            // Tambahkan kode untuk kasus 3 di sini
                wwDBGrid5.BringToFront;
                if QBrowRekKod.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=Caption;
                    wwDBGrid5.ExportOptions.TitleName:=Caption;
                        if DMFrm.SaveDialog1.Execute then
                        begin
                            try
                            wwDBGrid5.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                            wwDBGrid5.ExportOptions.Save;
                            ShowMessage('Simpan Sukses !');
                            except
                            ShowMessage('Simpan Gagal !');
                            end;
                        end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');                
            end;
        else
            ShowMessage('Yang Anda Telusuri tidak ada');
        end;
    end;
end;


procedure THasilCWMitraFrm.BtnFindClick(Sender: TObject);
begin
    if rgKonversi.ItemIndex=0 then
        begin
            wwDBGrid3.BringToFront;
            if not QBrowse_Rekap.QBEMode then
            begin
                wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
                QBrowse_Rekap.QBEMode:=TRUE;
            end
            else
                QBrowse_Rekap.ClearQBE;
            
        end
    else if rgKonversi.ItemIndex=1 then
        begin
            wwDBGrid10.BringToFront;
            if not QBrowse_RekapKodi.QBEMode then
            begin
                wwDBGrid10.Options:=wwDBGrid10.Options-[dgRowSelect,dgAlwaysShowSelection];
                QBrowse_RekapKodi.QBEMode:=TRUE;
            end
            else
                QBrowse_RekapKodi.ClearQBE;      
            
        end
    else if rgKonversi.ItemIndex=2 then
        begin
            wwDBGrid4.BringToFront;
            if not QBrowseRekPer.QBEMode then
            begin
                wwDBGrid4.Options:=wwDBGrid4.Options-[dgRowSelect,dgAlwaysShowSelection];
                QBrowseRekPer.QBEMode:=TRUE;
            end
            else
                QBrowseRekPer.ClearQBE;            
        end
    else if rgKonversi.ItemIndex=3 then
        begin
            wwDBGrid5.BringToFront;
            if not QBrowRekKod.QBEMode then
            begin
                wwDBGrid5.Options:=wwDBGrid5.Options-[dgRowSelect,dgAlwaysShowSelection];
                QBrowRekKod.QBEMode:=TRUE;
            end
            else
                QBrowRekKod.ClearQBE;      
            
        end;
end;

procedure THasilCWMitraFrm.QDetailTGSChange(Sender: TField);
begin
//BGRADE = DALAM OUT SETTING
//QDetailQTY4.AsFloat :=
//QDetailFLEX_PRINT.AsFloat+
//QDetailFLEX_STEAM.AsFloat+
//QDetailFLEX_STAMPING.AsFloat+
//QDetailFLEX_LUNTUR.AsFloat+                // TAMBAHAN FLEX LUNTUR
//QDetailWTS.AsFloat+
//QDetailM_SAMAR.AsFloat+
//QDetailM_RUSAK.AsFloat+
//QDetailM_BELANG.AsFloat+
//QDetailO_SETTING.AsFloat+
//QDetailN_OLI.AsFloat+
//QDetailTGS.AsFloat;
end;

procedure THasilCWMitraFrm.QBrowse_RekapKodiAfterScroll(DataSet: TDataSet);
begin
LabelBanner.Caption:='Record ke '+IntToStr(QBrowse_RekapKodi.RecNo)+' dari '+FormatFloat('#,#',QBrowse_RekapKodi.RecordCount)+' Records';
end;

procedure THasilCWMitraFrm.QDetailSOBEK_MTChange(Sender: TField);
begin
//BS = DALAM SOBEK
//QDetailQTY2.AsFloat := QDetailSOBEK.AsFloat+QDetailSOBEK_MT.AsFloat;
end;

procedure THasilCWMitraFrm.LookSarungEnter(Sender: TObject);
begin
  QLookSarung.Close;
  QLookSarung.Open;
end;

procedure THasilCWMitraFrm.LookSarungCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QDetailJENIS_SARUNG.AsString:=QLookSarungJENIS_SARUNG.AsString;
  end;
end;

procedure THasilCWMitraFrm.LookBeamEnter(Sender: TObject);
begin
  QBrowseMitra.Close;
  QBrowseMitra.Open;
end;

procedure THasilCWMitraFrm.LookPrintClick(Sender: TObject);
begin
QAmbilPrint.Open;
end;

procedure THasilCWMitraFrm.LookPrintEnter(Sender: TObject);
begin
QAmbilPrint.Open;
end;

procedure THasilCWMitraFrm.LookPrintCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailNO_BATCH.AsString := QAmbilPrintKETERANGAN2.AsString;
    QDetailTGL_KIRIM.AsString := QAmbilPrintTGL.AsString;
    QDetailKD_WARNA.AsString := QAmbilPrintKD_CORAK.AsString;
    QDetailWARNA.AsString := QAmbilPrintCORAK.AsString;

    if QAmbilPrintKD_TRANSAKSI.AsString = 'P18' then
      QDetailMET_LABEL.AsString := QAmbilPrintQTY_METER.AsString
    else
      QDetailQTY5.AsString := QAmbilPrintQTY_METER.AsString;

    QMasterKETERANGAN.AsString := QAmbilPrintKETERANGAN.AsString;
    QDetailNO_ORDER.AsString := QAmbilPrintNO_ORDER.AsString;
    QDetailKD_PRODUKSI.AsString := QAmbilPrintKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString := QAmbilPrintKONSTRUKSI.AsString;
    QDetailDESIGN.AsString := QAmbilPrintNO_DESAIN.AsString;
  end;
end;
  
procedure THasilCWMitraFrm.BtnOk2Click(Sender: TObject);
var
  vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
  vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19,
  vt20, vt21, vt22: Real;

begin
    if rgKonversi.ItemIndex = 0 then
        begin
        wwDBGrid3.BringToFront;

        if QBrowse_Rekap.QBEMode then
        begin
            QBrowse_Rekap.ExecuteQBE;
            wwDBGrid3.Options := wwDBGrid3.Options + [dgRowSelect, dgAlwaysShowSelection];
            QBrowse_Rekap.Open;

            // Inisialisasi variabel ke 0
            vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0;
            vt8 := 0; vt9 := 0; vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0;
            vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0; vt20 := 0; vt21 := 0;
            vt22 := 0;

            while not QBrowse_Rekap.Eof do
            begin
            vt1 := vt1 + QBrowse_RekapQTY.AsFloat;
            vt2 := vt2 + QBrowse_RekapQTY4.AsFloat;
            vt3 := vt3 + QBrowse_RekapQTY2.AsFloat;
            vt4 := vt4 + QBrowse_RekapQTY5.AsFloat;
            vt6 := vt6 + QBrowse_RekapFLEX_PRINT.AsFloat;
            vt7 := vt7 + QBrowse_RekapFLEX_STEAM.AsFloat;
            vt8 := vt8 + QBrowse_RekapFLEX_STAMPING.AsFloat;
            vt9 := vt9 + QBrowse_RekapWTS.AsFloat;
            vt10 := vt10 + QBrowse_RekapM_SAMAR.AsFloat;
            vt11 := vt11 + QBrowse_RekapM_RUSAK.AsFloat;
            vt12 := vt12 + QBrowse_RekapO_SETTING.AsFloat;
            vt13 := vt13 + QBrowse_RekapSOBEK.AsFloat;
            vt14 := vt14 + QBrowse_RekapAFFAL.AsFloat;
            vt15 := vt15 + QBrowse_RekapM_BELANG.AsFloat;
            vt16 := vt16 + QBrowse_RekapN_OLI.AsFloat;
            vt17 := vt17 + QBrowse_RekapTGS.AsFloat;
            vt18 := vt18 + QBrowse_RekapSOBEK_MT.AsFloat;
            vt19 := vt19 + QBrowse_RekapFLEX_LUNTUR.AsFloat;

            vt20 := vt20 + QBrowse_RekapDICABUT.AsFloat;
            vt21 := vt21 + QBrowse_RekapTDKDICABUT.AsFloat;

            vt22 := vt22 + QBrowse_RekapFLEX.AsFloat;

            QBrowse_Rekap.Next;
            end;

            QBrowse_Rekap.EnableControls;

            // Footer value untuk hasil perhitungan
            wwDBGrid3.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            wwDBGrid3.ColumnByName('QTY4').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
            wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
            wwDBGrid3.ColumnByName('QTY5').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);
            wwDBGrid3.ColumnByName('AFFAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);

            // Menggunakan nilai vt untuk kolom FLEX_PRINT, FLEX_STEAM, FLEX_STAMPING, dll
            wwDBGrid3.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
            wwDBGrid3.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);
            wwDBGrid3.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
            wwDBGrid3.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
            wwDBGrid3.ColumnByName('WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
            wwDBGrid3.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);
            wwDBGrid3.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
            wwDBGrid3.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
            wwDBGrid3.ColumnByName('O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
            wwDBGrid3.ColumnByName('N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
            wwDBGrid3.ColumnByName('SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);
            wwDBGrid3.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
            wwDBGrid3.ColumnByName('TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);

            wwDBGrid3.ColumnByName('DICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
            wwDBGrid3.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);

            wwDBGrid3.ColumnByName('FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);

            // Persentase berdasarkan perhitungan
            if vt4 <> 0 then
            begin
            wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt1 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt6 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt7 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt8 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt9 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt10 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt11 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt12 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt13 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17 / vt4) * 100);
            wwDBGrid3.ColumnByName('P_FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22 / vt4) * 100);
            end;

        end;
        end
    else if rgKonversi.ItemIndex = 1 then
        begin
        wwDBGrid10.BringToFront;

        if QBrowse_RekapKodi.QBEMode then
        begin
            QBrowse_RekapKodi.ExecuteQBE;
            wwDBGrid10.Options := wwDBGrid10.Options + [dgRowSelect, dgAlwaysShowSelection];
            QBrowse_RekapKodi.Open;

            // Inisialisasi variabel ke 0
            vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0;
            vt7 := 0; vt8 := 0; vt9 := 0; vt10 := 0; vt11 := 0; vt12 := 0;
            vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
            vt20 := 0; vt21 := 0; vt22 := 0;

            // Loop untuk menghitung total nilai
            while not QBrowse_RekapKodi.Eof do
            begin
                vt1  := vt1  + QBrowse_RekapKodiBK_KODI.AsFloat;
                vt2  := vt2  + QBrowse_RekapKodiBGRADE_KODI.AsFloat;
                vt3  := vt3  + QBrowse_RekapKodiBS_KODI.AsFloat;
                vt4  := vt4  + QBrowse_RekapKodiPROD_KODI.AsFloat;
                vt14 := vt14 + QBrowse_RekapKodiAFFAL.AsFloat;

                vt6  := vt6  + QBrowse_RekapKodiFLEX_PRINT.AsFloat;
                vt7  := vt7  + QBrowse_RekapKodiFLEX_STEAM.AsFloat;
                vt8  := vt8  + QBrowse_RekapKodiFLEX_STAMPING.AsFloat;
                vt9  := vt9  + QBrowse_RekapKodiWTS.AsFloat;
                vt10 := vt10 + QBrowse_RekapKodiM_SAMAR.AsFloat;
                vt11 := vt11 + QBrowse_RekapKodiM_RUSAK.AsFloat;
                vt12 := vt12 + QBrowse_RekapKodiO_SETTING.AsFloat;
                vt13 := vt13 + QBrowse_RekapKodiSOBEK.AsFloat;
                vt15 := vt15 + QBrowse_RekapKodiM_BELANG.AsFloat;
                vt16 := vt16 + QBrowse_RekapKodiN_OLI.AsFloat;
                vt17 := vt17 + QBrowse_RekapKodiTGS.AsFloat;
                vt18 := vt18 + QBrowse_RekapKodiSOBEK_MT.AsFloat;
                vt19 := vt19 + QBrowse_RekapKodiFLEX_LUNTUR.AsFloat;

                vt20 := vt20 + QBrowse_RekapKodiDICABUT.AsFloat;
                vt21 := vt21 + QBrowse_RekapKodiTDKDICABUT.AsFloat;

                vt22 := vt22 + QBrowse_RekapKodiFLEX.AsFloat;

                QBrowse_RekapKodi.Next;
            end;

            QBrowse_RekapKodi.EnableControls;

            // Footer value untuk hasil perhitungan
            wwDBGrid10.ColumnByName('BK_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            wwDBGrid10.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
            wwDBGrid10.ColumnByName('BS_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
            wwDBGrid10.ColumnByName('PROD_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);
            wwDBGrid10.ColumnByName('AFFAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);

            // Menggunakan nilai vt untuk kolom FLEX_PRINT, FLEX_STEAM, FLEX_STAMPING, dll
            wwDBGrid10.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
            wwDBGrid10.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);
            wwDBGrid10.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
            wwDBGrid10.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
            wwDBGrid10.ColumnByName('WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
            wwDBGrid10.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);
            wwDBGrid10.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
            wwDBGrid10.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
            wwDBGrid10.ColumnByName('O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
            wwDBGrid10.ColumnByName('N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
            wwDBGrid10.ColumnByName('SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);
            wwDBGrid10.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
            wwDBGrid10.ColumnByName('TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);

            wwDBGrid10.ColumnByName('DICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
            wwDBGrid10.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);

            wwDBGrid10.ColumnByName('FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);

            // Persentase berdasarkan perhitungan
            if vt4 <> 0 then
            begin
                wwDBGrid10.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt1 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt6 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt7 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt8 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt9 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt10 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt11 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt12 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt13 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17 / vt4) * 100);
                wwDBGrid10.ColumnByName('P_FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22 / vt4) * 100);
            end;
        end;
    end
    else if rgKonversi.ItemIndex = 2 then
        begin
            wwDBGrid4.BringToFront;

            if QBrowseRekPer.QBEMode then
            begin
                QBrowseRekPer.ExecuteQBE;
                wwDBGrid4.Options := wwDBGrid4.Options + [dgRowSelect, dgAlwaysShowSelection];
                QBrowseRekPer.Open;

                // Inisialisasi variabel ke 0
                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0;
                vt8 := 0; vt9 := 0; vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0;
                vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0; vt20 := 0; vt21 := 0;
                vt22 := 0;

                while not QBrowseRekPer.Eof do
                begin
                vt1 := vt1 + QBrowseRekPerQTY.AsFloat;
                vt2 := vt2 + QBrowseRekPerQTY4.AsFloat;
                vt3 := vt3 + QBrowseRekPerQTY2.AsFloat;
                vt4 := vt4 + QBrowseRekPerQTY5.AsFloat;
                vt6 := vt6 + QBrowseRekPerFLEX_PRINT.AsFloat;
                vt7 := vt7 + QBrowseRekPerFLEX_STEAM.AsFloat;
                vt8 := vt8 + QBrowseRekPerFLEX_STAMPING.AsFloat;
                vt9 := vt9 + QBrowseRekPerWTS.AsFloat;
                vt10 := vt10 + QBrowseRekPerM_SAMAR.AsFloat;
                vt11 := vt11 + QBrowseRekPerM_RUSAK.AsFloat;
                vt12 := vt12 + QBrowseRekPerO_SETTING.AsFloat;
                vt13 := vt13 + QBrowseRekPerSOBEK.AsFloat;
                vt14 := vt14 + QBrowseRekPerAFFAL.AsFloat;
                vt15 := vt15 + QBrowseRekPerM_BELANG.AsFloat;
                vt16 := vt16 + QBrowseRekPerN_OLI.AsFloat;
                vt17 := vt17 + QBrowseRekPerTGS.AsFloat;
                vt18 := vt18 + QBrowseRekPerSOBEK_MT.AsFloat;
                vt19 := vt19 + QBrowseRekPerFLEX_LUNTUR.AsFloat;

                vt20 := vt20 + QBrowseRekPerDICABUT.AsFloat;
                vt21 := vt21 + QBrowseRekPerTDKDICABUT.AsFloat;

                vt22 := vt22 + QBrowseRekPerFLEX.AsFloat;

                QBrowseRekPer.Next;
                end;

                QBrowseRekPer.EnableControls;

                // Footer value untuk hasil perhitungan
                wwDBGrid4.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
                wwDBGrid4.ColumnByName('QTY4').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid4.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid4.ColumnByName('QTY5').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);
                wwDBGrid4.ColumnByName('AFFAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);

                // Menggunakan nilai vt untuk kolom FLEX_PRINT, FLEX_STEAM, FLEX_STAMPING, dll
                wwDBGrid4.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
                wwDBGrid4.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);
                wwDBGrid4.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
                wwDBGrid4.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
                wwDBGrid4.ColumnByName('WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
                wwDBGrid4.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);
                wwDBGrid4.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
                wwDBGrid4.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
                wwDBGrid4.ColumnByName('O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
                wwDBGrid4.ColumnByName('N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
                wwDBGrid4.ColumnByName('SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);
                wwDBGrid4.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
                wwDBGrid4.ColumnByName('TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);

                wwDBGrid4.ColumnByName('DICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
                wwDBGrid4.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);

                wwDBGrid4.ColumnByName('FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);

                // Persentase berdasarkan perhitungan
                if vt4 <> 0 then
                begin
                wwDBGrid4.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt1 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt6 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt7 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt8 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt9 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt10 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt11 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt12 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt13 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17 / vt4) * 100);
                wwDBGrid4.ColumnByName('P_FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22 / vt4) * 100);
                end;

            end;
        end
    else if rgKonversi.ItemIndex = 3 then
        begin
            wwDBGrid5.BringToFront;

            if QBrowRekKod.QBEMode then
            begin
                QBrowRekKod.ExecuteQBE;
                wwDBGrid5.Options := wwDBGrid5.Options + [dgRowSelect, dgAlwaysShowSelection];
                QBrowRekKod.Open;

                // Inisialisasi variabel ke 0
                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0;
                vt7 := 0; vt8 := 0; vt9 := 0; vt10 := 0; vt11 := 0; vt12 := 0;
                vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
                vt20 := 0; vt21 := 0; vt22 := 0;

                // Loop untuk menghitung total nilai
                while not QBrowRekKod.Eof do
                begin
                    vt1  := vt1  + QBrowRekKodBK_KODI.AsFloat;
                    vt2  := vt2  + QBrowRekKodBGRADE_KODI.AsFloat;
                    vt3  := vt3  + QBrowRekKodBS_KODI.AsFloat;
                    vt4  := vt4  + QBrowRekKodPROD_KODI.AsFloat;
                    vt14 := vt14 + QBrowRekKodAFFAL.AsFloat;

                    vt6  := vt6  + QBrowRekKodFLEX_PRINT.AsFloat;
                    vt7  := vt7  + QBrowRekKodFLEX_STEAM.AsFloat;
                    vt8  := vt8  + QBrowRekKodFLEX_STAMPING.AsFloat;
                    vt9  := vt9  + QBrowRekKodWTS.AsFloat;
                    vt10 := vt10 + QBrowRekKodM_SAMAR.AsFloat;
                    vt11 := vt11 + QBrowRekKodM_RUSAK.AsFloat;
                    vt12 := vt12 + QBrowRekKodO_SETTING.AsFloat;
                    vt13 := vt13 + QBrowRekKodSOBEK.AsFloat;
                    vt15 := vt15 + QBrowRekKodM_BELANG.AsFloat;
                    vt16 := vt16 + QBrowRekKodN_OLI.AsFloat;
                    vt17 := vt17 + QBrowRekKodTGS.AsFloat;
                    vt18 := vt18 + QBrowRekKodSOBEK_MT.AsFloat;
                    vt19 := vt19 + QBrowRekKodFLEX_LUNTUR.AsFloat;

                    vt20 := vt20 + QBrowRekKodDICABUT.AsFloat;
                    vt21 := vt21 + QBrowRekKodTDKDICABUT.AsFloat;

                    vt22 := vt22 + QBrowRekKodFLEX.AsFloat;

                    QBrowRekKod.Next;
                end;

                QBrowRekKod.EnableControls;

                // Footer value untuk hasil perhitungan
                wwDBGrid5.ColumnByName('BK_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
                wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid5.ColumnByName('BS_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid5.ColumnByName('PROD_KODI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);
                wwDBGrid5.ColumnByName('AFFAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);

                // Menggunakan nilai vt untuk kolom FLEX_PRINT, FLEX_STEAM, FLEX_STAMPING, dll
                wwDBGrid5.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
                wwDBGrid5.ColumnByName('FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);
                wwDBGrid5.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
                wwDBGrid5.ColumnByName('FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
                wwDBGrid5.ColumnByName('WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
                wwDBGrid5.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);
                wwDBGrid5.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
                wwDBGrid5.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
                wwDBGrid5.ColumnByName('O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
                wwDBGrid5.ColumnByName('N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
                wwDBGrid5.ColumnByName('SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);
                wwDBGrid5.ColumnByName('SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
                wwDBGrid5.ColumnByName('TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);

                wwDBGrid5.ColumnByName('DICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
                wwDBGrid5.ColumnByName('TDKDICABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);

                wwDBGrid5.ColumnByName('FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);

                // Persentase berdasarkan perhitungan
                if vt4 <> 0 then
                begin
                    wwDBGrid5.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt1 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt6 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_FLEX_STEAM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt7 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt8 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_FLEX_LUNTUR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt9 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt10 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt11 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_O_SETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt12 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_N_OLI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt13 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_SOBEK_MT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_TGS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17 / vt4) * 100);
                    wwDBGrid5.ColumnByName('P_FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22 / vt4) * 100);
                end;
            end;
        end;
end;

procedure THasilCWMitraFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure THasilCWMitraFrm.LookOperatorEnter(Sender: TObject);
begin
Qoperator.Close;
Qoperator.Open;
end;

procedure THasilCWMitraFrm.LookOperatorCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  QMasterOPERATOR.AsString:=QoperatorNAMA.AsString;
end;

procedure THasilCWMitraFrm.LookProses2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QDetailPROSES.AsString:=QLookProses2JENIS_Proses.AsString;
  end;
end;

procedure THasilCWMitraFrm.LookProses2Enter(Sender: TObject);
begin
  QLookProses2.Close;
  QLookProses2.Open;
end;

procedure THasilCWMitraFrm.QBrowseRekPerAfterScroll(DataSet: TDataSet);
begin
   LabelBanner.Caption:='Record ke '+IntToStr(QBrowseRekPer.RecNo)+' dari '+FormatFloat('#,#',QBrowseRekPer.RecordCount)+' Records';
end;

procedure THasilCWMitraFrm.QBrowRekKodAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowRekKod.RecNo)+' dari '+FormatFloat('#,#',QBrowRekKod.RecordCount)+' Records';
end;

procedure THasilCWMitraFrm.rgKonversiClick(Sender: TObject);
begin
case rgKonversi.ItemIndex of
      0: begin
          // Tambahkan kode untuk kasus 0 di sini
          wwDBGrid3.BringToFront;
          BitBtn10.Visible := False;
          RPrint.Visible := False;
         end;
      1: begin
          // Tambahkan kode untuk kasus 1 di sini
          wwDBGrid10.BringToFront;
          BitBtn10.Visible := False;
          RPrint.Visible := False;
         end;
      2: begin
          // Tambahkan kode untuk kasus 2 di sini
          wwDBGrid4.BringToFront;
          BitBtn10.Visible := True;
          RPrint.Visible := True;
         end;
      3: begin
          // Tambahkan kode untuk kasus 3 di sini
          wwDBGrid5.BringToFront;
          BitBtn10.Visible := False;
          RPrint.Visible := False;
         end;
    else
      ShowMessage('Yang Anda Telusuri tidak ada');
    end;
end;

// print intern
procedure THasilCWMitraFrm.PCSPersenIntern;
var
    HTMLContent: TStringList;
    FieldName: String;
    FileName: string;
    TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs, TotalAffal,TotalDicabut,TotalTdkdicabut: Real;
    TotalBGrade: Double;
    TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

    TotalFLEX_PRINT, TotalFLEX_STEAM, TotalFLEX_STAMPING, TotalFLEX_LUNTUR, TotalWTS,
    TotalM_SAMAR, TotalM_RUSAK, TotalM_BELANG, TotalO_SETTING, TotalN_OLI,
    TotalTGS, TotalSOBEK, TotalSOBEK_MT, TotalFLEX: Real;
    
begin
    WebBrowser1.BringToFront;
    HTMLContent := TStringList.Create;
    try
        // Inisialisasi variabel total
        TotalProd := 0;
        TotalBk := 0;
        TotalBGrade := 0;
        TotalBs := 0;
        TotalPBk := 0;
        TotalPctBGrade := 0;
        TotalPbs := 0;
        TotalDicabut := 0;
        TotalTdkdicabut := 0;

        // Membuat bagian awal HTML
        HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 2mm;}');
        HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
        HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 9px;}');
        HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
        HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
        HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
        HTMLContent.Add('</style></head><body>');
        HTMLContent.Add('<h4 style="text-align: center;">Rekapitulasi Produksi Mitra Cabut Warna</h4>');
        HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


        if VTglAwal5.Date = VTglAkhir5.Date then
        begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal5.Date) + '</div>');
        end
        else
        begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal5.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir5.Date) + '</div>');
        end;

        HTMLContent.Add('<table>');
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<th>Kode Prod</th>');
        HTMLContent.Add('<th>Jenis Sarung</th>');
        HTMLContent.Add('<th>Mitra</th>');    
        HTMLContent.Add('<th>Dicabut</th>');       
        HTMLContent.Add('<th>Tidak Dicabut</th>');    
        HTMLContent.Add('<th>Prod</th>');
        HTMLContent.Add('<th>Affal</th>');
        HTMLContent.Add('<th>BK</th>');
        HTMLContent.Add('<th>%</th>');
        HTMLContent.Add('<th>BGRADE</th>');
        HTMLContent.Add('<th>%</th>');
        HTMLContent.Add('<th>BS</th>');
        HTMLContent.Add('<th>%</th>');

        // DEFECT BGRADE
        HTMLContent.Add('<th>% F Print</th>');
        HTMLContent.Add('<th>% F Steam</th>');
        HTMLContent.Add('<th>% F Stamping</th>');
        HTMLContent.Add('<th>% F Luntur</th>');
        HTMLContent.Add('<th>% Wts</th>');
        HTMLContent.Add('<th>% M Samar</th>');
        HTMLContent.Add('<th>% M Rusak</th>');
        HTMLContent.Add('<th>% M Belang</th>');
        HTMLContent.Add('<th>% O Setting</th>');
        HTMLContent.Add('<th>% Ktr/Noda Prt</th>');
        HTMLContent.Add('<th>% Tgs</th>');
        HTMLContent.Add('<th>% F Steam (BS)</th>');
        HTMLContent.Add('<th>% F Brt</th>');
        HTMLContent.Add('<th>% Sobek Mitra</th>');

        HTMLContent.Add('</tr>');


        wwDBGrid4.DataSource.DataSet.First;
        while not wwDBGrid4.DataSource.DataSet.Eof do
        begin
            HTMLContent.Add('<tr>');
            HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
            HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('JENIS_SARUNG').AsString + '</td>');
            HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('JENIS_ATAS').AsString + '</td>');

            TotalDicabut := TotalDicabut + wwDBGrid4.DataSource.DataSet.FieldByName('DICABUT').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('DICABUT').AsFloat) + '</td>');

            TotalTdkdicabut := TotalTdkdicabut + wwDBGrid4.DataSource.DataSet.FieldByName('TDKDICABUT').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('TDKDICABUT').AsFloat) + '</td>');
            
            TotalProd := TotalProd + wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) + '</td>');

            TotalAffal := TotalAffal + wwDBGrid4.DataSource.DataSet.FieldByName('AFFAL').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('AFFAL').AsFloat) + '</td>');

            TotalBk := TotalBk + wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat) + '</td>');
            // Menghitung dan menampilkan % BK
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                TotalPBk := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalBGrade := TotalBGrade + wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat;
            // Menampilkan data BGrade
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat) + '</td>');
            // Menghitung dan menampilkan % BGRADE
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                TotalPBg := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalBs := TotalBs + wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');
            // Menghitung dan menampilkan % BS
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                TotalPbs := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
            
        // -------------------------------------------------------------------------------------------------------------------------------------
            // Untuk Menghitung Total / Sum Total
            TotalFLEX_PRINT := TotalFLEX_PRINT + wwDBGrid4.DataSource.DataSet.FieldByName('FLEX_PRINT').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_FLEX_PRINT').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalFLEX_STEAM := TotalFLEX_STEAM + wwDBGrid4.DataSource.DataSet.FieldByName('FLEX_STEAM').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_FLEX_STEAM').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalFLEX_STAMPING := TotalFLEX_STAMPING + wwDBGrid4.DataSource.DataSet.FieldByName('FLEX_STAMPING').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_FLEX_STAMPING').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalFLEX_LUNTUR := TotalFLEX_LUNTUR + wwDBGrid4.DataSource.DataSet.FieldByName('FLEX_LUNTUR').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_FLEX_LUNTUR').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalWTS := TotalWTS + wwDBGrid4.DataSource.DataSet.FieldByName('WTS').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_WTS').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalM_SAMAR := TotalM_SAMAR + wwDBGrid4.DataSource.DataSet.FieldByName('M_SAMAR').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_M_SAMAR').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalM_RUSAK := TotalM_RUSAK + wwDBGrid4.DataSource.DataSet.FieldByName('M_RUSAK').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_M_RUSAK').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalM_BELANG := TotalM_BELANG + wwDBGrid4.DataSource.DataSet.FieldByName('M_BELANG').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_M_BELANG').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalO_SETTING := TotalO_SETTING + wwDBGrid4.DataSource.DataSet.FieldByName('O_SETTING').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_O_SETTING').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalN_OLI := TotalN_OLI + wwDBGrid4.DataSource.DataSet.FieldByName('N_OLI').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_N_OLI').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalTGS := TotalTGS + wwDBGrid4.DataSource.DataSet.FieldByName('TGS').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_TGS').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalSOBEK := TotalSOBEK + wwDBGrid4.DataSource.DataSet.FieldByName('SOBEK').AsFloat;
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_SOBEK').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalFLEX := TotalFLEX + wwDBGrid4.DataSource.DataSet.FieldByName('FLEX').AsFloat;   
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_FLEX').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

            TotalSOBEK_MT := TotalSOBEK_MT + wwDBGrid4.DataSource.DataSet.FieldByName('SOBEK_MT').AsFloat;   
            if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
            begin
                HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('P_SOBEK_MT').AsFloat) + '</td>');
            end
            else
                HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');


            // Lanjutkan untuk semua field tambahan...
            HTMLContent.Add('</tr>');
            wwDBGrid4.DataSource.DataSet.Next;
        end;

        // Menambahkan baris total
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td colspan="3" style="text-align: right;"><b>Total:</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalDicabut) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalTdkdicabut) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalAffal) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

        // Tambahkan total untuk field tambahan
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLEX_PRINT / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLEX_STEAM / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLEX_STAMPING / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLEX_LUNTUR / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalWTS / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalM_SAMAR / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalM_RUSAK / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalM_BELANG / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalO_SETTING / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalN_OLI / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalTGS / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSOBEK / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLEX / TotalProd) * 100) + '</b></td>');
        HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSOBEK_MT / TotalProd) * 100) + '</b></td>');

        // Tambahkan untuk semua kolom tambahan lainnya...
        HTMLContent.Add('</tr>');

        HTMLContent.Add('</table>');

        // Tambahkan footer
        HTMLContent.Add('<div class="footer">');
        HTMLContent.Add('<table style="width: 100%; margin-top: 10px; border: none;">'); // Border dihilangkan
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td style="text-align: center; border: none;"><b>Menyetujui,</b><br><br><br><br>Salmin Ishaq<br>DH Produksi</td>');
        HTMLContent.Add('<td style="text-align: center; border: none;"><b>Mengetahui,</b><br><br><br><br>Neka Faidah<br>SH Inspect</td>');
        HTMLContent.Add('<td style="text-align: center; border: none;"><b>Yang Membuat,</b><br><br><br><br>Siti Murti Ningsih<br>Adm Inspect</td>');
        HTMLContent.Add('</tr>');

        HTMLContent.Add('</table>');
        HTMLContent.Add('</div>'); // Tutup footer

        HTMLContent.Add('</body></html>');

        FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiCWMitra.html';
        HTMLContent.SaveToFile(FileName);
        WebBrowser1.Navigate('file://' + FileName);

        finally
        HTMLContent.Free;
    end;
end;

// PCSPersenPPC
procedure THasilCWMitraFrm.PCSPersenPPC;
var
    HTMLContent: TStringList;
    FieldName: String;
    FileName: string;
    TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs, TotalAffal,TotalDicabut,TotalTdkdicabut: Real;
    TotalBGrade: Double;
    TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

    TotalFLEX_PRINT, TotalFLEX_STEAM, TotalFLEX_STAMPING, TotalFLEX_LUNTUR, TotalWTS,
    TotalM_SAMAR, TotalM_RUSAK, TotalM_BELANG, TotalO_SETTING, TotalN_OLI,
    TotalTGS, TotalSOBEK, TotalSOBEK_MT: Real;
    
begin
  WebBrowser1.BringToFront;
  HTMLContent := TStringList.Create;
  try
    // Inisialisasi variabel total
    TotalProd := 0;
    TotalBk := 0;
    TotalBGrade := 0;
    TotalBs := 0;
    TotalPBk := 0;
    TotalPctBGrade := 0;
    TotalPbs := 0;
    TotalDicabut := 0;
    TotalTdkdicabut := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 potrait; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Mitra Cabut Warna</h3>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


    if VTglAwal5.Date = VTglAkhir5.Date then
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal5.Date) + '</div>');
    end
    else
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal5.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir5.Date) + '</div>');
    end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>Kode Prod</th>');
    HTMLContent.Add('<th>Jenis Sarung</th>');
    HTMLContent.Add('<th>Mitra</th>');       
    HTMLContent.Add('<th>Dicabut</th>');       
    HTMLContent.Add('<th>Tidak Dicabut</th>');       
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>Affal</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');

    HTMLContent.Add('</tr>');


    wwDBGrid4.DataSource.DataSet.First;
    while not wwDBGrid4.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('JENIS_SARUNG').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid4.DataSource.DataSet.FieldByName('JENIS_ATAS').AsString + '</td>');
        
        TotalDicabut := TotalDicabut + wwDBGrid4.DataSource.DataSet.FieldByName('DICABUT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('DICABUT').AsFloat) + '</td>');

        TotalTdkdicabut := TotalTdkdicabut + wwDBGrid4.DataSource.DataSet.FieldByName('TDKDICABUT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('TDKDICABUT').AsFloat) + '</td>');

        TotalProd := TotalProd + wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) + '</td>');

        TotalAffal := TotalAffal + wwDBGrid4.DataSource.DataSet.FieldByName('AFFAL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('AFFAL').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY4').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BS
        if wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid4.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid4.DataSource.DataSet.FieldByName('QTY5').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
        
    // -------------------------------------------------------------------------------------------------------------------------------------
        
        // Lanjutkan untuk semua field tambahan...
        HTMLContent.Add('</tr>');
        wwDBGrid4.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="3" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalDicabut) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalTdkdicabut) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalAffal) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

    // Tambahkan untuk semua kolom tambahan lainnya...
    HTMLContent.Add('</tr>');

    HTMLContent.Add('</table>');

    // Tambahkan footer
    HTMLContent.Add('<div class="footer">');
    HTMLContent.Add('<table style="width: 100%; margin-top: 10px; border: none;">'); // Border dihilangkan
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td style="text-align: center; border: none;"><b>Menyetujui,</b><br><br><br><br>Salmin Ishaq<br>DH Produksi</td>');
    HTMLContent.Add('<td style="text-align: center; border: none;"><b>Mengetahui,</b><br><br><br><br>Neka Faidah<br>SH Inspect</td>');
    HTMLContent.Add('<td style="text-align: center; border: none;"><b>Yang Membuat,</b><br><br><br><br>Siti Murti Ningsih<br>Adm Inspect</td>');
    HTMLContent.Add('</tr>');

    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup footer

    HTMLContent.Add('</body></html>');

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiCWMitra.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

procedure THasilCWMitraFrm.BitBtn10Click(Sender: TObject);
begin
case RPrint.ItemIndex of
      0: begin
          // Tambahkan kode untuk kasus 0 di sini
          PCSPersenIntern;
         end;
      1: begin
          // Tambahkan kode untuk kasus 1 di sini
          PCSPersenPPC;
         end;
    else
      ShowMessage('Yang Anda Telusuri tidak ada');
    end;
end;

procedure THasilCWMitraFrm.BitBtn11Click(Sender: TObject);
begin

  QMaster.Edit;
  QMaster.Post;
  QAmbilData.Close;
  QAmbilData.SetVariable('QNO_REG',QMasterNO_REG.AsInteger);
  QAmbilData.SetVariable('QNO_NOTA',ECari_Order.Text);
  QAmbilData.Execute;
  QDetail.Close;
  QDetail.Open;

  
end;

end.
