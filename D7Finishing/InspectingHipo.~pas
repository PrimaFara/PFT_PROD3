unit InspectingHipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls, jpeg;

type
  TInspectingHipoFrm = class(TForm)
    QMaster: TOracleDataSet;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    dsQMaster: TwwDataSource;
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
    dsQTransaksi: TwwDataSource;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    QTotal: TOracleDataSet;
    QAmbilData: TOracleQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelCenter: TPanel;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    TitleBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrlHarga: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBHarga: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    SummaryBand1: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText20: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    PanelHeader: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    PanelFooter: TPanel;
    Label8: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    PanelTop: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboBox2: TwwDBComboBox;
    wwDBGrid1: TwwDBGrid;
    PanelBanner: TPanel;
    Label1: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    wwDBNavigator1Button1: TwwNavButton;
    Edit1: TEdit;
    wwCheckBox1: TwwCheckBox;
    LookKonstruksi: TwwDBLookupComboDlg;
    LookSatuan: TwwDBComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    vTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Panel4: TPanel;
    vOperand: TLabel;
    cbTanggal: TCheckBox;
    BitBtn5: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    dbcField: TwwDBComboBox;
    BtnExport: TBitBtn;
    wwDBGrid1xxxxx: TwwDBGrid;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseTotal: TOracleDataSet;
    QBrowseTotal2: TOracleDataSet;
    QBrowseTotal2PROSES: TStringField;
    QBrowseTotal2KODI_BK: TFloatField;
    QBrowseTotal2PCS_BK: TFloatField;
    QBrowseTotal2KODI_BS: TFloatField;
    QBrowseTotal2PCS_BS: TFloatField;
    QBrowseTotal2KODI_BS_PARAH: TFloatField;
    QBrowseTotal2PCS_BS_PARAH: TFloatField;
    dsQBrowseTotal2: TwwDataSource;
    QBrowseTotal2TOT_KODI: TFloatField;
    QBrowseTotal2TOT_PCS: TFloatField;
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    QBrowse_Det: TOracleDataSet;
    dsQBrowse_Det: TwwDataSource;
    QBrowse_DetNO_NOTA: TStringField;
    QBrowse_DetKD_TRANSAKSI: TStringField;
    QBrowse_DetISPOST: TStringField;
    QBrowse_DetSATUAN: TStringField;
    QBrowse_DetNO_SERI_BEAM: TStringField;
    QBrowse_DetQTY: TFloatField;
    QBrowse_DetOPR_TENUN: TStringField;
    QBrowse_DetTGL_INSERT: TDateTimeField;
    QBrowse_DetOPR_INSERT: TStringField;
    QBrowse_DetNO_REG: TFloatField;
    QBrowse_DetPROSES: TStringField;
    QBrowse_DetLOKASI: TStringField;
    QBrowse_DetKONSTRUKSI: TStringField;
    QBrowse_DetCORAK: TStringField;
    QBrowse_DetTANGGAL: TDateTimeField;
    QBrowse_DetNIK: TStringField;
    QBrowse_DetSHIFT: TStringField;
    QBrowse_DetNO_PRODUKSI: TStringField;
    QBrowse_DetGRUP: TStringField;
    QBrowse_DetNO_REG_TENUN: TFloatField;
    QBrowse_DetLD: TIntegerField;
    QBrowse_DetLB: TIntegerField;
    QBrowse_DetLT: TIntegerField;
    QBrowse_DetLK: TIntegerField;
    QBrowse_DetLL: TIntegerField;
    QBrowse_DetLP: TIntegerField;
    QBrowse_DetLR: TIntegerField;
    QBrowse_DetWL: TIntegerField;
    QBrowse_DetCB: TIntegerField;
    QBrowse_DetCK: TIntegerField;
    QBrowse_DetCRT: TIntegerField;
    QBrowse_DetPD: TIntegerField;
    QBrowse_DetPL: TIntegerField;
    QBrowse_DetPP: TIntegerField;
    QBrowse_DetPS: TIntegerField;
    QBrowse_DetNG: TIntegerField;
    QBrowse_DetWP: TIntegerField;
    QBrowse_DetSC: TIntegerField;
    QBrowse_DetKS: TIntegerField;
    QBrowse_DetKP: TIntegerField;
    QBrowse_DetBO: TIntegerField;
    QBrowse_DetLN: TIntegerField;
    QBrowse_DetQTY2: TFloatField;
    QBrowse_DetQTY3: TFloatField;
    QBrowse_DetKD_KONSTRUKSI: TStringField;
    QBrowse_DetKD_CORAK: TStringField;
    QBrowse_DetPR: TFloatField;
    QBrowse_DetUTB: TIntegerField;
    QBrowse_DetUTK: TIntegerField;
    QBrowse_DetLBK: TIntegerField;
    QBrowse_DetSLL: TIntegerField;
    QBrowse_DetTG: TIntegerField;
    QBrowse_DetTCS: TIntegerField;
    QBrowse_DetCUP: TIntegerField;
    QBrowse_DetNO_URUT: TFloatField;
    QBrowse_DetLPB: TIntegerField;
    QBrowse_DetLPS: TIntegerField;
    QBrowse_DetLRB: TIntegerField;
    QBrowse_DetLRS: TIntegerField;
    QBrowse_DetLS: TIntegerField;
    QBrowse_DetLSB: TIntegerField;
    QBrowse_DetLSS: TIntegerField;
    QBrowse_DetOJ: TIntegerField;
    QBrowseTotal_Det: TOracleDataSet;
    QBrowseTotal_DetTOTAL: TFloatField;
    QBrowse3: TOracleDataSet;
    dsQBrowse3: TwwDataSource;
    QBrowse3NO_SERI_BEAM: TStringField;
    QBrowse3KODI_BK: TFloatField;
    QBrowse3PCS_BK: TFloatField;
    QBrowse3KODI_BS: TFloatField;
    QBrowse3PCS_BS: TFloatField;
    QBrowse3KODI_BS_PARAH: TFloatField;
    QBrowse3PCS_BS_PARAH: TFloatField;
    QBrowse3KONSTRUKSI: TStringField;
    LabelBanner: TLabel;
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksiKONSTRUKSI: TStringField;
    DsPerKonstruksi: TwwDataSource;
    QPerKonstruksi_Tot: TOracleDataSet;
    QBrowse_DetLPT: TIntegerField;
    QBrowse_DetLRG: TIntegerField;
    QBrowse_DetCKK: TIntegerField;
    QBrowse_DetCAJ: TIntegerField;
    QBrowse_DetPKP: TIntegerField;
    QBrowse_DetBTB: TIntegerField;
    QBrowse_DetANR: TIntegerField;
    QBrowse_DetUTS: TIntegerField;
    QBrowse_DetKBR: TIntegerField;
    QBSBK_TOT: TOracleDataSet;
    QPerCorak: TOracleDataSet;
    DsPerCorak: TwwDataSource;
    QPerCorakCORAK: TStringField;
    QTotCorak: TOracleDataSet;
    QTotCorakTOTAL: TFloatField;
    QPerCorakQTY: TFloatField;
    look_op: TwwDBLookupComboDlg;
    QPerOperator: TOracleDataSet;
    DsQPerOperator: TwwDataSource;
    QPerOperator_Tot: TOracleDataSet;
    QPerOperatorPETUGAS_INSPECT: TStringField;
    QPerOperatorQTY: TFloatField;
    QPerOperator_TotQTY: TFloatField;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel9: TPanel;
    BitBtn7: TBitBtn;
    BtnExport3: TBitBtn;
    wwDBGrid5: TwwDBGrid;
    Label17: TLabel;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText12: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText21: TQRDBText;
    QRSysData3: TQRSysData;
    QRBand4: TQRBand;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRBand5: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape14: TQRShape;
    QRBand6: TQRBand;
    QRLabel19: TQRLabel;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRShape7: TQRShape;
    BitBtn6: TBitBtn;
    TabSheet4: TTabSheet;
    LabelBanner3: TLabel;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglAkhir2: TwwDBDateTimePicker;
    Panel7: TPanel;
    vOperand2: TLabel;
    cbTanggal2: TCheckBox;
    BitBtn8: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BtnExport2: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    QBrowse_Mitra_det: TOracleDataSet;
    DsQBrowse_Mitra_det: TwwDataSource;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QPerKonstruksiKD_PRODUKSI: TStringField;
    QPerKonstruksiCORAK: TStringField;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel1: TQRLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    TabSheet5: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel10: TPanel;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    vTglAwal8: TwwDBDateTimePicker;
    vTglAkhir8: TwwDBDateTimePicker;
    Panel11: TPanel;
    vOperand8: TLabel;
    BtnFind8: TSpeedButton;
    BtnOk8: TSpeedButton;
    cbTanggal8: TCheckBox;
    BitBtn9: TBitBtn;
    ECari8: TEdit;
    cbOtomatis8: TCheckBox;
    dbcField8: TwwDBComboBox;
    BtnExport8: TBitBtn;
    Label15: TLabel;
    QBSBK_TOT2: TOracleDataSet;
    QBrowse_Mitra_det2: TOracleDataSet;
    dsQBrowse_Mitra_det2: TwwDataSource;
    QUnpost: TOracleQuery;
    QPerKonstruksiPOTONG: TFloatField;
    QPerKonstruksiQTY: TFloatField;
    QPerKonstruksiMETER: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    QPerKonstruksi_TotQTY: TFloatField;
    QPerKonstruksi_TotMETER: TFloatField;
    QBrowse_Mitra_detKD_PRODUKSI: TStringField;
    QBrowse_Mitra_detKONSTRUKSI: TStringField;
    QBrowse_Mitra_detMITRA: TStringField;
    QBrowse_Mitra_detLB: TFloatField;
    QBrowse_Mitra_detLK: TFloatField;
    QBrowse_Mitra_detPD: TFloatField;
    QBrowse_Mitra_detKNT: TFloatField;
    QBrowse_Mitra_detANR: TFloatField;
    QBrowse_Mitra_detLD: TFloatField;
    QBrowse_Mitra_detLT: TFloatField;
    QBrowse_Mitra_detLPT: TFloatField;
    QBrowse_Mitra_detLRG: TFloatField;
    QBrowse_Mitra_detWL: TFloatField;
    QBrowse_Mitra_detFLS: TFloatField;
    QBrowse_Mitra_detFLP: TFloatField;
    QBrowse_Mitra_detNEPS: TFloatField;
    QBrowse_Mitra_detPP: TFloatField;
    QBrowse_Mitra_detWP: TFloatField;
    QBrowse_Mitra_detOJ: TFloatField;
    QBrowse_Mitra_detCRT: TFloatField;
    QBrowse_Mitra_detBTS: TFloatField;
    QBrowse_Mitra_detBTB: TFloatField;
    QBrowse_Mitra_detBO: TFloatField;
    QBrowse_Mitra_detSC: TFloatField;
    QBrowse_Mitra_detSLL: TFloatField;
    QBrowse_Mitra_detCK: TFloatField;
    QBrowse_Mitra_detCAJ: TFloatField;
    QBrowse_Mitra_detKTR: TFloatField;
    QBrowse_Mitra_detPDK: TFloatField;
    QBrowse_Mitra_detKP: TFloatField;
    QBrowse_Mitra_detKECOES_BG: TFloatField;
    QBrowse_Mitra_detSBK: TFloatField;
    QBrowse_Mitra_detKNB: TFloatField;
    QBrowse_Mitra_detUTS: TFloatField;
    QBrowse_Mitra_detAFL: TFloatField;
    QBrowse_Mitra_detKECOES_BS: TFloatField;
    QBrowse_Mitra_detBS_FLS: TFloatField;
    QBrowse_Mitra_detBS_FLP: TFloatField;
    QBrowse_Mitra_detBS_BTS: TFloatField;
    QBrowse_Mitra_detBS_BTB: TFloatField;
    QBrowse_Mitra_detBS_TK: TFloatField;
    QBrowse_Mitra_detPJG: TFloatField;
    QBrowse_Mitra_detLBR: TFloatField;
    QBrowse_Mitra_detCUP: TFloatField;
    QBrowse_Mitra_detPR: TFloatField;
    QBrowse_Mitra_detMETER: TFloatField;
    QBrowse_Mitra_detSATUAN: TStringField;
    QBrowse_Mitra_detQTY: TFloatField;
    QBrowse_Mitra_detQTY_PCS: TFloatField;
    QBrowse_Mitra_detQTY_METER: TFloatField;
    QBrowse_Mitra_detQTY3: TFloatField;
    QBrowse_Mitra_detBGRADE: TFloatField;
    QBrowse_Mitra_detQTY2: TFloatField;
    QBrowse_Mitra_detP_BK: TFloatField;
    QBrowse_Mitra_detP_BGRADE: TFloatField;
    QBrowse_Mitra_detP_BS: TFloatField;
    QBrowse_Mitra_detM_QTY2: TFloatField;
    QBrowse_Mitra_detM_QTY3: TFloatField;
    QBrowse_Mitra_detM_BGRADE: TFloatField;
    QBrowse_Mitra_detPM_BS: TFloatField;
    QBrowse_Mitra_detPM_BK: TFloatField;
    QBrowse_Mitra_detPM_BGRADE: TFloatField;
    QBrowse_Mitra_detP_LD: TFloatField;
    QBrowse_Mitra_detP_LT: TFloatField;
    QBrowse_Mitra_detP_LPT: TFloatField;
    QBrowse_Mitra_detP_LRG: TFloatField;
    QBrowse_Mitra_detP_WL: TFloatField;
    QBrowse_Mitra_detP_FLS: TFloatField;
    QBrowse_Mitra_detP_FLP: TFloatField;
    QBrowse_Mitra_detP_NEPS: TFloatField;
    QBrowse_Mitra_detP_PP: TFloatField;
    QBrowse_Mitra_detP_WP: TFloatField;
    QBrowse_Mitra_detP_OJ: TFloatField;
    QBrowse_Mitra_detP_CRT: TFloatField;
    QBrowse_Mitra_detP_BTS: TFloatField;
    QBrowse_Mitra_detP_BTB: TFloatField;
    QBrowse_Mitra_detP_BO: TFloatField;
    QBrowse_Mitra_detP_SC: TFloatField;
    QBrowse_Mitra_detP_SLL: TFloatField;
    QBrowse_Mitra_detP_CK: TFloatField;
    QBrowse_Mitra_detP_CAJ: TFloatField;
    QBrowse_Mitra_detP_KTR: TFloatField;
    QBrowse_Mitra_detP_PDK: TFloatField;
    QBrowse_Mitra_detP_KP: TFloatField;
    QBrowse_Mitra_detP_KECOES_BG: TFloatField;
    QBrowse_Mitra_detP_SBK: TFloatField;
    QBrowse_Mitra_detP_UTS: TFloatField;
    QBrowse_Mitra_detP_KNB: TFloatField;
    QBrowse_Mitra_detP_BS_FLS: TFloatField;
    QBrowse_Mitra_detP_BS_FLP: TFloatField;
    QBrowse_Mitra_detP_BS_BTS: TFloatField;
    QBrowse_Mitra_detP_BS_BTB: TFloatField;
    QBrowse_Mitra_detP_BS_TK: TFloatField;
    QBrowse_Mitra_detP_AFL: TFloatField;
    QBrowse_Mitra_detP_KECOES_BS: TFloatField;
    QBrowse_Mitra_det2KD_PRODUKSI: TStringField;
    QBrowse_Mitra_det2KONSTRUKSI: TStringField;
    QBrowse_Mitra_det2MITRA: TStringField;
    QBrowse_Mitra_det2LB: TFloatField;
    QBrowse_Mitra_det2LK: TFloatField;
    QBrowse_Mitra_det2PD: TFloatField;
    QBrowse_Mitra_det2KNT: TFloatField;
    QBrowse_Mitra_det2ANR: TFloatField;
    QBrowse_Mitra_det2LD: TFloatField;
    QBrowse_Mitra_det2LT: TFloatField;
    QBrowse_Mitra_det2LPT: TFloatField;
    QBrowse_Mitra_det2LRG: TFloatField;
    QBrowse_Mitra_det2WL: TFloatField;
    QBrowse_Mitra_det2FLS: TFloatField;
    QBrowse_Mitra_det2FLP: TFloatField;
    QBrowse_Mitra_det2NEPS: TFloatField;
    QBrowse_Mitra_det2PP: TFloatField;
    QBrowse_Mitra_det2WP: TFloatField;
    QBrowse_Mitra_det2OJ: TFloatField;
    QBrowse_Mitra_det2CRT: TFloatField;
    QBrowse_Mitra_det2BTS: TFloatField;
    QBrowse_Mitra_det2BTB: TFloatField;
    QBrowse_Mitra_det2BO: TFloatField;
    QBrowse_Mitra_det2SC: TFloatField;
    QBrowse_Mitra_det2SLL: TFloatField;
    QBrowse_Mitra_det2CK: TFloatField;
    QBrowse_Mitra_det2CAJ: TFloatField;
    QBrowse_Mitra_det2KTR: TFloatField;
    QBrowse_Mitra_det2PDK: TFloatField;
    QBrowse_Mitra_det2KP: TFloatField;
    QBrowse_Mitra_det2KECOES_BG: TFloatField;
    QBrowse_Mitra_det2SBK: TFloatField;
    QBrowse_Mitra_det2KNB: TFloatField;
    QBrowse_Mitra_det2UTS: TFloatField;
    QBrowse_Mitra_det2AFL: TFloatField;
    QBrowse_Mitra_det2KECOES_BS: TFloatField;
    QBrowse_Mitra_det2BS_FLS: TFloatField;
    QBrowse_Mitra_det2BS_FLP: TFloatField;
    QBrowse_Mitra_det2BS_BTS: TFloatField;
    QBrowse_Mitra_det2BS_BTB: TFloatField;
    QBrowse_Mitra_det2BS_TK: TFloatField;
    QBrowse_Mitra_det2PJG: TFloatField;
    QBrowse_Mitra_det2LBR: TFloatField;
    QBrowse_Mitra_det2CUP: TFloatField;
    QBrowse_Mitra_det2PR: TFloatField;
    QBrowse_Mitra_det2METER: TFloatField;
    QBrowse_Mitra_det2SATUAN: TStringField;
    QBrowse_Mitra_det2QTY: TFloatField;
    QBrowse_Mitra_det2QTY_PCS: TFloatField;
    QBrowse_Mitra_det2QTY_METER: TFloatField;
    QBrowse_Mitra_det2QTY3: TFloatField;
    QBrowse_Mitra_det2BGRADE: TFloatField;
    QBrowse_Mitra_det2QTY2: TFloatField;
    QBrowse_Mitra_det2P_BK: TFloatField;
    QBrowse_Mitra_det2P_BGRADE: TFloatField;
    QBrowse_Mitra_det2P_BS: TFloatField;
    QBrowse_Mitra_det2M_QTY2: TFloatField;
    QBrowse_Mitra_det2M_QTY3: TFloatField;
    QBrowse_Mitra_det2M_BGRADE: TFloatField;
    QBrowse_Mitra_det2PM_BS: TFloatField;
    QBrowse_Mitra_det2PM_BK: TFloatField;
    QBrowse_Mitra_det2PM_BGRADE: TFloatField;
    QBrowse_Mitra_det2P_LD: TFloatField;
    QBrowse_Mitra_det2P_LT: TFloatField;
    QBrowse_Mitra_det2P_LPT: TFloatField;
    QBrowse_Mitra_det2P_LRG: TFloatField;
    QBrowse_Mitra_det2P_WL: TFloatField;
    QBrowse_Mitra_det2P_FLS: TFloatField;
    QBrowse_Mitra_det2P_FLP: TFloatField;
    QBrowse_Mitra_det2P_NEPS: TFloatField;
    QBrowse_Mitra_det2P_PP: TFloatField;
    QBrowse_Mitra_det2P_WP: TFloatField;
    QBrowse_Mitra_det2P_OJ: TFloatField;
    QBrowse_Mitra_det2P_CRT: TFloatField;
    QBrowse_Mitra_det2P_BTS: TFloatField;
    QBrowse_Mitra_det2P_BTB: TFloatField;
    QBrowse_Mitra_det2P_BO: TFloatField;
    QBrowse_Mitra_det2P_SC: TFloatField;
    QBrowse_Mitra_det2P_SLL: TFloatField;
    QBrowse_Mitra_det2P_CK: TFloatField;
    QBrowse_Mitra_det2P_CAJ: TFloatField;
    QBrowse_Mitra_det2P_KTR: TFloatField;
    QBrowse_Mitra_det2P_PDK: TFloatField;
    QBrowse_Mitra_det2P_KP: TFloatField;
    QBrowse_Mitra_det2P_KECOES_BG: TFloatField;
    QBrowse_Mitra_det2P_SBK: TFloatField;
    QBrowse_Mitra_det2P_UTS: TFloatField;
    QBrowse_Mitra_det2P_KNB: TFloatField;
    QBrowse_Mitra_det2P_BS_FLS: TFloatField;
    QBrowse_Mitra_det2P_BS_FLP: TFloatField;
    QBrowse_Mitra_det2P_BS_BTS: TFloatField;
    QBrowse_Mitra_det2P_BS_BTB: TFloatField;
    QBrowse_Mitra_det2P_BS_TK: TFloatField;
    QBrowse_Mitra_det2P_AFL: TFloatField;
    QBrowse_Mitra_det2P_KECOES_BS: TFloatField;
    QBSBK_TOT2LB: TFloatField;
    QBSBK_TOT2LK: TFloatField;
    QBSBK_TOT2PD: TFloatField;
    QBSBK_TOT2KNT: TFloatField;
    QBSBK_TOT2ANR: TFloatField;
    QBSBK_TOT2LD: TFloatField;
    QBSBK_TOT2LT: TFloatField;
    QBSBK_TOT2LPT: TFloatField;
    QBSBK_TOT2LRG: TFloatField;
    QBSBK_TOT2WL: TFloatField;
    QBSBK_TOT2FLS: TFloatField;
    QBSBK_TOT2FLP: TFloatField;
    QBSBK_TOT2NEPS: TFloatField;
    QBSBK_TOT2PP: TFloatField;
    QBSBK_TOT2WP: TFloatField;
    QBSBK_TOT2OJ: TFloatField;
    QBSBK_TOT2CRT: TFloatField;
    QBSBK_TOT2BTS: TFloatField;
    QBSBK_TOT2BTB: TFloatField;
    QBSBK_TOT2BO: TFloatField;
    QBSBK_TOT2SC: TFloatField;
    QBSBK_TOT2SLL: TFloatField;
    QBSBK_TOT2CK: TFloatField;
    QBSBK_TOT2CAJ: TFloatField;
    QBSBK_TOT2KTR: TFloatField;
    QBSBK_TOT2PDK: TFloatField;
    QBSBK_TOT2KP: TFloatField;
    QBSBK_TOT2KECOES_BG: TFloatField;
    QBSBK_TOT2SBK: TFloatField;
    QBSBK_TOT2KNB: TFloatField;
    QBSBK_TOT2UTS: TFloatField;
    QBSBK_TOT2AFL: TFloatField;
    QBSBK_TOT2KECOES_BS: TFloatField;
    QBSBK_TOT2BS_FLS: TFloatField;
    QBSBK_TOT2BS_FLP: TFloatField;
    QBSBK_TOT2BS_BTS: TFloatField;
    QBSBK_TOT2BS_BTB: TFloatField;
    QBSBK_TOT2BS_TK: TFloatField;
    QBSBK_TOT2PJG: TFloatField;
    QBSBK_TOT2LBR: TFloatField;
    QBSBK_TOT2CUP: TFloatField;
    QBSBK_TOT2PR: TFloatField;
    QBSBK_TOT2METER: TFloatField;
    QBSBK_TOT2QTY: TFloatField;
    QBSBK_TOT2QTY_PCS: TFloatField;
    QBSBK_TOT2QTY_METER: TFloatField;
    QBSBK_TOT2QTY3: TFloatField;
    QBSBK_TOT2BGRADE: TFloatField;
    QBSBK_TOT2QTY2: TFloatField;
    QBSBK_TOT2P_BK: TFloatField;
    QBSBK_TOT2P_BGRADE: TFloatField;
    QBSBK_TOT2P_BS: TFloatField;
    QBSBK_TOT2M_QTY2: TFloatField;
    QBSBK_TOT2M_QTY3: TFloatField;
    QBSBK_TOT2M_BGRADE: TFloatField;
    QBSBK_TOT2PM_BS: TFloatField;
    QBSBK_TOT2PM_BK: TFloatField;
    QBSBK_TOT2PM_BGRADE: TFloatField;
    QBSBK_TOT2P_LD: TFloatField;
    QBSBK_TOT2P_LT: TFloatField;
    QBSBK_TOT2P_LPT: TFloatField;
    QBSBK_TOT2P_LRG: TFloatField;
    QBSBK_TOT2P_WL: TFloatField;
    QBSBK_TOT2P_FLS: TFloatField;
    QBSBK_TOT2P_FLP: TFloatField;
    QBSBK_TOT2P_NEPS: TFloatField;
    QBSBK_TOT2P_PP: TFloatField;
    QBSBK_TOT2P_WP: TFloatField;
    QBSBK_TOT2P_OJ: TFloatField;
    QBSBK_TOT2P_CRT: TFloatField;
    QBSBK_TOT2P_BTS: TFloatField;
    QBSBK_TOT2P_BTB: TFloatField;
    QBSBK_TOT2P_BO: TFloatField;
    QBSBK_TOT2P_SC: TFloatField;
    QBSBK_TOT2P_SLL: TFloatField;
    QBSBK_TOT2P_CK: TFloatField;
    QBSBK_TOT2P_CAJ: TFloatField;
    QBSBK_TOT2P_KTR: TFloatField;
    QBSBK_TOT2P_PDK: TFloatField;
    QBSBK_TOT2P_KP: TFloatField;
    QBSBK_TOT2P_KECOES_BG: TFloatField;
    QBSBK_TOT2P_SBK: TFloatField;
    QBSBK_TOT2P_UTS: TFloatField;
    QBSBK_TOT2P_KNB: TFloatField;
    QBSBK_TOT2P_BS_FLS: TFloatField;
    QBSBK_TOT2P_BS_FLP: TFloatField;
    QBSBK_TOT2P_BS_BTS: TFloatField;
    QBSBK_TOT2P_BS_BTB: TFloatField;
    QBSBK_TOT2P_BS_TK: TFloatField;
    QBSBK_TOT2P_AFL: TFloatField;
    QBSBK_TOT2P_KECOES_BS: TFloatField;
    QBSBK_TOTLB: TFloatField;
    QBSBK_TOTLK: TFloatField;
    QBSBK_TOTPD: TFloatField;
    QBSBK_TOTKNT: TFloatField;
    QBSBK_TOTANR: TFloatField;
    QBSBK_TOTLD: TFloatField;
    QBSBK_TOTLT: TFloatField;
    QBSBK_TOTLPT: TFloatField;
    QBSBK_TOTLRG: TFloatField;
    QBSBK_TOTWL: TFloatField;
    QBSBK_TOTFLS: TFloatField;
    QBSBK_TOTFLP: TFloatField;
    QBSBK_TOTNEPS: TFloatField;
    QBSBK_TOTPP: TFloatField;
    QBSBK_TOTWP: TFloatField;
    QBSBK_TOTOJ: TFloatField;
    QBSBK_TOTCRT: TFloatField;
    QBSBK_TOTBTS: TFloatField;
    QBSBK_TOTBTB: TFloatField;
    QBSBK_TOTBO: TFloatField;
    QBSBK_TOTSC: TFloatField;
    QBSBK_TOTSLL: TFloatField;
    QBSBK_TOTCK: TFloatField;
    QBSBK_TOTCAJ: TFloatField;
    QBSBK_TOTKTR: TFloatField;
    QBSBK_TOTPDK: TFloatField;
    QBSBK_TOTKP: TFloatField;
    QBSBK_TOTKECOES_BG: TFloatField;
    QBSBK_TOTSBK: TFloatField;
    QBSBK_TOTKNB: TFloatField;
    QBSBK_TOTUTS: TFloatField;
    QBSBK_TOTAFL: TFloatField;
    QBSBK_TOTKECOES_BS: TFloatField;
    QBSBK_TOTBS_FLS: TFloatField;
    QBSBK_TOTBS_FLP: TFloatField;
    QBSBK_TOTBS_BTS: TFloatField;
    QBSBK_TOTBS_BTB: TFloatField;
    QBSBK_TOTBS_TK: TFloatField;
    QBSBK_TOTPJG: TFloatField;
    QBSBK_TOTLBR: TFloatField;
    QBSBK_TOTCUP: TFloatField;
    QBSBK_TOTPR: TFloatField;
    QBSBK_TOTMETER: TFloatField;
    QBSBK_TOTQTY: TFloatField;
    QBSBK_TOTQTY_PCS: TFloatField;
    QBSBK_TOTQTY_METER: TFloatField;
    QBSBK_TOTQTY3: TFloatField;
    QBSBK_TOTBGRADE: TFloatField;
    QBSBK_TOTQTY2: TFloatField;
    QBSBK_TOTP_BK: TFloatField;
    QBSBK_TOTP_BGRADE: TFloatField;
    QBSBK_TOTP_BS: TFloatField;
    QBSBK_TOTM_QTY2: TFloatField;
    QBSBK_TOTM_QTY3: TFloatField;
    QBSBK_TOTM_BGRADE: TFloatField;
    QBSBK_TOTPM_BS: TFloatField;
    QBSBK_TOTPM_BK: TFloatField;
    QBSBK_TOTPM_BGRADE: TFloatField;
    QBSBK_TOTP_LD: TFloatField;
    QBSBK_TOTP_LT: TFloatField;
    QBSBK_TOTP_LPT: TFloatField;
    QBSBK_TOTP_LRG: TFloatField;
    QBSBK_TOTP_WL: TFloatField;
    QBSBK_TOTP_FLS: TFloatField;
    QBSBK_TOTP_FLP: TFloatField;
    QBSBK_TOTP_NEPS: TFloatField;
    QBSBK_TOTP_PP: TFloatField;
    QBSBK_TOTP_WP: TFloatField;
    QBSBK_TOTP_OJ: TFloatField;
    QBSBK_TOTP_CRT: TFloatField;
    QBSBK_TOTP_BTS: TFloatField;
    QBSBK_TOTP_BTB: TFloatField;
    QBSBK_TOTP_BO: TFloatField;
    QBSBK_TOTP_SC: TFloatField;
    QBSBK_TOTP_SLL: TFloatField;
    QBSBK_TOTP_CK: TFloatField;
    QBSBK_TOTP_CAJ: TFloatField;
    QBSBK_TOTP_KTR: TFloatField;
    QBSBK_TOTP_PDK: TFloatField;
    QBSBK_TOTP_KP: TFloatField;
    QBSBK_TOTP_KECOES_BG: TFloatField;
    QBSBK_TOTP_SBK: TFloatField;
    QBSBK_TOTP_UTS: TFloatField;
    QBSBK_TOTP_KNB: TFloatField;
    QBSBK_TOTP_BS_FLS: TFloatField;
    QBSBK_TOTP_BS_FLP: TFloatField;
    QBSBK_TOTP_BS_BTS: TFloatField;
    QBSBK_TOTP_BS_BTB: TFloatField;
    QBSBK_TOTP_BS_TK: TFloatField;
    QBSBK_TOTP_AFL: TFloatField;
    QBSBK_TOTP_KECOES_BS: TFloatField;
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
    QMasterJENIS: TStringField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailSATUAN: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailTGL_KIRIM: TDateTimeField;
    QDetailTGL_TERIMA: TDateTimeField;
    QDetailPROD_CABUT: TFloatField;
    QDetailPROD_TDKCABUT: TFloatField;
    QDetailPROD_TOTAL: TFloatField;
    QDetailJENIS_SARUNG: TStringField;
    QDetailMITRA: TStringField;
    QDetailBK: TFloatField;
    QDetailB1: TFloatField;
    QDetailB2_TENUN: TFloatField;
    QDetailB2_FINISH: TFloatField;
    QDetailB2_PRINTING: TFloatField;
    QDetailB2_TOTAL: TFloatField;
    QDetailBS_KAIN: TFloatField;
    QDetailBS_PRINTING: TFloatField;
    QDetailBS_TOTAL: TFloatField;
    QTotalPROD_CABUT: TFloatField;
    QTotalPROD_TDKCABUT: TFloatField;
    QTotalPROD_TOTAL: TFloatField;
    QTotalBK: TFloatField;
    QTotalB1: TFloatField;
    QTotalB2_TENUN: TFloatField;
    QTotalB2_FINISH: TFloatField;
    QTotalB2_PRINTING: TFloatField;
    QTotalB2_TOTAL: TFloatField;
    QTotalBS_KAIN: TFloatField;
    QTotalBS_PRINTING: TFloatField;
    QTotalBS_TOTAL: TFloatField;
    QBrowseNO_NOTA: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseTGL: TDateTimeField;
    QBrowseTGL_TERIMA: TDateTimeField;
    QBrowseJENIS_SARUNG: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseMITRA: TStringField;
    QBrowsePROD_CABUT: TFloatField;
    QBrowsePROD_TDKCABUT: TFloatField;
    QBrowsePROD_TOTAL: TFloatField;
    QBrowseBK: TFloatField;
    QBrowseB1: TFloatField;
    QBrowseB2_TENUN: TFloatField;
    QBrowseB2_FINISH: TFloatField;
    QBrowseB2_PRINTING: TFloatField;
    QBrowseB2_TOTAL: TFloatField;
    QBrowseBS_KAIN: TFloatField;
    QBrowseBS_PRINTING: TFloatField;
    QBrowseBS_TOTAL: TFloatField;
    QBrowseNO_REG: TFloatField;
    QBrowseTotalPROD_CABUT: TFloatField;
    QBrowseTotalPROD_TDKCABUT: TFloatField;
    QBrowseTotalPROD_TOTAL: TFloatField;
    QBrowseTotalBK: TFloatField;
    QBrowseTotalB1: TFloatField;
    QBrowseTotalB2_TENUN: TFloatField;
    QBrowseTotalB2_FINISH: TFloatField;
    QBrowseTotalB2_PRINTING: TFloatField;
    QBrowseTotalB2_TOTAL: TFloatField;
    QBrowseTotalBS_KAIN: TFloatField;
    QBrowseTotalBS_PRINTING: TFloatField;
    QBrowseTotalBS_TOTAL: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure LookRekananEnter(Sender: TObject);
    procedure LookRekananClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
    procedure QDetailBeforeEdit(DataSet: TDataSet);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure QTotalBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure vTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure QBrowseTotal2CalcFields(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1xxxxxEnter(Sender: TObject);
    procedure wwDBGrid3Enter(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure wwDBGrid5TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid6TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure look_opEnter(Sender: TObject);
    procedure look_opCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnExport3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglAkhir2Change(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure vTglAwal8Change(Sender: TObject);
    procedure vTglAkhir8Change(Sender: TObject);
    procedure cbOtomatis8Click(Sender: TObject);
    procedure dbcField8Enter(Sender: TObject);
    procedure vOperand8Click(Sender: TObject);
    procedure cbTanggal8Click(Sender: TObject);
    procedure BtnExport8Click(Sender: TObject);
    procedure BtnFind8Click(Sender: TObject);
    procedure BtnOk8Click(Sender: TObject);
  private
    { Private declarations }
    vorder,vfilter:string;
  public
    { Public declarations }
  end;

var
  InspectingHipoFrm: TInspectingHipoFrm;

implementation

uses DM, Math, HasilTenun, DateUtils, InputanHipo;

{$R *.dfm}

procedure TInspectingHipoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InspectingHipoFrm:=Nil;
end;

procedure TInspectingHipoFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
end;

procedure TInspectingHipoFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TInspectingHipoFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','M04');
 QTransaksi.Open;
 InspectingHipoFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;

end;

procedure TInspectingHipoFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
  QMasterSTATUS.AsString := 'IN';
end;

procedure TInspectingHipoFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TInspectingHipoFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TInspectingHipoFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode','M04');
      FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TInspectingHipoFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TInspectingHipoFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TInspectingHipoFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;

   if Pos('BK', DMFrm.QKonstruksi_KpNAMA_KONSTRUKSI.AsString) > 0 then
  begin
    wwDBGrid1.Fields[7].ReadOnly:=false;
    wwDBGrid1.Fields[8].ReadOnly:=true;
    wwDBGrid1.Fields[9].ReadOnly:=true;
    //ShowMessage('String "BK" ditemukan dalam nama konstruksi.');
  end
  else
  begin
    wwDBGrid1.Fields[7].ReadOnly:=true;
    wwDBGrid1.Fields[8].ReadOnly:=false;
    wwDBGrid1.Fields[9].ReadOnly:=false;
  end;
end;

procedure TInspectingHipoFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TInspectingHipoFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TInspectingHipoFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
  //QDetailMUTU.AsString:='BK';
  //QDetailJENIS.AsString:='PALEKAT';
  //QDetailKD_CORAK.AsString:='000';
  //QDetailCORAK.AsString:='-';
  QMasterISPOST.AsString:='0';
end;

procedure TInspectingHipoFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TInspectingHipoFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TInspectingHipoFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TInspectingHipoFrm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TInspectingHipoFrm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);  
end;

procedure TInspectingHipoFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin

    QTotal.Close;
    QTotal.Open;

    wwDBGrid1.ColumnByName('PROD_CABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalPROD_CABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TDKCABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalPROD_TDKCABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalPROD_TOTAL.AsFloat);

    wwDBGrid1.ColumnByName('BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalBK.AsFloat);
    wwDBGrid1.ColumnByName('B1').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalB1.AsFloat);

    wwDBGrid1.ColumnByName('B2_TENUN').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalB2_TENUN.AsFloat);
    wwDBGrid1.ColumnByName('B2_FINISH').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalB2_FINISH.AsFloat);
    wwDBGrid1.ColumnByName('B2_PRINTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalB2_PRINTING.AsFloat);
    wwDBGrid1.ColumnByName('B2_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalB2_TOTAL.AsFloat);

    wwDBGrid1.ColumnByName('BS_KAIN').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalBS_KAIN.AsFloat);
    wwDBGrid1.ColumnByName('BS_PRINTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalBS_PRINTING.AsFloat);
    wwDBGrid1.ColumnByName('BS_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QTotalBS_TOTAL.AsFloat);

end;

procedure TInspectingHipoFrm.BitBtn4Click(Sender: TObject);
begin

  wwDBGrid1Enter(nil);
  InputanHipoFrm:=TInputanHipoFrm.Create(Self);
  InputanHipoFrm.QDetail.Close;
  InputanHipoFrm.QDetail.SetVariable('no_reg',InspectingHipoFrm.QMasterNO_REG.AsInteger);
  InputanHipoFrm.QDetail.Open;
 { HasilTenunMitraFrm.QMaster.Close;
  HasilTenunMitraFrm.QMaster.SetVariable('no_reg',HasilTenunFrm.QDetailNO_REG_TENUN.AsInteger);
  HasilTenunMitraFrm.QMaster.Open; }
  InputanHipoFrm.ShowModal;
  InputanHipoFrm.Free;
end;

procedure TInspectingHipoFrm.BitBtn3Click(Sender: TObject);
begin
  if QMasterISPOST.AsString='1' then
    ShowMessage('Maaf, sudah di-Posting !')
    else
    begin
      QAmbilData.Close;
      QAmbilData.SetVariable('no_reg',QMasterNO_REG.AsInteger);
      QAmbilData.Execute;
      QDetail.Close;
      QDetail.Open;
    end;

end;

procedure TInspectingHipoFrm.FormShow(Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=Date;
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglakhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglakhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglakhir.Date:=Trunc(date());

  VTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());

  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal3.Date:=Trunc(date());

  VTglakhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir3.Date:=Trunc(date());
 {
  VTglAwal4.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal4.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal4.Date:=Trunc(date());

  VTglakhir4.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir4.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir4.Date:=Trunc(date());

    VtglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VtglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VtglAwal5.Date:=Trunc(date());

  VtglAkhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
    VtglAkhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
    VtglAkhir5.Date:=Trunc(date()); }
end;

procedure TInspectingHipoFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);

end;

procedure TInspectingHipoFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;

end;

procedure TInspectingHipoFrm.cbOtomatisClick(Sender: TObject);
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

procedure TInspectingHipoFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TInspectingHipoFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';

end;

procedure TInspectingHipoFrm.cbTanggalClick(Sender: TObject);
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

procedure TInspectingHipoFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
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
        if (QBrowse.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TGL') then
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
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;

  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;

  wwDBGrid1xxxxx.ColumnByName('PROD_CABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalPROD_CABUT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PROD_TDKCABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalPROD_TDKCABUT.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PROD_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalPROD_TOTAL.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('B1').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalB1.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('B2_TENUN').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalB2_TENUN.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('B2_FINISH').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalB2_FINISH.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('B2_PRINTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalB2_PRINTING.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('B2_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalB2_TOTAL.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS_KAIN').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_KAIN.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS_PRINTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_PRINTING.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_TOTAL.AsFloat);


end;

procedure TInspectingHipoFrm.BtnExportClick(Sender: TObject);
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

procedure TInspectingHipoFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TInspectingHipoFrm.TabSheet1Show(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','M04');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Close;
 QDetail.Close;
 QMaster.Open;
 QDetail.Open;
end;

procedure TInspectingHipoFrm.wwDBDateTimePicker1Change(
  Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=wwDBDateTimePicker1.Date;
end;

procedure TInspectingHipoFrm.QBrowseTotal2CalcFields(
  DataSet: TDataSet);
VAR
  vtot_pcs, vtot_kodi : real;
begin
  vtot_pcs:=QBrowseTotal2PCS_BK.AsFloat+
    QBrowseTotal2PCS_BS.AsFloat+
    QBrowseTotal2PCS_BS_PARAH.AsFloat;
  vtot_kodi:=QBrowseTotal2KODI_BK.AsFloat+
    QBrowseTotal2KODI_BS.AsFloat+
    QBrowseTotal2KODI_BS_PARAH.AsFloat+
    trunc(vtot_pcs/20);
  QBrowseTotal2TOT_KODI.AsFloat:=vtot_kodi;
  QBrowseTotal2TOT_PCS.AsFloat:=(vtot_pcs/20-trunc(vtot_pcs/20))*20;
end;

procedure TInspectingHipoFrm.TabSheet3Show(Sender: TObject);
begin
  QBrowseTotal2.Close;
  QBrowseTotal2.Open;
end;

procedure TInspectingHipoFrm.wwDBNavigator1Button1Click(
  Sender: TObject);
begin
          if QDetail.RecordCount>=1 then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=Caption;
             wwDBGrid1.ExportOptions.TitleName:=Caption;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid1.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');

end;

procedure TInspectingHipoFrm.TabSheet4Show(Sender: TObject);
begin
  vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  //QBrowse_Det.Open;
end;

procedure TInspectingHipoFrm.wwDBGrid3TitleButtonClick(
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

procedure TInspectingHipoFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TInspectingHipoFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
//  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TInspectingHipoFrm.wwDBGrid3Enter(Sender: TObject);
begin
//  If QMaster.State<> dsBrowse then QMaster.Post;  
end;

procedure TInspectingHipoFrm.TabSheet6Show(Sender: TObject);
begin
 //vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
 QPerKonstruksi.Open
 end;

procedure TInspectingHipoFrm.wwDBGrid5TitleButtonClick(
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

procedure TInspectingHipoFrm.wwDBGrid6TitleButtonClick(
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

procedure TInspectingHipoFrm.look_opEnter(Sender: TObject);
begin
DMFrm.QOp_Inspect.Open;
end;

procedure TInspectingHipoFrm.look_opCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  QMasterOPERATOR.AsString:=DMFrm.QOp_InspectNAMA_KARYAWAN.AsString;
end;

procedure TInspectingHipoFrm.TabSheet8Show(Sender: TObject);
begin
QPerOperator.Open;
end;

procedure TInspectingHipoFrm.TabSheet7Show(Sender: TObject);
begin
QPerCorak.Open;
end;

procedure TInspectingHipoFrm.BitBtn7Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QPerKonstruksi.DisableControls;
  QPerKonstruksi.Close;
  QPerKonstruksi.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi.Open;
  QPerKonstruksi_Tot.Close;
  QPerKonstruksi_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi_Tot.Open;
  QPerKonstruksi.EnableControls;
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',QPerKonstruksi_TotQTY.AsFloat);
  wwDBGrid5.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-  ',QPerKonstruksi_TotPOTONG.AsFloat);
  wwDBGrid5.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',QPerKonstruksi_TotMETER.AsFloat);


  end;

procedure TInspectingHipoFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TInspectingHipoFrm.vTglAkhir3Change(Sender: TObject);
begin
 if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TInspectingHipoFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+VTglAwal3.Text+' s/d '+vTglAkhir3.Text+')';
end;

procedure TInspectingHipoFrm.BtnExport3Click(Sender: TObject);
begin
if QPerKonstruksi.Active then
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

procedure TInspectingHipoFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TInspectingHipoFrm.VTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=trunc(EndOfTheMonth(VTglAwal2.Date));
end;

procedure TInspectingHipoFrm.VTglAkhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TInspectingHipoFrm.cbOtomatis2Click(Sender: TObject);
begin
  if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid3.Options:=wwDBGrid3.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;

procedure TInspectingHipoFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Mitra_det.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TGL' then
      dbcField2.Items.Add(wwDBGrid3.Columns[i].FieldName);
end;

procedure TInspectingHipoFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TInspectingHipoFrm.cbTanggal2Click(Sender: TObject);
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

procedure TInspectingHipoFrm.BtnExport2Click(Sender: TObject);
begin
 if QBrowse_Mitra_det.Active then
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

procedure TInspectingHipoFrm.BtnFindClick(Sender: TObject);
begin
  if not QBrowse_Mitra_det.QBEMode then
  begin
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse_Mitra_det.QBEMode:=TRUE;
  end
  else
    QBrowse_Mitra_det.ClearQBE;
end;

procedure TInspectingHipoFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TInspectingHipoFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TInspectingHipoFrm.BitBtn8Click(Sender: TObject);
begin

    QBrowse_Mitra_det.DisableControls;
    QBrowse_Mitra_det.Close;
    QBrowse_Mitra_det.SetVariable('pawal',VTglAwal2.Date);
    QBrowse_Mitra_det.SetVariable('pakhir',VTglAkhir2.Date);
    QBrowse_Mitra_det.Open;

    QBSBK_TOT.Close;
    QBSBK_TOT.SetVariable('pawal',VTglAwal2.Date);
    QBSBK_TOT.SetVariable('pakhir',VTglAkhir2.Date);
    QBSBK_TOT.Open;
    QBrowse_Mitra_det.EnableControls;

    wwDBGrid3.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY_PCS.AsFloat);
    wwDBGrid3.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY_METER.AsFloat);

    wwDBGrid3.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY3.AsFloat);
    wwDBGrid3.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBGRADE.AsFloat);
    wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY2.AsFloat);

    wwDBGrid3.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTQTY3.AsFloat/QBSBK_TOTQTY_PCS.AsFloat)*100);
    wwDBGrid3.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTBGRADE.AsFloat/QBSBK_TOTQTY_PCS.AsFloat)*100);
    wwDBGrid3.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTQTY2.AsFloat/QBSBK_TOTQTY_PCS.AsFloat)*100);

    wwDBGrid3.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY3.AsFloat);
    wwDBGrid3.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_BGRADE.AsFloat);
    wwDBGrid3.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY2.AsFloat);

    wwDBGrid3.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTM_QTY3.AsFloat/QBSBK_TOTQTY_METER.AsFloat)*100);
    wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTM_BGRADE.AsFloat/QBSBK_TOTQTY_METER.AsFloat)*100);
    wwDBGrid3.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOTM_QTY2.AsFloat/QBSBK_TOTQTY_METER.AsFloat)*100);

    wwDBGrid3.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLD.AsFloat);
    wwDBGrid3.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLT.AsFloat);
    wwDBGrid3.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLPT.AsFloat);
    wwDBGrid3.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLRG.AsFloat);
    wwDBGrid3.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTWL.AsFloat);
    wwDBGrid3.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTFLS.AsFloat);
    wwDBGrid3.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTFLP.AsFloat);
    wwDBGrid3.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTNEPS.AsFloat);
    wwDBGrid3.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPP.AsFloat);
    wwDBGrid3.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTWP.AsFloat);
    wwDBGrid3.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTOJ.AsFloat);
    wwDBGrid3.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTCRT.AsFloat);
    wwDBGrid3.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBTS.AsFloat);
    wwDBGrid3.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBTB.AsFloat);
    wwDBGrid3.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBO.AsFloat);
    wwDBGrid3.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTSC.AsFloat);
    wwDBGrid3.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTSLL.AsFloat);
    wwDBGrid3.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTCK.AsFloat);
    wwDBGrid3.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTCAJ.AsFloat);
    wwDBGrid3.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKTR.AsFloat);
    wwDBGrid3.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPDK.AsFloat);
    wwDBGrid3.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKP.AsFloat);
    wwDBGrid3.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKECOES_BG.AsFloat);

    wwDBGrid3.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTSBK.AsFloat);
    wwDBGrid3.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTUTS.AsFloat);
    wwDBGrid3.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKNB.AsFloat);
    wwDBGrid3.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTAFL.AsFloat);
    wwDBGrid3.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKECOES_BS.AsFloat);

    //wwDBGrid3.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBK.AsFloat);
    //wwDBGrid3.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBGRADE.AsFloat);
    //wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBSBK_TOTBS.AsFloat);

    wwDBGrid3.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBS_FLS.AsFloat);
    wwDBGrid3.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBS_FLP.AsFloat);
    wwDBGrid3.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBS_BTS.AsFloat);
    wwDBGrid3.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBS_BTB.AsFloat);
    wwDBGrid3.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBS_TK.AsFloat);

end;

procedure TInspectingHipoFrm.BtnOk2Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47: real;

begin
    if QBrowse_Mitra_det.QBEMode then
    begin
        QBrowse_Mitra_det.ExecuteQBE;
        wwDBGrid3.Options := wwDBGrid3.Options + [dgRowSelect, dgAlwaysShowSelection];
        QBrowse_Mitra_det.Open;

        vt1 := 0;  vt2 := 0;  vt3 := 0;  vt4 := 0;  vt5 := 0;  
        vt6 := 0;  vt7 := 0;  vt8 := 0;  vt9 := 0;  vt10 := 0;
        vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0;
        vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0; vt20 := 0; 
        vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0; 
        vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0; vt30 := 0; 
        vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0; 
        vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0; vt40 := 0; 
        vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0; 
        vt46 := 0; vt47 := 0;

        while not QBrowse_Mitra_det.Eof do
        begin
            vt1 := vt1 + QBrowse_Mitra_detQTY_PCS.AsFloat;

            vt2 := vt2 + QBrowse_Mitra_detQTY3.AsFloat;
            vt3 := vt3 + QBrowse_Mitra_detBGRADE.AsFloat;
            vt4 := vt4 + QBrowse_Mitra_detQTY2.AsFloat;

            vt5 := vt5 + QBrowse_Mitra_detM_QTY3.AsFloat;
            vt6 := vt6 + QBrowse_Mitra_detM_BGRADE.AsFloat;
            vt7 := vt7 + QBrowse_Mitra_detM_QTY2.AsFloat;

            vt8 := vt8 + QBrowse_Mitra_detP_BK.AsFloat;
            vt9 := vt9 + QBrowse_Mitra_detP_BGRADE.AsFloat;
            vt10 := vt10 + QBrowse_Mitra_detP_BS.AsFloat;

            vt11 := vt11 + QBrowse_Mitra_detPM_BK.AsFloat;
            vt12 := vt12 + QBrowse_Mitra_detPM_BGRADE.AsFloat;
            vt13 := vt13 + QBrowse_Mitra_detPM_BS.AsFloat;

            vt14 := vt14 + QBrowse_Mitra_detLD.AsFloat;
            vt15 := vt15 + QBrowse_Mitra_detLT.AsFloat;
            vt16 := vt16 + QBrowse_Mitra_detLPT.AsFloat;
            vt17 := vt17 + QBrowse_Mitra_detLRG.AsFloat;
            vt18 := vt18 + QBrowse_Mitra_detWL.AsFloat;
            vt19 := vt19 + QBrowse_Mitra_detFLS.AsFloat;
            vt20 := vt20 + QBrowse_Mitra_detFLP.AsFloat;
            vt21 := vt21 + QBrowse_Mitra_detNEPS.AsFloat;
            vt22 := vt22 + QBrowse_Mitra_detPP.AsFloat;
            vt23 := vt23 + QBrowse_Mitra_detWP.AsFloat;
            vt24 := vt24 + QBrowse_Mitra_detOJ.AsFloat;
            vt25 := vt25 + QBrowse_Mitra_detCRT.AsFloat;
            vt26 := vt26 + QBrowse_Mitra_detBTS.AsFloat;
            vt27 := vt27 + QBrowse_Mitra_detBTB.AsFloat;
            vt28 := vt28 + QBrowse_Mitra_detBO.AsFloat;
            vt29 := vt29 + QBrowse_Mitra_detSC.AsFloat;
            vt30 := vt30 + QBrowse_Mitra_detSLL.AsFloat;

            vt31 := vt31 + QBrowse_Mitra_detCK.AsFloat;
            vt32 := vt32 + QBrowse_Mitra_detCAJ.AsFloat;
            vt33 := vt33 + QBrowse_Mitra_detKTR.AsFloat;
            vt34 := vt34 + QBrowse_Mitra_detPDK.AsFloat;
            vt35 := vt35 + QBrowse_Mitra_detKP.AsFloat;
            vt36 := vt36 + QBrowse_Mitra_detSBK.AsFloat;
            vt37 := vt37 + QBrowse_Mitra_detUTS.AsFloat;
            vt38 := vt38 + QBrowse_Mitra_detKNB.AsFloat;
            vt39 := vt39 + QBrowse_Mitra_detAFL.AsFloat;

            vt40 := vt40 + QBrowse_Mitra_detBS_FLS.AsFloat;
            vt41 := vt41 + QBrowse_Mitra_detBS_FLP.AsFloat;
            vt42 := vt42 + QBrowse_Mitra_detBS_BTS.AsFloat;
            vt43 := vt43 + QBrowse_Mitra_detBS_BTB.AsFloat;
            vt44 := vt44 + QBrowse_Mitra_detBS_TK.AsFloat;

            vt45 := vt45 + QBrowse_Mitra_detQTY_METER.AsFloat;
            vt46 := vt46 + QBrowse_Mitra_detKECOES_BG.AsFloat;
            vt47 := vt47 + QBrowse_Mitra_detKECOES_BS.AsFloat;

            QBrowse_Mitra_det.Next;
        end;


        wwDBGrid3.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid3.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1-vt3-vt4);
        wwDBGrid3.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        wwDBGrid3.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt45-vt3-vt4)*2.20));
        wwDBGrid3.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3*2.20);
        wwDBGrid3.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4*2.20);

        wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt1-vt3-vt4)/vt1)*100);
        wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
        wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

        wwDBGrid3.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (((vt45-vt3-vt4)*2.20)/vt45)*100);
        wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt3*2.20)/vt45)*100);
        wwDBGrid3.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt4*2.20)/vt45)*100);

        wwDBGrid3.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);
        wwDBGrid3.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
        wwDBGrid3.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
        wwDBGrid3.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);
        wwDBGrid3.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
        wwDBGrid3.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
        wwDBGrid3.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
        wwDBGrid3.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);
        wwDBGrid3.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);
        wwDBGrid3.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt23);
        wwDBGrid3.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt24);
        wwDBGrid3.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt25);
        wwDBGrid3.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt26);
        wwDBGrid3.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt27);
        wwDBGrid3.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt28);
        wwDBGrid3.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt29);
        wwDBGrid3.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt30);

        wwDBGrid3.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt31);
        wwDBGrid3.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt32);
        wwDBGrid3.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt33);
        wwDBGrid3.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt34);
        wwDBGrid3.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt35);
        wwDBGrid3.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt36);
        wwDBGrid3.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt37);
        wwDBGrid3.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt38);
        wwDBGrid3.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt39);

        wwDBGrid3.ColumnByName('BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt40);
        wwDBGrid3.ColumnByName('BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt41);
        wwDBGrid3.ColumnByName('BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt42);
        wwDBGrid3.ColumnByName('BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt43);
        wwDBGrid3.ColumnByName('BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt44);

        wwDBGrid3.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
        wwDBGrid3.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);
        wwDBGrid3.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);

        wwDBGrid3.Refresh;
    end;
end;


procedure TInspectingHipoFrm.BitBtn9Click(Sender: TObject);
begin

    QBrowse_Mitra_det2.DisableControls;
    QBrowse_Mitra_det2.Close;
    QBrowse_Mitra_det2.SetVariable('pawal',VTglAwal8.Date);
    QBrowse_Mitra_det2.SetVariable('pakhir',VTglAkhir8.Date);
    QBrowse_Mitra_det2.Open;

    QBSBK_TOT2.Close;
    QBSBK_TOT2.SetVariable('pawal',VTglAwal8.Date);
    QBSBK_TOT2.SetVariable('pakhir',VTglAkhir8.Date);
    QBSBK_TOT2.Open;
    QBrowse_Mitra_det2.EnableControls;

    wwDBGrid2.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY_PCS.AsFloat);
    wwDBGrid2.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY_METER.AsFloat);

    wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY3.AsFloat);
    wwDBGrid2.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BGRADE.AsFloat);
    wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY2.AsFloat);

    wwDBGrid2.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2QTY3.AsFloat/QBSBK_TOT2QTY_PCS.AsFloat)*100);
    wwDBGrid2.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2BGRADE.AsFloat/QBSBK_TOT2QTY_PCS.AsFloat)*100);
    wwDBGrid2.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2QTY2.AsFloat/QBSBK_TOT2QTY_PCS.AsFloat)*100);

    wwDBGrid2.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY3.AsFloat);
    wwDBGrid2.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_BGRADE.AsFloat);
    wwDBGrid2.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY2.AsFloat);

    wwDBGrid2.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2M_QTY3.AsFloat/QBSBK_TOT2QTY_METER.AsFloat)*100);
    wwDBGrid2.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2M_BGRADE.AsFloat/QBSBK_TOT2QTY_METER.AsFloat)*100);
    wwDBGrid2.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', (QBSBK_TOT2M_QTY2.AsFloat/QBSBK_TOT2QTY_METER.AsFloat)*100);

    wwDBGrid2.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LD.AsFloat);
    wwDBGrid2.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LT.AsFloat);
    wwDBGrid2.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LPT.AsFloat);
    wwDBGrid2.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LRG.AsFloat);
    wwDBGrid2.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_WL.AsFloat);
    wwDBGrid2.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_FLS.AsFloat);
    wwDBGrid2.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_FLP.AsFloat);
    wwDBGrid2.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_NEPS.AsFloat);
    wwDBGrid2.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_PP.AsFloat);
    wwDBGrid2.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_WP.AsFloat);
    wwDBGrid2.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_OJ.AsFloat);
    wwDBGrid2.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_CRT.AsFloat);
    wwDBGrid2.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BTS.AsFloat);
    wwDBGrid2.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BTB.AsFloat);
    wwDBGrid2.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BO.AsFloat);
    wwDBGrid2.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_SC.AsFloat);
    wwDBGrid2.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_SLL.AsFloat);
    wwDBGrid2.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_CK.AsFloat);
    wwDBGrid2.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_CAJ.AsFloat);
    wwDBGrid2.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KTR.AsFloat);
    wwDBGrid2.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_PDK.AsFloat);
    wwDBGrid2.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KP.AsFloat);
    wwDBGrid2.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KECOES_BG.AsFloat);

    wwDBGrid2.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_SBK.AsFloat);
    wwDBGrid2.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_UTS.AsFloat);
    wwDBGrid2.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KNB.AsFloat);
    wwDBGrid2.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_AFL.AsFloat);
    wwDBGrid2.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KECOES_BG.AsFloat);

    wwDBGrid2.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS_FLS.AsFloat);
    wwDBGrid2.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS_FLP.AsFloat);
    wwDBGrid2.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS_BTS.AsFloat);
    wwDBGrid2.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS_BTB.AsFloat);
    wwDBGrid2.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS_TK.AsFloat);
    
end;

procedure TInspectingHipoFrm.vTglAwal8Change(Sender: TObject);
begin
vTglAkhir8.Date:=trunc(EndOfTheMonth(vTglAwal8.Date));
end;

procedure TInspectingHipoFrm.vTglAkhir8Change(Sender: TObject);
begin
if vTglAwal8.Date>vTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir8.Date:=vTglAwal8.Date;
  end;
end;

procedure TInspectingHipoFrm.cbOtomatis8Click(Sender: TObject);
begin
if cbOtomatis8.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgAlwaysShowSelection];
  ECari8.SetFocus;
end;

procedure TInspectingHipoFrm.dbcField8Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Mitra_det2.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TGL' then
      dbcField8.Items.Add(wwDBGrid2.Columns[i].FieldName);
end;

procedure TInspectingHipoFrm.vOperand8Click(Sender: TObject);
begin
if vOperand8.Caption='LIKE' then
    vOperand8.Caption:='='
    else
      vOperand8.Caption:='LIKE';
end;

procedure TInspectingHipoFrm.cbTanggal8Click(Sender: TObject);
begin
if cbTanggal8.Checked then
  begin
    vTglAwal8.Enabled:=cbTanggal8.Checked;
    vTglAkhir8.Enabled:=cbTanggal8.Checked;
    vTglAwal8.SetFocus;
  end
  else
    ECari8.SetFocus;
end;

procedure TInspectingHipoFrm.BtnExport8Click(Sender: TObject);
begin
 if QBrowse_Mitra_det2.Active then
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

procedure TInspectingHipoFrm.BtnFind8Click(Sender: TObject);
begin
  if not QBrowse_Mitra_det2.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse_Mitra_det2.QBEMode:=TRUE;
  end
  else
    QBrowse_Mitra_det2.ClearQBE;
end;

procedure TInspectingHipoFrm.BtnOk8Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47: real;

begin
    if QBrowse_Mitra_det2.QBEMode then
        begin
            QBrowse_Mitra_det2.ExecuteQBE;
            wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
            //disini
            vt1:=0;
            while not QBrowse_Mitra_det2.Eof do
                begin
                    vt1 := vt1 + QBrowse_Mitra_det2QTY_PCS.AsFloat;
                    vt45 := vt45 + QBrowse_Mitra_det2QTY_METER.AsFloat;

                    vt2 := vt2 + QBrowse_Mitra_det2QTY3.AsFloat;
                    vt3 := vt3 + QBrowse_Mitra_det2BGRADE.AsFloat;
                    vt4 := vt4 + QBrowse_Mitra_det2QTY2.AsFloat;

                    vt5 := vt5 + QBrowse_Mitra_det2M_QTY3.AsFloat;
                    vt6 := vt6 + QBrowse_Mitra_det2M_BGRADE.AsFloat;
                    vt7 := vt7 + QBrowse_Mitra_det2M_QTY2.AsFloat;

                    vt8 := vt8 + QBrowse_Mitra_det2P_BK.AsFloat;
                    vt9 := vt9 + QBrowse_Mitra_det2P_BGRADE.AsFloat;
                    vt10 := vt10 + QBrowse_Mitra_det2P_BS.AsFloat;

                    vt11 := vt11 + QBrowse_Mitra_det2PM_BK.AsFloat;
                    vt12 := vt12 + QBrowse_Mitra_det2PM_BGRADE.AsFloat;
                    vt13 := vt13 + QBrowse_Mitra_det2PM_BS.AsFloat;

                    vt14 := vt14 + QBrowse_Mitra_det2LD.AsFloat;
                    vt15 := vt15 + QBrowse_Mitra_det2LT.AsFloat;
                    vt16 := vt16 + QBrowse_Mitra_det2LPT.AsFloat;
                    vt17 := vt17 + QBrowse_Mitra_det2LRG.AsFloat;
                    vt18 := vt18 + QBrowse_Mitra_det2WL.AsFloat;
                    vt19 := vt19 + QBrowse_Mitra_det2FLS.AsFloat;
                    vt20 := vt20 + QBrowse_Mitra_det2FLP.AsFloat;
                    vt21 := vt21 + QBrowse_Mitra_det2NEPS.AsFloat;
                    vt22 := vt22 + QBrowse_Mitra_det2PP.AsFloat;
                    vt23 := vt23 + QBrowse_Mitra_det2WP.AsFloat;
                    vt24 := vt24 + QBrowse_Mitra_det2OJ.AsFloat;
                    vt25 := vt25 + QBrowse_Mitra_det2CRT.AsFloat;
                    vt26 := vt26 + QBrowse_Mitra_det2BTS.AsFloat;
                    vt27 := vt27 + QBrowse_Mitra_det2BTB.AsFloat;
                    vt28 := vt28 + QBrowse_Mitra_det2BO.AsFloat;
                    vt29 := vt29 + QBrowse_Mitra_det2SC.AsFloat;
                    vt30 := vt30 + QBrowse_Mitra_det2SLL.AsFloat;

                    vt31 := vt31 + QBrowse_Mitra_det2CK.AsFloat;
                    vt32 := vt32 + QBrowse_Mitra_det2CAJ.AsFloat;
                    vt33 := vt33 + QBrowse_Mitra_det2KTR.AsFloat;
                    vt34 := vt34 + QBrowse_Mitra_det2PDK.AsFloat;
                    vt35 := vt35 + QBrowse_Mitra_det2KP.AsFloat;
                    vt36 := vt36 + QBrowse_Mitra_det2SBK.AsFloat;
                    vt37 := vt37 + QBrowse_Mitra_det2UTS.AsFloat;
                    vt38 := vt38 + QBrowse_Mitra_det2KNB.AsFloat;
                    vt39 := vt39 + QBrowse_Mitra_det2AFL.AsFloat;

                    vt40 := vt40 + QBrowse_Mitra_det2BS_FLS.AsFloat;
                    vt41 := vt41 + QBrowse_Mitra_det2BS_FLP.AsFloat;
                    vt42 := vt42 + QBrowse_Mitra_det2BS_BTS.AsFloat;
                    vt43 := vt43 + QBrowse_Mitra_det2BS_BTB.AsFloat;
                    vt44 := vt44 + QBrowse_Mitra_det2BS_TK.AsFloat;

                    vt46 := vt46 + QBrowse_Mitra_det2KECOES_BG.AsFloat;
                    vt47 := vt47 + QBrowse_Mitra_det2KECOES_BS.AsFloat;


                    QBrowse_Mitra_det2.Next;
                end;
            wwDBGrid2.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            wwDBGrid2.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);

            wwDBGrid2.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
            wwDBGrid2.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
            wwDBGrid2.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

            wwDBGrid2.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2));
            wwDBGrid2.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2));
            wwDBGrid2.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2));

            wwDBGrid2.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1+vt45)*100);

            wwDBGrid2.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2)/(vt1+vt45*2.2)*100);
            wwDBGrid2.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2)/(vt1+vt45*2.2)*100);
            wwDBGrid2.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2)/(vt1+vt45*2.2)*100);

            wwDBGrid2.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1+vt45)*100);

            wwDBGrid2.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1+vt45)*100);


            //disini
        end
end;

end.
