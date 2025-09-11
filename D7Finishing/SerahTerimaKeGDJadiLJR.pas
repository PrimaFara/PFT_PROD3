unit SerahTerimaKeGDJadiLJR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, OleCtrls, SHDocVw;

type
  TSerahTerimaKeGDJadiLJRFrm = class(TForm)
    QMaster: TOracleDataSet;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    dsQMaster: TwwDataSource;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailMUTU: TStringField;
    QDetailSATUAN: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_KONTRAK: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterKD_REKANAN: TFloatField;
    QMasterSTATUS: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterREKANAN: TStringField;
    QMasterISPOST: TStringField;
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
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    LookMaster: TwwLookupDialog;
    QMasterNO_NOTA: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QDetailNIK: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailQTY: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseTotal: TOracleDataSet;
    QBrowseTotalBK: TFloatField;
    QBrowseTotalBS: TFloatField;
    QBrowseTotalPARAH: TFloatField;
    QTotal: TOracleDataSet;
    QTotalBK: TFloatField;
    QTotalBS: TFloatField;
    QTotalPARAH: TFloatField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
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
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    qrlHarga: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBHarga: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRDBText12: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    PanelCenter: TPanel;
    PanelHeader: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label7: TLabel;
    PanelFooter: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
    PanelTop: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
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
    LookCorak: TwwDBLookupComboDlg;
    LookJenis: TwwDBComboBox;
    TabSheet2: TTabSheet;
    LabelBanner: TLabel;
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
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel9: TPanel;
    vOperand2: TLabel;
    cbTanggal3: TCheckBox;
    BitBtn7: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BtnExport3: TBitBtn;
    wwDBGrid5: TwwDBGrid;
    Label17: TLabel;
    QPerKonstruksiKemas_Tot: TOracleDataSet;
    QPerKonstruksiKemas: TOracleDataSet;
    DsPerKonstruksiKemas: TwwDataSource;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText34: TQRDBText;
    QRBand3: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText29: TQRDBText;
    QRShape3: TQRShape;
    QRBand4: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape9: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel32: TQRLabel;
    QRShape16: TQRShape;
    QRLabel33: TQRLabel;
    QRShape2: TQRShape;
    QRBand5: TQRBand;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText37: TQRDBText;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
    QTransaksiSINOPSIS: TBlobField;
    QTransaksiDOC_ISO: TStringField;
    QTransaksiDOC_ISO2: TStringField;
    QTransaksiDOC_ISO3: TStringField;
    QRDBText30: TQRDBText;
    QRDBText35: TQRDBText;
    BitBtn4: TBitBtn;
    QRExpr4: TQRExpr;
    TabSheet4: TTabSheet;
    wwDBGrid4: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    VTglAwal4: TwwDBDateTimePicker;
    VTglAkhir4: TwwDBDateTimePicker;
    Panel6: TPanel;
    vOperand4: TLabel;
    cbTanggal4: TCheckBox;
    BitBtn5: TBitBtn;
    ECari4: TEdit;
    cbOtomatis4: TCheckBox;
    dbcField4: TwwDBComboBox;
    BtnExport4: TBitBtn;
    BitBtn8: TBitBtn;
    QuickRep3: TQuickRep;
    QRBand6: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRExpr5: TQRExpr;
    QRBand7: TQRBand;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText47: TQRDBText;
    QRShape10: TQRShape;
    QRBand8: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape14: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel39: TQRLabel;
    QRShape19: TQRShape;
    QRLabel40: TQRLabel;
    QRShape20: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText48: TQRDBText;
    QRBand9: TQRBand;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    Label12: TLabel;
    QPerCorak: TOracleDataSet;
    QPerCorak_Tot: TOracleDataSet;
    dsPerCorak: TwwDataSource;
    QDetailKD_PRODUKSI: TStringField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    LookMutu: TwwDBComboBox;
    LookKereta: TwwDBLookupCombo;
    QBrowseKereta: TOracleDataSet;
    QBrowseKeretaKD_KERETA: TStringField;
    QDetailKERETA: TStringField;
    QPerCorak_TotQTY_TOT: TFloatField;
    QPerCorak_TotQTY_TOT_KODI: TFloatField;
    QPerCorak_TotBK: TFloatField;
    QPerCorak_TotBK_KODI: TFloatField;
    QPerCorak_TotBS: TFloatField;
    QPerCorak_TotBS_KODI: TFloatField;
    QPerCorak_TotLELANG: TFloatField;
    QPerCorak_TotLELANG_KODI: TFloatField;
    QPerCorakCORAK: TStringField;
    QPerCorakQTY_TOT: TFloatField;
    QPerCorakQTY_TOT_KODI: TFloatField;
    QPerCorakBK: TFloatField;
    QPerCorakBK_KODI: TFloatField;
    QPerCorakBS: TFloatField;
    QPerCorakBS_KODI: TFloatField;
    QPerCorakLELANG: TFloatField;
    QPerCorakLELANG_KODI: TFloatField;
    QPerKonstruksiKemas_TotQTY_TOT: TFloatField;
    QPerKonstruksiKemas_TotQTY_TOT_KODI: TFloatField;
    QPerKonstruksiKemas_TotBK: TFloatField;
    QPerKonstruksiKemas_TotBK_KODI: TFloatField;
    QPerKonstruksiKemas_TotBS: TFloatField;
    QPerKonstruksiKemas_TotBS_KODI: TFloatField;
    QPerKonstruksiKemas_TotLELANG: TFloatField;
    QPerKonstruksiKemas_TotLELANG_KODI: TFloatField;
    QPerKonstruksiKemasKONSTRUKSI: TStringField;
    QPerKonstruksiKemasKD_PRODUKSI: TStringField;
    QPerKonstruksiKemasQTY_TOT: TFloatField;
    QPerKonstruksiKemasQTY_TOT_KODI: TFloatField;
    QPerKonstruksiKemasBK: TFloatField;
    QPerKonstruksiKemasBK_KODI: TFloatField;
    QPerKonstruksiKemasBS: TFloatField;
    QPerKonstruksiKemasBS_KODI: TFloatField;
    QPerKonstruksiKemasLELANG: TFloatField;
    QPerKonstruksiKemasLELANG_KODI: TFloatField;
    QPerShift: TOracleDataSet;
    TabSheet5: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel7: TPanel;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    VTglAwal9: TwwDBDateTimePicker;
    VTglAkhir9: TwwDBDateTimePicker;
    Panel10: TPanel;
    cbTanggal9: TCheckBox;
    BitBtn6: TBitBtn;
    ECari9: TEdit;
    CbOtomatis9: TCheckBox;
    dbcField9: TwwDBComboBox;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label15: TLabel;
    dsQPerShift: TwwDataSource;
    QPerShift_Tot: TOracleDataSet;
    QuickRep4: TQuickRep;
    QRBand10: TQRBand;
    QRLabel43: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRExpr6: TQRExpr;
    QRBand11: TQRBand;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRDBText62: TQRDBText;
    QRShape24: TQRShape;
    QRBand12: TQRBand;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape25: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRLabel54: TQRLabel;
    QRShape29: TQRShape;
    QRLabel55: TQRLabel;
    QRShape30: TQRShape;
    QRLabel56: TQRLabel;
    QRDBText63: TQRDBText;
    QRBand13: TQRBand;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    vOperand9: TLabel;
    QPerShift_TotQTY_TOT: TFloatField;
    QPerShift_TotQTY_TOT_KODI: TFloatField;
    QPerShift_TotBK: TFloatField;
    QPerShift_TotBK_KODI: TFloatField;
    QPerShift_TotBS: TFloatField;
    QPerShift_TotBS_KODI: TFloatField;
    QPerShift_TotLELANG: TFloatField;
    QPerShift_TotLELANG_KODI: TFloatField;
    WebBrowser1: TWebBrowser;
    QPerShiftSHIFT: TStringField;
    QPerShiftKONSTRUKSI: TStringField;
    QPerShiftKD_PRODUKSI: TStringField;
    QPerShiftQTY_TOT: TFloatField;
    QPerShiftQTY_TOT_KODI: TFloatField;
    QPerShiftBK: TFloatField;
    QPerShiftBK_KODI: TFloatField;
    QPerShiftBS: TFloatField;
    QPerShiftBS_KODI: TFloatField;
    TabSheet6: TTabSheet;
    Panel11: TPanel;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglAkhir2: TwwDBDateTimePicker;
    Panel12: TPanel;
    vOperand3: TLabel;
    cbTanggal2: TCheckBox;
    BitBtn11: TBitBtn;
    ECari2: TEdit;
    CbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    WebBrowser2: TWebBrowser;
    Label18: TLabel;
    QPerKp: TOracleDataSet;
    dsQPerKp: TwwDataSource;
    BtnOk2: TSpeedButton;
    BtnFind: TSpeedButton;
    QDetailKD_WARNA: TStringField;
    QDetailWARNA: TStringField;
    LookWarna: TwwDBLookupComboDlg;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseNO_NOTA: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseMUTU: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseBK: TFloatField;
    QBrowseBS: TFloatField;
    QBrowsePARAH: TFloatField;
    QBrowseQTY_TOT: TFloatField;
    QBrowseSATUAN: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowseKD_WARNA: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QPerKpKONSTRUKSI: TStringField;
    QPerKpKD_PRODUKSI: TStringField;
    QPerKpQTY_TOT: TFloatField;
    QPerKpQTY_TOT_KODI: TFloatField;
    QPerKpBK: TFloatField;
    QPerKpBK_KODI: TFloatField;
    QPerKpBS: TFloatField;
    QPerKpBS_KODI: TFloatField;
    QPerKpLELANG: TFloatField;
    QPerKpLELANG_KODI: TFloatField;
    QRLabel57: TQRLabel;
    QRDBText66: TQRDBText;
    QDetailQTY4: TFloatField;
    QDetailJENIS_AFFAL: TStringField;
    QDetailQTY_AFFAL: TFloatField;
    LookAffal: TwwDBLookupCombo;
    QAffal: TOracleDataSet;
    QAffalJENIS_AFFAL: TStringField;
    QTotalBS_PARAH: TFloatField;
    QTotalQTY_AFFAL: TFloatField;
    QBrowseBS_PARAH: TFloatField;
    QPerKpBS_PARAH: TFloatField;
    QPerKpBS_PARAH_KODI: TFloatField;
    QPerKonstruksiKemas_TotBS_PARAH: TFloatField;
    QPerKonstruksiKemas_TotBS_PARAH_KODI: TFloatField;
    QRExpr7: TQRExpr;
    QRLabel58: TQRLabel;
    QRDBText67: TQRDBText;
    QBrowseTotalBS_PARAH: TFloatField;
    LookSatuan: TwwDBLookupCombo;
    LookAffal2: TwwDBLookupCombo;
    QDetailMESIN: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseQTY_AFFAL: TFloatField;
    QBrowseJENIS_AFFAL: TStringField;
    QBrowseTotalQTY_AFFAL: TFloatField;
    QBrowseTotalQTY_TOT: TFloatField;
    WebBrowser3: TWebBrowser;
    BitBtn14: TBitBtn;
    QDetailPALET: TStringField;
    LookPalet: TwwDBLookupComboDlg;
    QBrowsePALET: TStringField;
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
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1xxxxxEnter(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure cbTanggal3Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure wwDBGrid5UpdateFooter(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure VTglAwal4Change(Sender: TObject);
    procedure VTglAkhir4Change(Sender: TObject);
    procedure cbOtomatis4Click(Sender: TObject);
    procedure dbcField4Enter(Sender: TObject);
    procedure vOperand4Click(Sender: TObject);
    procedure cbTanggal4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKeretaEnter(Sender: TObject);
    procedure QDetailQTYChange(Sender: TField);
    procedure QDetailQTY2Change(Sender: TField);
    procedure QDetailQTY3Change(Sender: TField);
    procedure VTglAwal9Change(Sender: TObject);
    procedure VTglAkhir9Change(Sender: TObject);
    procedure CbOtomatis9Click(Sender: TObject);
    procedure dbcField9Enter(Sender: TObject);
    procedure vOperand9Click(Sender: TObject);
    procedure cbTanggal9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglAkhir2Change(Sender: TObject);
    procedure CbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure vOperand3Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure WebBrowser2DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure LookWarnaClick(Sender: TObject);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaEnter(Sender: TObject);
    procedure LookAffalCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAffalEnter(Sender: TObject);
    procedure LookSatuanCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookSatuanEnter(Sender: TObject);
    procedure LookAffal2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAffal2Enter(Sender: TObject);
    procedure WebBrowser3DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BitBtn14Click(Sender: TObject);
    procedure LookPaletCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookPaletClick(Sender: TObject);
    procedure LookPaletEnter(Sender: TObject);

  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  SerahTerimaKeGDJadiLJRFrm: TSerahTerimaKeGDJadiLJRFrm;

implementation

uses DM, Math;

{$R *.dfm}

procedure TSerahTerimaKeGDJadiLJRFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  SerahTerimaKeGDJadiLJRFrm:=Nil;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.FormResize(Sender: TObject);
begin
  // PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
  //Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
   // ', '+IntToStr(PanelRight.Width);
end;


procedure TSerahTerimaKeGDJadiLJRFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','920');
 QTransaksi.Open;
 SerahTerimaKeGDJadiLJRFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
   abort;
  end;

end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_KpNAMA_KONSTRUKSI.AsString;
   QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_KpKP.AsString;

   if Pos('BK', DMFrm.QKonstruksi_KpNAMA_KONSTRUKSI.AsString) > 0 then
  begin
    wwDBGrid1.Fields[10].ReadOnly:=false;
    wwDBGrid1.Fields[11].ReadOnly:=true;
    wwDBGrid1.Fields[12].ReadOnly:=true;
    //ShowMessage('String "BK" ditemukan dalam nama konstruksi.');
  end
  else
  begin
    wwDBGrid1.Fields[10].ReadOnly:=true;
    wwDBGrid1.Fields[11].ReadOnly:=false;
    wwDBGrid1.Fields[12].ReadOnly:=false;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
//  QDetailMUTU.AsString:='KW1';
  QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  QDetailQTY.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn2Click(Sender: TObject);
var
  HTMLFile: TStringList;
  FilePath: string;
  HTMLContent: string;
  TotalQTY, TotalQTY2, TotalQTY4, TotalQTY3, TotalQTY_AFFAL: real;
  Qty, Qty2, Qty4, Qty3, QTY_AFFAL: string;
begin
  WebBrowser3.BringToFront;

  QMaster.Close;
  QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.Open;
  QDetail.Close;
  QDetail.Open;

  FilePath := ExtractFilePath(Application.ExeName) + 'SERAH TERIMA QA KE KEMAS.html';
  HTMLFile := TStringList.Create;
  try
	HTMLContent := 
	'<!DOCTYPE html>' +
	'<html lang="id">' +

	'<head>' +
	'	<meta charset="UTF-8">' +
	'	<meta name="viewport" content="width=device-width, initial-scale=1.0">' +
	'	<title>SERAH TERIMA QA KE KEMAS</title>' +
	'	<style>' +
	'		body { font-family: Arial, sans-serif; font-size: 12px; }' +
	'		.container { width: 100%; max-width: 210mm; padding: 10px; margin: auto; border: 1px solid #000; }' +
	'		.header { width: 100%; text-align: left; margin-bottom: 10px; }' +
	'		.header-table { width: 100%; border-collapse: collapse; }' +
	'		.header-table td { padding: 4px; vertical-align: top; }' +
	'		.logo { font-size: 14px; font-weight: bold; text-align: center; width: 30%; }' +
	'		.title { font-size: 14px; font-weight: bold; text-align: center; }' +
	'		.label { font-weight: bold; width: 20%; }' +
	'		.received-from { font-weight: bold; margin-top: 10px; }' +
	'		.order-table { margin-top: 5px; width: 50%; border-collapse: collapse; }' +
	'		.order-table td { font-size: 12px; padding: 2px 5px; }' +
	'		.table { width: 100%; border-collapse: collapse; margin-top: 10px; }' +
	'		.table th, .table td { border: 1px solid #000; padding: 2px; text-align: center; }' +
	'		.table th { background-color: #f0f0f0; }' +
	'		.footer { margin-top: 15px; text-align: center; }' +
	'		@media print { body { margin: 0; padding: 0; } .container { border: none; } }' +
	'		.footer-table { width: 100%; margin-top: 15px; border-collapse: collapse; }' +
	'		.footer-table td { padding: 5px; border: none; font-weight: bold; }' +
	'		.table tr:last-child td { border-bottom: 1px solid black; }' +
	'	</style>' +
	'</head>' +

	'<body>' +

	'	<div class="container">' +
	'		<div class="header">' +
	'			<table class="header-table">' +
	'				<tr>' +
	'					<td rowspan="2" class="logo">PT. PRIMA FARA TEXTILE</td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td class="title" colspan="3"><strong>SERAH TERIMA QA KE KEMAS</strong></td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td class="label" align="center">Sapugarut - Pekalongan</td>' +
	'					<td class="label" align="center">No. Nota : ' + QMasterNO_NOTA.AsString + '</td>' +
	'					<td class="label" align="center">Tanggal : ' + QMasterTGL.AsString + '</td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td>Keterangan / Kurir : <strong></strong></td>' +
	'					<td class="label" align="center">Grup : <strong>' + QMasterGRUP.AsString + '</strong></td>' +
	'					<td class="label" align="center">Shift : <strong>' + QMasterSHIFT.AsString + '</strong></td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td style="height: 15px;"></td>' +
	'					<td></td>' +
	'					<td></td>' +
	'				</tr>' +
	'			</table>' +
	'		</div>' +

	'		<table class="table">' +
	'			<tr>' +
	'				<th>KP</th>' +
	'				<th>Konstruksi</th>' +
	'				<th>Corak</th>' +
	'				<th>Satuan</th>' +
	'				<th>BK</th>' +
	'				<th>BGRADE</th>' +
	'				<th>BS Parah</th>' +
	'				<th>Lelang</th>' +
	'				<th>Affal</th>' +
	'				<th style="border: 0px"></th>' +
	'			</tr>';
	
	TotalQTY := 0; // Inisialisasi total kolom BK
	TotalQTY2 := 0; // Inisialisasi total kolom BGRADE
	TotalQTY4 := 0; // Inisialisasi total kolom BS Parah
	TotalQTY3 := 0; // Inisialisasi total kolom Lelang
	TotalQTY_AFFAL := 0; // Inisialisasi total kolom Lelang
	wwDBGrid1.DataSource.DataSet.First;
	while not wwDBGrid1.DataSource.DataSet.Eof do
	begin
	
	// QTY 
	if (wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsString = '0') or 
		(wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsString = '') then
		Qty := ''
	else
		Qty := wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsString;
		
	// QTY2 
	if (wwDBGrid1.DataSource.DataSet.FieldByName('QTY2').AsString = '0') or 
		(wwDBGrid1.DataSource.DataSet.FieldByName('QTY2').AsString = '') then
		Qty2 := ''
	else
		Qty2 := wwDBGrid1.DataSource.DataSet.FieldByName('QTY2').AsString;
		
	// QTY4 
	if (wwDBGrid1.DataSource.DataSet.FieldByName('QTY4').AsString = '0') or 
		(wwDBGrid1.DataSource.DataSet.FieldByName('QTY4').AsString = '') then
		Qty4 := ''
	else
		Qty4 := wwDBGrid1.DataSource.DataSet.FieldByName('QTY4').AsString;
		
	// QTY3 
	if (wwDBGrid1.DataSource.DataSet.FieldByName('QTY3').AsString = '0') or 
		(wwDBGrid1.DataSource.DataSet.FieldByName('QTY3').AsString = '') then
		Qty3 := ''
	else
		Qty3 := wwDBGrid1.DataSource.DataSet.FieldByName('QTY3').AsString;

	// AFFAL 
	if (wwDBGrid1.DataSource.DataSet.FieldByName('QTY_AFFAL').AsString = '0') or 
		(wwDBGrid1.DataSource.DataSet.FieldByName('QTY_AFFAL').AsString = '') then
		QTY_AFFAL := ''
	else
		QTY_AFFAL := wwDBGrid1.DataSource.DataSet.FieldByName('QTY_AFFAL').AsString;

		
	HTMLContent := HTMLContent +
	'			<tr>' +
	'				<td>' + wwDBGrid1.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>' +
	'				<td>' + wwDBGrid1.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>' +
	'				<td>' + wwDBGrid1.DataSource.DataSet.FieldByName('CORAK').AsString + '</td>' +
	'				<td>' + wwDBGrid1.DataSource.DataSet.FieldByName('SATUAN').AsString + '</td>' +
	'				<td>' + Qty + '</td>' +
	'				<td>' + Qty2 + '</td>' +
	'				<td>' + Qty4 + '</td>' +
	'				<td>' + Qty3 + '</td>' +
	'				<td>' + QTY_AFFAL + '</td>' +
	'				<td style="border: 0px"></td>' +
	'			</tr>';

	  // Menambahkan nilai kolom POTONG ke total
	    TotalQTY := TotalQTY + wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat;
      TotalQTY2 := TotalQTY2 + wwDBGrid1.DataSource.DataSet.FieldByName('QTY2').AsFloat;
      TotalQTY4 := TotalQTY4 + wwDBGrid1.DataSource.DataSet.FieldByName('QTY4').AsFloat;
      TotalQTY3 := TotalQTY3 + wwDBGrid1.DataSource.DataSet.FieldByName('QTY3').AsFloat;
      TotalQTY_AFFAL := TotalQTY_AFFAL + wwDBGrid1.DataSource.DataSet.FieldByName('QTY_AFFAL').AsFloat;
	  wwDBGrid1.DataSource.DataSet.Next;
	end;

	HTMLContent := HTMLContent +
	'			<tr>' +
	'				<td colspan="4" style="border: 1px solid black;"><strong>Jumlah</strong></td>' +
	'				<td style="border: 1px solid black;">' + FloatToStr(TotalQTY) + '</td>' +
	'				<td style="border: 1px solid black;">' + FloatToStr(TotalQTY2) + '</td>' +
	'				<td style="border: 1px solid black;">' + FloatToStr(TotalQTY4) + '</td>' +
	'				<td style="border: 1px solid black;">' + FloatToStr(TotalQTY3) + '</td>' +
	'				<td style="border: 1px solid black;">' + FloatToStr(TotalQTY_AFFAL) + '</td>' +
	'				<td style="border: 0px"></td>' +
	'			</tr>' +
	'		</table>' +

	'		<div class="footer">' +
	'			<table class="footer-table">' +
	'				<tr>' +
	'					<td align="center">Penerima,</td>' +
	'					<td align="center">Dibuat Oleh,</td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td style="height: 15px;"></td>' +
	'				</tr>' +
	'				<tr>' +
	'					<td align="center">(.............................)</td>' +
	'					<td align="center">(.............................)</td>' +
	'				</tr>' +
	'			</table>' +
	'			<p style="text-align: center;"><small>1. Kemas, 2. Arsip</small></p>' +
	'		</div>' +
	'	</div>' +

	'</body>' +

	'</html>';

	HTMLFile.Text := HTMLContent;
	HTMLFile.SaveToFile(FilePath);
	WebBrowser3.Navigate(FilePath);
  finally
	HTMLFile.Free;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbOtomatisClick(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbTanggalClick(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
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
  wwDBGrid1xxxxx.ColumnByName('BK').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBS_PARAH.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalBK.AsFloat + QBrowseTotalBS.AsFloat + QBrowseTotalBS_PARAH.AsFloat + QBrowseTotalPARAH.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_AFFAL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_AFFAL.AsFloat);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.BtnExportClick(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TSerahTerimaKeGDJadiLJRFrm.TabSheet2Show(Sender: TObject);
begin
{azmi}
{if vTab='Bro' then
   vTab:='In'
else
 begin

  vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse.Open;

   BitBtn3.Click;

  end;  }
end;

procedure TSerahTerimaKeGDJadiLJRFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalBS_PARAH.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalPARAH.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AFFAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AFFAL.AsFloat);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.FormShow(Sender: TObject);
begin
{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal3.Date:=Trunc(date());

  vTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir3.Date:=Trunc(date());
{azmi}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.vTglAkhir3Change(Sender: TObject);
begin
 if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbOtomatis3Click(Sender: TObject);
begin
 if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid5.Options:=wwDBGrid5.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid5.Options:=wwDBGrid5.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
if (QPerKonstruksiKemas.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid5.FieldCount-1 do
    if UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TGL' then
      dbcField3.Items.Add(wwDBGrid5.Columns[i].FieldName);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbTanggal3Click(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.BtnExport3Click(Sender: TObject);
begin
if QPerKonstruksiKemas_Tot.Active then
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

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn7Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
{ QPerKonstruksiKemas.Open;
  vpertama:=True;
  if cbTanggal3.Checked then
    vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal3.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir3.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QPerKonstruksiKemas.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid5.Selected.Count-1 do
      begin
        if (QPerKonstruksiKemas.FieldByName(wwDBGrid5.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'tgl') then
        begin
          if vpertama then
            begin
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand2.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QPerKonstruksiKemas.Active then
      vorder:=' order by '+wwDBGrid5.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  QPerKonstruksiKemas.DisableControls;
  QPerKonstruksiKemas.Close;
  QPerKonstruksiKemas.SetVariable('myparam',vfilter+' group by konstruksi '+vorder);
  QPerKonstruksiKemas.Open;

  QPerKonstruksiKemas_Tot.DisableControls;
  QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.SetVariable('myparam',vfilter+vorder);
  QPerKonstruksiKemas_Tot.Open;
  QPerKonstruksiKemas_Tot.EnableControls;

  QPerKonstruksiKemas.EnableControls;
  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  //wwDBGrid5.ColumnByName('TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotTOTAL.AsFloat);
 }
  QPerKonstruksiKemas.DisableControls;
  QPerKonstruksiKemas.Close;
  QPerKonstruksiKemas.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksiKemas.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksiKemas.Open;
  QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksiKemas_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksiKemas_Tot.Open;
  QPerKonstruksiKemas.EnableControls;
  
  wwDBGrid5.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotQTY_TOT.AsFloat);
  wwDBGrid5.ColumnByName('QTY_TOT_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotQTY_TOT_KODI.AsFloat);

  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK_KODI.AsFloat);

  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  wwDBGrid5.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS_KODI.AsFloat);

  wwDBGrid5.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);
  wwDBGrid5.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG_KODI.AsFloat);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.TabSheet3Show(Sender: TObject);
begin
// QPerKonstruksiKemas.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBGrid5UpdateFooter(Sender: TObject);
begin
  QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.Open;
  wwDBGrid5.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotQTY_TOT.AsFloat);
  wwDBGrid5.ColumnByName('QTY_TOT_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotQTY_TOT_KODI.AsFloat);

  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK_KODI.AsFloat);

  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  wwDBGrid5.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS_KODI.AsFloat);

  wwDBGrid5.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);
  wwDBGrid5.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG_KODI.AsFloat);
  
end;



procedure TSerahTerimaKeGDJadiLJRFrm.DBText1Click(Sender: TObject);
begin
  InputBox('Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel25.Caption:='(Per : '+VTglAwal3.Text+' s/d '+VTglAkhir3.Text+')';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn4Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
DMFrm.QUserTime.Open;
   QuickRep2.Preview

end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAwal4Change(Sender: TObject);
begin
VTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAkhir4Change(Sender: TObject);
begin
 if VTglAwal4.Date>VTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbOtomatis4Click(Sender: TObject);
begin
if cbOtomatis4.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid4.Options:=wwDBGrid4.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid4.Options:=wwDBGrid4.Options-[dgAlwaysShowSelection];
  ECari4.SetFocus;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
if (QPerCorak.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid4.FieldCount-1 do
    if UpperCase(wwDBGrid4.Columns[i].FieldName)<>'tgl' then
      dbcField4.Items.Add(wwDBGrid4.Columns[i].FieldName);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.vOperand4Click(Sender: TObject);
begin
  if vOperand4.Caption='LIKE' then
    vOperand4.Caption:='='
    else
      vOperand4.Caption:='LIKE';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbTanggal4Click(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
{  QPerKonstruksiKemas.Open;
  vpertama:=True;
  if cbTanggal3.Checked then
    vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal3.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir3.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QPerKonstruksiKemas.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid5.Selected.Count-1 do
      begin
        if (QPerKonstruksiKemas.FieldByName(wwDBGrid5.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'tgl') then
        begin
          if vpertama then
            begin
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand2.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand2.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QPerKonstruksiKemas.Active then
      vorder:=' order by '+wwDBGrid5.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  QPerKonstruksiKemas.DisableControls;
  QPerKonstruksiKemas.Close;
  QPerKonstruksiKemas.SetVariable('myparam',vfilter+' group by konstruksi '+vorder);
  QPerKonstruksiKemas.Open;

  QPerKonstruksiKemas_Tot.DisableControls;
  QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.SetVariable('myparam',vfilter+vorder);
  QPerKonstruksiKemas_Tot.Open;
  QPerKonstruksiKemas_Tot.EnableControls;

  QPerKonstruksiKemas.EnableControls;
  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  //wwDBGrid5.ColumnByName('TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotTOTAL.AsFloat);
 }
  QPerCorak.DisableControls;
  QPerCorak.Close;
  QPerCorak.SetVariable('pawal',VTglAwal4.Date);
  QPerCorak.SetVariable('pakhir',VTglAkhir4.Date);
  QPerCorak.Open;
  QPerCorak_Tot.Close;
  QPerCorak_Tot.SetVariable('pawal',VTglAwal4.Date);
  QPerCorak_Tot.SetVariable('pakhir',VTglAkhir4.Date);
  QPerCorak_Tot.Open;
  QPerCorak.EnableControls;
  wwDBGrid4.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotQTY_TOT.AsFloat);
  wwDBGrid4.ColumnByName('QTY_TOT_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotQTY_TOT_KODI.AsFloat);

  wwDBGrid4.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBK.AsFloat);
  wwDBGrid4.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBK_KODI.AsFloat);

  wwDBGrid4.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBS.AsFloat);
  wwDBGrid4.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBS_KODI.AsFloat);

  wwDBGrid4.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotLELANG.AsFloat);
  wwDBGrid4.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotLELANG_KODI.AsFloat);


end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookKeretaEnter(Sender: TObject);
begin
  QBrowseKereta.Close;
  QBrowseKereta.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QDetailQTYChange(Sender: TField);
begin
{riki}
if Ceil(QDetailQTY.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BK'//;
//  QDetailQTY2.AsString:='0';
//  QDetailQTY3.AsString:='0';
//end
else
if Ceil(QDetailQTY2.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS'//;
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY3.AsFloat:=0;
//end
else
if Ceil(QDetailQTY3.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS PARAH';
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY2.AsFloat:=0;
//end;

{riki}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QDetailQTY2Change(Sender: TField);
begin
{riki}
if Ceil(QDetailQTY.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BK'//;
//  QDetailQTY2.AsString:='0';
//  QDetailQTY3.AsString:='0';
//end
else
if Ceil(QDetailQTY2.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS'//;
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY3.AsFloat:=0;
//end
else
if Ceil(QDetailQTY3.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS PARAH';
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY2.AsFloat:=0;
//end;

{riki}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.QDetailQTY3Change(Sender: TField);
begin
{riki}
if Ceil(QDetailQTY.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BK'//;
//  QDetailQTY2.AsString:='0';
//  QDetailQTY3.AsString:='0';
//end
else
if Ceil(QDetailQTY2.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS'//;
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY3.AsFloat:=0;
//end
else
if Ceil(QDetailQTY3.AsFloat)>0 then
//begin
  QDetailMUTU.AsString:='BS PARAH';
//  QDetailQTY.AsFloat:=0;
 // QDetailQTY2.AsFloat:=0;
//end;

{riki}
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAwal9Change(Sender: TObject);
begin
  VTglAkhir9.Date:=(VTglAwal9.Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAkhir9Change(Sender: TObject);
begin
  if VTglAwal9.Date>VTglAkhir9.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir9.Date:=VTglAwal9.Date;
  end
end;

procedure TSerahTerimaKeGDJadiLJRFrm.CbOtomatis9Click(Sender: TObject);
begin
if cbOtomatis9.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgAlwaysShowSelection];
  ECari9.SetFocus;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.dbcField9Enter(Sender: TObject);
var
  i : Word;
begin
  if (QPerShift.Active) and (dbcField9.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL' then
      dbcField9.Items.Add(wwDBGrid2.Columns[i].FieldName);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.vOperand9Click(Sender: TObject);
begin
  if vOperand9.Caption='LIKE' then
    vOperand9.Caption:='='
    else
      vOperand9.Caption:='LIKE';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbTanggal9Click(Sender: TObject);
begin
  if cbTanggal9.Checked then
  begin
    VTglAwal9.Enabled:=cbTanggal9.Checked;
    VTglAkhir9.Enabled:=cbTanggal9.Checked;
    VTglAwal9.SetFocus;
  end
  else
    ECari9.SetFocus;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn6Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;

  t1, t2, t3, t4, t5, t6, t7, t8: real;

begin
wwDBGrid2.BringToFront;
QPerShift.Open;
  vpertama:=True;
  if cbTanggal9.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal9.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir9.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QPerShift.FieldCount>=1) then
  begin
    if dbcField9.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QPerShift.FieldCount-1 do
      begin
        if (QPerShift.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TGL') then
        begin
          if vpertama then
            begin
              if vOperand9.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari9.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' = '''+ECari9.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand9.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari9.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' = '''+ECari9.Text+''''
        end;
      end;
    end
    else
      if vOperand9.Caption='LIKE' then
         vfilter:=vfilter+dbcField9.Text+' like ''%'+ECari9.Text+'%'''
         else
           vfilter:=vfilter+dbcField9.Text+' = '''+ECari9.Text+'''';
    vfilter:=vfilter+')';
    if QPerShift.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by kd_produksi ASC';

  end;
  QPerShift.DisableControls;
  QPerShift.Close;
  QPerShift.SetVariable('myparam',vfilter+vorder);
  QPerShift.Open;
  QPerShift.EnableControls;

  t1 := 0; t2 := 0; t3 := 0; t4 := 0; t5 := 0; t6 := 0; // t7 := 0; t8 := 0;

  while not QPerShift.Eof do
  begin
        t1 := t1 + QPerShiftQTY_TOT.AsFloat;
        t2 := t2 + QPerShiftQTY_TOT_KODI.AsFloat;

        t3 := t3 + QPerShiftBK.AsFloat;
        t4 := t4 + QPerShiftBK_KODI.AsFloat;

        t5 := t5 + QPerShiftBS.AsFloat;
        t6 := t6 + QPerShiftBS_KODI.AsFloat;
        
        //t7 := t7 + QPerShiftLELANG.AsFloat;
        //t8 := t8 + QPerShiftLELANG_KODI.AsFloat;

        QPerShift.Next;
  end;


  wwDBGrid2.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t1);
  wwDBGrid2.ColumnByName('QTY_TOT_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t2);

  wwDBGrid2.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t3);
  wwDBGrid2.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t4);

  wwDBGrid2.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t5);
  wwDBGrid2.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t6);

  //BELUM DIGUNAKAN
  //wwDBGrid2.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t7);
  //wwDBGrid2.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t8);

end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn9Click(Sender: TObject);
begin
if QPerShift.Active then
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

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn10Click(Sender: TObject);
var
  HTMLContent: TStringList;
  i: Integer;
  FieldName: String;
  FileName: string;
  TotalQtyTot, TotalBk, TotalBs: Real;
  TotalQtyTotKodi, TotalBkKodi, TotalBsKodi: Real;
begin
  WebBrowser1.BringToFront;
  HTMLContent := TStringList.Create;
  try
    // Inisialisasi variabel total
    TotalQtyTot := 0;
    TotalBk := 0;
    TotalBs := 0;
    TotalQtyTotKodi := 0;
    TotalBkKodi := 0;
    TotalBsKodi := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4; margin: 10mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0; display: flex; flex-direction: column; min-height: 100vh;}');
    HTMLContent.Add('div.content {flex: 1; text-align: center;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}'); // Menambahkan ukuran font pada tabel
    HTMLContent.Add('td, th {border: 1px solid black; padding: 4px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 20px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 10px;}'); // Style untuk tanggal serah terima
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<div class="content">'); // Konten di tengah
    HTMLContent.Add('<h2>Laporan Data Kirim Ke Jahit Per Shift</h2>');

    // Menambahkan tanggal serah terima di sebelah kiri di bawah judul
    // HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', Date) + '</div>');
    // HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal9.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir9.Date) + '</div>');
    if VTglAwal9.Date = VTglAkhir9.Date then
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal9.Date) + '</div>');
      end
    else
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal9.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir9.Date) + '</div>');
      end;

    HTMLContent.Add('<table>');

    // Menambahkan header dengan nama yang diinginkan
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>SHIFT</th>');
    HTMLContent.Add('<th>KODE PRODUKSI</th>');
    HTMLContent.Add('<th>KONSTRUKSI</th>');
    HTMLContent.Add('<th>QTY TOTAL PCS</th>');
    HTMLContent.Add('<th>QTY TOTAL KODI</th>');
    HTMLContent.Add('<th>GRADE A PCS</th>');
    HTMLContent.Add('<th>GRADE A KODI</th>');
    HTMLContent.Add('<th>GRADE B PCS</th>');
    HTMLContent.Add('<th>GRADE B KODI</th>');
    HTMLContent.Add('</tr>');

    // Menambahkan baris data dari wwDBGrid2
    wwDBGrid2.DataSource.DataSet.First;
    while not wwDBGrid2.DataSource.DataSet.Eof do
    begin
      HTMLContent.Add('<tr>');
      for i := 0 to wwDBGrid2.Selected.Count - 1 do
      begin
        FieldName := wwDBGrid2.Columns[i].FieldName;
        HTMLContent.Add('<td>' + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsString + '</td>');

        // Melakukan perhitungan untuk kolom tertentu
        if FieldName = 'QTY_TOT' then
          TotalQtyTot := TotalQtyTot + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'QTY_TOT_KODI' then
          TotalQtyTotKodi := TotalQtyTotKodi + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BK' then
          TotalBk := TotalBk + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BK_KODI' then
          TotalBkKodi := TotalBkKodi + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BS' then
          TotalBs := TotalBs + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BS_KODI' then
          TotalBsKodi := TotalBsKodi + wwDBGrid2.DataSource.DataSet.FieldByName(FieldName).AsFloat;
      end;
      HTMLContent.Add('</tr>');
      wwDBGrid2.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total di bawah tabel
    HTMLContent.Add('<tr>');
    for i := 0 to wwDBGrid2.Selected.Count - 1 do
    begin
      FieldName := wwDBGrid2.Columns[i].FieldName;
      if FieldName = 'QTY_TOT' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalQtyTot) + '</b></td>')
      else if FieldName = 'QTY_TOT_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalQtyTotKodi) + '</b></td>')
      else if FieldName = 'BK' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBk) + '</b></td>')
      else if FieldName = 'BK_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBkKodi) + '</b></td>')
      else if FieldName = 'BS' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBs) + '</b></td>')
      else if FieldName = 'BS_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBsKodi) + '</b></td>')
      else
        HTMLContent.Add('<td></td>'); // Kolom lain yang tidak perlu dijumlahkan
    end;
    HTMLContent.Add('</tr>');

    // Menambahkan tabel selesai
    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup container
    
    // Menambahkan kolom tanda tangan di bagian bawah halaman
    HTMLContent.Add('<div class="footer">');
    HTMLContent.Add('<table style="width: 100%;">');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td style="text-align: center;"><b>Mengetahui</b><br><br><br><br>( ........................... )</td>');
    HTMLContent.Add('<td style="text-align: center;"><b>Dibuat Oleh</b><br><br><br><br>( ........................... )</td>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup footer
    HTMLContent.Add('</body></html>');

    // Simpan HTML ke file sementara
    FileName := ExtractFilePath(Application.ExeName) + 'LaporanDataKirimKeJahitPerShift.html';
    HTMLContent.SaveToFile(FileName);

    // Load file HTML ke TWebBrowser
    WebBrowser1.Navigate('file://' + FileName);

    // ditutup karena dipindah ke event document complete pada komponen WebBrowser1
    // Memanggil print langsung setelah dokumen selesai dimuat
    // WebBrowser1.OleObject.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, Unassigned, Unassigned);
  finally
    HTMLContent.Free;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.WebBrowser1DocumentComplete(
  Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAwal2Change(Sender: TObject);
begin
  VTglAkhir2.Date:=(VTglAwal2.Date);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.VTglAkhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir2.Date:=VTglAwal2.Date;
  end
end;

procedure TSerahTerimaKeGDJadiLJRFrm.CbOtomatis2Click(Sender: TObject);
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

procedure TSerahTerimaKeGDJadiLJRFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QPerKp.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid3.Columns[i].FieldName);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.vOperand3Click(Sender: TObject);
begin
  if vOperand3.Caption='LIKE' then
    vOperand3.Caption:='='
    else
      vOperand3.Caption:='LIKE';
end;

procedure TSerahTerimaKeGDJadiLJRFrm.cbTanggal2Click(Sender: TObject);
begin
  if cbTanggal2.Checked then
  begin
    VTglAwal2.Enabled:=cbTanggal2.Checked;
    VTglAkhir2.Enabled:=cbTanggal2.Checked;
    VTglAwal2.SetFocus;
  end
  else
    ECari2.SetFocus;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn12Click(Sender: TObject);
begin
if QPerKp.Active then
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


procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn13Click(Sender: TObject);
var
  HTMLContent: TStringList;
  i: Integer;
  FieldName: String;
  FileName: string;
  TotalQtyTot, TotalBk, TotalBs: Real;
  TotalQtyTotKodi, TotalBkKodi, TotalBsKodi: Real;
begin
  WebBrowser2.BringToFront;
  HTMLContent := TStringList.Create;
  try
    // Inisialisasi variabel total
    TotalQtyTot := 0;
    TotalBk := 0;
    TotalBs := 0;
    TotalQtyTotKodi := 0;
    TotalBkKodi := 0;
    TotalBsKodi := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4; margin: 10mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0; display: flex; flex-direction: column; min-height: 100vh;}');
    HTMLContent.Add('div.content {flex: 1; text-align: center;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}'); // Menambahkan ukuran font pada tabel
    HTMLContent.Add('td, th {border: 1px solid black; padding: 4px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 20px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 10px;}'); // Style untuk tanggal serah terima
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<div class="content">'); // Konten di tengah
    HTMLContent.Add('<h2>Laporan Data Kirim Ke Jahit Per Kode Produksi</h2>');

    // Menambahkan tanggal serah terima di sebelah kiri di bawah judul
    // HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', Date) + '</div>');
    // HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal2.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir2.Date) + '</div>');
    if VTglAwal2.Date = VTglAkhir2.Date then
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal2.Date) + '</div>');
      end
    else
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal2.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir2.Date) + '</div>');
      end;

    HTMLContent.Add('<table>');

    // Menambahkan header dengan nama yang diinginkan
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>KODE PRODUKSI</th>');
    HTMLContent.Add('<th>KONSTRUKSI</th>');
    HTMLContent.Add('<th>QTY TOTAL PCS</th>');
    HTMLContent.Add('<th>QTY TOTAL KODI</th>');
    HTMLContent.Add('<th>GRADE A PCS</th>');
    HTMLContent.Add('<th>GRADE A KODI</th>');
    HTMLContent.Add('<th>GRADE B PCS</th>');
    HTMLContent.Add('<th>GRADE B KODI</th>');
    HTMLContent.Add('</tr>');

    // Menambahkan baris data dari wwDBGrid3
    wwDBGrid3.DataSource.DataSet.First;
    while not wwDBGrid3.DataSource.DataSet.Eof do
    begin
      HTMLContent.Add('<tr>');
      for i := 0 to wwDBGrid3.Selected.Count - 1 do
      begin
        FieldName := wwDBGrid3.Columns[i].FieldName;
        HTMLContent.Add('<td>' + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsString + '</td>');

        // Melakukan perhitungan untuk kolom tertentu
        if FieldName = 'QTY_TOT' then
          TotalQtyTot := TotalQtyTot + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'QTY_TOT_KODI' then
          TotalQtyTotKodi := TotalQtyTotKodi + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BK' then
          TotalBk := TotalBk + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BK_KODI' then
          TotalBkKodi := TotalBkKodi + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BS' then
          TotalBs := TotalBs + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'BS_KODI' then
          TotalBsKodi := TotalBsKodi + wwDBGrid3.DataSource.DataSet.FieldByName(FieldName).AsFloat;
      end;
      HTMLContent.Add('</tr>');
      wwDBGrid3.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total di bawah tabel
    HTMLContent.Add('<tr>');
    for i := 0 to wwDBGrid3.Selected.Count - 1 do
    begin
      FieldName := wwDBGrid3.Columns[i].FieldName;
      if FieldName = 'QTY_TOT' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalQtyTot) + '</b></td>')
      else if FieldName = 'QTY_TOT_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalQtyTotKodi) + '</b></td>')
      else if FieldName = 'BK' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBk) + '</b></td>')
      else if FieldName = 'BK_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBkKodi) + '</b></td>')
      else if FieldName = 'BS' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBs) + '</b></td>')
      else if FieldName = 'BS_KODI' then
        HTMLContent.Add('<td><b>' + FormatFloat('0.00', TotalBsKodi) + '</b></td>')
      else
        HTMLContent.Add('<td></td>'); // Kolom lain yang tidak perlu dijumlahkan
    end;
    HTMLContent.Add('</tr>');

    // Menambahkan tabel selesai
    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup container
    
    // Menambahkan kolom tanda tangan di bagian bawah halaman
    HTMLContent.Add('<div class="footer">');
    HTMLContent.Add('<table style="width: 100%;">');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td style="text-align: center;"><b>Mengetahui</b><br><br><br><br>( ........................... )</td>');
    HTMLContent.Add('<td style="text-align: center;"><b>Dibuat Oleh</b><br><br><br><br>( ........................... )</td>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup footer
    HTMLContent.Add('</body></html>');

    // Simpan HTML ke file sementara
    FileName := ExtractFilePath(Application.ExeName) + 'LaporanDataKirimKeJahitKP.html';
    HTMLContent.SaveToFile(FileName);

    // Load file HTML ke TWebBrowser
    WebBrowser2.Navigate('file://' + FileName);

    // ditutup karena dipindah ke event document complete pada komponen WebBrowser2
    // Memanggil print langsung setelah dokumen selesai dimuat
    // WebBrowser2.OleObject.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, Unassigned, Unassigned);
  finally
    HTMLContent.Free;
  end;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn11Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QPerKp.DisableControls;
  QPerKp.Close;
  QPerKp.SetVariable('pawal',VTglAwal2.Date);
  QPerKp.SetVariable('pakhir',VTglAkhir2.Date);
  QPerKp.Open;
  QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.SetVariable('pawal',VTglAwal2.Date);
  QPerKonstruksiKemas_Tot.SetVariable('pakhir',VTglAkhir2.Date);
  QPerKonstruksiKemas_Tot.Open;
  QPerKp.EnableControls;
    
  wwDBGrid3.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat + QPerKonstruksiKemas_TotBS.AsFloat + QPerKonstruksiKemas_TotBS_PARAH.AsFloat + QPerKonstruksiKemas_TotLELANG.AsFloat);
  wwDBGrid3.ColumnByName('QTY_TOT_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',(QPerKonstruksiKemas_TotBK.AsFloat + QPerKonstruksiKemas_TotBS.AsFloat + QPerKonstruksiKemas_TotBS_PARAH.AsFloat + QPerKonstruksiKemas_TotLELANG.AsFloat) / 20);

  wwDBGrid3.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid3.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK_KODI.AsFloat);

  wwDBGrid3.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  wwDBGrid3.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS_KODI.AsFloat);

  wwDBGrid3.ColumnByName('BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS_PARAH.AsFloat);
  wwDBGrid3.ColumnByName('BS_PARAH_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS_PARAH_KODI.AsFloat);

  wwDBGrid3.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);
  wwDBGrid3.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG_KODI.AsFloat);

  //BELUM DIGUNAKAN
  //wwDBGrid3.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);
  //wwDBGrid3.ColumnByName('LELANG_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG_KODI.AsFloat);


end;

procedure TSerahTerimaKeGDJadiLJRFrm.WebBrowser2DocumentComplete(
  Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser2.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BtnFindClick(Sender: TObject);
begin
  if not QPerKp.QBEMode then
  begin
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
    QPerKp.QBEMode:=TRUE;
  end
  else
    QPerKp.ClearQBE;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BtnOk2Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8: real;

begin
    if QPerKp.QBEMode then
    begin
        QPerKp.ExecuteQBE;
        wwDBGrid3.Options := wwDBGrid3.Options + [dgRowSelect, dgAlwaysShowSelection];
        
        // Inisialisasi variabel
        vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0; vt8 := 0;
        
        // Iterasi dataset
        QPerKp.First; // pastikan mulai dari awal
        while not QPerKp.Eof do
        begin
            vt1 := vt1 + QPerKpQTY_TOT.AsFloat;
            vt2 := vt2 + QPerKpQTY_TOT_KODI.AsFloat;

            vt3 := vt3 + QPerKpBK.AsFloat;
            vt4 := vt4 + QPerKpBK_KODI.AsFloat;

            vt5 := vt5 + QPerKpBS.AsFloat;
            vt6 := vt6 + QPerKpBS_KODI.AsFloat;

            // Jika ingin menggunakan lelang
            //vt7 := vt7 + QPerKpLELANG.AsFloat;
            //vt8 := vt8 + QPerKpLELANG_KODI.AsFloat;

            QPerKp.Next; // pindah ke record berikutnya
        end;

        // Update footer value dengan format yang benar
        wwDBGrid3.ColumnByName('QTY_TOT').FooterValue := FormatFloat('0.0;(0.0);-', vt1);
        wwDBGrid3.ColumnByName('QTY_TOT_KODI').FooterValue := FormatFloat('0.0;(0.0);-', vt2);

        wwDBGrid3.ColumnByName('BK').FooterValue := FormatFloat('0.0;(0.0);-', vt3);
        wwDBGrid3.ColumnByName('BK_KODI').FooterValue := FormatFloat('0.0;(0.0);-', vt4);

        wwDBGrid3.ColumnByName('BS').FooterValue := FormatFloat('0.0;(0.0);-', vt5);
        wwDBGrid3.ColumnByName('BS_KODI').FooterValue := FormatFloat('0.0;(0.0);-', vt6);

        // BELUM DIGUNAKAN
        // wwDBGrid3.ColumnByName('LELANG').FooterValue := FormatFloat('0.0;(0.0);-', vt7);
        // wwDBGrid3.ColumnByName('LELANG_KODI').FooterValue := FormatFloat('0.0;(0.0);-', vt8);

        // Refresh grid agar perubahan terlihat
        wwDBGrid3.Refresh;
    end;
end;


procedure TSerahTerimaKeGDJadiLJRFrm.LookWarnaClick(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookWarnaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_WARNA.AsString:=DMFrm.QLookWarnaKD_WARNA.AsString;
    QDetailWARNA.AsString:=DMFrm.QLookWarnaWARNA.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookWarnaEnter(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookAffalCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
   QDetailJENIS_AFFAL.AsString:=QAffalJENIS_AFFAL.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookAffalEnter(Sender: TObject);
begin
  QAffal.Close;
  QAffal.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookSatuanCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
   QDetailSATUAN.AsString:=DMFrm.SatuanSATUAN.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookSatuanEnter(Sender: TObject);
begin
  DMFrm.Satuan.Close;
  DMFrm.Satuan.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookAffal2CloseUp(
  Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
   QDetailSATUAN.AsString:=DMFrm.SatuanSATUAN.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookAffal2Enter(
  Sender: TObject);
begin
  DMFrm.Satuan.Close;
  DMFrm.Satuan.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.WebBrowser3DocumentComplete(
  Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser3.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TSerahTerimaKeGDJadiLJRFrm.BitBtn14Click(Sender: TObject);
begin
  wwDBGrid1.BringToFront;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookPaletCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   if modified then
    QDetailPALET.AsString:=DMFrm.QPaletPALET.AsString;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookPaletClick(Sender: TObject);
begin
DMFrm.QPalet.Open;
end;

procedure TSerahTerimaKeGDJadiLJRFrm.LookPaletEnter(Sender: TObject);
begin
DMFrm.QPalet.Open;
end;

end.
