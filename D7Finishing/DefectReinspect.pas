unit DefectReinspect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, OleCtrls, SHDocVw;

type
  TDefectReinspectFrm = class(TForm)
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
    Label6: TLabel;
    DBText2: TDBText;
    dsQTransaksi: TwwDataSource;
    DBText3: TDBText;
    Label7: TLabel;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    DBText4: TDBText;
    cbPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
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
    BitBtn4: TBitBtn;
    Label13: TLabel;
    QAmbilData: TOracleQuery;
    ECari_Order: TEdit;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape14: TQRShape;
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText23: TQRDBText;
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
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRBand11: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape18: TQRShape;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QTransaksiNAMA_TRANSAKSI: TStringField;
    QTransaksiKD_TRANSAKSI: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
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
    QTransaksiSINOPSIS: TBlobField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_NOTA: TStringField;
    QMasterNO_KONTRAK: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterKD_REKANAN: TFloatField;
    QMasterSTATUS: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterREKANAN: TStringField;
    QMasterISPOST: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QMasterNO_BUKTI: TStringField;
    QMasterNO_ORDER: TStringField;
    QMasterTGL_INSPECT: TDateTimeField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNIK: TStringField;
    QDetailNO_SERI_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailMUTU: TStringField;
    QDetailQTY: TFloatField;
    QDetailHARGA: TFloatField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailSATUAN: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QDetailTGL_JTH_TEMPO: TDateTimeField;
    QDetailQTY_TERIMA: TFloatField;
    QDetailQTY_LALU: TFloatField;
    QDetailQTY_ORG: TFloatField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailOPR_TENUN: TStringField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailNO_DESAIN: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_PO: TStringField;
    QDetailBGRADE: TFloatField;
    QDetailLD: TFloatField;
    QDetailLT: TFloatField;
    QDetailLPT: TFloatField;
    QDetailLRG: TFloatField;
    QDetailWL: TFloatField;
    QDetailFLO: TFloatField;
    QDetailNEPS: TFloatField;
    QDetailPP: TFloatField;
    QDetailWP: TFloatField;
    QDetailOJ: TFloatField;
    QDetailCRT: TFloatField;
    QDetailBTS: TFloatField;
    QDetailBTB: TFloatField;
    QDetailSC: TFloatField;
    QDetailSLL: TFloatField;
    QDetailCK: TFloatField;
    QDetailCAJ: TFloatField;
    QDetailKTR: TFloatField;
    QDetailPDK: TFloatField;
    QDetailKP: TFloatField;
    QDetailMC: TFloatField;
    QDetailBOSK: TFloatField;
    QDetailKS: TFloatField;
    QDetailBO: TFloatField;
    QDetailFC: TFloatField;
    QDetailHK: TFloatField;
    QDetailWM: TFloatField;
    QDetailSBK: TFloatField;
    QDetailUTS: TFloatField;
    QDetailKNB: TFloatField;
    QDetailPROD: TFloatField;
    QDetailBK: TFloatField;
    QDetailB1: TFloatField;
    QDetailB2: TFloatField;
    QDetailLELANG: TFloatField;
    QDetailBSPARAH: TFloatField;
    QDetailWEAVING: TStringField;
    QDetailP_BK: TFloatField;
    QDetailP_B1: TFloatField;
    QDetailP_B2: TFloatField;
    QDetailP_LELANG: TFloatField;
    QDetailP_BSPARAH: TFloatField;
    QDetailKODE_PROD: TStringField;
    QDetailRUANG: TStringField;
    QDetailTK: TFloatField;
    QDetailWK: TFloatField;
    QDetailM_SAMAR: TFloatField;
    QDetailM_RUSAK: TFloatField;
    QDetailM_BELANG: TFloatField;
    QDetailM_OUIT: TFloatField;
    QDetailE_STEAMER: TFloatField;
    QDetailE_PRINT: TFloatField;
    QDetailE_STAMPING: TFloatField;
    QDetailKTS: TFloatField;
    QDetailLD2: TFloatField;
    QDetailLT2: TFloatField;
    QDetailLPT2: TFloatField;
    QDetailLRG2: TFloatField;
    QDetailWL2: TFloatField;
    QDetailFLO2: TFloatField;
    QDetailNEPS2: TFloatField;
    QDetailPP2: TFloatField;
    QDetailWP2: TFloatField;
    QDetailOJ2: TFloatField;
    QDetailCRT2: TFloatField;
    QDetailBTS2: TFloatField;
    QDetailBTB2: TFloatField;
    QDetailSC2: TFloatField;
    QDetailSLL2: TFloatField;
    QDetailCK2: TFloatField;
    QDetailCAJ2: TFloatField;
    QDetailKTR2: TFloatField;
    QDetailPDK2: TFloatField;
    QDetailKP2: TFloatField;
    QDetailMC2: TFloatField;
    QDetailBOSK2: TFloatField;
    QDetailKS2: TFloatField;
    QDetailBO2: TFloatField;
    QDetailFC2: TFloatField;
    QDetailHK2: TFloatField;
    QDetailWM2: TFloatField;
    QDetailTK2: TFloatField;
    QDetailWK2: TFloatField;
    QDetailM_SAMAR2: TFloatField;
    QDetailM_RUSAK2: TFloatField;
    QDetailM_BELANG2: TFloatField;
    QDetailM_OUIT2: TFloatField;
    QDetailE_STEAMER2: TFloatField;
    QDetailE_PRINT2: TFloatField;
    QDetailE_STAMPING2: TFloatField;
    QDetailKTS2: TFloatField;
    QDetailKODE: TStringField;
    QDetailPROSES: TStringField;
    QDetailREKANAN: TStringField;
    QDetailLELANG2: TFloatField;
    LookMutu: TwwDBComboBox;
    LookOrder: TwwDBLookupComboDlg;
    QLookOrder: TOracleDataSet;
    QLookOrderNO_ORDER: TStringField;
    QLookOrderKP: TStringField;
    QLookOrderKD_KONSTRUKSI: TStringField;
    QLookOrderKONSTRUKSI: TStringField;
    QLookOrderMESIN: TStringField;
    QLookOrderQTY: TFloatField;
    QBrowseNO_REG: TFloatField;
    QBrowseNO_NOTA: TStringField;
    QBrowseTGL: TDateTimeField;
    QBrowseISPOST: TStringField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseNO_ORDER: TStringField;
    QBrowseKP: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseQTY: TFloatField;
    QBrowseJENIS: TStringField;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    vTglAkhir2: TwwDBDateTimePicker;
    Panel2: TPanel;
    vOperand2: TLabel;
    cbTanggal2: TCheckBox;
    BitBtn5: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BitBtn6: TBitBtn;
    Label12: TLabel;
    wwDBGrid2: TwwDBGrid;
    QBrowse2: TOracleDataSet;
    dsQBrowse2: TwwDataSource;
    LookProses: TwwDBComboBox;
    QBrowseLD: TFloatField;
    QBrowseLT: TFloatField;
    QBrowseLPT: TFloatField;
    QBrowseLRG: TFloatField;
    QBrowseWL: TFloatField;
    QBrowseFLO: TFloatField;
    QBrowseNEPS: TFloatField;
    QBrowsePP: TFloatField;
    QBrowseWP: TFloatField;
    QBrowseOJ: TFloatField;
    QBrowseCRT: TFloatField;
    QBrowseBTS: TFloatField;
    QBrowseBTB: TFloatField;
    QBrowseSC: TFloatField;
    QBrowseSLL: TFloatField;
    QBrowseCK: TFloatField;
    QBrowseCAJ: TFloatField;
    QBrowseKTR: TFloatField;
    QBrowsePDK: TFloatField;
    QBrowseKPR: TFloatField;
    QBrowseMC: TFloatField;
    QBrowseBOSK: TFloatField;
    QBrowseKS: TFloatField;
    QBrowseBO: TFloatField;
    QBrowseFC: TFloatField;
    QBrowseHK: TFloatField;
    QBrowseWM: TFloatField;
    QBrowseSBK: TFloatField;
    QBrowseUTS: TFloatField;
    QBrowseKNB: TFloatField;
    QBrowseKD_TRANSAKSI: TStringField;
    QCekOrder: TOracleDataSet;
    QCekOrderCON: TFloatField;
    QBrowseM_SAMAR: TFloatField;
    QBrowseM_RUSAK: TFloatField;
    QBrowseM_BELANG: TFloatField;
    QBrowseM_OUIT: TFloatField;
    QBrowseE_STEAMER: TFloatField;
    QBrowseE_PRINT: TFloatField;
    QBrowseE_STAMPING: TFloatField;
    QAmbilData1: TOracleQuery;
    QBrowseNO_BATCH: TStringField;
    QBrowse2NO_ORDER: TStringField;
    QBrowse2NO_BATCH: TStringField;
    QBrowse2KP: TStringField;
    QBrowse2KONSTRUKSI: TStringField;
    QBrowse2MESIN: TStringField;
    QBrowse2TERIMA: TFloatField;
    QBrowse2HASIL_PROSES: TFloatField;
    QBrowse2B1_LD: TFloatField;
    QBrowse2B1_LT: TFloatField;
    QBrowse2B1_LPT: TFloatField;
    QBrowse2B1_LRG: TFloatField;
    QBrowse2B1_WL: TFloatField;
    QBrowse2B1_FLO: TFloatField;
    QBrowse2B1_NEPS: TFloatField;
    QBrowse2B1_PP: TFloatField;
    QBrowse2B1_WP: TFloatField;
    QBrowse2B1_OJ: TFloatField;
    QBrowse2B1_CRT: TFloatField;
    QBrowse2B1_BTS: TFloatField;
    QBrowse2B1_BTB: TFloatField;
    QBrowse2B1_SC: TFloatField;
    QBrowse2B1_SLL: TFloatField;
    QBrowse2B1_CK: TFloatField;
    QBrowse2B1_CAJ: TFloatField;
    QBrowse2B1_KTR: TFloatField;
    QBrowse2B1_PDK: TFloatField;
    QBrowse2B1_KPR: TFloatField;
    QBrowse2B1_MC: TFloatField;
    QBrowse2B1_BOSK: TFloatField;
    QBrowse2B1_KS: TFloatField;
    QBrowse2B1_BO: TFloatField;
    QBrowse2B1_FC: TFloatField;
    QBrowse2B1_HK: TFloatField;
    QBrowse2B1_WM: TFloatField;
    QBrowse2B2_LD: TFloatField;
    QBrowse2B2_LT: TFloatField;
    QBrowse2B2_LPT: TFloatField;
    QBrowse2B2_LRG: TFloatField;
    QBrowse2B2_WL: TFloatField;
    QBrowse2B2_FLO: TFloatField;
    QBrowse2B2_NEPS: TFloatField;
    QBrowse2B2_PP: TFloatField;
    QBrowse2B2_WP: TFloatField;
    QBrowse2B2_OJ: TFloatField;
    QBrowse2B2_CRT: TFloatField;
    QBrowse2B2_BTS: TFloatField;
    QBrowse2B2_BTB: TFloatField;
    QBrowse2B2_SC: TFloatField;
    QBrowse2B2_SLL: TFloatField;
    QBrowse2B2_CK: TFloatField;
    QBrowse2B2_CAJ: TFloatField;
    QBrowse2B2_KTR: TFloatField;
    QBrowse2B2_PDK: TFloatField;
    QBrowse2B2_KPR: TFloatField;
    QBrowse2B2_MC: TFloatField;
    QBrowse2B2_BOSK: TFloatField;
    QBrowse2B2_KS: TFloatField;
    QBrowse2B2_BO: TFloatField;
    QBrowse2B2_FC: TFloatField;
    QBrowse2B2_HK: TFloatField;
    QBrowse2B2_WM: TFloatField;
    QBrowse2M_SAMAR: TFloatField;
    QBrowse2M_RUSAK: TFloatField;
    QBrowse2M_BELANG: TFloatField;
    QBrowse2M_OUIT: TFloatField;
    QBrowse2E_STEAMER: TFloatField;
    QBrowse2E_PRINT: TFloatField;
    QBrowse2E_STAMPING: TFloatField;
    QBrowse2SBK: TFloatField;
    QBrowse2UTS: TFloatField;
    QBrowse2KNB: TFloatField;
    QBrowse2BK_MULUS: TFloatField;
    QBrowse2AFFAL: TFloatField;
    QBrowse2PENYESUAIAN: TFloatField;
    QBrowse2Total: TOracleDataSet;
    QBrowse2DEFECT: TFloatField;
    QBrowse2TotalTERIMA: TFloatField;
    QBrowse2TotalAFFAL: TFloatField;
    QBrowse2TotalPENYESUAIAN: TFloatField;
    QBrowse2TotalHASIL_PROSES: TFloatField;
    QBrowse2TotalBK_MULUS: TFloatField;
    QBrowse2TotalB1_LD: TFloatField;
    QBrowse2TotalB1_LT: TFloatField;
    QBrowse2TotalB1_LPT: TFloatField;
    QBrowse2TotalB1_LRG: TFloatField;
    QBrowse2TotalB1_WL: TFloatField;
    QBrowse2TotalB1_FLO: TFloatField;
    QBrowse2TotalB1_NEPS: TFloatField;
    QBrowse2TotalB1_PP: TFloatField;
    QBrowse2TotalB1_WP: TFloatField;
    QBrowse2TotalB1_OJ: TFloatField;
    QBrowse2TotalB1_CRT: TFloatField;
    QBrowse2TotalB1_BTS: TFloatField;
    QBrowse2TotalB1_BTB: TFloatField;
    QBrowse2TotalB1_SC: TFloatField;
    QBrowse2TotalB1_SLL: TFloatField;
    QBrowse2TotalB1_CK: TFloatField;
    QBrowse2TotalB1_CAJ: TFloatField;
    QBrowse2TotalB1_KTR: TFloatField;
    QBrowse2TotalB1_PDK: TFloatField;
    QBrowse2TotalB1_KPR: TFloatField;
    QBrowse2TotalB1_MC: TFloatField;
    QBrowse2TotalB1_BOSK: TFloatField;
    QBrowse2TotalB1_KS: TFloatField;
    QBrowse2TotalB1_BO: TFloatField;
    QBrowse2TotalB1_FC: TFloatField;
    QBrowse2TotalB1_HK: TFloatField;
    QBrowse2TotalB1_WM: TFloatField;
    QBrowse2TotalB2_LD: TFloatField;
    QBrowse2TotalB2_LT: TFloatField;
    QBrowse2TotalB2_LPT: TFloatField;
    QBrowse2TotalB2_LRG: TFloatField;
    QBrowse2TotalB2_WL: TFloatField;
    QBrowse2TotalB2_FLO: TFloatField;
    QBrowse2TotalB2_NEPS: TFloatField;
    QBrowse2TotalB2_PP: TFloatField;
    QBrowse2TotalB2_WP: TFloatField;
    QBrowse2TotalB2_OJ: TFloatField;
    QBrowse2TotalB2_CRT: TFloatField;
    QBrowse2TotalB2_BTS: TFloatField;
    QBrowse2TotalB2_BTB: TFloatField;
    QBrowse2TotalB2_SC: TFloatField;
    QBrowse2TotalB2_SLL: TFloatField;
    QBrowse2TotalB2_CK: TFloatField;
    QBrowse2TotalB2_CAJ: TFloatField;
    QBrowse2TotalB2_KTR: TFloatField;
    QBrowse2TotalB2_PDK: TFloatField;
    QBrowse2TotalB2_KPR: TFloatField;
    QBrowse2TotalB2_MC: TFloatField;
    QBrowse2TotalB2_BOSK: TFloatField;
    QBrowse2TotalB2_KS: TFloatField;
    QBrowse2TotalB2_BO: TFloatField;
    QBrowse2TotalB2_FC: TFloatField;
    QBrowse2TotalB2_HK: TFloatField;
    QBrowse2TotalB2_WM: TFloatField;
    QBrowse2TotalM_SAMAR: TFloatField;
    QBrowse2TotalM_RUSAK: TFloatField;
    QBrowse2TotalM_BELANG: TFloatField;
    QBrowse2TotalM_OUIT: TFloatField;
    QBrowse2TotalE_STEAMER: TFloatField;
    QBrowse2TotalE_PRINT: TFloatField;
    QBrowse2TotalE_STAMPING: TFloatField;
    QBrowse2TotalSBK: TFloatField;
    QBrowse2TotalUTS: TFloatField;
    QBrowse2TotalKNB: TFloatField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowse2TotalDEFECT: TFloatField;
    QTotalQTY_TERIMA: TFloatField;
    QTotalQTY: TFloatField;
    QBrowseWK: TFloatField;
    QBrowse2B1_WK: TFloatField;
    QBrowse2B2_WK: TFloatField;
    QBrowse2TotalB1_WK: TFloatField;
    QBrowse2TotalB2_WK: TFloatField;
    QBrowseRESEP: TStringField;
    QBrowseLOOM: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseGULUNG: TFloatField;
    QBrowseQTY_TERIMA: TFloatField;
    QLookDef: TOracleDataSet;
    QLookDefTOT_DEFECT: TFloatField;
    QLookDefNO_SERI_BEAM: TStringField;
    QDetailTOT_DEFECT: TFloatField;
    QBrowseKTS2: TFloatField;
    QBrowseTOT_DEFECT: TFloatField;
    QBrowseBS_PARAH: TFloatField;
    QBrowseBK: TFloatField;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalQTY_TERIMA: TFloatField;
    QBrowseTotalQTY: TFloatField;
    QBrowseTotalLD: TFloatField;
    QBrowseTotalLT: TFloatField;
    QBrowseTotalLPT: TFloatField;
    QBrowseTotalLRG: TFloatField;
    QBrowseTotalWL: TFloatField;
    QBrowseTotalFLO: TFloatField;
    QBrowseTotalNEPS: TFloatField;
    QBrowseTotalPP: TFloatField;
    QBrowseTotalWP: TFloatField;
    QBrowseTotalOJ: TFloatField;
    QBrowseTotalCRT: TFloatField;
    QBrowseTotalBTS: TFloatField;
    QBrowseTotalBTB: TFloatField;
    QBrowseTotalSC: TFloatField;
    QBrowseTotalSLL: TFloatField;
    QBrowseTotalCK: TFloatField;
    QBrowseTotalCAJ: TFloatField;
    QBrowseTotalKTR: TFloatField;
    QBrowseTotalPDK: TFloatField;
    QBrowseTotalKPR: TFloatField;
    QBrowseTotalMC: TFloatField;
    QBrowseTotalBOSK: TFloatField;
    QBrowseTotalKS: TFloatField;
    QBrowseTotalBO: TFloatField;
    QBrowseTotalFC: TFloatField;
    QBrowseTotalHK: TFloatField;
    QBrowseTotalWM: TFloatField;
    QBrowseTotalWK: TFloatField;
    QBrowseTotalM_SAMAR: TFloatField;
    QBrowseTotalM_RUSAK: TFloatField;
    QBrowseTotalM_BELANG: TFloatField;
    QBrowseTotalM_OUIT: TFloatField;
    QBrowseTotalE_STEAMER: TFloatField;
    QBrowseTotalE_PRINT: TFloatField;
    QBrowseTotalE_STAMPING: TFloatField;
    QBrowseTotalSBK: TFloatField;
    QBrowseTotalUTS: TFloatField;
    QBrowseTotalKNB: TFloatField;
    QBrowseTotalKTS2: TFloatField;
    QBrowseTotalTOT_DEFECT: TFloatField;
    QBrowseTotalBS_PARAH: TFloatField;
    QBrowseTotalBK: TFloatField;
    QBrowsePENYESUAIAN: TFloatField;
    QBrowseAFFAL: TFloatField;
    QBrowseTotalPENYESUAIAN: TFloatField;
    QBrowseTotalAFFAL: TFloatField;
    QBrowse_rekap: TOracleDataSet;
    QBrowse_rekap_tot: TOracleDataSet;
    dsQBrowse_rekap: TwwDataSource;
    QBrowse_rekap_totTERIMA: TFloatField;
    QBrowse_rekap_totHASIL_PROSES: TFloatField;
    QBrowse_rekap_totBK: TFloatField;
    QBrowse_rekap_totTOT_DEFECT: TFloatField;
    QBrowse_rekap_totBS_PARAH: TFloatField;
    QBrowse_rekap_totPENYESUAIAN: TFloatField;
    QBrowse_rekapNO_SERI_BEAM: TStringField;
    QBrowse_rekapNO_ORDER: TStringField;
    QBrowse_rekapKP: TStringField;
    QBrowse_rekapKONSTRUKSI: TStringField;
    QBrowse_rekapMESIN: TStringField;
    QBrowse_rekapQTY_TERIMA: TFloatField;
    QBrowse_rekapQTY: TFloatField;
    QBrowse_rekapBK: TFloatField;
    QBrowse_rekapTOT_DEFECT: TFloatField;
    QBrowse_rekapBS_PARAH: TFloatField;
    QBrowse_rekapPENYESUAIAN: TFloatField;
    QBrowse_rekapTGL: TDateTimeField;
    Qoperator: TOracleDataSet;
    QoperatorNIK: TStringField;
    QoperatorNAMA: TStringField;
    LookOperator: TwwDBLookupComboDlg;
    QMasterNIK: TStringField;
    QMasterOPERATOR: TStringField;
    DBText7: TDBText;
    Label11: TLabel;
    QBrowseTK2: TFloatField;
    QBrowseWK2: TFloatField;
    QBrowseTotalTK2: TFloatField;
    QBrowseTotalWK2: TFloatField;
    QBrowseNIK: TStringField;
    QBrowseOPERATOR: TStringField;
    wwDBGrid3: TwwDBGrid;
    QAmbilData2: TOracleQuery;
    wwDBGrid4: TwwDBGrid;
    QBrowse4: TOracleDataSet;
    dsQBrowse4: TwwDataSource;
    QBrowse4Total: TOracleDataSet;
    QBrowse4TotalTOT_DEFECT: TFloatField;
    QBrowse4TotalBS_PARAH: TFloatField;
    QBrowse4TotalPENYESUAIAN: TFloatField;
    QBrowse4TotalBK: TFloatField;
    QBrowse4TotalGULUNG: TFloatField;
    QBrowse4TotalQTY_TERIMA: TFloatField;
    QBrowse4TotalQTY: TFloatField;
    QBrowse4TotalLD: TFloatField;
    QBrowse4TotalLT: TFloatField;
    QBrowse4TotalLPT: TFloatField;
    QBrowse4TotalLRG: TFloatField;
    QBrowse4TotalWL: TFloatField;
    QBrowse4TotalFLO: TFloatField;
    QBrowse4TotalNEPS: TFloatField;
    QBrowse4TotalPP: TFloatField;
    QBrowse4TotalWP: TFloatField;
    QBrowse4TotalOJ: TFloatField;
    QBrowse4TotalCRT: TFloatField;
    QBrowse4TotalBTS: TFloatField;
    QBrowse4TotalBTB: TFloatField;
    QBrowse4TotalSC: TFloatField;
    QBrowse4TotalSLL: TFloatField;
    QBrowse4TotalCK: TFloatField;
    QBrowse4TotalCAJ: TFloatField;
    QBrowse4TotalKTR: TFloatField;
    QBrowse4TotalPDK: TFloatField;
    QBrowse4TotalKPR: TFloatField;
    QBrowse4TotalMC: TFloatField;
    QBrowse4TotalBOSK: TFloatField;
    QBrowse4TotalKS: TFloatField;
    QBrowse4TotalBO: TFloatField;
    QBrowse4TotalFC: TFloatField;
    QBrowse4TotalHK: TFloatField;
    QBrowse4TotalWM: TFloatField;
    QBrowse4TotalWK: TFloatField;
    QBrowse4TotalM_SAMAR: TFloatField;
    QBrowse4TotalM_RUSAK: TFloatField;
    QBrowse4TotalM_BELANG: TFloatField;
    QBrowse4TotalM_OUIT: TFloatField;
    QBrowse4TotalE_STEAMER: TFloatField;
    QBrowse4TotalE_PRINT: TFloatField;
    QBrowse4TotalE_STAMPING: TFloatField;
    QBrowse4TotalSBK: TFloatField;
    QBrowse4TotalUTS: TFloatField;
    QBrowse4TotalKNB: TFloatField;
    QBrowse4TotalKTS2: TFloatField;
    QBrowse4TotalTK2: TFloatField;
    QBrowse4TotalWK2: TFloatField;
    QBrowse4NO_REG: TFloatField;
    QBrowse4NO_REG_DETAIL: TFloatField;
    QBrowse4NO_SERI_BEAM: TStringField;
    QBrowse4KD_TRANSAKSI: TStringField;
    QBrowse4NO_NOTA: TStringField;
    QBrowse4GRUP: TStringField;
    QBrowse4SHIFT: TStringField;
    QBrowse4TGL: TDateTimeField;
    QBrowse4ISPOST: TStringField;
    QBrowse4NIK: TStringField;
    QBrowse4OPERATOR: TStringField;
    QBrowse4OPR_INSERT: TStringField;
    QBrowse4NO_ORDER: TStringField;
    QBrowse4KP: TStringField;
    QBrowse4KONSTRUKSI: TStringField;
    QBrowse4KD_KONSTRUKSI: TStringField;
    QBrowse4MESIN: TStringField;
    QBrowse4WARNA: TStringField;
    QBrowse4ITEM: TStringField;
    QBrowse4PROSES: TStringField;
    QBrowse4TGL_TERIMA: TDateTimeField;
    QBrowse4CORAK: TStringField;
    QBrowse4GULUNG: TFloatField;
    QBrowse4QTY_TERIMA: TFloatField;
    QBrowse4QTY: TFloatField;
    QBrowse4PENYESUAIAN: TFloatField;
    QBrowse4JENIS: TStringField;
    QBrowse4LD: TFloatField;
    QBrowse4LT: TFloatField;
    QBrowse4LPT: TFloatField;
    QBrowse4LRG: TFloatField;
    QBrowse4WL: TFloatField;
    QBrowse4FLO: TFloatField;
    QBrowse4NEPS: TFloatField;
    QBrowse4PP: TFloatField;
    QBrowse4WP: TFloatField;
    QBrowse4OJ: TFloatField;
    QBrowse4CRT: TFloatField;
    QBrowse4BTS: TFloatField;
    QBrowse4BTB: TFloatField;
    QBrowse4SC: TFloatField;
    QBrowse4SLL: TFloatField;
    QBrowse4CK: TFloatField;
    QBrowse4CAJ: TFloatField;
    QBrowse4KTR: TFloatField;
    QBrowse4PDK: TFloatField;
    QBrowse4KPR: TFloatField;
    QBrowse4MC: TFloatField;
    QBrowse4BOSK: TFloatField;
    QBrowse4KS: TFloatField;
    QBrowse4BO: TFloatField;
    QBrowse4FC: TFloatField;
    QBrowse4HK: TFloatField;
    QBrowse4WM: TFloatField;
    QBrowse4WK: TFloatField;
    QBrowse4M_SAMAR: TFloatField;
    QBrowse4M_RUSAK: TFloatField;
    QBrowse4M_BELANG: TFloatField;
    QBrowse4M_OUIT: TFloatField;
    QBrowse4E_STEAMER: TFloatField;
    QBrowse4E_PRINT: TFloatField;
    QBrowse4E_STAMPING: TFloatField;
    QBrowse4SBK: TFloatField;
    QBrowse4UTS: TFloatField;
    QBrowse4KNB: TFloatField;
    QBrowse4KTS2: TFloatField;
    QBrowse4TK2: TFloatField;
    QBrowse4WK2: TFloatField;
    QBrowse4TOT_DEFECT: TFloatField;
    QBrowse4BS_PARAH: TFloatField;
    QBrowse4BK: TFloatField;
    RNota: TRadioGroup;
    QAmbilData3: TOracleQuery;
    QTotalQTY2: TFloatField;
    QDetailAFL1: TFloatField;
    QDetailAFL2: TFloatField;
    QBrowse4LOOM: TStringField;
    QBrowse4METER: TFloatField;
    QBrowse4HASIL_METER: TFloatField;
    QBrowse4AFL_PRINT: TFloatField;
    QBrowse4AFL_NDAK_CABOT: TFloatField;
    QBrowse4TotalMETER: TFloatField;
    QBrowse4TotalHASIL_METER: TFloatField;
    QBrowse4TotalAFL_PRINT: TFloatField;
    QBrowse4TotalAFL_NDAK_CABOT: TFloatField;
    QBrowse_rekap2: TOracleDataSet;
    dsQBrowse_rekap2: TwwDataSource;
    QBrowse_rekap2NO_SERI_BEAM: TStringField;
    QBrowse_rekap2NO_ORDER: TStringField;
    QBrowse_rekap2KP: TStringField;
    QBrowse_rekap2KONSTRUKSI: TStringField;
    QBrowse_rekap2MESIN: TStringField;
    QBrowse_rekap2QTY_TERIMA: TFloatField;
    QBrowse_rekap2QTY: TFloatField;
    QBrowse_rekap2BK: TFloatField;
    QBrowse_rekap2BS_PARAH: TFloatField;
    QBrowse_rekap2TOT_B1: TFloatField;
    QBrowse_rekap2TOT_B2: TFloatField;
    QBrowse_rekap2PENYESUAIAN: TFloatField;
    wwDBGrid5: TwwDBGrid;
    QBrowse_rekap2_tot: TOracleDataSet;
    QBrowse_rekap2_totQTY_TERIMA: TFloatField;
    QBrowse_rekap2_totQTY: TFloatField;
    QBrowse_rekap2_totBK: TFloatField;
    QBrowse_rekap2_totBS_PARAH: TFloatField;
    QBrowse_rekap2_totTOT_B1: TFloatField;
    QBrowse_rekap2_totTOT_B2: TFloatField;
    QBrowse_rekap2_totPENYESUAIAN: TFloatField;
    RadioGroup2: TRadioGroup;
    QBrowse_rekap2AFL_PRINT: TFloatField;
    QBrowse_rekap2AFL_NDAK_CABOT: TFloatField;
    QBrowse_rekap2_totAFL_PRINT: TFloatField;
    QBrowse_rekap2_totAFL_NDAK_CABOT: TFloatField;
    LookLoom: TwwDBLookupCombo;
    QLookLoom: TOracleDataSet;
    QLookLoomLOOM: TStringField;
    QBrowseTotalAFL_PRINT: TFloatField;
    QBrowseTotalAFL_NDAK_CABOT: TFloatField;
    QBrowseAFL_PRINT: TFloatField;
    QBrowseAFL_NDAK_CABOT: TFloatField;
    QBrowse_rekapKD_TRANSAKSI: TStringField;
    QBrowse_rekap2KD_TRANSAKSI: TStringField;
    QBrowse_rekapAFL_NDAK_CABOT: TFloatField;
    QBrowse_rekapAFL_PRINT: TFloatField;
    QBrowse_rekap_totAFL_NDAK_CABOT: TFloatField;
    QBrowse_rekap_totAFL_PRINT: TFloatField;
    RadioGroup3: TRadioGroup;
    wwDBGrid6: TwwDBGrid;
    freeze: TCheckBox;
    wwDBGrid7: TwwDBGrid;
    QBrowseCORAK_PRINTING: TStringField;
    QBrowse_rekap3: TOracleDataSet;
    dsQBrowse_rekap3: TwwDataSource;
    QBrowse_rekap3_tot: TOracleDataSet;
    QBrowse_rekap3KP: TStringField;
    QBrowse_rekap3KONSTRUKSI: TStringField;
    QBrowse_rekap3SIF1: TFloatField;
    QBrowse_rekap3SIF2: TFloatField;
    QBrowse_rekap3SIF3: TFloatField;
    QBrowse_rekap3TOTAL: TFloatField;
    QBrowse_rekap3_totSIF1: TFloatField;
    QBrowse_rekap3_totSIF2: TFloatField;
    QBrowse_rekap3_totSIF3: TFloatField;
    QBrowse_rekap3_totTOTAL: TFloatField;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel6: TPanel;
    vOperand3: TLabel;
    cbTanggal3: TCheckBox;
    BitBtn7: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BitBtn8: TBitBtn;
    Label17: TLabel;
    wwDBGrid8: TwwDBGrid;
    LookKP2: TwwDBLookupComboDlg;
    QBrowseKP2: TStringField;
    QBrowseE_STAMPING2: TFloatField;
    QBrowse4E_STAMPING2: TFloatField;
    QBrowseTotalE_STAMPING2: TFloatField;
    QBrowse4TotalE_STAMPING2: TFloatField;
    QBrowseSUPLIER: TStringField;
    QBrowse4SUPLIER: TStringField;
    QDetailMITRA: TStringField;
    QBrowseMITRA: TStringField;
    LookMitra: TwwDBLookupCombo;
    QLookMitra: TOracleDataSet;
    QLookMitraMITRA: TStringField;
    QBrowse_rekap3_totDS: TFloatField;
    QBrowse_rekap3DS: TFloatField;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    VTglAwal4: TwwDBDateTimePicker;
    vTglAkhir4: TwwDBDateTimePicker;
    Panel8: TPanel;
    vOperand4: TLabel;
    cbTanggal4: TCheckBox;
    BitBtn9: TBitBtn;
    ECari4: TEdit;
    cbOtomatis4: TCheckBox;
    dbcField4: TwwDBComboBox;
    BitBtn10: TBitBtn;
    Label19: TLabel;
    wwDBGrid9: TwwDBGrid;
    RadioGroup4: TRadioGroup;
    QAmbilLoom: TOracleQuery;
    QBrowse_rekap4: TOracleDataSet;
    dsQBrowse_rekap4: TwwDataSource;
    QBrowse_rekap4LOOM: TStringField;
    QBrowse_rekap4KD_PROD: TStringField;
    QBrowse_rekap4HSL_PROD: TFloatField;
    QBrowse_rekap4BK: TFloatField;
    QBrowse_rekap4P_BK: TFloatField;
    QBrowse_rekap4B1: TFloatField;
    QBrowse_rekap4P_B1: TFloatField;
    QBrowse_rekap4B2: TFloatField;
    QBrowse_rekap4P_B2: TFloatField;
    QBrowse_rekap4BS_PARAH: TFloatField;
    QBrowse_rekap4P_BS_PARAH: TFloatField;
    QBrowse_rekap4LD: TFloatField;
    QBrowse_rekap4P_LD: TFloatField;
    QBrowse_rekap4LT: TFloatField;
    QBrowse_rekap4P_LT: TFloatField;
    QBrowse_rekap4LPT: TFloatField;
    QBrowse_rekap4P_LPT: TFloatField;
    QBrowse_rekap4LRG: TFloatField;
    QBrowse_rekap4P_LRG: TFloatField;
    QBrowse_rekap4WL: TFloatField;
    QBrowse_rekap4P_WL: TFloatField;
    QBrowse_rekap4FLO: TFloatField;
    QBrowse_rekap4P_FLO: TFloatField;
    QBrowse_rekap4NEPS: TFloatField;
    QBrowse_rekap4P_NEPS: TFloatField;
    QBrowse_rekap4PP: TFloatField;
    QBrowse_rekap4P_PP: TFloatField;
    QBrowse_rekap4WP: TFloatField;
    QBrowse_rekap4P_WP: TFloatField;
    QBrowse_rekap4OJ: TFloatField;
    QBrowse_rekap4P_OJ: TFloatField;
    QBrowse_rekap4CRT: TFloatField;
    QBrowse_rekap4P_CRT: TFloatField;
    QBrowse_rekap4BTS: TFloatField;
    QBrowse_rekap4P_BTS: TFloatField;
    QBrowse_rekap4BTB: TFloatField;
    QBrowse_rekap4P_BTB: TFloatField;
    QBrowse_rekap4SC: TFloatField;
    QBrowse_rekap4P_SC: TFloatField;
    QBrowse_rekap4SLL: TFloatField;
    QBrowse_rekap4P_SLL: TFloatField;
    QBrowse_rekap4CK: TFloatField;
    QBrowse_rekap4P_CK: TFloatField;
    QBrowse_rekap4CAJ: TFloatField;
    QBrowse_rekap4P_CAJ: TFloatField;
    QBrowse_rekap4KTR: TFloatField;
    QBrowse_rekap4P_KTR: TFloatField;
    QBrowse_rekap4PDK: TFloatField;
    QBrowse_rekap4P_PDK: TFloatField;
    QBrowse_rekap4KP: TFloatField;
    QBrowse_rekap4P_KP: TFloatField;
    QBrowse_rekap4MC: TFloatField;
    QBrowse_rekap4P_MC: TFloatField;
    QBrowse_rekap4BOSK: TFloatField;
    QBrowse_rekap4P_BOSK: TFloatField;
    QBrowse_rekap4KS: TFloatField;
    QBrowse_rekap4P_KS: TFloatField;
    QBrowse_rekap4BO: TFloatField;
    QBrowse_rekap4P_BO: TFloatField;
    QBrowse_rekap4FC: TFloatField;
    QBrowse_rekap4P_FC: TFloatField;
    QBrowse_rekap4HK: TFloatField;
    QBrowse_rekap4P_HK: TFloatField;
    QBrowse_rekap4WM: TFloatField;
    QBrowse_rekap4P_WM: TFloatField;
    QBrowse_rekap4WK: TFloatField;
    QBrowse_rekap4P_WK: TFloatField;
    QBrowse_rekap4M_SAMAR: TFloatField;
    QBrowse_rekap4P_M_SAMAR: TFloatField;
    QBrowse_rekap4M_RUSAK: TFloatField;
    QBrowse_rekap4P_M_RUSAK: TFloatField;
    QBrowse_rekap4M_BELANG: TFloatField;
    QBrowse_rekap4P_M_BELANG: TFloatField;
    QBrowse_rekap4M_OUIT: TFloatField;
    QBrowse_rekap4P_M_OUIT: TFloatField;
    QBrowse_rekap4E_STEAMER: TFloatField;
    QBrowse_rekap4P_E_STEAMER: TFloatField;
    QBrowse_rekap4E_PRINT: TFloatField;
    QBrowse_rekap4P_E_PRINT: TFloatField;
    QBrowse_rekap4E_STAMPING: TFloatField;
    QBrowse_rekap4P_E_STAMPING: TFloatField;
    QBrowse_rekap4SBK: TFloatField;
    QBrowse_rekap4P_SBK: TFloatField;
    QBrowse_rekap4UTS: TFloatField;
    QBrowse_rekap4P_UTS: TFloatField;
    QBrowse_rekap4KNB: TFloatField;
    QBrowse_rekap4P_KNB: TFloatField;
    QBrowse_rekap4E_STAMPING2: TFloatField;
    QBrowse_rekap4P_E_STAMPING2: TFloatField;
    QBrowse_rekap4MITRA: TStringField;
    wwDBGrid10: TwwDBGrid;
    QBrowse_rekap4_tot: TOracleDataSet;
    QBrowse_rekap4_totHSL_PROD: TFloatField;
    QBrowse_rekap4_totBK: TFloatField;
    QBrowse_rekap4_totP_BK: TFloatField;
    QBrowse_rekap4_totB1: TFloatField;
    QBrowse_rekap4_totP_B1: TFloatField;
    QBrowse_rekap4_totB2: TFloatField;
    QBrowse_rekap4_totP_B2: TFloatField;
    QBrowse_rekap4_totBS_PARAH: TFloatField;
    QBrowse_rekap4_totP_BS_PARAH: TFloatField;
    QBrowse_rekap4_totLD: TFloatField;
    QBrowse_rekap4_totP_LD: TFloatField;
    QBrowse_rekap4_totLT: TFloatField;
    QBrowse_rekap4_totP_LT: TFloatField;
    QBrowse_rekap4_totLPT: TFloatField;
    QBrowse_rekap4_totP_LPT: TFloatField;
    QBrowse_rekap4_totLRG: TFloatField;
    QBrowse_rekap4_totP_LRG: TFloatField;
    QBrowse_rekap4_totWL: TFloatField;
    QBrowse_rekap4_totP_WL: TFloatField;
    QBrowse_rekap4_totFLO: TFloatField;
    QBrowse_rekap4_totP_FLO: TFloatField;
    QBrowse_rekap4_totNEPS: TFloatField;
    QBrowse_rekap4_totP_NEPS: TFloatField;
    QBrowse_rekap4_totPP: TFloatField;
    QBrowse_rekap4_totP_PP: TFloatField;
    QBrowse_rekap4_totWP: TFloatField;
    QBrowse_rekap4_totP_WP: TFloatField;
    QBrowse_rekap4_totOJ: TFloatField;
    QBrowse_rekap4_totP_OJ: TFloatField;
    QBrowse_rekap4_totCRT: TFloatField;
    QBrowse_rekap4_totP_CRT: TFloatField;
    QBrowse_rekap4_totBTS: TFloatField;
    QBrowse_rekap4_totP_BTS: TFloatField;
    QBrowse_rekap4_totBTB: TFloatField;
    QBrowse_rekap4_totP_BTB: TFloatField;
    QBrowse_rekap4_totSC: TFloatField;
    QBrowse_rekap4_totP_SC: TFloatField;
    QBrowse_rekap4_totSLL: TFloatField;
    QBrowse_rekap4_totP_SLL: TFloatField;
    QBrowse_rekap4_totCK: TFloatField;
    QBrowse_rekap4_totP_CK: TFloatField;
    QBrowse_rekap4_totCAJ: TFloatField;
    QBrowse_rekap4_totP_CAJ: TFloatField;
    QBrowse_rekap4_totKTR: TFloatField;
    QBrowse_rekap4_totP_KTR: TFloatField;
    QBrowse_rekap4_totPDK: TFloatField;
    QBrowse_rekap4_totP_PDK: TFloatField;
    QBrowse_rekap4_totKP: TFloatField;
    QBrowse_rekap4_totP_KP: TFloatField;
    QBrowse_rekap4_totMC: TFloatField;
    QBrowse_rekap4_totP_MC: TFloatField;
    QBrowse_rekap4_totBOSK: TFloatField;
    QBrowse_rekap4_totP_BOSK: TFloatField;
    QBrowse_rekap4_totKS: TFloatField;
    QBrowse_rekap4_totP_KS: TFloatField;
    QBrowse_rekap4_totBO: TFloatField;
    QBrowse_rekap4_totP_BO: TFloatField;
    QBrowse_rekap4_totFC: TFloatField;
    QBrowse_rekap4_totP_FC: TFloatField;
    QBrowse_rekap4_totHK: TFloatField;
    QBrowse_rekap4_totP_HK: TFloatField;
    QBrowse_rekap4_totWM: TFloatField;
    QBrowse_rekap4_totP_WM: TFloatField;
    QBrowse_rekap4_totWK: TFloatField;
    QBrowse_rekap4_totP_WK: TFloatField;
    QBrowse_rekap4_totM_SAMAR: TFloatField;
    QBrowse_rekap4_totP_M_SAMAR: TFloatField;
    QBrowse_rekap4_totM_BELANG: TFloatField;
    QBrowse_rekap4_totP_M_BELANG: TFloatField;
    QBrowse_rekap4_totM_RUSAK: TFloatField;
    QBrowse_rekap4_totP_M_RUSAK: TFloatField;
    QBrowse_rekap4_totM_OUIT: TFloatField;
    QBrowse_rekap4_totP_M_OUIT: TFloatField;
    QBrowse_rekap4_totE_STEAMER: TFloatField;
    QBrowse_rekap4_totP_E_STEAMER: TFloatField;
    QBrowse_rekap4_totE_PRINT: TFloatField;
    QBrowse_rekap4_totP_E_PRINT: TFloatField;
    QBrowse_rekap4_totE_STAMPING: TFloatField;
    QBrowse_rekap4_totP_E_STAMPING: TFloatField;
    QBrowse_rekap4_totSBK: TFloatField;
    QBrowse_rekap4_totP_SBK: TFloatField;
    QBrowse_rekap4_totUTS: TFloatField;
    QBrowse_rekap4_totP_UTS: TFloatField;
    QBrowse_rekap4_totKNB: TFloatField;
    QBrowse_rekap4_totP_KNB: TFloatField;
    QBrowse_rekap4_totE_STAMPING2: TFloatField;
    QBrowse_rekap4_totP_E_STAMPING2: TFloatField;
    RProses: TRadioGroup;
    RPrint: TRadioGroup;
    wwDBGrid11: TwwDBGrid;
    wwDBGrid12: TwwDBGrid;
    QLoom3: TOracleQuery;
    QBrowse_Loom3: TOracleDataSet;
    QBrowse_Loom3_tot: TOracleDataSet;
    dsQBrowse_Loom3: TwwDataSource;
    QBrowse_Loom3_totHSL_PROD: TFloatField;
    QBrowse_Loom3_totBK: TFloatField;
    QBrowse_Loom3_totP_BK: TFloatField;
    QBrowse_Loom3_totB1: TFloatField;
    QBrowse_Loom3_totP_B1: TFloatField;
    QBrowse_Loom3_totB2: TFloatField;
    QBrowse_Loom3_totP_B2: TFloatField;
    QBrowse_Loom3_totBS_PARAH: TFloatField;
    QBrowse_Loom3_totP_BS_PARAH: TFloatField;
    QBrowse_Loom3_totLD: TFloatField;
    QBrowse_Loom3_totP_LD: TFloatField;
    QBrowse_Loom3_totLT: TFloatField;
    QBrowse_Loom3_totP_LT: TFloatField;
    QBrowse_Loom3_totLPT: TFloatField;
    QBrowse_Loom3_totP_LPT: TFloatField;
    QBrowse_Loom3_totLRG: TFloatField;
    QBrowse_Loom3_totP_LRG: TFloatField;
    QBrowse_Loom3_totWL: TFloatField;
    QBrowse_Loom3_totP_WL: TFloatField;
    QBrowse_Loom3_totFLO: TFloatField;
    QBrowse_Loom3_totP_FLO: TFloatField;
    QBrowse_Loom3_totNEPS: TFloatField;
    QBrowse_Loom3_totP_NEPS: TFloatField;
    QBrowse_Loom3_totPP: TFloatField;
    QBrowse_Loom3_totP_PP: TFloatField;
    QBrowse_Loom3_totWP: TFloatField;
    QBrowse_Loom3_totP_WP: TFloatField;
    QBrowse_Loom3_totOJ: TFloatField;
    QBrowse_Loom3_totP_OJ: TFloatField;
    QBrowse_Loom3_totCRT: TFloatField;
    QBrowse_Loom3_totP_CRT: TFloatField;
    QBrowse_Loom3_totBTS: TFloatField;
    QBrowse_Loom3_totP_BTS: TFloatField;
    QBrowse_Loom3_totBTB: TFloatField;
    QBrowse_Loom3_totP_BTB: TFloatField;
    QBrowse_Loom3_totSC: TFloatField;
    QBrowse_Loom3_totP_SC: TFloatField;
    QBrowse_Loom3_totSLL: TFloatField;
    QBrowse_Loom3_totP_SLL: TFloatField;
    QBrowse_Loom3_totCK: TFloatField;
    QBrowse_Loom3_totP_CK: TFloatField;
    QBrowse_Loom3_totCAJ: TFloatField;
    QBrowse_Loom3_totP_CAJ: TFloatField;
    QBrowse_Loom3_totKTR: TFloatField;
    QBrowse_Loom3_totP_KTR: TFloatField;
    QBrowse_Loom3_totPDK: TFloatField;
    QBrowse_Loom3_totP_PDK: TFloatField;
    QBrowse_Loom3_totKP: TFloatField;
    QBrowse_Loom3_totP_KP: TFloatField;
    QBrowse_Loom3_totMC: TFloatField;
    QBrowse_Loom3_totP_MC: TFloatField;
    QBrowse_Loom3_totBOSK: TFloatField;
    QBrowse_Loom3_totP_BOSK: TFloatField;
    QBrowse_Loom3_totKS: TFloatField;
    QBrowse_Loom3_totP_KS: TFloatField;
    QBrowse_Loom3_totBO: TFloatField;
    QBrowse_Loom3_totP_BO: TFloatField;
    QBrowse_Loom3_totFC: TFloatField;
    QBrowse_Loom3_totP_FC: TFloatField;
    QBrowse_Loom3_totHK: TFloatField;
    QBrowse_Loom3_totP_HK: TFloatField;
    QBrowse_Loom3_totWM: TFloatField;
    QBrowse_Loom3_totP_WM: TFloatField;
    QBrowse_Loom3_totWK: TFloatField;
    QBrowse_Loom3_totP_WK: TFloatField;
    QBrowse_Loom3_totM_SAMAR: TFloatField;
    QBrowse_Loom3_totP_M_SAMAR: TFloatField;
    QBrowse_Loom3_totM_BELANG: TFloatField;
    QBrowse_Loom3_totP_M_BELANG: TFloatField;
    QBrowse_Loom3_totM_RUSAK: TFloatField;
    QBrowse_Loom3_totP_M_RUSAK: TFloatField;
    QBrowse_Loom3_totM_OUIT: TFloatField;
    QBrowse_Loom3_totP_M_OUIT: TFloatField;
    QBrowse_Loom3_totE_STEAMER: TFloatField;
    QBrowse_Loom3_totP_E_STEAMER: TFloatField;
    QBrowse_Loom3_totE_PRINT: TFloatField;
    QBrowse_Loom3_totP_E_PRINT: TFloatField;
    QBrowse_Loom3_totE_STAMPING: TFloatField;
    QBrowse_Loom3_totP_E_STAMPING: TFloatField;
    QBrowse_Loom3_totSBK: TFloatField;
    QBrowse_Loom3_totP_SBK: TFloatField;
    QBrowse_Loom3_totUTS: TFloatField;
    QBrowse_Loom3_totP_UTS: TFloatField;
    QBrowse_Loom3_totKNB: TFloatField;
    QBrowse_Loom3_totP_KNB: TFloatField;
    QBrowse_Loom3_totE_STAMPING2: TFloatField;
    QBrowse_Loom3_totP_E_STAMPING2: TFloatField;
    QBrowse_Loom3LOOM: TStringField;
    QBrowse_Loom3KD_PROD: TStringField;
    QBrowse_Loom3HSL_PROD: TFloatField;
    QBrowse_Loom3BK: TFloatField;
    QBrowse_Loom3P_BK: TFloatField;
    QBrowse_Loom3B1: TFloatField;
    QBrowse_Loom3P_B1: TFloatField;
    QBrowse_Loom3B2: TFloatField;
    QBrowse_Loom3P_B2: TFloatField;
    QBrowse_Loom3BS_PARAH: TFloatField;
    QBrowse_Loom3P_BS_PARAH: TFloatField;
    QBrowse_Loom3LD: TFloatField;
    QBrowse_Loom3P_LD: TFloatField;
    QBrowse_Loom3LT: TFloatField;
    QBrowse_Loom3P_LT: TFloatField;
    QBrowse_Loom3LPT: TFloatField;
    QBrowse_Loom3P_LPT: TFloatField;
    QBrowse_Loom3LRG: TFloatField;
    QBrowse_Loom3P_LRG: TFloatField;
    QBrowse_Loom3WL: TFloatField;
    QBrowse_Loom3P_WL: TFloatField;
    QBrowse_Loom3FLO: TFloatField;
    QBrowse_Loom3P_FLO: TFloatField;
    QBrowse_Loom3NEPS: TFloatField;
    QBrowse_Loom3P_NEPS: TFloatField;
    QBrowse_Loom3PP: TFloatField;
    QBrowse_Loom3P_PP: TFloatField;
    QBrowse_Loom3WP: TFloatField;
    QBrowse_Loom3P_WP: TFloatField;
    QBrowse_Loom3OJ: TFloatField;
    QBrowse_Loom3P_OJ: TFloatField;
    QBrowse_Loom3CRT: TFloatField;
    QBrowse_Loom3P_CRT: TFloatField;
    QBrowse_Loom3BTS: TFloatField;
    QBrowse_Loom3P_BTS: TFloatField;
    QBrowse_Loom3BTB: TFloatField;
    QBrowse_Loom3P_BTB: TFloatField;
    QBrowse_Loom3SC: TFloatField;
    QBrowse_Loom3P_SC: TFloatField;
    QBrowse_Loom3SLL: TFloatField;
    QBrowse_Loom3P_SLL: TFloatField;
    QBrowse_Loom3CK: TFloatField;
    QBrowse_Loom3P_CK: TFloatField;
    QBrowse_Loom3CAJ: TFloatField;
    QBrowse_Loom3P_CAJ: TFloatField;
    QBrowse_Loom3KTR: TFloatField;
    QBrowse_Loom3P_KTR: TFloatField;
    QBrowse_Loom3PDK: TFloatField;
    QBrowse_Loom3P_PDK: TFloatField;
    QBrowse_Loom3KP: TFloatField;
    QBrowse_Loom3P_KP: TFloatField;
    QBrowse_Loom3MC: TFloatField;
    QBrowse_Loom3P_MC: TFloatField;
    QBrowse_Loom3BOSK: TFloatField;
    QBrowse_Loom3P_BOSK: TFloatField;
    QBrowse_Loom3KS: TFloatField;
    QBrowse_Loom3P_KS: TFloatField;
    QBrowse_Loom3BO: TFloatField;
    QBrowse_Loom3P_BO: TFloatField;
    QBrowse_Loom3FC: TFloatField;
    QBrowse_Loom3P_FC: TFloatField;
    QBrowse_Loom3HK: TFloatField;
    QBrowse_Loom3P_HK: TFloatField;
    QBrowse_Loom3WM: TFloatField;
    QBrowse_Loom3P_WM: TFloatField;
    QBrowse_Loom3WK: TFloatField;
    QBrowse_Loom3P_WK: TFloatField;
    QBrowse_Loom3M_SAMAR: TFloatField;
    QBrowse_Loom3P_M_SAMAR: TFloatField;
    QBrowse_Loom3M_RUSAK: TFloatField;
    QBrowse_Loom3P_M_RUSAK: TFloatField;
    QBrowse_Loom3M_BELANG: TFloatField;
    QBrowse_Loom3P_M_BELANG: TFloatField;
    QBrowse_Loom3M_OUIT: TFloatField;
    QBrowse_Loom3P_M_OUIT: TFloatField;
    QBrowse_Loom3E_STEAMER: TFloatField;
    QBrowse_Loom3P_E_STEAMER: TFloatField;
    QBrowse_Loom3E_PRINT: TFloatField;
    QBrowse_Loom3P_E_PRINT: TFloatField;
    QBrowse_Loom3E_STAMPING: TFloatField;
    QBrowse_Loom3P_E_STAMPING: TFloatField;
    QBrowse_Loom3SBK: TFloatField;
    QBrowse_Loom3P_SBK: TFloatField;
    QBrowse_Loom3UTS: TFloatField;
    QBrowse_Loom3P_UTS: TFloatField;
    QBrowse_Loom3KNB: TFloatField;
    QBrowse_Loom3P_KNB: TFloatField;
    QBrowse_Loom3E_STAMPING2: TFloatField;
    QBrowse_Loom3P_E_STAMPING2: TFloatField;
    QBrowse_Loom3MITRA: TStringField;
    QLoom1: TOracleQuery;
    dsQBrowse_Loom1: TwwDataSource;
    QBrowse_Loom1_tot: TOracleDataSet;
    QBrowse_Loom1: TOracleDataSet;
    dsQBrowse_Loom2: TwwDataSource;
    QLoom2: TOracleQuery;
    QBrowse_Loom2: TOracleDataSet;
    QBrowse_Loom2_tot: TOracleDataSet;
    QBrowse_Loom1LOOM: TStringField;
    QBrowse_Loom1HSL_PROD: TFloatField;
    QBrowse_Loom1BK: TFloatField;
    QBrowse_Loom1P_BK: TFloatField;
    QBrowse_Loom1B1: TFloatField;
    QBrowse_Loom1P_B1: TFloatField;
    QBrowse_Loom1B2: TFloatField;
    QBrowse_Loom1P_B2: TFloatField;
    QBrowse_Loom1BS_PARAH: TFloatField;
    QBrowse_Loom1P_BS_PARAH: TFloatField;
    QBrowse_Loom1LD: TFloatField;
    QBrowse_Loom1P_LD: TFloatField;
    QBrowse_Loom1LT: TFloatField;
    QBrowse_Loom1P_LT: TFloatField;
    QBrowse_Loom1LPT: TFloatField;
    QBrowse_Loom1P_LPT: TFloatField;
    QBrowse_Loom1LRG: TFloatField;
    QBrowse_Loom1P_LRG: TFloatField;
    QBrowse_Loom1WL: TFloatField;
    QBrowse_Loom1P_WL: TFloatField;
    QBrowse_Loom1FLO: TFloatField;
    QBrowse_Loom1P_FLO: TFloatField;
    QBrowse_Loom1NEPS: TFloatField;
    QBrowse_Loom1P_NEPS: TFloatField;
    QBrowse_Loom1PP: TFloatField;
    QBrowse_Loom1P_PP: TFloatField;
    QBrowse_Loom1WP: TFloatField;
    QBrowse_Loom1P_WP: TFloatField;
    QBrowse_Loom1OJ: TFloatField;
    QBrowse_Loom1P_OJ: TFloatField;
    QBrowse_Loom1CRT: TFloatField;
    QBrowse_Loom1P_CRT: TFloatField;
    QBrowse_Loom1BTS: TFloatField;
    QBrowse_Loom1P_BTS: TFloatField;
    QBrowse_Loom1BTB: TFloatField;
    QBrowse_Loom1P_BTB: TFloatField;
    QBrowse_Loom1SC: TFloatField;
    QBrowse_Loom1P_SC: TFloatField;
    QBrowse_Loom1SLL: TFloatField;
    QBrowse_Loom1P_SLL: TFloatField;
    QBrowse_Loom1CK: TFloatField;
    QBrowse_Loom1P_CK: TFloatField;
    QBrowse_Loom1CAJ: TFloatField;
    QBrowse_Loom1P_CAJ: TFloatField;
    QBrowse_Loom1KTR: TFloatField;
    QBrowse_Loom1P_KTR: TFloatField;
    QBrowse_Loom1PDK: TFloatField;
    QBrowse_Loom1P_PDK: TFloatField;
    QBrowse_Loom1KP: TFloatField;
    QBrowse_Loom1P_KP: TFloatField;
    QBrowse_Loom1MC: TFloatField;
    QBrowse_Loom1P_MC: TFloatField;
    QBrowse_Loom1BOSK: TFloatField;
    QBrowse_Loom1P_BOSK: TFloatField;
    QBrowse_Loom1KS: TFloatField;
    QBrowse_Loom1P_KS: TFloatField;
    QBrowse_Loom1BO: TFloatField;
    QBrowse_Loom1P_BO: TFloatField;
    QBrowse_Loom1FC: TFloatField;
    QBrowse_Loom1P_FC: TFloatField;
    QBrowse_Loom1HK: TFloatField;
    QBrowse_Loom1P_HK: TFloatField;
    QBrowse_Loom1WM: TFloatField;
    QBrowse_Loom1P_WM: TFloatField;
    QBrowse_Loom1WK: TFloatField;
    QBrowse_Loom1P_WK: TFloatField;
    QBrowse_Loom1M_SAMAR: TFloatField;
    QBrowse_Loom1P_M_SAMAR: TFloatField;
    QBrowse_Loom1M_RUSAK: TFloatField;
    QBrowse_Loom1P_M_RUSAK: TFloatField;
    QBrowse_Loom1M_BELANG: TFloatField;
    QBrowse_Loom1P_M_BELANG: TFloatField;
    QBrowse_Loom1M_OUIT: TFloatField;
    QBrowse_Loom1P_M_OUIT: TFloatField;
    QBrowse_Loom1E_STEAMER: TFloatField;
    QBrowse_Loom1P_E_STEAMER: TFloatField;
    QBrowse_Loom1E_PRINT: TFloatField;
    QBrowse_Loom1P_E_PRINT: TFloatField;
    QBrowse_Loom1E_STAMPING: TFloatField;
    QBrowse_Loom1P_E_STAMPING: TFloatField;
    QBrowse_Loom1SBK: TFloatField;
    QBrowse_Loom1P_SBK: TFloatField;
    QBrowse_Loom1UTS: TFloatField;
    QBrowse_Loom1P_UTS: TFloatField;
    QBrowse_Loom1KNB: TFloatField;
    QBrowse_Loom1P_KNB: TFloatField;
    QBrowse_Loom1E_STAMPING2: TFloatField;
    QBrowse_Loom1P_E_STAMPING2: TFloatField;
    QBrowse_Loom1MITRA: TStringField;
    QBrowse_Loom1_totHSL_PROD: TFloatField;
    QBrowse_Loom1_totBK: TFloatField;
    QBrowse_Loom1_totP_BK: TFloatField;
    QBrowse_Loom1_totB1: TFloatField;
    QBrowse_Loom1_totP_B1: TFloatField;
    QBrowse_Loom1_totB2: TFloatField;
    QBrowse_Loom1_totP_B2: TFloatField;
    QBrowse_Loom1_totBS_PARAH: TFloatField;
    QBrowse_Loom1_totP_BS_PARAH: TFloatField;
    QBrowse_Loom1_totLD: TFloatField;
    QBrowse_Loom1_totP_LD: TFloatField;
    QBrowse_Loom1_totLT: TFloatField;
    QBrowse_Loom1_totP_LT: TFloatField;
    QBrowse_Loom1_totLPT: TFloatField;
    QBrowse_Loom1_totP_LPT: TFloatField;
    QBrowse_Loom1_totLRG: TFloatField;
    QBrowse_Loom1_totP_LRG: TFloatField;
    QBrowse_Loom1_totWL: TFloatField;
    QBrowse_Loom1_totP_WL: TFloatField;
    QBrowse_Loom1_totFLO: TFloatField;
    QBrowse_Loom1_totP_FLO: TFloatField;
    QBrowse_Loom1_totNEPS: TFloatField;
    QBrowse_Loom1_totP_NEPS: TFloatField;
    QBrowse_Loom1_totPP: TFloatField;
    QBrowse_Loom1_totP_PP: TFloatField;
    QBrowse_Loom1_totWP: TFloatField;
    QBrowse_Loom1_totP_WP: TFloatField;
    QBrowse_Loom1_totOJ: TFloatField;
    QBrowse_Loom1_totP_OJ: TFloatField;
    QBrowse_Loom1_totCRT: TFloatField;
    QBrowse_Loom1_totP_CRT: TFloatField;
    QBrowse_Loom1_totBTS: TFloatField;
    QBrowse_Loom1_totP_BTS: TFloatField;
    QBrowse_Loom1_totBTB: TFloatField;
    QBrowse_Loom1_totP_BTB: TFloatField;
    QBrowse_Loom1_totSC: TFloatField;
    QBrowse_Loom1_totP_SC: TFloatField;
    QBrowse_Loom1_totSLL: TFloatField;
    QBrowse_Loom1_totP_SLL: TFloatField;
    QBrowse_Loom1_totCK: TFloatField;
    QBrowse_Loom1_totP_CK: TFloatField;
    QBrowse_Loom1_totCAJ: TFloatField;
    QBrowse_Loom1_totP_CAJ: TFloatField;
    QBrowse_Loom1_totKTR: TFloatField;
    QBrowse_Loom1_totP_KTR: TFloatField;
    QBrowse_Loom1_totPDK: TFloatField;
    QBrowse_Loom1_totP_PDK: TFloatField;
    QBrowse_Loom1_totKP: TFloatField;
    QBrowse_Loom1_totP_KP: TFloatField;
    QBrowse_Loom1_totMC: TFloatField;
    QBrowse_Loom1_totP_MC: TFloatField;
    QBrowse_Loom1_totBOSK: TFloatField;
    QBrowse_Loom1_totP_BOSK: TFloatField;
    QBrowse_Loom1_totKS: TFloatField;
    QBrowse_Loom1_totP_KS: TFloatField;
    QBrowse_Loom1_totBO: TFloatField;
    QBrowse_Loom1_totP_BO: TFloatField;
    QBrowse_Loom1_totFC: TFloatField;
    QBrowse_Loom1_totP_FC: TFloatField;
    QBrowse_Loom1_totHK: TFloatField;
    QBrowse_Loom1_totP_HK: TFloatField;
    QBrowse_Loom1_totWM: TFloatField;
    QBrowse_Loom1_totP_WM: TFloatField;
    QBrowse_Loom1_totWK: TFloatField;
    QBrowse_Loom1_totP_WK: TFloatField;
    QBrowse_Loom1_totM_SAMAR: TFloatField;
    QBrowse_Loom1_totP_M_SAMAR: TFloatField;
    QBrowse_Loom1_totM_BELANG: TFloatField;
    QBrowse_Loom1_totP_M_BELANG: TFloatField;
    QBrowse_Loom1_totM_RUSAK: TFloatField;
    QBrowse_Loom1_totP_M_RUSAK: TFloatField;
    QBrowse_Loom1_totM_OUIT: TFloatField;
    QBrowse_Loom1_totP_M_OUIT: TFloatField;
    QBrowse_Loom1_totE_STEAMER: TFloatField;
    QBrowse_Loom1_totP_E_STEAMER: TFloatField;
    QBrowse_Loom1_totE_PRINT: TFloatField;
    QBrowse_Loom1_totP_E_PRINT: TFloatField;
    QBrowse_Loom1_totE_STAMPING: TFloatField;
    QBrowse_Loom1_totP_E_STAMPING: TFloatField;
    QBrowse_Loom1_totSBK: TFloatField;
    QBrowse_Loom1_totP_SBK: TFloatField;
    QBrowse_Loom1_totUTS: TFloatField;
    QBrowse_Loom1_totP_UTS: TFloatField;
    QBrowse_Loom1_totKNB: TFloatField;
    QBrowse_Loom1_totP_KNB: TFloatField;
    QBrowse_Loom1_totE_STAMPING2: TFloatField;
    QBrowse_Loom1_totP_E_STAMPING2: TFloatField;
    QBrowse_Loom2LOOM: TStringField;
    QBrowse_Loom2HSL_PROD: TFloatField;
    QBrowse_Loom2BK: TFloatField;
    QBrowse_Loom2P_BK: TFloatField;
    QBrowse_Loom2B1: TFloatField;
    QBrowse_Loom2P_B1: TFloatField;
    QBrowse_Loom2B2: TFloatField;
    QBrowse_Loom2P_B2: TFloatField;
    QBrowse_Loom2BS_PARAH: TFloatField;
    QBrowse_Loom2P_BS_PARAH: TFloatField;
    QBrowse_Loom2LD: TFloatField;
    QBrowse_Loom2P_LD: TFloatField;
    QBrowse_Loom2LT: TFloatField;
    QBrowse_Loom2P_LT: TFloatField;
    QBrowse_Loom2LPT: TFloatField;
    QBrowse_Loom2P_LPT: TFloatField;
    QBrowse_Loom2LRG: TFloatField;
    QBrowse_Loom2P_LRG: TFloatField;
    QBrowse_Loom2WL: TFloatField;
    QBrowse_Loom2P_WL: TFloatField;
    QBrowse_Loom2FLO: TFloatField;
    QBrowse_Loom2P_FLO: TFloatField;
    QBrowse_Loom2NEPS: TFloatField;
    QBrowse_Loom2P_NEPS: TFloatField;
    QBrowse_Loom2PP: TFloatField;
    QBrowse_Loom2P_PP: TFloatField;
    QBrowse_Loom2WP: TFloatField;
    QBrowse_Loom2P_WP: TFloatField;
    QBrowse_Loom2OJ: TFloatField;
    QBrowse_Loom2P_OJ: TFloatField;
    QBrowse_Loom2CRT: TFloatField;
    QBrowse_Loom2P_CRT: TFloatField;
    QBrowse_Loom2BTS: TFloatField;
    QBrowse_Loom2P_BTS: TFloatField;
    QBrowse_Loom2BTB: TFloatField;
    QBrowse_Loom2P_BTB: TFloatField;
    QBrowse_Loom2SC: TFloatField;
    QBrowse_Loom2P_SC: TFloatField;
    QBrowse_Loom2SLL: TFloatField;
    QBrowse_Loom2P_SLL: TFloatField;
    QBrowse_Loom2CK: TFloatField;
    QBrowse_Loom2P_CK: TFloatField;
    QBrowse_Loom2CAJ: TFloatField;
    QBrowse_Loom2P_CAJ: TFloatField;
    QBrowse_Loom2KTR: TFloatField;
    QBrowse_Loom2P_KTR: TFloatField;
    QBrowse_Loom2PDK: TFloatField;
    QBrowse_Loom2P_PDK: TFloatField;
    QBrowse_Loom2KP: TFloatField;
    QBrowse_Loom2P_KP: TFloatField;
    QBrowse_Loom2MC: TFloatField;
    QBrowse_Loom2P_MC: TFloatField;
    QBrowse_Loom2BOSK: TFloatField;
    QBrowse_Loom2P_BOSK: TFloatField;
    QBrowse_Loom2KS: TFloatField;
    QBrowse_Loom2P_KS: TFloatField;
    QBrowse_Loom2BO: TFloatField;
    QBrowse_Loom2P_BO: TFloatField;
    QBrowse_Loom2FC: TFloatField;
    QBrowse_Loom2P_FC: TFloatField;
    QBrowse_Loom2HK: TFloatField;
    QBrowse_Loom2P_HK: TFloatField;
    QBrowse_Loom2WM: TFloatField;
    QBrowse_Loom2P_WM: TFloatField;
    QBrowse_Loom2WK: TFloatField;
    QBrowse_Loom2P_WK: TFloatField;
    QBrowse_Loom2M_SAMAR: TFloatField;
    QBrowse_Loom2P_M_SAMAR: TFloatField;
    QBrowse_Loom2M_RUSAK: TFloatField;
    QBrowse_Loom2P_M_RUSAK: TFloatField;
    QBrowse_Loom2M_BELANG: TFloatField;
    QBrowse_Loom2P_M_BELANG: TFloatField;
    QBrowse_Loom2M_OUIT: TFloatField;
    QBrowse_Loom2P_M_OUIT: TFloatField;
    QBrowse_Loom2E_STEAMER: TFloatField;
    QBrowse_Loom2P_E_STEAMER: TFloatField;
    QBrowse_Loom2E_PRINT: TFloatField;
    QBrowse_Loom2P_E_PRINT: TFloatField;
    QBrowse_Loom2E_STAMPING: TFloatField;
    QBrowse_Loom2P_E_STAMPING: TFloatField;
    QBrowse_Loom2SBK: TFloatField;
    QBrowse_Loom2P_SBK: TFloatField;
    QBrowse_Loom2UTS: TFloatField;
    QBrowse_Loom2P_UTS: TFloatField;
    QBrowse_Loom2KNB: TFloatField;
    QBrowse_Loom2P_KNB: TFloatField;
    QBrowse_Loom2E_STAMPING2: TFloatField;
    QBrowse_Loom2P_E_STAMPING2: TFloatField;
    QBrowse_Loom2MITRA: TStringField;
    QBrowse_Loom2_totHSL_PROD: TFloatField;
    QBrowse_Loom2_totBK: TFloatField;
    QBrowse_Loom2_totP_BK: TFloatField;
    QBrowse_Loom2_totB1: TFloatField;
    QBrowse_Loom2_totP_B1: TFloatField;
    QBrowse_Loom2_totB2: TFloatField;
    QBrowse_Loom2_totP_B2: TFloatField;
    QBrowse_Loom2_totBS_PARAH: TFloatField;
    QBrowse_Loom2_totP_BS_PARAH: TFloatField;
    QBrowse_Loom2_totLD: TFloatField;
    QBrowse_Loom2_totP_LD: TFloatField;
    QBrowse_Loom2_totLT: TFloatField;
    QBrowse_Loom2_totP_LT: TFloatField;
    QBrowse_Loom2_totLPT: TFloatField;
    QBrowse_Loom2_totP_LPT: TFloatField;
    QBrowse_Loom2_totLRG: TFloatField;
    QBrowse_Loom2_totP_LRG: TFloatField;
    QBrowse_Loom2_totWL: TFloatField;
    QBrowse_Loom2_totP_WL: TFloatField;
    QBrowse_Loom2_totFLO: TFloatField;
    QBrowse_Loom2_totP_FLO: TFloatField;
    QBrowse_Loom2_totNEPS: TFloatField;
    QBrowse_Loom2_totP_NEPS: TFloatField;
    QBrowse_Loom2_totPP: TFloatField;
    QBrowse_Loom2_totP_PP: TFloatField;
    QBrowse_Loom2_totWP: TFloatField;
    QBrowse_Loom2_totP_WP: TFloatField;
    QBrowse_Loom2_totOJ: TFloatField;
    QBrowse_Loom2_totP_OJ: TFloatField;
    QBrowse_Loom2_totCRT: TFloatField;
    QBrowse_Loom2_totP_CRT: TFloatField;
    QBrowse_Loom2_totBTS: TFloatField;
    QBrowse_Loom2_totP_BTS: TFloatField;
    QBrowse_Loom2_totBTB: TFloatField;
    QBrowse_Loom2_totP_BTB: TFloatField;
    QBrowse_Loom2_totSC: TFloatField;
    QBrowse_Loom2_totP_SC: TFloatField;
    QBrowse_Loom2_totSLL: TFloatField;
    QBrowse_Loom2_totP_SLL: TFloatField;
    QBrowse_Loom2_totCK: TFloatField;
    QBrowse_Loom2_totP_CK: TFloatField;
    QBrowse_Loom2_totCAJ: TFloatField;
    QBrowse_Loom2_totP_CAJ: TFloatField;
    QBrowse_Loom2_totKTR: TFloatField;
    QBrowse_Loom2_totP_KTR: TFloatField;
    QBrowse_Loom2_totPDK: TFloatField;
    QBrowse_Loom2_totP_PDK: TFloatField;
    QBrowse_Loom2_totKP: TFloatField;
    QBrowse_Loom2_totP_KP: TFloatField;
    QBrowse_Loom2_totMC: TFloatField;
    QBrowse_Loom2_totP_MC: TFloatField;
    QBrowse_Loom2_totBOSK: TFloatField;
    QBrowse_Loom2_totP_BOSK: TFloatField;
    QBrowse_Loom2_totKS: TFloatField;
    QBrowse_Loom2_totP_KS: TFloatField;
    QBrowse_Loom2_totBO: TFloatField;
    QBrowse_Loom2_totP_BO: TFloatField;
    QBrowse_Loom2_totFC: TFloatField;
    QBrowse_Loom2_totP_FC: TFloatField;
    QBrowse_Loom2_totHK: TFloatField;
    QBrowse_Loom2_totP_HK: TFloatField;
    QBrowse_Loom2_totWM: TFloatField;
    QBrowse_Loom2_totP_WM: TFloatField;
    QBrowse_Loom2_totWK: TFloatField;
    QBrowse_Loom2_totP_WK: TFloatField;
    QBrowse_Loom2_totM_SAMAR: TFloatField;
    QBrowse_Loom2_totP_M_SAMAR: TFloatField;
    QBrowse_Loom2_totM_BELANG: TFloatField;
    QBrowse_Loom2_totP_M_BELANG: TFloatField;
    QBrowse_Loom2_totM_RUSAK: TFloatField;
    QBrowse_Loom2_totP_M_RUSAK: TFloatField;
    QBrowse_Loom2_totM_OUIT: TFloatField;
    QBrowse_Loom2_totP_M_OUIT: TFloatField;
    QBrowse_Loom2_totE_STEAMER: TFloatField;
    QBrowse_Loom2_totP_E_STEAMER: TFloatField;
    QBrowse_Loom2_totE_PRINT: TFloatField;
    QBrowse_Loom2_totP_E_PRINT: TFloatField;
    QBrowse_Loom2_totE_STAMPING: TFloatField;
    QBrowse_Loom2_totP_E_STAMPING: TFloatField;
    QBrowse_Loom2_totSBK: TFloatField;
    QBrowse_Loom2_totP_SBK: TFloatField;
    QBrowse_Loom2_totUTS: TFloatField;
    QBrowse_Loom2_totP_UTS: TFloatField;
    QBrowse_Loom2_totKNB: TFloatField;
    QBrowse_Loom2_totP_KNB: TFloatField;
    QBrowse_Loom2_totE_STAMPING2: TFloatField;
    QBrowse_Loom2_totP_E_STAMPING2: TFloatField;
    BitBtn11: TBitBtn;
    WebBrowser1: TWebBrowser;
    QBrowseKETERANGAN: TStringField;
    QBrowseM_BELANG2: TFloatField;
    QBrowseM_RUSAK2: TFloatField;
    QBrowse4M_BELANG2: TFloatField;
    QBrowse4M_RUSAK2: TFloatField;
    QBrowseTotalM_BELANG2: TFloatField;
    QBrowseTotalM_RUSAK2: TFloatField;
    QBrowse4TotalM_BELANG2: TFloatField;
    QBrowse4TotalM_RUSAK2: TFloatField;
    QBrowse_Loom3M_BELANG2: TFloatField;
    QBrowse_Loom3P_M_BELANG2: TFloatField;
    QBrowse_Loom3M_RUSAK2: TFloatField;
    QBrowse_Loom3P_M_RUSAK2: TFloatField;
    QBrowse_Loom3_totM_BELANG2: TFloatField;
    QBrowse_Loom3_totP_M_BELANG2: TFloatField;
    QBrowse_Loom3_totM_RUSAK2: TFloatField;
    QBrowse_Loom3_totP_M_RUSAK2: TFloatField;
    QBrowse_rekap4M_BELANG2: TFloatField;
    QBrowse_rekap4P_M_BELANG2: TFloatField;
    QBrowse_rekap4M_RUSAK2: TFloatField;
    QBrowse_rekap4P_M_RUSAK2: TFloatField;
    QBrowse_rekap4_totM_BELANG2: TFloatField;
    QBrowse_rekap4_totP_M_BELANG2: TFloatField;
    QBrowse_rekap4_totM_RUSAK2: TFloatField;
    QBrowse_rekap4_totP_M_RUSAK2: TFloatField;
    QBrowse_Loom1M_BELANG2: TFloatField;
    QBrowse_Loom1P_M_BELANG2: TFloatField;
    QBrowse_Loom1M_RUSAK2: TFloatField;
    QBrowse_Loom1P_M_RUSAK2: TFloatField;
    QBrowse_Loom1_totM_BELANG2: TFloatField;
    QBrowse_Loom1_totP_M_BELANG2: TFloatField;
    QBrowse_Loom1_totM_RUSAK2: TFloatField;
    QBrowse_Loom1_totP_M_RUSAK2: TFloatField;
    QBrowse_Loom2M_BELANG2: TFloatField;
    QBrowse_Loom2P_M_BELANG2: TFloatField;
    QBrowse_Loom2M_RUSAK2: TFloatField;
    QBrowse_Loom2P_M_RUSAK2: TFloatField;
    QBrowse_Loom2_totM_BELANG2: TFloatField;
    QBrowse_Loom2_totP_M_BELANG2: TFloatField;
    QBrowse_Loom2_totM_RUSAK2: TFloatField;
    QBrowse_Loom2_totP_M_RUSAK2: TFloatField;
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
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
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
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookOrderEnter(Sender: TObject);
    procedure LookOrderCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure VTglAwal2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure QBrowse2AfterScroll(DataSet: TDataSet);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookProsesChange(Sender: TObject);
    procedure LookProsesCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure QLookOrderBeforeOpen(DataSet: TDataSet);
    procedure QDetailBeforeInsert(DataSet: TDataSet);
    procedure LookMutuCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure QBrowse2CalcFields(DataSet: TDataSet);
    procedure QDetailAfterPost(DataSet: TDataSet);
    procedure LookOperatorEnter(Sender: TObject);
    procedure LookOperatorCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid3UpdateFooter(Sender: TObject);
    procedure wwDBGrid4Enter(Sender: TObject);
    procedure QBrowse4AfterScroll(DataSet: TDataSet);
    procedure LookLoomCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookLoomEnter(Sender: TObject);
    procedure freezeClick(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure vOperand3Click(Sender: TObject);
    procedure cbTanggal3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure LookKP2Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure LookMitraEnter(Sender: TObject);
    procedure VTglAwal4Change(Sender: TObject);
    procedure vTglAkhir4Change(Sender: TObject);
    procedure cbOtomatis4Click(Sender: TObject);
    procedure dbcField4Enter(Sender: TObject);
    procedure vOperand4Click(Sender: TObject);
    procedure cbTanggal4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure RProsesClick(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure QBrowse_Loom3AfterScroll(DataSet: TDataSet);
    procedure wwDBGrid10TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowse_Loom1AfterScroll(DataSet: TDataSet);
    procedure QBrowse_rekap4AfterScroll(DataSet: TDataSet);
    procedure wwDBGrid12TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid11TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowse_Loom2AfterScroll(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
    procedure InitializeCEF;

    procedure ProsesPCSLOOM;    // loom pcs
    procedure ProsesPERSENLOOM; // loom %

    procedure ProsesPCSKP;      // kp pcs
    procedure ProsesPERSENKP;   // kp %

    // print
    procedure PrintLoomPPCSarungPersen;
  public
    { Public declarations }
  end;

var
  DefectReinspectFrm: TDefectReinspectFrm;
  FHTMLToLoad: string;

implementation

uses DM, Math, FinishOpening, FinishShearing, TerimaDrInspecting,
  TerimaDrFinishing;

{$R *.dfm}

procedure TDefectReinspectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDrInspectingFrm:=Nil;
end;

procedure TDefectReinspectFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TDefectReinspectFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TDefectReinspectFrm.FormCreate(Sender: TObject);
begin

  QTransaksi.SetVariable('kd_transaksi','R05');
  QTransaksi.Open;
  TerimaDrFinishingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
  QMaster.Open;
  QDetail.Open;
end;

procedure TDefectReinspectFrm.InitializeCEF;
begin

end;

procedure TDefectReinspectFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TDefectReinspectFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TDefectReinspectFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
   //   QMasterNO_BUKTI.AsString:=QDetailNO_BUKTI.AsString;
  end;

 
end;

procedure TDefectReinspectFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
   if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    Abort;
  end;

end;

procedure TDefectReinspectFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TDefectReinspectFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TDefectReinspectFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
//QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
//QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
//QDetailKD_SUB_LOKASI.AsString:='71-10000';

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TDefectReinspectFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TDefectReinspectFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TDefectReinspectFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  //QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TDefectReinspectFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TDefectReinspectFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TDefectReinspectFrm.cbOtomatisClick(Sender: TObject);
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

procedure TDefectReinspectFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TDefectReinspectFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TDefectReinspectFrm.cbTanggalClick(Sender: TObject);
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

procedure TDefectReinspectFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
if RNota.ItemIndex = 0 then
begin
wwDBGrid1xxxxx.BringToFront;
QBrowse.Open;
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1xxxxx.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1xxxxx.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1xxxxx.Columns[i].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1xxxxx.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1xxxxx.Columns[i].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
         else
           vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1xxxxx.Columns[0].FieldName
      else
        vorder:=' order by no_nota';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter);
  QBrowse.Open;
  QBrowse.EnableControls;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('TOT_DEFECT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalTOT_DEFECT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBS_PARAH.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY.AsFloat);
 // wwDBGrid1xxxxx.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalGULUNG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_TERIMA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_TERIMA.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PENYESUAIAN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPENYESUAIAN.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('AFFAL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalAFFAL.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('LD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalLD.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('LT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalLT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('LPT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalLPT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('LRG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalLRG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('WL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalWL.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('FLO').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalFLO.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('NEPS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalNEPS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PP').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPP.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('WP').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalWP.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('OJ').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalOJ.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('CRT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalCRT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BTS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBTS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BTB').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBTB.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('SC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalSC.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('SLL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalSLL.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('CK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalCK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('CAJ').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalCAJ.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KTR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKTR.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PDK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPDK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KPR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKPR.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('MC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMC.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BOSK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBOSK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BO').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBO.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('FC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalFC.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('HK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalHK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('WM').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalWM.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('WK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalWK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_SAMAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_SAMAR.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_RUSAK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_RUSAK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_BELANG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_BELANG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_OUIT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_OUIT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('E_STEAMER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalE_STEAMER.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('E_PRINT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalE_PRINT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('E_STAMPING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalE_STAMPING.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('SBK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalSBK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('UTS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalUTS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KNB').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKNB.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('E_STAMPING2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalE_STAMPING2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_BELANG2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_BELANG2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('M_RUSAK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalM_RUSAK2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KTS2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKTS2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('TK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalTK2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('WK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalWK2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('AFL_PRINT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalAFL_PRINT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('AFL_NDAK_CABOT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalAFL_NDAK_CABOT.AsFloat);
end
else
begin
wwDBGrid4.BringToFront;
QBrowse4.Open;
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse4.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid4.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse4.FieldByName(wwDBGrid4.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid4.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid4.Columns[i].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid4.Columns[i].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
         else
           vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse4.Active then
      vorder:=' order by '+wwDBGrid4.Columns[0].FieldName
      else
        vorder:=' order by no_nota';

  end;
  QBrowse4.DisableControls;
  QBrowse4.Close;
  QBrowse4.SetVariable('myparam',vfilter);
  QBrowse4.Open;
  QBrowse4.EnableControls;
  QBrowse4Total.Close;
  QBrowse4Total.SetVariable('myparam',vfilter);
  QBrowse4Total.Open;
  QBrowse4.EnableControls;
  wwDBGrid4.ColumnByName('TOT_DEFECT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalTOT_DEFECT.AsFloat);
  wwDBGrid4.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBS_PARAH.AsFloat);
  wwDBGrid4.ColumnByName('BK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBK.AsFloat);
  wwDBGrid4.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalQTY.AsFloat);
 // wwDBGrid1xxxxx.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalGULUNG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_TERIMA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalQTY_TERIMA.AsFloat);
  wwDBGrid4.ColumnByName('PENYESUAIAN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalPENYESUAIAN.AsFloat);
  wwDBGrid4.ColumnByName('LD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalLD.AsFloat);
  wwDBGrid4.ColumnByName('LT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalLT.AsFloat);
  wwDBGrid4.ColumnByName('LPT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalLPT.AsFloat);
  wwDBGrid4.ColumnByName('LRG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalLRG.AsFloat);
  wwDBGrid4.ColumnByName('WL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalWL.AsFloat);
  wwDBGrid4.ColumnByName('FLO').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalFLO.AsFloat);
  wwDBGrid4.ColumnByName('NEPS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalNEPS.AsFloat);
  wwDBGrid4.ColumnByName('PP').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalPP.AsFloat);
  wwDBGrid4.ColumnByName('WP').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalWP.AsFloat);
  wwDBGrid4.ColumnByName('OJ').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalOJ.AsFloat);
  wwDBGrid4.ColumnByName('CRT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalCRT.AsFloat);
  wwDBGrid4.ColumnByName('BTS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBTS.AsFloat);
  wwDBGrid4.ColumnByName('BTB').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBTB.AsFloat);
  wwDBGrid4.ColumnByName('SC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalSC.AsFloat);
  wwDBGrid4.ColumnByName('SLL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalSLL.AsFloat);
  wwDBGrid4.ColumnByName('CK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalCK.AsFloat);
  wwDBGrid4.ColumnByName('CAJ').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalCAJ.AsFloat);
  wwDBGrid4.ColumnByName('KTR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalKTR.AsFloat);
  wwDBGrid4.ColumnByName('PDK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalPDK.AsFloat);
  wwDBGrid4.ColumnByName('KPR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalKPR.AsFloat);
  wwDBGrid4.ColumnByName('MC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalMC.AsFloat);
  wwDBGrid4.ColumnByName('BOSK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBOSK.AsFloat);
  wwDBGrid4.ColumnByName('KS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalKS.AsFloat);
  wwDBGrid4.ColumnByName('BO').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalBO.AsFloat);
  wwDBGrid4.ColumnByName('FC').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalFC.AsFloat);
  wwDBGrid4.ColumnByName('HK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalHK.AsFloat);
  wwDBGrid4.ColumnByName('WM').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalWM.AsFloat);
  wwDBGrid4.ColumnByName('WK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalWK.AsFloat);
  wwDBGrid4.ColumnByName('M_SAMAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_SAMAR.AsFloat);
  wwDBGrid4.ColumnByName('M_RUSAK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_RUSAK.AsFloat);
  wwDBGrid4.ColumnByName('M_BELANG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_BELANG.AsFloat);
  wwDBGrid4.ColumnByName('M_OUIT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_OUIT.AsFloat);
  wwDBGrid4.ColumnByName('E_STEAMER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalE_STEAMER.AsFloat);
  wwDBGrid4.ColumnByName('E_PRINT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalE_PRINT.AsFloat);
  wwDBGrid4.ColumnByName('E_STAMPING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalE_STAMPING.AsFloat);
  wwDBGrid4.ColumnByName('SBK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalSBK.AsFloat);
  wwDBGrid4.ColumnByName('UTS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalUTS.AsFloat);
  wwDBGrid4.ColumnByName('KNB').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalKNB.AsFloat);
  wwDBGrid4.ColumnByName('E_STAMPING2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalE_STAMPING2.AsFloat);
  wwDBGrid4.ColumnByName('M_BELANG2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_BELANG2.AsFloat);
  wwDBGrid4.ColumnByName('M_RUSAK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalM_RUSAK2.AsFloat);
  wwDBGrid4.ColumnByName('KTS2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalKTS2.AsFloat);
  wwDBGrid4.ColumnByName('TK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalTK2.AsFloat);
  wwDBGrid4.ColumnByName('WK2').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalWK2.AsFloat);
  wwDBGrid4.ColumnByName('METER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalMETER.AsFloat);
  wwDBGrid4.ColumnByName('HASIL_METER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalHASIL_METER.AsFloat);
  wwDBGrid4.ColumnByName('AFL_PRINT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalAFL_PRINT.AsFloat);
  wwDBGrid4.ColumnByName('AFL_NDAK_CABOT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowse4TotalAFL_NDAK_CABOT.AsFloat);

end;

end;

procedure TDefectReinspectFrm.BtnExportClick(Sender: TObject);
begin
if RNota.ItemIndex = 0 then
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
end
else
begin
if QBrowse4.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='Hasil Reinspect MITRA';
             wwDBGrid4.ExportOptions.TitleName:='Hasil Reinspect MITRA';
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
end;

procedure TDefectReinspectFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TDefectReinspectFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QTransaksi.Close;
         if RNota.ItemIndex = 0 then
         begin
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsString);
         QTransaksi.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsString);
         wwDBGrid1.BringToFront;
         end
         else
         begin
         QMaster.SetVariable('no_nota',QBrowse4NO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowse4NO_REG.AsInteger);
         QMaster.SetVariable('kd_transaksi',QBrowse4KD_TRANSAKSI.AsString);
         QTransaksi.SetVariable('kd_transaksi',QBrowse4KD_TRANSAKSI.AsString);
         wwDBGrid3.BringToFront;
         end;
         QMaster.Open;
         QTransaksi.Open;
         QDetail.Close;
         QDetail.Open;
         QLookDef.Close;
         QLookDef.Open;
         LookProses.Enabled:=false;

         wwDBGrid1UpdateFooter(nil);
end;

procedure TDefectReinspectFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_TERIMA').FooterValue:=FormatFloat('#.#,#',QTotalQTY_TERIMA.AsFloat);
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalQTY.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TDefectReinspectFrm.FormShow(Sender: TObject);
begin

{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());
{azmi}
end;

procedure TDefectReinspectFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TDefectReinspectFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TDefectReinspectFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TDefectReinspectFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
   // QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TDefectReinspectFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TDefectReinspectFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TDefectReinspectFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TDefectReinspectFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TDefectReinspectFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:='R05';
QMasterSTATUS.AsString:='IN';
QMasterGRUP.AsString:='E';
QMasterSHIFT.AsString:='0';
QMasterISPOST.AsString:='0';
QMasterNO_KONTRAK.AsString:='';
LookProses.Enabled:=true;
end;

procedure TDefectReinspectFrm.BitBtn4Click(Sender: TObject);
begin
if LookProses.Text='SARUNG' then
begin
  QMaster.Edit;
  QMaster.Post;
  QAmbilData.Close;
  QAmbilData.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QAmbilData.SetVariable('no_order',ECari_Order.Text);
  QAmbilData.Execute;
  QDetail.Close;
  QDetail.Open;
  LookProses.Enabled:=false;
end
else if LookProses.Text='PRINTING' then
begin
QMaster.Edit;
  QMaster.Post;
  QAmbilData1.Close;
  QAmbilData1.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QAmbilData1.SetVariable('no_order',ECari_Order.Text);
  QAmbilData1.Execute;
  QDetail.Close;
  QDetail.Open;
  LookProses.Enabled:=false;
end
else if LookProses.Text='SARUNG MITRA' then
begin
QMaster.Edit;
  QMaster.Post;
  QAmbilData2.Close;
  QAmbilData2.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QAmbilData2.SetVariable('no_order',ECari_Order.Text);
  QAmbilData2.Execute;
  QDetail.Close;
  QDetail.Open;
  LookProses.Enabled:=false;
end
else if LookProses.Text='PRINTING MITRA' then
begin
QMaster.Edit;
  QMaster.Post;
  QAmbilData3.Close;
  QAmbilData3.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QAmbilData3.SetVariable('no_order',ECari_Order.Text);
  QAmbilData3.Execute;
  QDetail.Close;
  QDetail.Open;
  LookProses.Enabled:=false;
end
else
showmessage('pilih ra proses e ..  . !!');
end;

procedure TDefectReinspectFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TDefectReinspectFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TDefectReinspectFrm.LookOrderEnter(Sender: TObject);
begin
QLookOrder.Close;
QLookOrder.Open;
end;

procedure TDefectReinspectFrm.LookOrderCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
QDetailKODE_PROD.AsString:=QLookOrderKP.AsString;
QDetailKD_KONSTRUKSI.AsString:=QLookOrderKD_KONSTRUKSI.AsString;
QDetailKONSTRUKSI.AsString:=QLookOrderKONSTRUKSI.AsString;
QDetailMESIN_TENUN.AsString:=QLookOrderMESIN.AsString;
QDetailQTY_LALU.AsString:=QLookOrderQTY.AsString;
end;


procedure TDefectReinspectFrm.VTglAwal2Change(Sender: TObject);
begin
vTglAkhir2.Date:=(VTglAwal2.Date);
end;

procedure TDefectReinspectFrm.vTglAkhir2Change(Sender: TObject);
begin
if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TDefectReinspectFrm.cbOtomatis2Click(Sender: TObject);
begin
if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;

procedure TDefectReinspectFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse2.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid2.Columns[i].FieldName);

end;

procedure TDefectReinspectFrm.vOperand2Click(Sender: TObject);
begin
if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TDefectReinspectFrm.cbTanggal2Click(Sender: TObject);
begin
if cbTanggal2.Checked then
  begin
    VTglAwal2.Enabled:=cbTanggal2.Checked;
    vTglAkhir2.Enabled:=cbTanggal2.Checked;
    VTglAwal2.SetFocus;
  end
  else
    ECari2.SetFocus;
end;

procedure TDefectReinspectFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
if (RadioGroup2.ItemIndex = 0) or (RadioGroup2.ItemIndex = 1) then
begin
wwDBGrid2.BringToFront;
QBrowse_rekap.Close;
if RadioGroup3.ItemIndex = 0 then
  QBrowse_rekap.SetVariable('tgl','b.tgl')
  else
  QBrowse_rekap.SetVariable('tgl','a.tgl');
QBrowse_rekap.Open;
  vpertama:=True;
//  if cbTanggal2.Checked then
//    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
 // else
    vfilter:=' where (';
  if (QBrowse_rekap.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_rekap.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' = '''+ECari2.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' = '''+ECari2.Text+''''
        end;
      end;
    end
    else
      if vOperand2.Caption='LIKE' then
         vfilter:=vfilter+dbcField2.Text+' like ''%'+ECari2.Text+'%'''
         else
           vfilter:=vfilter+dbcField2.Text+' = '''+ECari2.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_rekap.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by no_order';

  end;
  QBrowse_rekap.DisableControls;
  QBrowse_rekap.Close;
  QBrowse_rekap.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap.SetVariable('pawal',VTglAwal2.Date);
  QBrowse_rekap.SetVariable('pakhir',vTglAkhir2.Date);

  if RadioGroup2.ItemIndex = 0 then
  QBrowse_rekap.SetVariable('kd_transaksi','R05')
  else
  QBrowse_rekap.SetVariable('kd_transaksi','R06');

  QBrowse_rekap.Open;
  QBrowse_rekap.EnableControls;

  QBrowse_rekap_tot.Close;
  QBrowse_rekap_tot.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap_tot.SetVariable('pawal',VTglAwal2.Date);
  QBrowse_rekap_tot.SetVariable('pakhir',vTglAkhir2.Date);

  if RadioGroup2.ItemIndex = 0 then
  QBrowse_rekap_tot.SetVariable('kd_transaksi','R05')
  else
  QBrowse_rekap_tot.SetVariable('kd_transaksi','R06');

  if RadioGroup3.ItemIndex = 0 then
  QBrowse_rekap_tot.SetVariable('tgl','b.tgl')
  else
  QBrowse_rekap_tot.SetVariable('tgl','a.tgl');

  QBrowse_rekap_tot.Open;

  wwDBGrid2.ColumnByName('TERIMA').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totTERIMA.AsFloat);
  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totHASIL_PROSES.AsFloat);
  wwDBGrid2.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totBK.AsFloat);
  wwDBGrid2.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totBS_PARAH.AsFloat);
  wwDBGrid2.ColumnByName('TOT_DEFECT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totTOT_DEFECT.AsFloat);
  wwDBGrid2.ColumnByName('PENYESUAIAN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totPENYESUAIAN.AsFloat);
  wwDBGrid2.ColumnByName('AFL_NDAK_CABOT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totAFL_NDAK_CABOT.AsFloat);
  wwDBGrid2.ColumnByName('AFL_PRINT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap_totAFL_PRINT.AsFloat);
end
else
begin
wwDBGrid5.BringToFront;
QBrowse_rekap.Close;
if RadioGroup3.ItemIndex = 0 then
  QBrowse_rekap2.SetVariable('tgl','b.tgl')
  else
  QBrowse_rekap2.SetVariable('tgl','a.tgl');
QBrowse_rekap2.Open;
  vpertama:=True;
//  if cbTanggal2.Checked then
//    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
 // else
    vfilter:=' where (';
  if (QBrowse_rekap2.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid5.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_rekap2.FieldByName(wwDBGrid5.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TGL') and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TOT_B1') and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TOT_B2') then
        begin
          if vpertama then
            begin
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' = '''+ECari2.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' = '''+ECari2.Text+''''
        end;
      end;
    end
    else
      if vOperand2.Caption='LIKE' then
         vfilter:=vfilter+dbcField2.Text+' like ''%'+ECari2.Text+'%'''
         else
           vfilter:=vfilter+dbcField2.Text+' = '''+ECari2.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_rekap2.Active then
      vorder:=' order by '+wwDBGrid5.Columns[0].FieldName
      else
        vorder:=' order by no_order';

  end;
  QBrowse_rekap2.DisableControls;
  QBrowse_rekap2.Close;
  QBrowse_rekap2.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap2.SetVariable('pawal',VTglAwal2.Date);
  QBrowse_rekap2.SetVariable('pakhir',vTglAkhir2.Date);

  if RadioGroup2.ItemIndex = 2 then
  QBrowse_rekap2.SetVariable('kd_transaksi','R15')
  else
  QBrowse_rekap2.SetVariable('kd_transaksi','R16');

  QBrowse_rekap2.Open;
  QBrowse_rekap2.EnableControls;

  QBrowse_rekap2_tot.Close;
  QBrowse_rekap2_tot.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap2_tot.SetVariable('pawal',VTglAwal2.Date);
  QBrowse_rekap2_tot.SetVariable('pakhir',vTglAkhir2.Date);

  if RadioGroup2.ItemIndex = 2 then
  QBrowse_rekap2_tot.SetVariable('kd_transaksi','R15')
  else
  QBrowse_rekap2_tot.SetVariable('kd_transaksi','R16');

  if RadioGroup3.ItemIndex = 0 then
  QBrowse_rekap2_tot.SetVariable('tgl','b.tgl')
  else
  QBrowse_rekap2_tot.SetVariable('tgl','a.tgl');

  QBrowse_rekap2_tot.Open;

  wwDBGrid5.ColumnByName('QTY_TERIMA').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totQTY_TERIMA.AsFloat);
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totQTY.AsFloat);
  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totBK.AsFloat);
  wwDBGrid5.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totBS_PARAH.AsFloat);
  wwDBGrid5.ColumnByName('TOT_B1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totTOT_B1.AsFloat);
  wwDBGrid5.ColumnByName('TOT_B2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totTOT_B2.AsFloat);
  wwDBGrid5.ColumnByName('AFL_PRINT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totAFL_PRINT.AsFloat);
  wwDBGrid5.ColumnByName('AFL_NDAK_CABOT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totAFL_NDAK_CABOT.AsFloat);
  wwDBGrid5.ColumnByName('PENYESUAIAN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap2_totPENYESUAIAN.AsFloat);

end;
end;

procedure TDefectReinspectFrm.BitBtn6Click(Sender: TObject);
begin
if (RadioGroup2.ItemIndex = 0) or (RadioGroup2.ItemIndex = 1) then
begin
if QBrowse_rekap.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect dalam';
             wwDBGrid2.ExportOptions.TitleName:='Rekap Hasil Reinspect dalam';
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
end
else
begin
if QBrowse_rekap2.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect mitra';
             wwDBGrid5.ExportOptions.TitleName:='Rekap Hasil Reinspect mitra';
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

end;

procedure TDefectReinspectFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
// Label19.Caption:='Record ke '+IntToStr(QBrowse_Loom2.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Loom2.RecordCount)+' Records';
end;

procedure TDefectReinspectFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TDefectReinspectFrm.LookProsesChange(Sender: TObject);
begin
QTransaksi.Close;
if LookProses.Text='SARUNG' then
QTransaksi.SetVariable('kd_transaksi','R05')
else
QTransaksi.SetVariable('kd_transaksi','R06');
QTransaksi.Open;
end;

procedure TDefectReinspectFrm.LookProsesCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
  QTransaksi.Close;
  
  if LookProses.Text = 'SARUNG' then
  begin
    QTransaksi.SetVariable('kd_transaksi', 'R05');
    QMasterKD_TRANSAKSI.AsString := 'R05';
    wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := True;
    wwDBGrid1.BringToFront;
  end
  else if LookProses.Text = 'PRINTING' then
  begin
    QTransaksi.SetVariable('kd_transaksi', 'R06');
    QMasterKD_TRANSAKSI.AsString := 'R06';
    wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := False;
    wwDBGrid1.BringToFront;
  end
  else if LookProses.Text = 'SARUNG MITRA' then
  begin
    QTransaksi.SetVariable('kd_transaksi', 'R15');
    QMasterKD_TRANSAKSI.AsString := 'R15';
    wwDBGrid3.ColumnByName('NO_DESAIN').ReadOnly := True;
    wwDBGrid3.BringToFront;
  end
  else
  begin
    QTransaksi.SetVariable('kd_transaksi', 'R16');
    QMasterKD_TRANSAKSI.AsString := 'R16';
    wwDBGrid3.ColumnByName('NO_DESAIN').ReadOnly := True;
    wwDBGrid3.BringToFront;
  end;
  
  QTransaksi.Open;
end;


procedure TDefectReinspectFrm.QLookOrderBeforeOpen(DataSet: TDataSet);
begin
{if LookProses.Text = 'SARUNG' then
  QLookOrder.SetVariable('mytabel','ipisma_db5.vsisa_order_terima_finish')
else}
  QLookOrder.SetVariable('mytabel','ipisma_db5.vsisa_order_terima_printing')
  
end;

procedure TDefectReinspectFrm.QDetailBeforeInsert(DataSet: TDataSet);
begin
{
QCekOrder.Close;
QCekOrder.SetVariable('no_reg',QDetailNO_REG.AsInteger);
QCekOrder.SetVariable('no_order',QDetailNO_DESAIN.AsString);
QCekOrder.SetVariable('kp',QDetailKODE_PROD.AsString);
QCekOrder.SetVariable('kd_kons',QDetailKD_KONSTRUKSI.AsString);
QCekOrder.SetVariable('mesin',QDetailMESIN_TENUN.AsString);
QCekOrder.SetVariable('mutu',QDetailJENIS.AsString);
QCekOrder.Open;

if QCekOrderCON.AsInteger > 1 then
  begin
  showmessage('Data Tidak Boleh Sama');
  Abort;
  end;   }
end;

procedure TDefectReinspectFrm.LookMutuCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
if lookMutu.Text='B2' then
  QDetailQTY.AsFloat:=0;
end;

procedure TDefectReinspectFrm.QBrowse2CalcFields(DataSet: TDataSet);
begin
QBrowse2BK_MULUS.AsFloat:= QBrowse2HASIL_PROSES.AsFloat- QBrowse2DEFECT.AsFloat;
  {QBrowse2B1_LD.AsFloat-QBrowse2B1_LT.AsFloat-QBrowse2B1_LPT.AsFloat-
QBrowse2B1_LRG.AsFloat-QBrowse2B1_WL.AsFloat-QBrowse2B1_FLO.AsFloat-
QBrowse2B1_NEPS.AsFloat-QBrowse2B1_PP.AsFloat-QBrowse2B1_WP.AsFloat-
QBrowse2B1_OJ.AsFloat-QBrowse2B1_CRT.AsFloat-QBrowse2B1_BTS.AsFloat-
QBrowse2B1_BTB.AsFloat-QBrowse2B1_SC.AsFloat-QBrowse2B1_SLL.AsFloat-
QBrowse2B1_CK.AsFloat-QBrowse2B1_CAJ.AsFloat-QBrowse2B1_KTR.AsFloat-
QBrowse2B1_PDK.AsFloat-QBrowse2B1_KPR.AsFloat-QBrowse2B1_MC.AsFloat-
QBrowse2B1_BOSK.AsFloat-QBrowse2B1_KS.AsFloat-QBrowse2B1_BO.AsFloat-
QBrowse2B1_FC.AsFloat-QBrowse2B1_HK.AsFloat-QBrowse2B1_WM.AsFloat-
QBrowse2B2_LD.AsFloat-QBrowse2B2_LT.AsFloat-QBrowse2B2_LPT.AsFloat-
QBrowse2B2_LRG.AsFloat-QBrowse2B2_WL.AsFloat-QBrowse2B2_FLO.AsFloat-
QBrowse2B2_NEPS.AsFloat-QBrowse2B2_PP.AsFloat-QBrowse2B2_WP.AsFloat-
QBrowse2B2_OJ.AsFloat-QBrowse2B2_CRT.AsFloat-QBrowse2B2_BTS.AsFloat-
QBrowse2B2_BTB.AsFloat-QBrowse2B2_SC.AsFloat-QBrowse2B2_SLL.AsFloat-
QBrowse2B2_CK.AsFloat-QBrowse2B2_CAJ.AsFloat-QBrowse2B2_KTR.AsFloat-
QBrowse2B2_PDK.AsFloat-QBrowse2B2_KPR.AsFloat-QBrowse2B2_MC.AsFloat-
QBrowse2B2_BOSK.AsFloat-QBrowse2B2_KS.AsFloat-QBrowse2B2_BO.AsFloat-
QBrowse2B2_FC.AsFloat-QBrowse2B2_HK.AsFloat-QBrowse2B2_WM.AsFloat-
QBrowse2M_SAMAR.AsFloat-QBrowse2M_RUSAK.AsFloat-QBrowse2M_BELANG.AsFloat-
QBrowse2M_OUIT.AsFloat-QBrowse2E_STEAMER.AsFloat-QBrowse2E_PRINT.AsFloat-
QBrowse2E_STAMPING.AsFloat-QBrowse2SBK.AsFloat-QBrowse2UTS.AsFloat-QBrowse2KNB.AsFloat};




end;

procedure TDefectReinspectFrm.QDetailAfterPost(DataSet: TDataSet);
var
  Bookmark: TBookmark;
begin
  // Simpan posisi baris saat ini
  Bookmark := QDetail.GetBookmark;
  try
    // Lakukan Refresh
    QDetail.Refresh;

    // Kembalikan ke posisi sebelumnya
    if QDetail.BookmarkValid(Bookmark) then
      QDetail.GotoBookmark(Bookmark);
  finally
    QDetail.FreeBookmark(Bookmark);
  end;
end;

procedure TDefectReinspectFrm.LookOperatorEnter(Sender: TObject);
begin
Qoperator.Close;
Qoperator.Open;
end;

procedure TDefectReinspectFrm.LookOperatorCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  QMasterOPERATOR.AsString:=QoperatorNAMA.AsString;
end;

procedure TDefectReinspectFrm.wwDBGrid3UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid3.ColumnByName('QTY_TERIMA').FooterValue:=FormatFloat('#.#,#',QTotalQTY_TERIMA.AsFloat);
  wwDBGrid3.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalQTY.AsFloat);
  wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QTotalQTY2.AsFloat);

end;

procedure TDefectReinspectFrm.wwDBGrid4Enter(Sender: TObject);
begin
If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TDefectReinspectFrm.QBrowse4AfterScroll(DataSet: TDataSet);
begin
LabelBanner.Caption:='Record ke '+IntToStr(QBrowse4.RecNo)+' dari '+FormatFloat('#,#',QBrowse4.RecordCount)+' Records';
end;

procedure TDefectReinspectFrm.LookLoomCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QDetailNO_MESIN.AsString:=QLookLoomLOOM.AsString;
  end;
end;

procedure TDefectReinspectFrm.LookLoomEnter(Sender: TObject);
begin
  QLookLoom.Close;
  QLookLoom.Open;
end;

procedure TDefectReinspectFrm.freezeClick(Sender: TObject);
begin
if freeze.Checked then
  if (QMasterKD_TRANSAKSI.AsString = 'R05') or (QMasterKD_TRANSAKSI.AsString = 'R06') then
  wwDBGrid6.BringToFront
  else
  wwDBGrid7.BringToFront
else
  if (QMasterKD_TRANSAKSI.AsString = 'R05') or (QMasterKD_TRANSAKSI.AsString = 'R06') then
  wwDBGrid1.BringToFront
  else
  wwDBGrid3.BringToFront;
end;

procedure TDefectReinspectFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TDefectReinspectFrm.vTglAkhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TDefectReinspectFrm.cbOtomatis3Click(Sender: TObject);
begin
if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid8.Options:=wwDBGrid8.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid8.Options:=wwDBGrid8.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TDefectReinspectFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_rekap3.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid8.FieldCount-1 do
    if UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TANGGAL' then
      dbcField3.Items.Add(wwDBGrid8.Columns[i].FieldName);

end;

procedure TDefectReinspectFrm.vOperand3Click(Sender: TObject);
begin
if vOperand3.Caption='LIKE' then
    vOperand3.Caption:='='
    else
      vOperand3.Caption:='LIKE';
end;

procedure TDefectReinspectFrm.cbTanggal3Click(Sender: TObject);
begin
if cbTanggal3.Checked then
  begin
    VTglAwal3.Enabled:=cbTanggal3.Checked;
    vTglAkhir3.Enabled:=cbTanggal3.Checked;
    VTglAwal3.SetFocus;
  end
  else
    ECari3.SetFocus;
end;

procedure TDefectReinspectFrm.BitBtn7Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
QBrowse_rekap3.Open;
  vpertama:=True;
  if cbTanggal3.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal3.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir3.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_rekap3.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid8.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_rekap3.FieldByName(wwDBGrid8.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TANGGAL') and (UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TOTAL') then
        begin
          if vpertama then
            begin
              if vOperand3.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand3.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand3.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_rekap3.Active then
      vorder:=' order by '+wwDBGrid8.Columns[0].FieldName
      else
        vorder:=' order by kp';

  end;
  QBrowse_rekap3.DisableControls;
  QBrowse_rekap3.Close;
  QBrowse_rekap3.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap3.Open;
  QBrowse_rekap3.EnableControls;

  QBrowse_rekap3_tot.Close;
  QBrowse_rekap3_tot.SetVariable('myparam',vfilter+vorder);
  QBrowse_rekap3_tot.Open;

  wwDBGrid8.ColumnByName('DS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap3_totDS.AsFloat);
  wwDBGrid8.ColumnByName('SIF1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap3_totSIF1.AsFloat);
  wwDBGrid8.ColumnByName('SIF2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap3_totSIF2.AsFloat);
  wwDBGrid8.ColumnByName('SIF3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap3_totSIF3.AsFloat);
  wwDBGrid8.ColumnByName('TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowse_rekap3_totTOTAL.AsFloat);
end;

procedure TDefectReinspectFrm.LookKP2Enter(Sender: TObject);
begin
DMfrm.QLookKdProduksi.Open;
end;

procedure TDefectReinspectFrm.BitBtn8Click(Sender: TObject);
begin
if QBrowse_rekap3.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect Per SHIFT';
             wwDBGrid8.ExportOptions.TitleName:='Rekap Hasil Reinspect Per SHIFT';
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid8.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid8.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TDefectReinspectFrm.LookMitraEnter(Sender: TObject);
begin
QLookMitra.Close;
QLookMitra.Open;
end;

procedure TDefectReinspectFrm.VTglAwal4Change(Sender: TObject);
begin
vTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TDefectReinspectFrm.vTglAkhir4Change(Sender: TObject);
begin
if VTglAwal4.Date>vTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TDefectReinspectFrm.cbOtomatis4Click(Sender: TObject);
begin
if cbOtomatis4.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid9.Options:=wwDBGrid9.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid9.Options:=wwDBGrid9.Options-[dgAlwaysShowSelection];
  ECari4.SetFocus;
end;

procedure TDefectReinspectFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_rekap4.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid9.FieldCount-1 do
    if UpperCase(wwDBGrid9.Columns[i].FieldName)<>'TANGGAL' then
      dbcField4.Items.Add(wwDBGrid9.Columns[i].FieldName);

end;

procedure TDefectReinspectFrm.vOperand4Click(Sender: TObject);
begin
if vOperand4.Caption='LIKE' then
    vOperand4.Caption:='='
    else
      vOperand4.Caption:='LIKE';
end;

procedure TDefectReinspectFrm.cbTanggal4Click(Sender: TObject);
begin
if cbTanggal4.Checked then
  begin
    VTglAwal4.Enabled:=cbTanggal4.Checked;
    vTglAkhir4.Enabled:=cbTanggal4.Checked;
    VTglAwal4.SetFocus;
  end
  else
    ECari4.SetFocus;
end;

// ------------------------------------------------------KP PCS----------------------------------------------------------------
procedure TDefectReinspectFrm.ProsesPCSKP;
var
  i: Word;
  vpertama: Boolean;
  brg, jns: String;
begin
  if RadioGroup4.ItemIndex = 0 then
  begin
    brg := 'SARUNG';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 1 then
  begin
    brg := 'PRINTING';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 2 then
  begin
    brg := 'SARUNG';
    jns := 'B2';
  end
  else
  begin
    brg := 'PRINTING';
    jns := 'B2';
  end;

  QLoom3.Close;
  QLoom3.SetVariable('pawal', VTglAwal4.Date);
  QLoom3.SetVariable('pakhir', vTglAkhir4.Date);
  QLoom3.SetVariable('pjenis', jns);
  QLoom3.SetVariable('pbarang', brg);
  QLoom3.Execute;

  QBrowse_Loom3.Open;
  vpertama := True;

  if cbTanggal4.Checked then
    vfilter := ' where (';

  if (QBrowse_Loom3.FieldCount >= 1) then
  begin
    if dbcField4.ItemIndex = 0 then
    begin
      for i := 0 to wwDBGrid10.Selected.Count - 1 do
      begin
        if (QBrowse_Loom3.FieldByName(wwDBGrid10.Columns[i].FieldName).FieldKind = fkData) and
           (UpperCase(wwDBGrid10.Columns[i].FieldName) <> 'TANGGAL') and
           (UpperCase(wwDBGrid10.Columns[i].FieldName) <> 'TOTAL') then
        begin
          if vpertama then
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + wwDBGrid10.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + wwDBGrid10.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
            vpertama := False;
          end
          else
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + ' or ' + wwDBGrid10.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + ' or ' + wwDBGrid10.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
          end;
        end;
      end;
    end
    else
    begin
      if vOperand4.Caption = 'LIKE' then
        vfilter := vfilter + dbcField4.Text + ' like ''%' + ECari4.Text + '%'''
      else
        vfilter := vfilter + dbcField4.Text + ' = ''' + ECari4.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse_Loom3.Active then
      vorder := ' order by ' + wwDBGrid10.Columns[0].FieldName
    else
      vorder := ' order by loom';
  end;

  QBrowse_Loom3.DisableControls;
  QBrowse_Loom3.Close;
  QBrowse_Loom3.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom3.Open;
  QBrowse_Loom3.EnableControls;

  QBrowse_Loom3_tot.Close;
  QBrowse_Loom3_tot.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom3_tot.Open;

  wwDBGrid10.ColumnByName('HSL_PROD').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom3_totHSL_PROD.AsFloat);
  wwDBGrid10.ColumnByName('BK').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom3_totBK.AsFloat);
  wwDBGrid10.ColumnByName('P_BK').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom3_totBK.AsFloat/QBrowse_Loom3_totHSL_PROD.AsFloat)*100);
  wwDBGrid10.ColumnByName('B1').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom3_totB1.AsFloat);
  wwDBGrid10.ColumnByName('P_B1').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom3_totB1.AsFloat/QBrowse_Loom3_totHSL_PROD.AsFloat)*100);
  wwDBGrid10.ColumnByName('B2').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom3_totB2.AsFloat);
  wwDBGrid10.ColumnByName('P_B2').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom3_totB2.AsFloat/QBrowse_Loom3_totHSL_PROD.AsFloat)*100);
  wwDBGrid10.ColumnByName('BS_PARAH').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom3_totBS_PARAH.AsFloat);
  wwDBGrid10.ColumnByName('P_BS_PARAH').FooterValue    := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom3_totBS_PARAH.AsFloat/QBrowse_Loom3_totHSL_PROD.AsFloat)*100);

  wwDBGrid10.ColumnByName('LD').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totLD.AsFloat);
  wwDBGrid10.ColumnByName('LT').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totLT.AsFloat);
  wwDBGrid10.ColumnByName('LPT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totLPT.AsFloat);
  wwDBGrid10.ColumnByName('LRG').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totLRG.AsFloat);
  wwDBGrid10.ColumnByName('WL').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totWL.AsFloat);
  wwDBGrid10.ColumnByName('FLO').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totFLO.AsFloat);
  wwDBGrid10.ColumnByName('NEPS').FooterValue        := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totNEPS.AsFloat);
  wwDBGrid10.ColumnByName('PP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totPP.AsFloat);
  wwDBGrid10.ColumnByName('WP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totWP.AsFloat);
  wwDBGrid10.ColumnByName('OJ').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totOJ.AsFloat);
  wwDBGrid10.ColumnByName('CRT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totCRT.AsFloat);
  wwDBGrid10.ColumnByName('BTS').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totBTS.AsFloat);
  wwDBGrid10.ColumnByName('BTB').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totBTB.AsFloat);
  wwDBGrid10.ColumnByName('SC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totSC.AsFloat);
  wwDBGrid10.ColumnByName('SLL').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totSLL.AsFloat);
  wwDBGrid10.ColumnByName('CK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totCK.AsFloat);
  wwDBGrid10.ColumnByName('CAJ').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totCAJ.AsFloat);
  wwDBGrid10.ColumnByName('KTR').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totKTR.AsFloat);
  wwDBGrid10.ColumnByName('PDK').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totPDK.AsFloat);
  wwDBGrid10.ColumnByName('KP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totKP.AsFloat);
  wwDBGrid10.ColumnByName('MC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totMC.AsFloat);
  wwDBGrid10.ColumnByName('BOSK').FooterValue        := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totBOSK.AsFloat);
  wwDBGrid10.ColumnByName('KS').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totKS.AsFloat);
  wwDBGrid10.ColumnByName('BO').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totBO.AsFloat);
  wwDBGrid10.ColumnByName('FC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totFC.AsFloat);
  wwDBGrid10.ColumnByName('HK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totHK.AsFloat);
  wwDBGrid10.ColumnByName('WM').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totWM.AsFloat);
  wwDBGrid10.ColumnByName('WK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totWK.AsFloat);
  wwDBGrid10.ColumnByName('M_SAMAR').FooterValue     := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_SAMAR.AsFloat);
  wwDBGrid10.ColumnByName('M_RUSAK').FooterValue     := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_RUSAK.AsFloat);
  wwDBGrid10.ColumnByName('M_BELANG').FooterValue    := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_BELANG.AsFloat);
  wwDBGrid10.ColumnByName('M_OUIT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_OUIT.AsFloat);
  
  wwDBGrid10.ColumnByName('E_STEAMER').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totE_STEAMER.AsFloat);
  wwDBGrid10.ColumnByName('E_PRINT').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totE_PRINT.AsFloat);
  wwDBGrid10.ColumnByName('E_STAMPING').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totE_STAMPING.AsFloat);
  wwDBGrid10.ColumnByName('SBK').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totSBK.AsFloat);
  wwDBGrid10.ColumnByName('UTS').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totUTS.AsFloat);
  wwDBGrid10.ColumnByName('KNB').FooterValue   := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totKNB.AsFloat);

  wwDBGrid10.ColumnByName('E_STAMPING2').FooterValue := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totE_STAMPING2.AsFloat);
  wwDBGrid10.ColumnByName('M_BELANG2').FooterValue := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_BELANG2.AsFloat);
 // wwDBGrid10.ColumnByName('M_RUSAK2').FooterValue := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom3_totM_RUSAK2.AsFloat);
end;

// ------------------------------------------------------KP PERSEN----------------------------------------------------------------
procedure TDefectReinspectFrm.ProsesPERSENKP;
var
  i: Word;
  vpertama: Boolean;
  brg, jns: String;
begin
  if RadioGroup4.ItemIndex = 0 then
  begin
    brg := 'SARUNG';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 1 then
  begin
    brg := 'PRINTING';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 2 then
  begin
    brg := 'SARUNG';
    jns := 'B2';
  end
  else
  begin
    brg := 'PRINTING';
    jns := 'B2';
  end;

  QAmbilLoom.Close;
  QAmbilLoom.SetVariable('pawal', VTglAwal4.Date);
  QAmbilLoom.SetVariable('pakhir', vTglAkhir4.Date);
  QAmbilLoom.SetVariable('pjenis', jns);
  QAmbilLoom.SetVariable('pbarang', brg);
  QAmbilLoom.Execute;

  QBrowse_rekap4.Open;
  vpertama := True;

  if cbTanggal4.Checked then
    vfilter := ' where (';

  if (QBrowse_rekap4.FieldCount >= 1) then
  begin
    if dbcField4.ItemIndex = 0 then
    begin
      for i := 0 to wwDBGrid9.Selected.Count - 1 do
      begin
        if (QBrowse_rekap4.FieldByName(wwDBGrid9.Columns[i].FieldName).FieldKind = fkData) and
           (UpperCase(wwDBGrid9.Columns[i].FieldName) <> 'TANGGAL') and
           (UpperCase(wwDBGrid9.Columns[i].FieldName) <> 'TOTAL') then
        begin
          if vpertama then
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + wwDBGrid9.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + wwDBGrid9.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
            vpertama := False;
          end
          else
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + ' or ' + wwDBGrid9.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + ' or ' + wwDBGrid9.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
          end;
        end;
      end;
    end
    else
    begin
      if vOperand4.Caption = 'LIKE' then
        vfilter := vfilter + dbcField4.Text + ' like ''%' + ECari4.Text + '%'''
      else
        vfilter := vfilter + dbcField4.Text + ' = ''' + ECari4.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse_rekap4.Active then
      vorder := ' order by ' + wwDBGrid9.Columns[0].FieldName
    else
      vorder := ' order by loom';
  end;

  QBrowse_rekap4.DisableControls;
  QBrowse_rekap4.Close;
  QBrowse_rekap4.SetVariable('myparam', vfilter + vorder);
  QBrowse_rekap4.Open;
  QBrowse_rekap4.EnableControls;

  QBrowse_rekap4_tot.Close;
  QBrowse_rekap4_tot.SetVariable('myparam', vfilter + vorder);
  QBrowse_rekap4_tot.Open;

    wwDBGrid9.ColumnByName('HSL_PROD').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_rekap4_totHSL_PROD.AsFloat);
    wwDBGrid9.ColumnByName('BK').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_rekap4_totBK.AsFloat);
    wwDBGrid9.ColumnByName('P_BK').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_rekap4_totBK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('B1').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_rekap4_totB1.AsFloat);
    wwDBGrid9.ColumnByName('P_B1').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_rekap4_totB1.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('B2').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_rekap4_totB2.AsFloat);
    wwDBGrid9.ColumnByName('P_B2').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_rekap4_totB2.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('BS_PARAH').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_rekap4_totBS_PARAH.AsFloat);
    wwDBGrid9.ColumnByName('P_BS_PARAH').FooterValue    := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_rekap4_totBS_PARAH.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);

    wwDBGrid9.ColumnByName('P_LD').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totLD.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_LT').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totLT.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_LPT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totLPT.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_LRG').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totLRG.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_WL').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totWL.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_FLO').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totFLO.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_NEPS').FooterValue        := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totNEPS.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_PP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totPP.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_WP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totWP.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_OJ').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totOJ.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_CRT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totCRT.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_BTS').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totBTS.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_BTB').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totBTB.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_SC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totSC.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_SLL').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totSLL.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_CK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totCK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_CAJ').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totCAJ.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_KTR').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totKTR.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_PDK').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totPDK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_KP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totKP.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_MC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totMC.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_BOSK').FooterValue        := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totBOSK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_KS').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totKS.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_BO').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totBO.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_FC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totFC.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_HK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totHK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_WM').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totWM.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_WK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totWK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_M_SAMAR').FooterValue     := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_SAMAR.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_M_RUSAK').FooterValue     := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_RUSAK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_M_BELANG').FooterValue    := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_BELANG.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_M_OUIT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_OUIT.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);

    wwDBGrid9.ColumnByName('P_E_STEAMER').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totE_STEAMER.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_E_PRINT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totE_PRINT.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_E_STAMPING').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totE_STAMPING.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_SBK').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totSBK.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_UTS').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totUTS.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_KNB').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totKNB.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);

    wwDBGrid9.ColumnByName('P_E_STAMPING2').FooterValue := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totE_STAMPING2.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    wwDBGrid9.ColumnByName('P_M_BELANG2').FooterValue := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_BELANG2.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
    //wwDBGrid9.ColumnByName('P_M_RUSAK2').FooterValue := FormatFloat('0.0,0;(0.0,0);', (QBrowse_rekap4_totM_RUSAK2.AsFloat/QBrowse_rekap4_totHSL_PROD.AsFloat)*100);
end;

// ------------------------------------------------------KP END------------------------------------------------------------------

// ------------------------------------------------------LOOM PCS----------------------------------------------------------------
procedure TDefectReinspectFrm.ProsesPCSLOOM;
var
  i: Word;
  vpertama: Boolean;
  brg, jns: String;
begin
  if RadioGroup4.ItemIndex = 0 then
  begin
    brg := 'SARUNG';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 1 then
  begin
    brg := 'PRINTING';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 2 then
  begin
    brg := 'SARUNG';
    jns := 'B2';
  end
  else
  begin
    brg := 'PRINTING';
    jns := 'B2';
  end;

  QLoom1.Close;
  QLoom1.SetVariable('pawal', VTglAwal4.Date);
  QLoom1.SetVariable('pakhir', vTglAkhir4.Date);
  QLoom1.SetVariable('pjenis', jns);
  QLoom1.SetVariable('pbarang', brg);
  QLoom1.Execute;

  QBrowse_Loom1.Open;
  vpertama := True;

  if cbTanggal4.Checked then
    vfilter := ' where (';

  if (QBrowse_Loom1.FieldCount >= 1) then
  begin
    if dbcField4.ItemIndex = 0 then
    begin
      for i := 0 to wwDBGrid11.Selected.Count - 1 do
      begin
        if (QBrowse_Loom1.FieldByName(wwDBGrid11.Columns[i].FieldName).FieldKind = fkData) and
           (UpperCase(wwDBGrid11.Columns[i].FieldName) <> 'TANGGAL') and
           (UpperCase(wwDBGrid11.Columns[i].FieldName) <> 'TOTAL') then
        begin
          if vpertama then
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + wwDBGrid11.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + wwDBGrid11.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
            vpertama := False;
          end
          else
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + ' or ' + wwDBGrid11.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + ' or ' + wwDBGrid11.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
          end;
        end;
      end;
    end
    else
    begin
      if vOperand4.Caption = 'LIKE' then
        vfilter := vfilter + dbcField4.Text + ' like ''%' + ECari4.Text + '%'''
      else
        vfilter := vfilter + dbcField4.Text + ' = ''' + ECari4.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse_Loom1.Active then
      vorder := ' order by ' + wwDBGrid11.Columns[0].FieldName
    else
      vorder := ' order by loom';
  end;

  QBrowse_Loom1.DisableControls;
  QBrowse_Loom1.Close;
  QBrowse_Loom1.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom1.Open;
  QBrowse_Loom1.EnableControls;

  QBrowse_Loom1_tot.Close;
  QBrowse_Loom1_tot.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom1_tot.Open;

  wwDBGrid11.ColumnByName('HSL_PROD').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom1_totHSL_PROD.AsFloat);
  wwDBGrid11.ColumnByName('BK').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom1_totBK.AsFloat);
  wwDBGrid11.ColumnByName('P_BK').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom1_totBK.AsFloat/QBrowse_Loom1_totHSL_PROD.AsFloat)*100);
  wwDBGrid11.ColumnByName('B1').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom1_totB1.AsFloat);
  wwDBGrid11.ColumnByName('P_B1').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom1_totB1.AsFloat/QBrowse_Loom1_totHSL_PROD.AsFloat)*100);
  wwDBGrid11.ColumnByName('B2').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom1_totB2.AsFloat);
  wwDBGrid11.ColumnByName('P_B2').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom1_totB2.AsFloat/QBrowse_Loom1_totHSL_PROD.AsFloat)*100);
  wwDBGrid11.ColumnByName('BS_PARAH').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom1_totBS_PARAH.AsFloat);
  wwDBGrid11.ColumnByName('P_BS_PARAH').FooterValue    := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom1_totBS_PARAH.AsFloat/QBrowse_Loom1_totHSL_PROD.AsFloat)*100);

  wwDBGrid11.ColumnByName('LD').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totLD.AsFloat);
  wwDBGrid11.ColumnByName('LT').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totLT.AsFloat);
  wwDBGrid11.ColumnByName('LPT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totLPT.AsFloat);
  wwDBGrid11.ColumnByName('LRG').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totLRG.AsFloat);
  wwDBGrid11.ColumnByName('WL').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totWL.AsFloat);
  wwDBGrid11.ColumnByName('FLO').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totFLO.AsFloat);
  wwDBGrid11.ColumnByName('NEPS').FooterValue        := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totNEPS.AsFloat);
  wwDBGrid11.ColumnByName('PP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totPP.AsFloat);
  wwDBGrid11.ColumnByName('WP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totWP.AsFloat);
  wwDBGrid11.ColumnByName('OJ').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totOJ.AsFloat);
  wwDBGrid11.ColumnByName('CRT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totCRT.AsFloat);
  wwDBGrid11.ColumnByName('BTS').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totBTS.AsFloat);
  wwDBGrid11.ColumnByName('BTB').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totBTB.AsFloat);
  wwDBGrid11.ColumnByName('SC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totSC.AsFloat);
  wwDBGrid11.ColumnByName('SLL').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totSLL.AsFloat);
  wwDBGrid11.ColumnByName('CK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totCK.AsFloat);
  wwDBGrid11.ColumnByName('CAJ').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totCAJ.AsFloat);
  wwDBGrid11.ColumnByName('KTR').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totKTR.AsFloat);
  wwDBGrid11.ColumnByName('PDK').FooterValue         := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totPDK.AsFloat);
  wwDBGrid11.ColumnByName('KP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totKP.AsFloat);
  wwDBGrid11.ColumnByName('MC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totMC.AsFloat);
  wwDBGrid11.ColumnByName('BOSK').FooterValue        := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totBOSK.AsFloat);
  wwDBGrid11.ColumnByName('KS').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totKS.AsFloat);
  wwDBGrid11.ColumnByName('BO').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totBO.AsFloat);
  wwDBGrid11.ColumnByName('FC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totFC.AsFloat);
  wwDBGrid11.ColumnByName('HK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totHK.AsFloat);
  wwDBGrid11.ColumnByName('WM').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totWM.AsFloat);
  wwDBGrid11.ColumnByName('WK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totWK.AsFloat);
  wwDBGrid11.ColumnByName('M_SAMAR').FooterValue     := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totM_SAMAR.AsFloat);
  wwDBGrid11.ColumnByName('M_RUSAK').FooterValue     := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totM_RUSAK.AsFloat);
  wwDBGrid11.ColumnByName('M_BELANG').FooterValue    := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totM_BELANG.AsFloat);
  wwDBGrid11.ColumnByName('M_OUIT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totM_OUIT.AsFloat);

  wwDBGrid11.ColumnByName('E_STEAMER').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totE_STEAMER.AsFloat);
  wwDBGrid11.ColumnByName('E_PRINT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totE_PRINT.AsFloat);
  wwDBGrid11.ColumnByName('E_STAMPING').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totE_STAMPING.AsFloat);
  wwDBGrid11.ColumnByName('SBK').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totSBK.AsFloat);
  wwDBGrid11.ColumnByName('UTS').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totUTS.AsFloat);
  wwDBGrid11.ColumnByName('KNB').FooterValue      := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totKNB.AsFloat);

  wwDBGrid11.ColumnByName('E_STAMPING2').FooterValue := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totE_STAMPING2.AsFloat);
  wwDBGrid11.ColumnByName('M_BELANG2').FooterValue := FormatFloat('0.0,0;(0.0,0);', QBrowse_Loom1_totM_BELANG2.AsFloat);
end;

// ------------------------------------------------------LOOM %------------------------------------------------------------------
procedure TDefectReinspectFrm.ProsesPERSENLOOM;
var
  i: Word;
  vpertama: Boolean;
  brg, jns: String;
begin
  if RadioGroup4.ItemIndex = 0 then
  begin
    brg := 'SARUNG';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 1 then
  begin
    brg := 'PRINTING';
    jns := 'B1';
  end
  else if RadioGroup4.ItemIndex = 2 then
  begin
    brg := 'SARUNG';
    jns := 'B2';
  end
  else
  begin
    brg := 'PRINTING';
    jns := 'B2';
  end;

  QLoom2.Close;
  QLoom2.SetVariable('pawal', VTglAwal4.Date);
  QLoom2.SetVariable('pakhir', vTglAkhir4.Date);
  QLoom2.SetVariable('pjenis', jns);
  QLoom2.SetVariable('pbarang', brg);
  QLoom2.Execute;

  QBrowse_Loom2.Open;
  vpertama := True;

  if cbTanggal4.Checked then
    vfilter := ' where (';

  if (QBrowse_Loom2.FieldCount >= 1) then
  begin
    if dbcField4.ItemIndex = 0 then
    begin
      for i := 0 to wwDBGrid12.Selected.Count - 1 do
      begin
        if (QBrowse_Loom2.FieldByName(wwDBGrid12.Columns[i].FieldName).FieldKind = fkData) and
           (UpperCase(wwDBGrid12.Columns[i].FieldName) <> 'TANGGAL') and
           (UpperCase(wwDBGrid12.Columns[i].FieldName) <> 'TOTAL') then
        begin
          if vpertama then
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + wwDBGrid12.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + wwDBGrid12.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
            vpertama := False;
          end
          else
          begin
            if vOperand4.Caption = 'LIKE' then
              vfilter := vfilter + ' or ' + wwDBGrid12.Columns[i].FieldName + ' like ''%' + ECari4.Text + '%'''
            else
              vfilter := vfilter + ' or ' + wwDBGrid12.Columns[i].FieldName + ' = ''' + ECari4.Text + '''';
          end;
        end;
      end;
    end
    else
    begin
      if vOperand4.Caption = 'LIKE' then
        vfilter := vfilter + dbcField4.Text + ' like ''%' + ECari4.Text + '%'''
      else
        vfilter := vfilter + dbcField4.Text + ' = ''' + ECari4.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse_Loom2.Active then
      vorder := ' order by ' + wwDBGrid12.Columns[0].FieldName
    else
      vorder := ' order by loom';
  end;

  QBrowse_Loom2.DisableControls;
  QBrowse_Loom2.Close;
  QBrowse_Loom2.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom2.Open;
  QBrowse_Loom2.EnableControls;

  QBrowse_Loom2_tot.Close;
  QBrowse_Loom2_tot.SetVariable('myparam', vfilter + vorder);
  QBrowse_Loom2_tot.Open;

    wwDBGrid12.ColumnByName('HSL_PROD').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom2_totHSL_PROD.AsFloat);
    wwDBGrid12.ColumnByName('BK').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom2_totBK.AsFloat);
    wwDBGrid12.ColumnByName('P_BK').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom2_totBK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('B1').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom2_totB1.AsFloat);
    wwDBGrid12.ColumnByName('P_B1').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom2_totB1.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('B2').FooterValue            := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom2_totB2.AsFloat);
    wwDBGrid12.ColumnByName('P_B2').FooterValue          := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom2_totB2.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('BS_PARAH').FooterValue      := FormatFloat('0.0,0;(0.0,0); ', QBrowse_Loom2_totBS_PARAH.AsFloat);
    wwDBGrid12.ColumnByName('P_BS_PARAH').FooterValue    := FormatFloat('0.0,0;(0.0,0); ', (QBrowse_Loom2_totBS_PARAH.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);

    wwDBGrid12.ColumnByName('P_LD').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totLD.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_LT').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totLT.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_LPT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totLPT.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_LRG').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totLRG.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_WL').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totWL.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_FLO').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totFLO.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_NEPS').FooterValue        := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totNEPS.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_PP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totPP.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_WP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totWP.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_OJ').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totOJ.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_CRT').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totCRT.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_BTS').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totBTS.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_BTB').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totBTB.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_SC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totSC.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_SLL').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totSLL.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_CK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totCK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_CAJ').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totCAJ.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_KTR').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totKTR.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_PDK').FooterValue         := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totPDK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_KP').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totKP.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_MC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totMC.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_BOSK').FooterValue        := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totBOSK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_KS').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totKS.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_BO').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totBO.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_FC').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totFC.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_HK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totHK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_WM').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totWM.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_WK').FooterValue          := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totWK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_M_SAMAR').FooterValue     := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totM_SAMAR.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_M_RUSAK').FooterValue     := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totM_RUSAK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_M_BELANG').FooterValue    := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totM_BELANG.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_M_OUIT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totM_OUIT.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);

    wwDBGrid12.ColumnByName('P_E_STEAMER').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totE_STEAMER.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_E_PRINT').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totE_PRINT.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_E_STAMPING').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totE_STAMPING.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_SBK').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totSBK.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_UTS').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totUTS.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_KNB').FooterValue      := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totKNB.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);

    wwDBGrid12.ColumnByName('P_E_STAMPING2').FooterValue := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totE_STAMPING2.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
    wwDBGrid12.ColumnByName('P_M_BELANG2').FooterValue := FormatFloat('0.0,0;(0.0,0);', (QBrowse_Loom2_totM_BELANG2.AsFloat/QBrowse_Loom2_totHSL_PROD.AsFloat)*100);
end;

// ------------------------------------------------------LOOM END----------------------------------------------------------------

procedure TDefectReinspectFrm.BitBtn9Click(Sender: TObject);
begin
  case RProses.ItemIndex of
    0: begin // Loom PCS
         wwDBGrid11.BringToFront;
         RPrint.Visible := False;
         BitBtn11.Visible := False;

         ProsesPCSLOOM;
       end;
    1: begin // Loom KP PCS
         wwDBGrid10.BringToFront;
         RPrint.Visible := False;
         BitBtn11.Visible := False;

         ProsesPCSKP;
       end;
    2: begin // Loom %
         wwDBGrid12.BringToFront;
         RPrint.Visible := RadioGroup4.ItemIndex in [2, 3];

         ProsesPERSENLOOM;
       end;
    3: begin // Loom KP %
         wwDBGrid9.BringToFront;
         RPrint.Visible := False;
         BitBtn11.Visible := False;

         ProsesPERSENKP;
       end;
    else
      begin // Opsional: Penanganan jika ItemIndex di luar 0-3
        ShowMessage('Pilihan tidak valid!');
        // atau set default:
        // wwDBGrid11.BringToFront;
        // RPrint.Visible := False;
      end;
  end;
end;


procedure TDefectReinspectFrm.BitBtn10Click(Sender: TObject);
begin
  case RProses.ItemIndex of
    0: begin // Loom PCS
            wwDBGrid11.BringToFront;
            RPrint.Visible := False;
            BitBtn11.Visible := False;

            if QBrowse_Loom1.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect Per loom';
                wwDBGrid11.ExportOptions.TitleName:='Rekap Hasil Reinspect Per loom';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid11.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid11.ExportOptions.Save;
                    ShowMessage('Simpan Sukses !');
                    except
                    ShowMessage('Simpan Gagal !');
                    end;
                end;
            end
            else
                ShowMessage('Tabel belum di-OPEN !');
       end;
    1: begin // Loom KP PCS
            wwDBGrid10.BringToFront;
            RPrint.Visible := False;
            BitBtn11.Visible := False;

            if QBrowse_Loom3.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect Per loom';
                wwDBGrid10.ExportOptions.TitleName:='Rekap Hasil Reinspect Per loom';
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
    2: begin // Loom %
            wwDBGrid12.BringToFront;
            RPrint.Visible := RadioGroup4.ItemIndex in [2, 3];

            if QBrowse_Loom2.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect Per loom';
                wwDBGrid12.ExportOptions.TitleName:='Rekap Hasil Reinspect Per loom';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid12.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid12.ExportOptions.Save;
                    ShowMessage('Simpan Sukses !');
                    except
                    ShowMessage('Simpan Gagal !');
                    end;
                end;
            end
            else
                ShowMessage('Tabel belum di-OPEN !');    
       end;
    3: begin // Loom KP %
            wwDBGrid9.BringToFront;
            RPrint.Visible := False;
            BitBtn11.Visible := False;

            if QBrowse_rekap4.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:='Rekap Hasil Reinspect Per loom';
                wwDBGrid9.ExportOptions.TitleName:='Rekap Hasil Reinspect Per loom';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid9.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid9.ExportOptions.Save;
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
      begin // Opsional: Penanganan jika ItemIndex di luar 0-3
            ShowMessage('Pilihan tidak valid!');
      end;
  end;
end;

procedure TDefectReinspectFrm.RProsesClick(Sender: TObject);
begin
  case RProses.ItemIndex of
    0: begin // Loom PCS
         wwDBGrid11.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    1: begin // Loom KP PCS
         wwDBGrid10.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    2: begin // Loom %
         wwDBGrid12.BringToFront;
         RPrint.Visible := RadioGroup4.ItemIndex in [2, 3];
         BitBtn11.Visible := RadioGroup4.ItemIndex in [2, 3];
       end;
    3: begin // Loom KP %
         wwDBGrid9.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    else
      begin // Opsional: Penanganan jika ItemIndex di luar 0-3
        ShowMessage('Pilihan tidak valid!');
        // atau set default:
        // wwDBGrid11.BringToFront;
        // RPrint.Visible := False;
      end;
  end;
end;

procedure TDefectReinspectFrm.RadioGroup4Click(Sender: TObject);
begin
  case RProses.ItemIndex of
    0: begin // Loom PCS
         wwDBGrid11.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    1: begin // Loom KP PCS
         wwDBGrid10.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    2: begin // Loom %
         wwDBGrid12.BringToFront;
         RPrint.Visible := RadioGroup4.ItemIndex in [2, 3];
         BitBtn11.Visible := RadioGroup4.ItemIndex in [2, 3];
       end;
    3: begin // Loom KP %
         wwDBGrid9.BringToFront;

         RPrint.Visible := False;
         BitBtn11.Visible := False;
       end;
    else
      begin // Opsional: Penanganan jika ItemIndex di luar 0-3
        ShowMessage('Pilihan tidak valid!');
        // atau set default:
        // wwDBGrid11.BringToFront;
        // RPrint.Visible := False;
      end;
  end;
end;

procedure TDefectReinspectFrm.QBrowse_Loom3AfterScroll(DataSet: TDataSet);
begin
Label19.Caption:='Record ke '+IntToStr(QBrowse_Loom3.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Loom3.RecordCount)+' Records';
end;

procedure TDefectReinspectFrm.wwDBGrid10TitleButtonClick(Sender: TObject;
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

procedure TDefectReinspectFrm.QBrowse_Loom1AfterScroll(DataSet: TDataSet);
begin
Label19.Caption:='Record ke '+IntToStr(QBrowse_Loom1.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Loom1.RecordCount)+' Records';
end;

procedure TDefectReinspectFrm.QBrowse_rekap4AfterScroll(DataSet: TDataSet);
begin
Label19.Caption:='Record ke '+IntToStr(QBrowse_rekap4.RecNo)+' dari '+FormatFloat('#,#',QBrowse_rekap4.RecordCount)+' Records';
end;

procedure TDefectReinspectFrm.wwDBGrid12TitleButtonClick(Sender: TObject;
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

procedure TDefectReinspectFrm.wwDBGrid11TitleButtonClick(Sender: TObject;
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

procedure TDefectReinspectFrm.QBrowse_Loom2AfterScroll(DataSet: TDataSet);
begin
Label19.Caption:='Record ke '+IntToStr(QBrowse_Loom2.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Loom2.RecordCount)+' Records';
end;

// Print Sarung Persen B2
procedure TDefectReinspectFrm.PrintLoomPPCSarungPersen;
var
    HTMLFile: TStringList;
    FilePath: string;
    HTMLContent: string;
    TanggalStr: string;
    HTMLPath, PDFPath: string;
    Cmd: string;
    ExitCode: Cardinal;
    StartupInfo: TStartupInfo;
    ProcessInfo: TProcessInformation;

    HSL_PROD, BK, P_BK, B1, P_B1, B2, P_B2, BS_PARAH, P_BS_PARAH: STRING;
    LD, LT, LPT, LRG, WL, FLO, NEPS, PP, WP, OJ, CRT, BTS, BTB, SC, SLL, CK, CAJ, KTR, PDK, KP, MC, BOSK, KS,
    BO, FC, HK, WM, WK, M_SAMAR, M_RUSAK, M_BELANG, M_OUIT, E_STEAMER, E_PRINT, E_STAMPING, SBK, UTS, KNB, E_STAMPING2: string;
    P_LD, P_LT, P_LPT, P_LRG, P_WL, P_FLO, P_NEPS, P_PP, P_WP, P_OJ, P_CRT, P_BTS,
    P_BTB, P_SC, P_SLL, P_CK, P_CAJ,
    P_KTR, P_PDK, P_KP, P_MC, P_BOSK, P_KS,
    P_BO, P_FC, P_HK, P_WM, P_WK, P_M_SAMAR, P_M_RUSAK, P_M_BELANG, P_M_OUIT,
    P_E_STEAMER, P_E_PRINT, P_E_STAMPING, P_SBK, P_UTS, P_KNB, P_E_STAMPING2: string;
    TOT_HSL_PROD, TOT_BK, TOT_P_BK, TOT_B1, TOT_P_B1, TOT_B2, TOT_P_B2, TOT_BS_PARAH, TOT_P_BS_PARAH: REAL;
    TOT_LD, TOT_LT, TOT_LPT, TOT_LRG, TOT_WL, TOT_FLO, TOT_NEPS, TOT_PP, TOT_WP, TOT_OJ, TOT_CRT, TOT_BTS, TOT_BTB, 
    TOT_SC, TOT_SLL, TOT_CK, TOT_CAJ, TOT_KTR, TOT_PDK, TOT_KP, TOT_MC, TOT_BOSK, TOT_KS, TOT_BO, TOT_FC, TOT_HK, TOT_WM, 
    TOT_WK, TOT_M_SAMAR, TOT_M_RUSAK, TOT_M_BELANG, TOT_M_OUIT, TOT_E_STEAMER, TOT_E_PRINT, TOT_E_STAMPING, TOT_SBK, TOT_UTS, TOT_KNB, TOT_E_STAMPING2: REAL;
    TOT_P_LD, TOT_P_LT, TOT_P_LPT, TOT_P_LRG, TOT_P_WL, TOT_P_FLO, TOT_P_NEPS, TOT_P_PP, TOT_P_WP, TOT_P_OJ, TOT_P_CRT, TOT_P_BTS, 
    TOT_P_BTB, TOT_P_SC, TOT_P_SLL, TOT_P_CK, TOT_P_CAJ, TOT_P_KTR, TOT_P_PDK, TOT_P_KP, TOT_P_MC, TOT_P_BOSK, TOT_P_KS, 
    TOT_P_BO, TOT_P_FC, TOT_P_HK, TOT_P_WM, TOT_P_WK, TOT_P_M_SAMAR, TOT_P_M_RUSAK, TOT_P_M_BELANG, TOT_P_M_OUIT, 
    TOT_P_E_STEAMER, TOT_P_E_PRINT, TOT_P_E_STAMPING, TOT_P_SBK, TOT_P_UTS, TOT_P_KNB, TOT_P_E_STAMPING2: REAL;
begin
  WebBrowser1.BringToFront;
  // 1. Siapkan path file
  HTMLPath := ExtractFilePath(Application.ExeName) + 'temp_laporan.html';
  PDFPath := ExtractFilePath(Application.ExeName) + 'Laporan_Sarung_' + FormatDateTime('yyyy-mm-dd_hh-nn-ss', Now) + '.pdf';

  HTMLFile := TStringList.Create;
  try
    if VTglAwal4.Date = vTglAkhir4.Date then
      TanggalStr := FormatDateTime('dd mmmm yyyy', VTglAwal4.Date)
    else
      TanggalStr := FormatDateTime('dd mmmm yyyy', VTglAwal4.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', vTglAkhir4.Date);
    HTMLContent :=
    '<!DOCTYPE html>' +
    '<html lang="id">' +
    '<head>' +
    '    <meta charset="UTF-8">' +
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' +
    '    <title>Laporan Per Loom Sarung</title>' +
    '    <style> ' +
    '        body { font-family: Arial, sans-serif; font-size: 8px; } ' + // Ubah font-size menjadi 10px
    '        .container { width: 100%; max-width: 530mm; padding: 5px; margin: 2px; border: 1px solid #000; } ' +
    '        .header { width: 100%; text-align: left; margin-bottom: 10px; } ' +
    '        .header-table { width: 100%; border-collapse: collapse; } ' +
    '        .header-table td { padding: 4px; vertical-align: top; } ' +
    '        .logo { font-size: 14px; font-weight: bold; text-align: center; width: 20%; } ' + // Sesuaikan font-size untuk logo
    '        .logo-judul { font-size: 12px; font-weight: bold; text-align: center; width: 30%; } ' + // Sesuaikan font-size untuk logo-judul
    '        .title { font-size: 10px; font-weight: bold; text-align: center; } ' + // Sesuaikan font-size untuk title
    '        .label { font-weight: bold; width: 20%; } ' +
    '        .received-from { font-weight: bold; margin-top: 10px; } ' +
    '        .order-table { margin-top: 5px; width: 80%; border-collapse: collapse; } ' +
    '        .order-table td { font-size: 8px; padding: 2px 5px; } ' + // Ubah font-size menjadi 10px
    '        .table { width: 100%; border-collapse: collapse; margin-top: 10px; } ' +
    '        .table th, .table td { border: 1px solid #000; padding: 2px; text-align: center; font-size: 8px; } ' + // Ubah font-size menjadi 10px
    '        .table th { background-color: #f0f0f0; } ' +
    '        .footer { margin-top: 15px; text-align: center; } ' +
    '        @media print { body { margin: 0; padding: 0; } .container { border: none; } ' +
    '        @page { size: F4 landscape; margin: 10mm; } thead { display: table-header-group; } tfoot { display: table-footer-group; } ' +
    '        .table th { position: sticky; top: 0; background-color: #f0f0f0; } } ' +
    '        .footer-table { width: 100%; margin-top: 15px; border-collapse: collapse; } ' +
    '        .footer-table td { padding: 5px; border: none; font-weight: bold; font-size: 8px; } ' + // Ubah font-size menjadi 10px
    '        .table tr:last-child td { border-bottom: 1px solid black; } ' +
    '        .vertical-text { transform: rotate(-90deg); transform-origin: left top 0; white-space: nowrap; display: block; position: absolute; bottom: 0; left: 20%; width: 100px; height: 8px; text-align: left; font-weight: normal; font-size: 9px; }' +
    '        .vertical-header { position: relative; height: 30mm; padding: 2px 1px !important; vertical-align: bottom !important; min-width: 5mm; } ' +
    '        .vertical-header > div { position: absolute; top: 0; left: 0; width: 100%; height: 100%; } ' +
    '        .vertical-jud { position: relative; height: 30mm; padding: 2px 1px !important; vertical-align: middle !important; writing-mode: vertical-rl; transform: rotate(180deg); text-align: center; font-size: 10px; min-width: 5mm; } ' +
    '        .col-loom { width: 15mm; } .col-mitra { width: 25mm; } .col-prod { width: 10mm; }' +
    '    </style>' +
    '</head>' +
    '<body>' +
    '    <div class="container">' +
    '        <div class="header">' +
    '            <table class="header-table">' +
    '                <tr>' +
    '                    <td rowspan="2" class="logo">PT. PRIMAFARA TEXTILE</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td class="logo-judul" colspan="2"><strong>LAPORAN PER LOOM SARUNG</strong></td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td class="label" align="center">Sapugarut - Pekalongan</td>' +
    '                    <td class="label" align="center">Tanggal : ' + TanggalStr + '</td>' +
    '                </tr>' +
    '            </table>' +
    '        </div>' +
    '        <table class="table">' +
    '            <thead>' +
    '                <tr>' +
    '                    <th class="vertical-jud col-loom" rowspan="2">LOOM</th>' +
    '                    <th class="vertical-jud col-mitra" rowspan="2">MITRA</th>' +
    '                    <th class="vertical-jud col-prod">PROD</th>' +
    '                    <th class="vertical-jud col-prod" colspan="2">BK</th>' +
    '                    <th class="vertical-jud col-prod" colspan="2">B1</th>' +
    '                    <th class="vertical-jud col-prod" colspan="2">B2</th>' +
    '                    <th class="vertical-jud col-prod" colspan="2">BSp</th>' +                    
    '                    <th class="vertical-header"><div><span class="vertical-text">LS Dobel /Besar</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">LS Tegang Kend</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">LS Putus</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">LS Renggang</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Warna LS</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Float</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Neps</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">PK Putus /Dobel</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Warna PK</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Oto. Jarum</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Ring Temple</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Bar Tipis</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Bar Tebal</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Salah Corak</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Selilit</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Cacat Tepi Kain</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Tuck-in</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Kotor /Noda /Oli</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Pendek</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Lebar Kurang</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Melipat Calender</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Bow /Skew</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Klip Stenter</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Bengkok Obras</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Flex Calender</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Handfeel /Kilap</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Watermark</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Warna Kain</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Motif Samar</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Motif Rusak</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Motif Belang</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Motif Ouit Set</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Flex Steamer</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Flex Print</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Flex Stamping</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Rusak /Sobek /Lub</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Ukuran tdk STD</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Kotor /Noda Berat</span></div></th>' +
    '                    <th class="vertical-header"><div><span class="vertical-text">Rusak Tepi</span></div></th>' +
    '                    <th style="border: 0px; color: white; width: 1mm;">1</th>' +
    '                </tr>' +
    '                <tr>' +
    '                    <th>PCS</th>' +
    '                    <th>PCS</th>' +
    '                    <th>%</th>' +
    '                    <th>PCS</th>' +
    '                    <th>%</th>' +
    '                    <th>PCS</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th>%</th>' +
    '                    <th style="border: 0px; color: white; width: 1mm;">1</th>' +
    '                </tr>' +
    '            </thead>' +
    '            <tbody>';
    TOT_HSL_PROD := 0; TOT_BK := 0; TOT_P_BK := 0; TOT_B1 := 0; TOT_P_B1 := 0; TOT_B2 := 0; TOT_P_B2 := 0; TOT_BS_PARAH := 0; TOT_P_BS_PARAH := 0;
    TOT_LD := 0;  TOT_LT := 0; TOT_LPT := 0; TOT_LRG := 0; TOT_WL := 0; TOT_FLO := 0; TOT_NEPS := 0; TOT_PP := 0; TOT_WP := 0; TOT_OJ := 0; TOT_CRT := 0; TOT_BTS := 0; 
    TOT_BTB := 0; TOT_SC := 0; TOT_SLL := 0; TOT_CK := 0; TOT_CAJ := 0; TOT_KTR := 0; TOT_PDK := 0; TOT_KP := 0; TOT_MC := 0; TOT_BOSK := 0; TOT_KS := 0; 
    TOT_BO := 0; TOT_FC := 0; TOT_HK := 0; TOT_WM := 0; TOT_WK := 0; TOT_M_SAMAR := 0; TOT_M_RUSAK := 0; TOT_M_BELANG := 0; TOT_M_OUIT := 0; TOT_E_STEAMER := 0; 
    TOT_E_PRINT := 0; TOT_E_STAMPING := 0; TOT_SBK := 0; TOT_UTS := 0; TOT_KNB := 0; TOT_E_STAMPING2 := 0;
    TOT_P_LD := 0; TOT_P_LT := 0; TOT_P_LPT := 0; TOT_P_LRG := 0; TOT_P_WL := 0; TOT_P_FLO := 0; TOT_P_NEPS := 0; TOT_P_PP := 0; TOT_P_WP := 0; TOT_P_OJ := 0; TOT_P_CRT := 0; 
    TOT_P_BTS := 0; TOT_P_BTB := 0; TOT_P_SC := 0; TOT_P_SLL := 0; TOT_P_CK := 0; TOT_P_CAJ := 0; TOT_P_KTR := 0; TOT_P_PDK := 0; TOT_P_KP := 0; TOT_P_MC := 0; 
    TOT_P_BOSK := 0; TOT_P_KS := 0; TOT_P_BO := 0; TOT_P_FC := 0; TOT_P_HK := 0; TOT_P_WM := 0; TOT_P_WK := 0; TOT_P_M_SAMAR := 0; TOT_P_M_RUSAK := 0; TOT_P_M_BELANG := 0; 
    TOT_P_M_OUIT := 0; TOT_P_E_STEAMER := 0; TOT_P_E_PRINT := 0; TOT_P_E_STAMPING := 0; TOT_P_SBK := 0; TOT_P_UTS := 0; TOT_P_KNB := 0; TOT_P_E_STAMPING2 := 0;
    wwDBGrid12.DataSource.DataSet.First;
    while not wwDBGrid12.DataSource.DataSet.Eof do
    begin
        if (wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsString = '') then
        begin
            HSL_PROD := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            HSL_PROD := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat));
        TOT_HSL_PROD := TOT_HSL_PROD + wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsString = '') then
        begin
            BK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            BK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsFloat));
        TOT_BK := TOT_BK + wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsFloat;

        if (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsString = '') then
        begin
            P_BK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BK := TOT_P_BK + (wwDBGrid12.DataSource.DataSet.FieldByName('BK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsString = '') then
        begin
            B1 := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            B1 := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsFloat));
        TOT_B1 := TOT_B1 + wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsFloat;

        if (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsString = '') then
        begin
            P_B1 := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_B1 := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_B1 := TOT_P_B1 + (wwDBGrid12.DataSource.DataSet.FieldByName('B1').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsString = '') then
        begin
            B2 := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            B2 := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsFloat));
        TOT_B2 := TOT_B2 + wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsFloat;

        if (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsString = '') then
        begin
            P_B2 := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_B2 := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_B2 := TOT_P_B2 + (wwDBGrid12.DataSource.DataSet.FieldByName('B2').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsString = '') then
        begin
            BS_PARAH := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            BS_PARAH := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsFloat));
        TOT_BS_PARAH := TOT_BS_PARAH + wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsFloat;

        if (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsString = '') then
        begin
            P_BS_PARAH := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BS_PARAH := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BS_PARAH := TOT_P_BS_PARAH + (wwDBGrid12.DataSource.DataSet.FieldByName('BS_PARAH').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('LD').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('LD').AsString = '') then
        begin
            P_LD := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_LD := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_LD := TOT_P_LD + (wwDBGrid12.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('LT').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('LT').AsString = '') then
        begin
            P_LT := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_LT := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_LT := TOT_P_LT + (wwDBGrid12.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('LPT').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('LPT').AsString = '') then
        begin
            P_LPT := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_LPT := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_LPT := TOT_P_LPT + (wwDBGrid12.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('LRG').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('LRG').AsString = '') then
        begin
            P_LRG := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_LRG := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_LRG := TOT_P_LRG + (wwDBGrid12.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('WL').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('WL').AsString = '') then
        begin
            P_WL := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_WL := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_WL := TOT_P_WL + (wwDBGrid12.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('FLO').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('FLO').AsString = '') then
        begin
            P_FLO := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_FLO := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('FLO').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_FLO := TOT_P_FLO + (wwDBGrid12.DataSource.DataSet.FieldByName('FLO').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('NEPS').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('NEPS').AsString = '') then
        begin
            P_NEPS := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_NEPS := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_NEPS := TOT_P_NEPS + (wwDBGrid12.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;
        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('PP').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('PP').AsString = '') then
        begin
            P_PP := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_PP := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_PP := TOT_P_PP + (wwDBGrid12.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('WP').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('WP').AsString = '') then
        begin
            P_WP := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_WP := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_WP := TOT_P_WP + (wwDBGrid12.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('OJ').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('OJ').AsString = '') then
        begin
            P_OJ := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_OJ := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_OJ := TOT_P_OJ + (wwDBGrid12.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('CRT').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('CRT').AsString = '') then
        begin
            P_CRT := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_CRT := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_CRT := TOT_P_CRT + (wwDBGrid12.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BTS').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BTS').AsString = '') then
        begin
            P_BTS := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BTS := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BTS := TOT_P_BTS + (wwDBGrid12.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BTB').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BTB').AsString = '') then
        begin
            P_BTB := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BTB := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BTB := TOT_P_BTB + (wwDBGrid12.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('SC').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('SC').AsString = '') then
        begin
            P_SC := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_SC := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_SC := TOT_P_SC + (wwDBGrid12.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('SLL').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('SLL').AsString = '') then
        begin
            P_SLL := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_SLL := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_SLL := TOT_P_SLL + (wwDBGrid12.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('CK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('CK').AsString = '') then
        begin
            P_CK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_CK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_CK := TOT_P_CK + (wwDBGrid12.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('CAJ').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('CAJ').AsString = '') then
        begin
            P_CAJ := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_CAJ := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_CAJ := TOT_P_CAJ + (wwDBGrid12.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('KTR').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('KTR').AsString = '') then
        begin
            P_KTR := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_KTR := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_KTR := TOT_P_KTR + (wwDBGrid12.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('PDK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('PDK').AsString = '') then
        begin
            P_PDK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_PDK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_PDK := TOT_P_PDK + (wwDBGrid12.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('KP').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('KP').AsString = '') then
        begin
            P_KP := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_KP := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_KP := TOT_P_KP + (wwDBGrid12.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('MC').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('MC').AsString = '') then
        begin
            P_MC := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_MC := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('MC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_MC := TOT_P_MC + (wwDBGrid12.DataSource.DataSet.FieldByName('MC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BOSK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BOSK').AsString = '') then
        begin
            P_BOSK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BOSK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BOSK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BOSK := TOT_P_BOSK + (wwDBGrid12.DataSource.DataSet.FieldByName('BOSK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('KS').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('KS').AsString = '') then
        begin
            P_KS := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_KS := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('KS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_KS := TOT_P_KS + (wwDBGrid12.DataSource.DataSet.FieldByName('KS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('BO').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('BO').AsString = '') then
        begin
            P_BO := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_BO := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_BO := TOT_P_BO + (wwDBGrid12.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('FC').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('FC').AsString = '') then
        begin
            P_FC := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_FC := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('FC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_FC := TOT_P_FC + (wwDBGrid12.DataSource.DataSet.FieldByName('FC').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('HK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('HK').AsString = '') then
        begin
            P_HK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_HK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('HK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_HK := TOT_P_HK + (wwDBGrid12.DataSource.DataSet.FieldByName('HK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('WM').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('WM').AsString = '') then
        begin
            P_WM := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_WM := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('WM').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_WM := TOT_P_WM + (wwDBGrid12.DataSource.DataSet.FieldByName('WM').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('WK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('WK').AsString = '') then
        begin
            P_WK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_WK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('WK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_WK := TOT_P_WK + (wwDBGrid12.DataSource.DataSet.FieldByName('WK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('M_SAMAR').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('M_SAMAR').AsString = '') then
        begin
            P_M_SAMAR := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_M_SAMAR := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('M_SAMAR').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_M_SAMAR := TOT_P_M_SAMAR + (wwDBGrid12.DataSource.DataSet.FieldByName('M_SAMAR').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('M_RUSAK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('M_RUSAK').AsString = '') then
        begin
            P_M_RUSAK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_M_RUSAK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('M_RUSAK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_M_RUSAK := TOT_P_M_RUSAK + (wwDBGrid12.DataSource.DataSet.FieldByName('M_RUSAK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('M_BELANG').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('M_BELANG').AsString = '') then
        begin
            P_M_BELANG := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_M_BELANG := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('M_BELANG').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_M_BELANG := TOT_P_M_BELANG + (wwDBGrid12.DataSource.DataSet.FieldByName('M_BELANG').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('M_OUIT').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('M_OUIT').AsString = '') then
        begin
            P_M_OUIT := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_M_OUIT := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('M_OUIT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_M_OUIT := TOT_P_M_OUIT + (wwDBGrid12.DataSource.DataSet.FieldByName('M_OUIT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('E_STEAMER').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('E_STEAMER').AsString = '') then
        begin
            P_E_STEAMER := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_E_STEAMER := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('E_STEAMER').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_E_STEAMER := TOT_P_E_STEAMER + (wwDBGrid12.DataSource.DataSet.FieldByName('E_STEAMER').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('E_PRINT').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('E_PRINT').AsString = '') then
        begin
            P_E_PRINT := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_E_PRINT := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('E_PRINT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_E_PRINT := TOT_P_E_PRINT + (wwDBGrid12.DataSource.DataSet.FieldByName('E_PRINT').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING').AsString = '') then
        begin
            P_E_STAMPING := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_E_STAMPING := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_E_STAMPING := TOT_P_E_STAMPING + (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('SBK').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('SBK').AsString = '') then
        begin
            P_SBK := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_SBK := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_SBK := TOT_P_SBK + (wwDBGrid12.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('UTS').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('UTS').AsString = '') then
        begin
            P_UTS := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_UTS := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_UTS := TOT_P_UTS + (wwDBGrid12.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('KNB').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('KNB').AsString = '') then
        begin
            P_KNB := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_KNB := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_KNB := TOT_P_KNB + (wwDBGrid12.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        if (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING2').AsString = '0') or (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING2').AsString = '') then
        begin
            P_E_STAMPING2 := FormatFloat('0.0,0;(0.0,0);-', 0);
        end
        else
            P_E_STAMPING2 := FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING2').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100);
        TOT_P_E_STAMPING2 := TOT_P_E_STAMPING2 + (wwDBGrid12.DataSource.DataSet.FieldByName('E_STAMPING2').AsFloat / wwDBGrid12.DataSource.DataSet.FieldByName('HSL_PROD').AsFloat) * 100;

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        HTMLContent := HTMLContent +
            '<tr>' +
            '    <td style="text-align: left;white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 150px;">' + wwDBGrid12.DataSource.DataSet.FieldByName('LOOM').AsString + '</td>' +
            '    <td style="text-align: left; overflow: hidden; text-overflow: ellipsis; max-width: 150px;">' + wwDBGrid12.DataSource.DataSet.FieldByName('MITRA').AsString + '</td>' +
            '    <td>' + HSL_PROD + '</td>' +
            '    <td>' + BK + '</td>' +
            '    <td>' + P_BK + '</td>' +
            '    <td>' + B1 + '</td>' +
            '    <td>' + P_B1 + '</td>' +
            '    <td>' + B2 + '</td>' +
            '    <td>' + P_B2 + '</td>' +
            '    <td>' + BS_PARAH + '</td>' +
            '    <td>' + P_BS_PARAH + '</td>' +
            '    <td>' + P_LD + '</td>' +
            '    <td>' + P_LT + '</td>' +
            '    <td>' + P_LPT + '</td>' +
            '    <td>' + P_LRG + '</td>' +
            '    <td>' + P_WL + '</td>' +
            '    <td>' + P_FLO + '</td>' +
            '    <td>' + P_NEPS + '</td>' +
            '    <td>' + P_PP + '</td>' +
            '    <td>' + P_WP + '</td>' +
            '    <td>' + P_OJ + '</td>' +
            '    <td>' + P_CRT + '</td>' +
            '    <td>' + P_BTS + '</td>' +
            '    <td>' + P_BTB + '</td>' +
            '    <td>' + P_SC + '</td>' +
            '    <td>' + P_SLL + '</td>' +
            '    <td>' + P_CK + '</td>' +
            '    <td>' + P_CAJ + '</td>' +
            '    <td>' + P_KTR + '</td>' +
            '    <td>' + P_PDK + '</td>' +
            '    <td>' + P_KP + '</td>' +
            '    <td>' + P_MC + '</td>' +
            '    <td>' + P_BOSK + '</td>' +
            '    <td>' + P_KS + '</td>' +
            '    <td>' + P_BO + '</td>' +
            '    <td>' + P_FC + '</td>' +
            '    <td>' + P_HK + '</td>' +
            '    <td>' + P_WM + '</td>' +
            '    <td>' + P_WK + '</td>' +
            '    <td>' + P_M_SAMAR + '</td>' +
            '    <td>' + P_M_RUSAK + '</td>' +
            '    <td>' + P_M_BELANG + '</td>' +
            '    <td>' + P_M_OUIT + '</td>' +
            '    <td>' + P_E_STEAMER + '</td>' +
            '    <td>' + P_E_PRINT + '</td>' +
            '    <td>' + P_E_STAMPING + '</td>' +
            '    <td>' + P_SBK + '</td>' +
            '    <td>' + P_UTS + '</td>' +
            '    <td>' + P_KNB + '</td>' +
            '    <td>' + P_E_STAMPING2 + '</td>' +
            '    <td style="border: 0px; color: white;">1</td>' +

            '</tr>';
        wwDBGrid12.DataSource.DataSet.Next;
        end;

        HTMLContent := HTMLContent +
            '<tr>' +
            '    <td colspan="2"><strong>TOTAL</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_HSL_PROD) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_BK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_B1) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_B1) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_B2) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_B2) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_BS_PARAH) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BS_PARAH) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_LD) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_LT) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_LPT) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_LRG) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_WL) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_FLO) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_NEPS) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_PP) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_WP) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_OJ) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_CRT) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BTS) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BTB) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_SC) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_SLL) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_CK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_CAJ) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_KTR) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_PDK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_KP) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_MC) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BOSK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_KS) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_BO) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_FC) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_HK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_WM) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_WK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_M_SAMAR) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_M_RUSAK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_M_BELANG) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_M_OUIT) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_E_STEAMER) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_E_PRINT) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_E_STAMPING) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_SBK) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_UTS) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_KNB) + '</strong></td>' +
            '    <td><strong>' + FormatFloat('0.0,0;(0.0,0);-', TOT_P_E_STAMPING2) + '</strong></td>' +
            '    <td style="border: 0px; color: white;">1</td>' +
            '</tr>' +
            '</tbody>' +
            '</table>' +
            '</div>' +
            '</body>' +
            '</html>';

        HTMLFile.Text := HTMLContent;
        HTMLFile.SaveToFile(FilePath);
        WebBrowser1.Navigate(FilePath);
    finally
        HTMLFile.Free;
    end;
end;

procedure TDefectReinspectFrm.BitBtn11Click(Sender: TObject);
begin
  case RadioGroup4.ItemIndex of
    2: begin   // Sarung B2 Persen
          PrintLoomPPCSarungPersen;
       end;
    3: begin   // Printing B2 Persen

       end;
    else
      begin // Opsional: Penanganan jika ItemIndex di luar 2 & 3
            ShowMessage('Pilihan tidak valid!');
      end;
  end;
end;

procedure TDefectReinspectFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

end.
