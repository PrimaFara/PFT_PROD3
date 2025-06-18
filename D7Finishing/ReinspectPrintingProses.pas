unit ReinspectPrintingProses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls,DateUtils, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, wwrcdvw;

type
  TReinspectPrintingProsesFrm = class(TForm)
    PanelLeft: TPanel;
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
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
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
    DB2: TDBText;
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
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboBox2: TwwDBComboBox;
    look_op: TwwDBLookupComboDlg;
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
    LookCorak: TwwDBLookupComboDlg;
    LookSatuan: TwwDBComboBox;
    LookJenis: TwwDBComboBox;
    TabSheet2: TTabSheet;
    LabelBanner: TLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    VTglAwal: TwwDBDateTimePicker;
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
    Panel1: TPanel;
    Panel2: TPanel;
    PanelRight: TPanel;
    QBrowse: TOracleDataSet;
    QBrowseTotal: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QTotalBK: TFloatField;
    QTotalBS: TFloatField;
    QTotalPARAH: TFloatField;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
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
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiQTY: TFloatField;
    QPerKonstruksiKD_PRODUKSI: TStringField;
    QPerKonstruksiPOTONG: TFloatField;
    QPerKonstruksi_Tot: TOracleDataSet;
    QPerKonstruksi_TotTOTAL: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    DsPerKonstruksi: TwwDataSource;
    QPerOperator_Tot: TOracleDataSet;
    QPerOperator_TotTOTAL: TFloatField;
    QPerOperator_TotJML_POTONG: TFloatField;
    QPerOperator: TOracleDataSet;
    QPerOperatorREKANAN: TStringField;
    QPerOperatorKONSTRUKSI: TStringField;
    QPerOperatorQTY: TFloatField;
    QPerOperatorPOTONG: TFloatField;
    dsQPerOperator: TwwDataSource;
    wwDBGrid7: TwwDBGrid;
    Panel12: TPanel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel13: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label19: TLabel;
    wwDBComboBox1: TwwDBLookupComboDlg;
    TabSheet5: TTabSheet;
    PanelCenter1: TPanel;
    Panel6: TPanel;
    DBText2: TDBText;
    DBText7: TDBText;
    Label12: TLabel;
    DBText8: TDBText;
    Panel7: TPanel;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    Panel10: TPanel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    Panel11: TPanel;
    wwCheckBox2: TwwCheckBox;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2Button2: TwwNavButton;
    wwDBNavigator2Button3: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2Button: TwwNavButton;
    wwDBNavigator2Button1: TwwNavButton;
    OpenDialog1: TOpenDialog;
    QDeleteDetail: TOracleQuery;
    QInsertDetail: TOracleQuery;
    Look_KP: TwwDBLookupComboDlg;
    IdHTTP1: TIdHTTP;
    Label13: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    ListView1: TListView;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNIK: TStringField;
    QDetailNO_SERI_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailMUTU: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailSATUAN: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailOPR_TENUN: TStringField;
    QDetailNO_DESAIN: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_PO: TStringField;
    QDetailKODE_PROD: TStringField;
    QDetailQTY: TFloatField;
    QDetailML: TFloatField;
    QDetailMI: TFloatField;
    QDetailCEK: TFloatField;
    QDetailAFFAL: TFloatField;
    QDetailAFFAL_NO: TFloatField;
    QDetailWTS: TFloatField;
    QDetailKTR: TFloatField;
    QDetailPDK: TFloatField;
    QDetailLK: TFloatField;
    QDetailMC: TFloatField;
    QDetailBS: TFloatField;
    QDetailKS: TFloatField;
    QDetailCTK: TFloatField;
    QDetailFC: TFloatField;
    QDetailHK: TFloatField;
    QDetailWTM: TFloatField;
    QDetailM_SAMAR: TFloatField;
    QDetailM_RUSAK: TFloatField;
    QDetailM_BELANG: TFloatField;
    QDetailM_OUIT: TFloatField;
    QDetailF_STEAMER: TFloatField;
    QDetailF_PRINT: TFloatField;
    QDetailF_STAMPING: TFloatField;
    QDetailTOT_BGRADE: TFloatField;
    QDetailP_TOT_BGRADE: TFloatField;
    QDetailBS_SOBEK: TFloatField;
    QDetailBS_UTS: TFloatField;
    QDetailBS_KNB: TFloatField;
    QDetailBS_FLEX: TFloatField;
    QDetailBS_WTS: TFloatField;
    QDetailBS_OSETTING: TFloatField;
    QDetailBSM_RUSAK: TFloatField;
    QDetailTOT_BS: TFloatField;
    QDetailP_TOT_BS: TFloatField;
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
    QDetailTGL: TDateTimeField;
    QDetailSJ: TStringField;
    QDetailWARNA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_KONTRAK: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowseKD_REKANAN: TFloatField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseREKANAN: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseNO_BUKTI: TStringField;
    QBrowseNO_ORDER: TStringField;
    QBrowseNO_REG_DETAIL: TFloatField;
    QBrowseNIK: TStringField;
    QBrowseNO_SERI_BEAM: TStringField;
    QBrowseKD_ITEM: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseMUTU: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseOPR_TENUN: TStringField;
    QBrowseNO_DESAIN: TStringField;
    QBrowseMESIN_TENUN: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseNO_PO: TStringField;
    QBrowseKODE_PROD: TStringField;
    QBrowseQTY: TFloatField;
    QBrowseML: TFloatField;
    QBrowseMI: TFloatField;
    QBrowseCEK: TFloatField;
    QBrowseAFFAL: TFloatField;
    QBrowseAFFAL_NO: TFloatField;
    QBrowseWTS: TFloatField;
    QBrowseKTR: TFloatField;
    QBrowsePDK: TFloatField;
    QBrowseLK: TFloatField;
    QBrowseMC: TFloatField;
    QBrowseBS: TFloatField;
    QBrowseKS: TFloatField;
    QBrowseCTK: TFloatField;
    QBrowseFC: TFloatField;
    QBrowseHK: TFloatField;
    QBrowseWTM: TFloatField;
    QBrowseM_SAMAR: TFloatField;
    QBrowseM_RUSAK: TFloatField;
    QBrowseM_BELANG: TFloatField;
    QBrowseM_OUIT: TFloatField;
    QBrowseF_STEAMER: TFloatField;
    QBrowseF_PRINT: TFloatField;
    QBrowseF_STAMPING: TFloatField;
    QBrowseTOT_BGRADE: TFloatField;
    QBrowseP_TOT_BGRADE: TFloatField;
    QBrowseBS_SOBEK: TFloatField;
    QBrowseBS_UTS: TFloatField;
    QBrowseBS_KNB: TFloatField;
    QBrowseBS_FLEX: TFloatField;
    QBrowseBS_WTS: TFloatField;
    QBrowseBS_OSETTING: TFloatField;
    QBrowseBSM_RUSAK: TFloatField;
    QBrowseTOT_BS: TFloatField;
    QBrowseP_TOT_BS: TFloatField;
    QBrowseTGL_DETAIL: TDateTimeField;
    QBrowseSJ: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseTotalQTY: TFloatField;
    QBrowseTotalML: TFloatField;
    QBrowseTotalMI: TFloatField;
    QBrowseTotalCEK: TFloatField;
    QBrowseTotalAFFAL: TFloatField;
    QBrowseTotalAFFAL_NO: TFloatField;
    QBrowseTotalWTS: TFloatField;
    QBrowseTotalKTR: TFloatField;
    QBrowseTotalPDK: TFloatField;
    QBrowseTotalLK: TFloatField;
    QBrowseTotalMC: TFloatField;
    QBrowseTotalBS: TFloatField;
    QBrowseTotalKS: TFloatField;
    QBrowseTotalCTK: TFloatField;
    QBrowseTotalFC: TFloatField;
    QBrowseTotalHK: TFloatField;
    QBrowseTotalWTM: TFloatField;
    QBrowseTotalM_SAMAR: TFloatField;
    QBrowseTotalM_RUSAK: TFloatField;
    QBrowseTotalM_BELANG: TFloatField;
    QBrowseTotalM_OUIT: TFloatField;
    QBrowseTotalF_STEAMER: TFloatField;
    QBrowseTotalF_PRINT: TFloatField;
    QBrowseTotalF_STAMPING: TFloatField;
    QBrowseTotalTOT_BGRADE: TFloatField;
    QBrowseTotalP_TOT_BGRADE: TFloatField;
    QBrowseTotalBS_SOBEK: TFloatField;
    QBrowseTotalBS_UTS: TFloatField;
    QBrowseTotalBS_KNB: TFloatField;
    QBrowseTotalBS_FLEX: TFloatField;
    QBrowseTotalBS_WTS: TFloatField;
    QBrowseTotalBS_OSETTING: TFloatField;
    QBrowseTotalBSM_RUSAK: TFloatField;
    QBrowseTotalTOT_BS: TFloatField;
    QBrowseTotalP_TOT_BS: TFloatField;
    TabSheet6: TTabSheet;
    Panel5: TPanel;
    LTitle: TLabel;
    Panel14: TPanel;
    LRecords: TLabel;
    BtnClose: TBitBtn;
    BtnSimpan: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    Panel15: TPanel;
    BtnBrowse: TSpeedButton;
    BtnEditing: TSpeedButton;
    Label5: TLabel;
    ECari3: TEdit;
    BitBtn13: TBitBtn;
    cbOtomatis3: TCheckBox;
    wwDBGrid2: TwwDBGrid;
    TabSheet8: TTabSheet;
    Panel16: TPanel;
    BtnBrowse2: TSpeedButton;
    BtnEditing2: TSpeedButton;
    Label16: TLabel;
    ECari2: TEdit;
    BitBtn14: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    QJenis: TOracleDataSet;
    dsQJenis: TwwDataSource;
    QJenisJENIS_PROSES: TStringField;
    QBrowseMitra: TOracleDataSet;
    dsQBrowseMitra: TwwDataSource;
    LookBeam: TwwDBLookupCombo;
    QBrowseMitraJENIS_PROSES: TStringField;
    Label24: TLabel;
    QMasterJENIS_PROSES: TStringField;
    QBrowseJENIS_PROSES: TStringField;
    QBrowseTOT_BK: TFloatField;
    QBrowseP_TOT_BK: TFloatField;
    QBrowseTotalTOT_BK: TFloatField;
    QBrowseTotalP_TOT_BK: TFloatField;
    QDetailTOT_BK: TFloatField;
    QDetailP_TOT_BK: TFloatField;
    QBrowseLD: TFloatField;
    QBrowseLT: TFloatField;
    QBrowseLPT: TFloatField;
    QBrowseLRG: TFloatField;
    QBrowseWL: TFloatField;
    QBrowseFLO: TFloatField;
    QBrowseNEPS: TFloatField;
    QBrowsePP: TFloatField;
    QBrowseOJ: TFloatField;
    QBrowseCRT: TFloatField;
    QBrowseBTS: TFloatField;
    QBrowseBTB: TFloatField;
    QBrowseSC: TFloatField;
    QBrowseSLL: TFloatField;
    QBrowseCK: TFloatField;
    QBrowseCAJ: TFloatField;
    QBrowseTK: TFloatField;
    QBrowseJENIS_SARUNG: TStringField;
    QBrowseTotalLD: TFloatField;
    QBrowseTotalLT: TFloatField;
    QBrowseTotalLPT: TFloatField;
    QBrowseTotalLRG: TFloatField;
    QBrowseTotalWL: TFloatField;
    QBrowseTotalFLO: TFloatField;
    QBrowseTotalNEPS: TFloatField;
    QBrowseTotalPP: TFloatField;
    QBrowseTotalOJ: TFloatField;
    QBrowseTotalCRT: TFloatField;
    QBrowseTotalBTS: TFloatField;
    QBrowseTotalBTB: TFloatField;
    QBrowseTotalSC: TFloatField;
    QBrowseTotalSLL: TFloatField;
    QBrowseTotalCK: TFloatField;
    QBrowseTotalCAJ: TFloatField;
    QBrowseTotalTK: TFloatField;
    QBrowseWK: TFloatField;
    QBrowseTotalWK: TFloatField;
    QMasterTGL_INSPECT: TDateTimeField;
    QBrowseKODE: TStringField;
    QBrowsePROSES: TStringField;
    QBrowseTGL_INSPECT: TDateTimeField;
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
    procedure LookCorakEnter(Sender: TObject);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
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
    procedure look_opEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure VTglAwalChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBNavigator2ButtonClick(Sender: TObject);
    procedure wwDBNavigator2DeleteClick(Sender: TObject);
    procedure wwDBNavigator2InsertClick(Sender: TObject);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure wwDBNavigator2CancelClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure wwDBNavigator2PostClick(Sender: TObject);
    procedure BtnEditingClick(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BitBtn13Click(Sender: TObject);
    procedure QJenisAfterDelete(DataSet: TDataSet);
    procedure QJenisAfterPost(DataSet: TDataSet);
    procedure QJenisAfterScroll(DataSet: TDataSet);
    procedure TabSheet7Show(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure LookBeamEnter(Sender: TObject);
  private
    vorder,vfilter:string;
    { Private declarations }
  public
    { Public declarations }
    procedure baca_tab(SheetIndex:integer);
  end;

var

  ReinspectPrintingProsesFrm: TReinspectPrintingProsesFrm;

implementation

uses DM, Math, HasilTenun2, ComObj, TerimaDariFinishing4;

{$R *.dfm}

procedure TReinspectPrintingProsesFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDariFinishing4Frm:=Nil;
end;

procedure TReinspectPrintingProsesFrm.baca_tab(SheetIndex:integer);
Var
  Xlapp1, Sheet:Variant ;
  i, MaxRow, MaxCol,X, Y:integer ;
  dtTmp,str:string;
  row : TListItem;
begin
  Str:=trim(Edit2.Text);
  XLApp1 := CreateOleObject('excel.application');
  XLApp1.Workbooks.open(Str) ;
  Sheet := XLApp1.WorkSheets[SheetIndex] ;
  MaxRow := Sheet.Usedrange.EntireRow.count ;
  MaxCol := sheet.Usedrange.EntireColumn.count;
  ListView1.Columns.Clear;
  for i:=1 to MaxCol do
  begin
   ListView1.Columns.Add.Caption:=sheet.cells.item[2,i].value;
  end;
  for x:=3 to MaxRow do
  begin
   row:=ListView1.Items.add;
   row.Caption:=sheet.cells.item[x,1];
   for y:=2 to MaxCol do
      begin
       row.SubItems.Add('');
       dtTmp:=sheet.cells.item[x,y];
       ListView1.Items[x-3].SubItems.Strings[y-2]:=dtTmp
      end;
  end;
 XLApp1.Workbooks.close;
 PageControl1.ActivePageIndex:=0;
end;

procedure TReinspectPrintingProsesFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
//  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
   // ', '+IntToStr(PanelRight.Width);
end;

procedure TReinspectPrintingProsesFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TReinspectPrintingProsesFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','R02');
 QTransaksi.Open;
 TerimaDariFinishing4Frm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TReinspectPrintingProsesFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TReinspectPrintingProsesFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TReinspectPrintingProsesFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TReinspectPrintingProsesFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode','R02');
      FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
      QDetail.Close;
      QDetail.Open;
      QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
  end;
end;

procedure TReinspectPrintingProsesFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TReinspectPrintingProsesFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TReinspectPrintingProsesFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TReinspectPrintingProsesFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TReinspectPrintingProsesFrm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TReinspectPrintingProsesFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TReinspectPrintingProsesFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TReinspectPrintingProsesFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  DMFrm.QUserTime.Open;
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='BK';
  QDetailJENIS.AsString:='PALEKAT';
  QDetailKD_CORAK.AsString:='000';
  QDetailCORAK.AsString:='-';
end;

procedure TReinspectPrintingProsesFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TReinspectPrintingProsesFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TReinspectPrintingProsesFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TReinspectPrintingProsesFrm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TReinspectPrintingProsesFrm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
end;

procedure TReinspectPrintingProsesFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);
end;

procedure TReinspectPrintingProsesFrm.BitBtn4Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilTenun2Frm:=THasilTenun2Frm.Create(Self);
  HasilTenun2Frm.QDetail.Close;
  HasilTenun2Frm.QDetail.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  HasilTenun2Frm.QDetail.Open;
 { HasilTenun2Frm.QMaster.Close;
  HasilTenun2Frm.QMaster.SetVariable('no_reg',HasilTenun2Frm.QDetailNO_REG_FINISH.AsInteger);
  HasilTenun2Frm.QMaster.Open; }
  HasilTenun2Frm.ShowModal;
  HasilTenun2Frm.Free;
end;

procedure TReinspectPrintingProsesFrm.BitBtn3Click(Sender: TObject);
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

procedure TReinspectPrintingProsesFrm.look_opEnter(Sender: TObject);
begin
DMFrm.QOp_Inspect.Open;
end;

procedure TReinspectPrintingProsesFrm.FormShow(Sender: TObject);
begin
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal3.Date:=Trunc(date());

  vTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir3.Date:=Trunc(date());

  VTglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal5.Date:=Trunc(date());

  vTglAkhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir5.Date:=Trunc(date());

end;

procedure TReinspectPrintingProsesFrm.BitBtn5Click(Sender: TObject);
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
        vorder:=' order by no_reg';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;

  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;

    wwDBGrid1xxxxx.ColumnByName('ML').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalML.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('MI').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalMI.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('CEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalCEK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('AFFAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalAFFAL.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('AFFAL_NO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalAFFAL_NO.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalWTS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalKTR.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalPDK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalLK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('MC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalMC.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('KS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalKS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('CTK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalCTK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalFC.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('HK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalHK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('WTM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalWTM.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('WK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalWK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalM_SAMAR.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalM_RUSAK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalM_BELANG.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('M_OUIT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalM_OUIT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('F_STEAMER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalF_STEAMER.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('F_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalF_PRINT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('F_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalF_STAMPING.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('TOT_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalTOT_BGRADE.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('P_TOT_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalP_TOT_BGRADE.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_SOBEK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_SOBEK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_UTS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_KNB.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_FLEX').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_FLEX.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_WTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_WTS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BS_OSETTING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBS_OSETTING.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BSM_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBSM_RUSAK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('TOT_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalTOT_BS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('P_TOT_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalP_TOT_BS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('TOT_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalTOT_BK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('P_TOT_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalP_TOT_BK.AsFloat);

    // Tambahan kolom baru
    wwDBGrid1xxxxx.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalLD.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalLT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalLPT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalLRG.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalWL.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('FLO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalFLO.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalNEPS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalPP.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalOJ.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalCRT.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBTS.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalBTB.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalSC.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalSLL.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalCK.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalCAJ.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotalTK.AsFloat);


end;


procedure TReinspectPrintingProsesFrm.BtnExportClick(Sender: TObject);
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

procedure TReinspectPrintingProsesFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TReinspectPrintingProsesFrm.cbTanggalClick(Sender: TObject);
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

procedure TReinspectPrintingProsesFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TReinspectPrintingProsesFrm.VTglAwalChange(Sender: TObject);
begin
vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TReinspectPrintingProsesFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TReinspectPrintingProsesFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);


end;

procedure TReinspectPrintingProsesFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
 LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TReinspectPrintingProsesFrm.TabSheet2Show(Sender: TObject);
begin
vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
end;

procedure TReinspectPrintingProsesFrm.TabSheet1Show(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','R02');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Close;
 QDetail.Close;
 QMaster.Open;
 QDetail.Open;
end;

procedure TReinspectPrintingProsesFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TReinspectPrintingProsesFrm.vTglAkhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TReinspectPrintingProsesFrm.BitBtn7Click(Sender: TObject);
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
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotTOTAL.AsFloat);
  wwDBGrid5.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotPOTONG.AsFloat);

end;

procedure TReinspectPrintingProsesFrm.BtnExport3Click(Sender: TObject);
begin
 if QPerKonstruksi.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet3.Caption+' ReInspecting';
             wwDBGrid5.ExportOptions.TitleName:=''+TabSheet3.Caption+' ReInspecting';
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

procedure TReinspectPrintingProsesFrm.VTglAwal5Change(Sender: TObject);
begin
VTglAkhir5.Date:=(VTglAwal5.Date);
end;

procedure TReinspectPrintingProsesFrm.VTglAkhir5Change(Sender: TObject);
begin
if VTglAwal5.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir5.Date:=VTglAwal3.Date;
  end;
end;

procedure TReinspectPrintingProsesFrm.BitBtn9Click(Sender: TObject);
begin
  QPerOperator.DisableControls;
  QPerOperator.Close;
  QPerOperator.SetVariable('pawal',VTglAwal5.Date);
  QPerOperator.SetVariable('pakhir',vTglAkhir5.Date);
  QPerOperator.Open;
  QPerOperator_Tot.Close;
  QPerOperator_Tot.SetVariable('pawal',VTglAwal5.Date);
  QPerOperator_Tot.SetVariable('pakhir',vTglAkhir5.Date);
  QPerOperator_Tot.Open;
  QPerOperator.EnableControls;
  wwDBGrid7.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerOperator_TotJML_POTONG.AsFloat);
  wwDBGrid7.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerOperator_TotTOTAL.AsFloat);
  //wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',Qkon_opening_TotPOTONG.AsFloat);

end;

procedure TReinspectPrintingProsesFrm.BitBtn10Click(Sender: TObject);
begin
if QPerOperator.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' ReInspecting';
             wwDBGrid7.ExportOptions.TitleName:=''+TabSheet4.Caption+' ReInspecting';
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid7.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid7.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TReinspectPrintingProsesFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TReinspectPrintingProsesFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TReinspectPrintingProsesFrm.wwDBNavigator2ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TReinspectPrintingProsesFrm.wwDBNavigator2DeleteClick(
  Sender: TObject);
Var
Reg:String;
begin
ListView1.Clear;

Edit2.Clear;

QDetail.Close;
  Reg:=QMasterNO_REG.AsString;
  QDetail.Open;
//QDetail.SQL.Text('delete from ')
  QDeleteDetail.Close;
  QDeleteDetail.SQL.Clear;
  QDeleteDetail.SQL.Add('begin') ;
  QDeleteDetail.SQL.Add('delete from ipisma_db5.bukti5_detail where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;

procedure TReinspectPrintingProsesFrm.wwDBNavigator2InsertClick(
  Sender: TObject);
begin
ListView1.Clear;

Edit2.Clear;
end;

procedure TReinspectPrintingProsesFrm.Look_KPClick(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TReinspectPrintingProsesFrm.Look_KPCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectSUB_KELOMPOK.AsString;
    QDetailKODE_PROD.AsString:=DMFrm.QKP_Hasil_InspectKP.AsString;
end;

procedure TReinspectPrintingProsesFrm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;


procedure TReinspectPrintingProsesFrm.Button1Click(Sender: TObject);
var i : integer;
begin
 if OpenDialog1.Execute then
  begin
    Edit2.Text:=OpenDialog1.FileName;
    baca_tab(1);
      for i:=0 to ListView1.Columns.Count-1 do
      begin
        ListView1.Columns[i].Width :=-2;
      end;
  end;
end;

procedure TReinspectPrintingProsesFrm.Button6Click(Sender: TObject);
begin

end;

//TEMPLATE B1 START
procedure TReinspectPrintingProsesFrm.Button2Click(Sender: TObject);
var
  ExcelTemplateURL: string;
  LocalFilePath: string;
  FileStream: TFileStream;
  IdHTTP1: TIdHTTP;
  SaveDialog: TSaveDialog;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  SaveDialog := TSaveDialog.Create(nil);
  try
    // Inisialisasi SaveDialog
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.Filter := 'File Excel (*.xls)|*.xls|Semua File (*.*)|*.*';
    SaveDialog.FileName := 'TEMPLATE_RE-INSPECTING_PRINTING_PER_PROSES.xls';

    // Menampilkan dialog Save As
    if SaveDialog.Execute then
    begin
      LocalFilePath := SaveDialog.FileName;

      try
        // URL tempat file template Excel disimpan
        ExcelTemplateURL := 'http:\\192.168.1.226\Template\TEMPLATE_RE-INSPECTING_PRINTING_PER_PROSES.xls';

        // Mengunduh file Excel dari URL dan menyimpannya secara langsung
        FileStream := TFileStream.Create(LocalFilePath, fmCreate);
        try
          IdHTTP1.Get(ExcelTemplateURL, FileStream);
        finally
          FileStream.Free;
        end;

        ShowMessage('File template berhasil diunduh. Lokasi: ' + LocalFilePath);
      except
        on E: Exception do
          ShowMessage('Gagal mengunduh file template: ' + E.Message);
      end;
    end
    else
    begin
      ShowMessage('Proses penyimpanan file dibatalkan.');
    end;
  finally
    IdHTTP1.Free;
    SaveDialog.Free;
  end;
end;   //TEMPLATE B1 END

// TEMPLATE B2 START
procedure TReinspectPrintingProsesFrm.Button4Click(Sender: TObject);
begin
  
end; // TEMPLATE B2 END

// TEMPLATE LELANG START
procedure TReinspectPrintingProsesFrm.Button5Click(Sender: TObject);
begin

end; // TEMPLATE LELANG END

procedure TReinspectPrintingProsesFrm.wwDBNavigator2CancelClick(
  Sender: TObject);
Var
Reg:String;
begin
ListView1.Clear;

Edit2.Clear;

QDetail.Close;
  Reg:=QMasterNO_REG.AsString;
  QDetail.Open;
//QDetail.SQL.Text('delete from ')
  QDeleteDetail.Close;
  QDeleteDetail.SQL.Clear;
  QDeleteDetail.SQL.Add('begin') ;
  QDeleteDetail.SQL.Add('delete from ipisma_db5.bukti5_detail where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;

procedure TReinspectPrintingProsesFrm.TabSheet5Show(Sender: TObject);
begin
  //QMaster.Close;
  //QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  //QMaster.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsInteger);
  //QMaster.Open;
  //QDetail.Close;
  //QDetail.Open;

  QTransaksi.SetVariable('kd_transaksi','R02');
  QTransaksi.Open;
  Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
  QMaster.Close;
  QDetail.Close;
  QMaster.Open;
  QDetail.Open;
end;

procedure TReinspectPrintingProsesFrm.wwDBNavigator2PostClick(Sender: TObject);
var
  i, Reg: Integer;
  LD, LT, LPT, LRG, WL, FLO, NEPS, PP, OJ, CRT, BTS, BTB, SC, SLL, CK, CAJ, TK,
  ML, MI, CEK, AFFAL, AFFAL_NO, WTS, KTR, PDK, LK, MC, BS, KS, CTK, FC, HK, WTM, WK,
  M_SAMAR, M_RUSAK, M_BELANG, M_OUIT, F_STEAMER, F_PRINT, F_STAMPING, TOT_BGRADE, P_TOT_BGRADE, 
  BS_SOBEK, BS_UTS, BS_KNB, BS_FLEX, BS_WTS, BS_OSETTING, BSM_RUSAK, TOT_BS, P_TOT_BS, TOT_BK, 
  P_TOT_BK: Real;
  NO, TGL, SJ, WARNA, JS: string;
begin
  // Cek apakah ListView kosong
  if ListView1.Items.Count = 0 then
  begin
    ShowMessage('Data Masih Kosong...');
    Exit;
  end;

  // Ambil nomor registrasi dari QMaster
  Reg := StrToInt(QMasterNO_REG.AsString);

  // Loop untuk mengambil data dari ListView dan menyimpannya ke database
  for i := 0 to ListView1.Items.Count - 1 do
  begin
    NO := '''' + ListView1.Items[i].Caption + '''';
    JS := ListView1.Items[i].SubItems[0];
    ML := StrToFloatDef(ListView1.Items[i].SubItems[1], 0);
    MI := StrToFloatDef(ListView1.Items[i].SubItems[2], 0);
    TGL := ListView1.Items[i].SubItems[3];
    SJ := ListView1.Items[i].SubItems[4];
    WARNA := ListView1.Items[i].SubItems[5];
    CEK := StrToFloatDef(ListView1.Items[i].SubItems[6], 0);
    AFFAL := StrToFloatDef(ListView1.Items[i].SubItems[7], 0);
    AFFAL_NO := StrToFloatDef(ListView1.Items[i].SubItems[8], 0);
    WTS := StrToFloatDef(ListView1.Items[i].SubItems[9], 0);

    // CACAT TENUN
    LD := StrToFloatDef(ListView1.Items[i].SubItems[10], 0);
    LT := StrToFloatDef(ListView1.Items[i].SubItems[11], 0);
    LPT := StrToFloatDef(ListView1.Items[i].SubItems[12], 0);
    LRG := StrToFloatDef(ListView1.Items[i].SubItems[13], 0);
    WL := StrToFloatDef(ListView1.Items[i].SubItems[14], 0);
    FLO := StrToFloatDef(ListView1.Items[i].SubItems[15], 0);
    NEPS := StrToFloatDef(ListView1.Items[i].SubItems[16], 0);
    PP := StrToFloatDef(ListView1.Items[i].SubItems[17], 0);
    OJ := StrToFloatDef(ListView1.Items[i].SubItems[18], 0);
    CRT := StrToFloatDef(ListView1.Items[i].SubItems[19], 0);
    BTS := StrToFloatDef(ListView1.Items[i].SubItems[20], 0);
    BTB := StrToFloatDef(ListView1.Items[i].SubItems[21], 0);
    SC := StrToFloatDef(ListView1.Items[i].SubItems[22], 0);
    SLL := StrToFloatDef(ListView1.Items[i].SubItems[23], 0);
    CK := StrToFloatDef(ListView1.Items[i].SubItems[24], 0);
    CAJ := StrToFloatDef(ListView1.Items[i].SubItems[25], 0);
    TK := StrToFloatDef(ListView1.Items[i].SubItems[26], 0);

    // CACAT FINISH
    KTR := StrToFloatDef(ListView1.Items[i].SubItems[27], 0);
    PDK := StrToFloatDef(ListView1.Items[i].SubItems[28], 0);
    LK := StrToFloatDef(ListView1.Items[i].SubItems[29], 0);
    MC := StrToFloatDef(ListView1.Items[i].SubItems[30], 0);
    BS := StrToFloatDef(ListView1.Items[i].SubItems[31], 0);
    KS := StrToFloatDef(ListView1.Items[i].SubItems[32], 0);
    CTK := StrToFloatDef(ListView1.Items[i].SubItems[33], 0);
    FC := StrToFloatDef(ListView1.Items[i].SubItems[34], 0);
    HK := StrToFloatDef(ListView1.Items[i].SubItems[35], 0);

    // CACAT PRINTING
    WTM := StrToFloatDef(ListView1.Items[i].SubItems[36], 0);
    WK := StrToFloatDef(ListView1.Items[i].SubItems[37], 0);
    M_SAMAR := StrToFloatDef(ListView1.Items[i].SubItems[38], 0);
    M_RUSAK := StrToFloatDef(ListView1.Items[i].SubItems[39], 0); // Diperbaiki
    M_BELANG := StrToFloatDef(ListView1.Items[i].SubItems[40], 0);
    M_OUIT := StrToFloatDef(ListView1.Items[i].SubItems[41], 0);
    F_STEAMER := StrToFloatDef(ListView1.Items[i].SubItems[42], 0);
    F_PRINT := StrToFloatDef(ListView1.Items[i].SubItems[43], 0);
    F_STAMPING := StrToFloatDef(ListView1.Items[i].SubItems[44], 0);
    TOT_BGRADE := StrToFloatDef(ListView1.Items[i].SubItems[45], 0);
    P_TOT_BGRADE := StrToFloatDef(ListView1.Items[i].SubItems[46], 0);

    // BS PARAH
    BS_SOBEK := StrToFloatDef(ListView1.Items[i].SubItems[47], 0);
    BS_UTS := StrToFloatDef(ListView1.Items[i].SubItems[48], 0);
    BS_KNB := StrToFloatDef(ListView1.Items[i].SubItems[49], 0);
    BS_FLEX := StrToFloatDef(ListView1.Items[i].SubItems[50], 0);
    BS_WTS := StrToFloatDef(ListView1.Items[i].SubItems[51], 0);
    BS_OSETTING := StrToFloatDef(ListView1.Items[i].SubItems[52], 0);
    BSM_RUSAK := StrToFloatDef(ListView1.Items[i].SubItems[53], 0);
    TOT_BS := StrToFloatDef(ListView1.Items[i].SubItems[54], 0);
    P_TOT_BS := StrToFloatDef(ListView1.Items[i].SubItems[55], 0);

    TOT_BK := StrToFloatDef(ListView1.Items[i].SubItems[56], 0);
    P_TOT_BK := StrToFloatDef(ListView1.Items[i].SubItems[57], 0);

    // Insert data ke dalam tabel menggunakan QInsertDetail
    QInsertDetail.Close;
    QInsertDetail.SetVariable('reg', Reg);
    QInsertDetail.SetVariable('JS', JS);
    QInsertDetail.SetVariable('TGL', TGL);
    QInsertDetail.SetVariable('SJ', SJ);
    QInsertDetail.SetVariable('WARNA', WARNA);
    QInsertDetail.SetVariable('ML', ML);
    QInsertDetail.SetVariable('MI', MI);
    QInsertDetail.SetVariable('CEK', CEK);
    QInsertDetail.SetVariable('AFFAL', AFFAL);
    QInsertDetail.SetVariable('AFFAL_NO', AFFAL_NO);
    QInsertDetail.SetVariable('WTS', WTS);

    // CACAT TENUN
    QInsertDetail.SetVariable('LD', LD);
    QInsertDetail.SetVariable('LT', LT);
    QInsertDetail.SetVariable('LPT', LPT);
    QInsertDetail.SetVariable('LRG', LRG);
    QInsertDetail.SetVariable('WL', WL);
    QInsertDetail.SetVariable('FLO', FLO);
    QInsertDetail.SetVariable('NEPS', NEPS);
    QInsertDetail.SetVariable('PP', PP);
    QInsertDetail.SetVariable('OJ', OJ);
    QInsertDetail.SetVariable('CRT', CRT);
    QInsertDetail.SetVariable('BTS', BTS);
    QInsertDetail.SetVariable('BTB', BTB);
    QInsertDetail.SetVariable('SC', SC);
    QInsertDetail.SetVariable('SLL', SLL);
    QInsertDetail.SetVariable('CK', CK);
    QInsertDetail.SetVariable('CAJ', CAJ);
    QInsertDetail.SetVariable('TK', TK);

    // CACAT FINISH
    QInsertDetail.SetVariable('KTR', KTR);
    QInsertDetail.SetVariable('PDK', PDK);
    QInsertDetail.SetVariable('LK', LK);
    QInsertDetail.SetVariable('MC', MC);
    QInsertDetail.SetVariable('BS', BS);
    QInsertDetail.SetVariable('KS', KS);
    QInsertDetail.SetVariable('CTK', CTK);
    QInsertDetail.SetVariable('FC', FC);
    QInsertDetail.SetVariable('HK', HK);

    // CACAT PRINTING
    QInsertDetail.SetVariable('WTM', WTM);
    QInsertDetail.SetVariable('WK', WK);
    QInsertDetail.SetVariable('M_SAMAR', M_SAMAR);
    QInsertDetail.SetVariable('M_RUSAK', M_RUSAK);
    QInsertDetail.SetVariable('M_BELANG', M_BELANG);
    QInsertDetail.SetVariable('M_OUIT', M_OUIT);
    QInsertDetail.SetVariable('F_STEAMER', F_STEAMER);
    QInsertDetail.SetVariable('F_PRINT', F_PRINT);
    QInsertDetail.SetVariable('F_STAMPING', F_STAMPING);
    QInsertDetail.SetVariable('TOT_BGRADE', TOT_BGRADE);
    QInsertDetail.SetVariable('P_TOT_BGRADE', P_TOT_BGRADE);

    // BS PARAH
    QInsertDetail.SetVariable('BS_SOBEK', BS_SOBEK);
    QInsertDetail.SetVariable('BS_UTS', BS_UTS);
    QInsertDetail.SetVariable('BS_KNB', BS_KNB);
    QInsertDetail.SetVariable('BS_FLEX', BS_FLEX);
    QInsertDetail.SetVariable('BS_WTS', BS_WTS);
    QInsertDetail.SetVariable('BS_OSETTING', BS_OSETTING);
    QInsertDetail.SetVariable('BSM_RUSAK', BSM_RUSAK);
    QInsertDetail.SetVariable('TOT_BS', TOT_BS);
    QInsertDetail.SetVariable('P_TOT_BS', P_TOT_BS);
    QInsertDetail.SetVariable('TOT_BK', TOT_BK);
    QInsertDetail.SetVariable('P_TOT_BK', P_TOT_BK);

    // Eksekusi perintah
    QInsertDetail.Execute;

  end;
end;


procedure TReinspectPrintingProsesFrm.BtnEditingClick(Sender: TObject);
begin
  wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect];
  wwDBGrid2.ReadOnly:=False;
  wwDBGrid2.SetFocus;
end;

procedure TReinspectPrintingProsesFrm.BtnBrowseClick(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect];
      wwDBGrid2.ReadOnly:=True;
      wwDBGrid2.SetFocus;
//      TabSheet1.TabVisible:=True;
//      TabSheet2.TabVisible:=True;
    end;
end;

procedure TReinspectPrintingProsesFrm.wwDBGrid2DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;
end;

procedure TReinspectPrintingProsesFrm.wwDBGrid2TitleButtonClick(
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

procedure TReinspectPrintingProsesFrm.BitBtn13Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if BtnSimpan.Enabled then
    ShowMessage('Mode CARI berfungsi jika perubahan data sudah di-POSTING/ SIMPAN !')
    else
    begin
        vfilter:=' where ';
        if (QJenis.FieldCount>=1) then
        begin
          for i:=0 to QJenis.FieldCount-1 do
          begin
            if QJenis.Fields[i].FieldKind=fkData then
            begin
              if vpertama then
                begin
                  vfilter:=vfilter+QJenis.Fields[i].FieldName+' like ''%'+ECari3.Text+'%''';
                  vpertama:=False;
                end
                else
                  vfilter:=vfilter+' or '+QJenis.Fields[i].FieldName+' like ''%'+ECari3.Text+'%''';
            end;
          end;
          vorder:=' order by '+wwDBGrid2.Columns[0].FieldName;
        end;
        QJenis.SetVariable('myparam',vfilter+vorder);
        QJenis.DisableControls;
        QJenis.Close;
        QJenis.Open;
        QJenis.EnableControls;
    end;
end;

procedure TReinspectPrintingProsesFrm.QJenisAfterDelete(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TReinspectPrintingProsesFrm.QJenisAfterPost(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TReinspectPrintingProsesFrm.QJenisAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TReinspectPrintingProsesFrm.TabSheet7Show(Sender: TObject);
begin
  QJenis.Open;
end;

procedure TReinspectPrintingProsesFrm.BtnSimpanClick(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
  0 : begin
        try
          DMFrm.OS.ApplyUpdates([QJenis],True);
          BtnSimpan.Enabled:=False;
          BtnBrowse.Down:=True;
          BtnBrowseClick(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
      end;
  end;
end;

procedure TReinspectPrintingProsesFrm.LookBeamEnter(Sender: TObject);
begin
  QBrowseMitra.Close;
  QBrowseMitra.Open;
end;

end.
