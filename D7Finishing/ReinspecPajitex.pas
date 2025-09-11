unit ReinspecPajitex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, jpeg, Oracle, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, wwrcdvw, OleCtrls, SHDocVw;

type
  TReinspecPajitexFrm = class(TForm)
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
    LookKonstruksi: TwwDBLookupComboDlg;
    Label11: TLabel;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglakhir2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BtnExport2: TBitBtn;
    BitBtn6: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand5: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    Label20: TLabel;
    Qkon_opening: TOracleDataSet;
    Qkon_opening_Tot: TOracleDataSet;
    Qkon_opening_TotPOTONG: TFloatField;
    dsQkon_opening: TwwDataSource;
    Qkon_openingKONSTRUKSI: TStringField;
    Qkon_openingPOTONG: TFloatField;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel28: TQRLabel;
    LookSatuan: TwwDBComboBox;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText29: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand9: TQRBand;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText3: TQRDBText;
    QRBand10: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRBand11: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape18: TQRShape;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRBand7: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    Qkon_openingKODI: TFloatField;
    Qkon_opening_TotKODI: TFloatField;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText36: TQRDBText;
    QRShape7: TQRShape;
    QTransaksiDOC_ISO: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
    QTransaksiSINOPSIS: TBlobField;
    QRLabel22: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QTransaksiDOC_ISO2: TStringField;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    LookProses: TwwDBComboBox;
    Label13: TLabel;
    QTotalPOTONG: TFloatField;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel4: TQRLabel;
    wwDBComboBox1: TwwDBLookupComboDlg;
    Qkon_openingKD_PRODUKSI: TStringField;
    TabSheet4: TTabSheet;
    Label10: TLabel;
    QuickRep3: TQuickRep;
    QRBand8: TQRBand;
    QRLabel25: TQRLabel;
    QRImage3: TQRImage;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText39: TQRDBText;
    QRGroup3: TQRGroup;
    QRBand12: TQRBand;
    QRDBText40: TQRDBText;
    QRSysData3: TQRSysData;
    QRBand13: TQRBand;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText50: TQRDBText;
    QRBand14: TQRBand;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape10: TQRShape;
    QRShape21: TQRShape;
    QRDBText54: TQRDBText;
    QRShape22: TQRShape;
    QRBand15: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel38: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    VTglAwal4: TwwDBDateTimePicker;
    VTglakhir4: TwwDBDateTimePicker;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    dsQkon_Shift: TwwDataSource;
    Qkon_Shift: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    Qkon_Shift_Tot: TOracleDataSet;
    Qkon_ShiftSHIFT: TStringField;
    Qkon_Shift_TotPOTONG: TFloatField;
    Qkon_Shift_TotKODI: TFloatField;
    LookCorak: TwwDBLookupComboDlg;
    BtnOk2: TSpeedButton;
    BtnFind: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Qkon_ShiftPOTONG: TFloatField;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_ORDER: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterKD_MESIN: TStringField;
    QMasterMESIN: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterISPOST: TStringField;
    QMasterSTATUS: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QMasterJENIS: TStringField;
    QMasterNO_REFF: TStringField;
    Label14: TLabel;
    wwDBEdit1: TwwDBEdit;
    QDetailNO_REG: TFloatField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailQTY_GULUNG: TFloatField;
    QDetailQTY_POTONG: TFloatField;
    QDetailQTY_METER: TFloatField;
    QDetailQTY_KODI: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailSATUAN: TStringField;
    QDetailMESIN: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailKD_WARNA: TStringField;
    QDetailWARNA: TStringField;
    QTotalMETER: TFloatField;
    QTotalKODI: TFloatField;
    QDetailTGL_KIRIM: TDateTimeField;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseKET_ATAS: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseNO_REFF: TStringField;
    QBrowseNO_REG_DETAIL: TFloatField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_METER: TFloatField;
    QBrowseQTY_KODI: TFloatField;
    QBrowseKET_BAWAH: TStringField;
    QBrowseNO_ORDER: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseKD_WARNA: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseKD_PROSES: TStringField;
    QBrowsePROSES: TStringField;
    QBrowseITEM: TStringField;
    QBrowseTGL_KIRIM: TDateTimeField;
    QBrowseTotalPOTONG: TFloatField;
    QBrowseTotalMETER: TFloatField;
    QBrowseTotalKODI: TFloatField;
    RNota: TRadioGroup;
    LookWarna: TwwDBLookupComboDlg;
    LookCorakNew: TwwDBLookupComboDlg;
    LookMGD: TwwDBLookupComboDlg;
    QDetailITEM: TStringField;
    QDetailKD_PROSES: TStringField;
    QDetailPROSES: TStringField;
    TabSheet5: TTabSheet;
    PanelCenter1: TPanel;
    Panel1: TPanel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    DBText9: TDBText;
    Panel2: TPanel;
    BitBtn9: TBitBtn;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    Panel10: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Label24: TLabel;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
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
    ListView1: TListView;
    Label25: TLabel;
    LookProsesImp: TwwDBComboBox;
    Label26: TLabel;
    wwDBEdit2: TwwDBEdit;
    QDetailLOOM: TStringField;
    QLoom: TOracleDataSet;
    LookLoom: TwwDBLookupComboDlg;
    QLoomLOOM: TStringField;
    QBrowseLOOM: TStringField;
    QInsertDetail: TOracleQuery;
    OpenDialog1: TOpenDialog;
    Button3: TButton;
    QInsertDetail2: TOracleQuery;
    QDeleteDetail: TOracleQuery;
    TabSheet6: TTabSheet;
    Panel9: TPanel;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel12: TPanel;
    vOperand3: TLabel;
    cbTanggal3: TCheckBox;
    BitBtn11: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BitBtn12: TBitBtn;
    RadioGroup3: TRadioGroup;
    Label29: TLabel;
    wwDBGrid3: TwwDBGrid;
    QBrowseRekap: TOracleDataSet;
    QBrowseRekapKP: TStringField;
    QBrowseRekapKONSTRUKSI: TStringField;
    QBrowseRekapPOTONG: TFloatField;
    QBrowseRekapMETER: TFloatField;
    QBrowseRekapKODI: TFloatField;
    dsQBrowseRekap: TwwDataSource;
    QBrowseRekapTot: TOracleDataSet;
    QBrowseRekapTotPOTONG: TFloatField;
    QBrowseRekapTotMETER: TFloatField;
    QBrowseRekapTotKODI: TFloatField;
    QDetailSUPLIER: TStringField;
    QSuplier: TOracleDataSet;
    QSuplierNAMA_SUPLIER: TStringField;
    LookSuplier: TwwDBLookupComboDlg;
    QBrowseSUPLIER: TStringField;
    btnPrint: TBitBtn;
    WebBrowser1: TWebBrowser;
    FNo_Urut_LPB: TOracleDataSet;
    FNo_Urut_LPBNO_LPB: TStringField;
    QMasterNOTA_PRINT: TStringField;
    QBrowseRekap2: TOracleDataSet;
    QBrowseRekap2KP: TStringField;
    QBrowseRekap2KONSTRUKSI: TStringField;
    QBrowseRekap2NOTA_PRINT: TStringField;
    QBrowseRekap2POTONG: TFloatField;
    QBrowseRekap2METER: TFloatField;
    QBrowseRekap2KODI: TFloatField;
    dsQBrowseRekap2: TwwDataSource;
    FNo_Urut_LPB2: TOracleDataSet;
    QNota_LPB: TOracleDataSet;
    QProc_PerMitra: TOracleQuery;
    QNota_LPBNOTA_PRINT: TStringField;
    FNo_Urut_LPB2NO_LPB: TStringField;
    CekUnpost: TOracleDataSet;
    CekUnpostVCOUNT: TFloatField;
    Label28: TLabel;
    QDetailAFL_PJI: TFloatField;
    QTotalAFL_PJI: TFloatField;
    QBrowseAFL_PJI: TFloatField;
    QBrowseRekapTotAFL_PJI: TFloatField;
    QBrowseRekapAFL_PJI: TFloatField;
    QBrowseTotalAFL_PJI: TFloatField;
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
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg1Click(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure VTglAwal4Change(Sender: TObject);
    procedure VTglakhir4Change(Sender: TObject);
    procedure Qkon_ShiftAfterScroll(DataSet: TDataSet);
    procedure Qkon_Shift_TotAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid4TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure LookProsesCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure LookWarnaClick(Sender: TObject);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaEnter(Sender: TObject);
    procedure LookCorakNewEnter(Sender: TObject);
    procedure LookCorakNewClick(Sender: TObject);
    procedure LookCorakNewCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookMGDClick(Sender: TObject);
    procedure LookMGDEnter(Sender: TObject);
    procedure LookMGDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailQTY_POTONGChange(Sender: TField);
    procedure QDetailQTY_METERChange(Sender: TField);
    procedure LookLoomEnter(Sender: TObject);
    procedure wwDBNavigator2PostClick(Sender: TObject);
    procedure wwDBNavigator2InsertClick(Sender: TObject);
    procedure wwDBNavigator2DeleteClick(Sender: TObject);
    procedure wwDBNavigator2CancelClick(Sender: TObject);
    procedure wwDBNavigator2ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure LookProsesImpCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure vOperand3Click(Sender: TObject);
    procedure cbTanggal3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure QBrowseRekapAfterScroll(DataSet: TDataSet);
    procedure LookSuplierEnter(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
    FUpdatingFields: boolean;
  public
    { Public declarations }
    procedure baca_tab(SheetIndex:integer);
  end;

var  ReinspecPajitexFrm: TReinspecPajitexFrm;

implementation

uses DM, Math, ComObj;

{$R *.dfm}

procedure TReinspecPajitexFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  ReinspecPajitexFrm:=Nil;
end;

procedure TReinspecPajitexFrm.baca_tab(SheetIndex:integer);
var
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

procedure TReinspecPajitexFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TReinspecPajitexFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TReinspecPajitexFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi', '''+QBrowseKD_TRANSAKSI.AsString+''');
 QTransaksi.Open;
 ReinspecPajitexFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TReinspecPajitexFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TReinspecPajitexFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TReinspecPajitexFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
      FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
      FNo_Urut.Open;
      //FNo_Urut_LPB.Close;
      //FNo_Urut_LPB.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
      //FNo_Urut_LPB.SetVariable('ptgl',QMasterTGL.AsDateTime);
      //FNo_Urut_LPB.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
      //QMasterNOTA_PRINT.AsString:=FNo_Urut_LPBNO_LPB.AsString; // NO URUT LPB PRINT
  end;
end;

procedure TReinspecPajitexFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    CekUnpost.Close;
    CekUnpost.SetVariable('no_reg', QMasterNO_REG.AsInteger);
    CekUnpost.Open;

 if CekUnpostVCOUNT.AsInteger > 0 then
 begin
    showmessage('Maaf, tidak dapat diedit karena sudah ditarik Dept Reinspect !');
    Abort;
 end;


    //ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //Abort;
    //Dataset.Cancel;
  end;



end;

procedure TReinspecPajitexFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TReinspecPajitexFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TReinspecPajitexFrm.QDetailNewRecord(DataSet: TDataSet);
begin
LookProses.Enabled:=false;
DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;

    if LookProses.Text = 'SARUNG' then
        begin
            QDetailQTY_POTONG.ReadOnly := false;
            QDetailQTY_METER.ReadOnly := true;
            QDetailQTY_KODI.ReadOnly := true;
            QDetailSATUAN.AsString:='PCS';

            if QDetailMesin.AsString = '' then
            begin
               QDetailMesin.AsString := '-'
            end;
        end
    else
        begin
            QDetailQTY_POTONG.ReadOnly := true;
            QDetailQTY_METER.ReadOnly := false;
            QDetailQTY_KODI.ReadOnly := true;
            QDetailSATUAN.AsString:='METER';

            if QDetailMesin.AsString = '' then
            begin
               QDetailMesin.AsString := '-'
            end;
        end;

    // Cek dan atur nilai QDetailMesin satu kali saja
    if QDetailMesin.AsString = '' then
        QDetailMesin.AsString := '-';

//QDetailKD_SUB_LOKASI.AsString:='-';

//QDetailOPERATOR.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TReinspecPajitexFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TReinspecPajitexFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
//  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TReinspecPajitexFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TReinspecPajitexFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TReinspecPajitexFrm.cbOtomatisClick(Sender: TObject);
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

procedure TReinspecPajitexFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TReinspecPajitexFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TReinspecPajitexFrm.cbTanggalClick(Sender: TObject);
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

procedure TReinspecPajitexFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
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

    if RNota.ItemIndex = 0 then
        QBrowse.SetVariable('kd_transaksi', '')
    else if RNota.ItemIndex = 1 then
        QBrowse.SetVariable('kd_transaksi', 'R07')
    else
        QBrowse.SetVariable('kd_transaksi', 'R08');

    QBrowse.SetVariable('myparam', vfilter + vorder);
    QBrowse.Open;
    QBrowseTotal.Close;

    if RNota.ItemIndex = 0 then
        QBrowseTotal.SetVariable('kd_transaksi', '')
    else if RNota.ItemIndex = 1 then
        QBrowseTotal.SetVariable('kd_transaksi', 'R07') // Single value
    else
        QBrowseTotal.SetVariable('kd_transaksi', 'R08'); // Single value

    QBrowseTotal.SetVariable('myparam', vfilter);
    QBrowseTotal.Open;
    QBrowse.EnableControls;


  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPOTONG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalMETER.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('AFL_PJI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalAFL_PJI.AsFloat);



end;

procedure TReinspecPajitexFrm.BtnExportClick(Sender: TObject);
begin
          if QBrowse.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet2.Caption+' '+Caption+'';
             wwDBGrid1xxxxx.ExportOptions.TitleName:=''+TabSheet2.Caption+' '+Caption+'';
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

procedure TReinspecPajitexFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TReinspecPajitexFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QTransaksi.Close;
         // QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         //QTransaksiKD_TRANSAKSI.AsString := QBrowseKD_TRANSAKSI.AsString;
         QTransaksi.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsString);
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsString);
         QMaster.Open;
         QTransaksi.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TReinspecPajitexFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  // wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalPOTONG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalMETER.AsFloat);
  wwDBGrid1.ColumnByName('QTY_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalKODI.AsFloat);
  wwDBGrid1.ColumnByName('AFL_PJI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalAFL_PJI.AsFloat);

end;

procedure TReinspecPajitexFrm.FormShow(Sender: TObject);
begin
{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal2.Date:=Trunc(date());

  VTglakhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir2.Date:=Trunc(date());
{azmi}
end;

procedure TReinspecPajitexFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TReinspecPajitexFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
 
end;

procedure TReinspecPajitexFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_PRODUKSI.AsString:=DMFrm.QLookKdProduksiKD_PRODUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QLookKdProduksiKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QLookKdProduksiSUB_KELOMPOK.AsString;
end;

procedure TReinspecPajitexFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TReinspecPajitexFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QLookKdProduksi.Open;
end;

procedure TReinspecPajitexFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TReinspecPajitexFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QLookKdProduksi.Open;
end;

procedure TReinspecPajitexFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TReinspecPajitexFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='IN';
QMasterGRUP.AsString:='E';
QMasterSHIFT.AsString:='0';
QMasterISPOST.AsString:='0';
LookProses.Enabled:=true;
end;

procedure TReinspecPajitexFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TReinspecPajitexFrm.VTglakhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TReinspecPajitexFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin

end;

procedure TReinspecPajitexFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
 { vpertama:=True;
  if cbTanggal2.Checked then
     vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglakhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (Qkon_opening.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (Qkon_opening.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'KONSTRUKSI') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid2.Columns[i].FieldName+' = '''+ECari2.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid2.Columns[i].FieldName+' = '''+ECari2.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField2.Text+' like ''%'+ECari2.Text+'%'''
         else
           vfilter:=vfilter+dbcField2.Text+' = '''+ECari2.Text+'''';
    vfilter:=vfilter+')';
    if Qkon_opening.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  Qkon_opening.DisableControls;
  Qkon_opening.Close;
  Qkon_opening.SetVariable('myparam',vfilter+vorder);
  Qkon_opening.Open;
  Qkon_opening_Tot.Close;
  Qkon_opening_Tot.SetVariable('myparam',vfilter);
  Qkon_opening_Tot.Open;
  Qkon_opening.EnableControls;
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',Qkon_opening_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',Qkon_opening_TotPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);
   }
  Qkon_opening.DisableControls;
  Qkon_opening.Close;
  Qkon_opening.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
  Qkon_opening.SetVariable('pawal',VTglAwal2.Date);
  Qkon_opening.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_opening.Open;
  Qkon_opening_Tot.Close;
  Qkon_opening_Tot.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
  Qkon_opening_Tot.SetVariable('pawal',VTglAwal2.Date);
  Qkon_opening_Tot.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_opening_Tot.Open;
  Qkon_opening.EnableControls;
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',Qkon_opening_TotPOTONG.AsFloat);
  wwDBGrid2.ColumnByName('KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',Qkon_opening_TotKODI.AsFloat);
end;

procedure TReinspecPajitexFrm.BtnExport2Click(Sender: TObject);
begin
if Qkon_opening.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet3.Caption+' '+Caption+'';
             wwDBGrid2.ExportOptions.TitleName:=''+TabSheet3.Caption+' '+Caption+'';
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

procedure TReinspecPajitexFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TReinspecPajitexFrm.TabSheet3Show(Sender: TObject);
begin
QBrowse.Open;
Qkon_opening.Open;
end;

procedure TReinspecPajitexFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TReinspecPajitexFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
DMFrm.QCorak.Open;
end;

procedure TReinspecPajitexFrm.wwDBLookupComboDlg1Click(Sender: TObject);
begin
DMFrm.QCorak.Open;
end;

procedure TReinspecPajitexFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TReinspecPajitexFrm.wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TReinspecPajitexFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TReinspecPajitexFrm.BitBtn4Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  Qkon_Shift.DisableControls;
  Qkon_Shift.Close;
  Qkon_Shift.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
  Qkon_Shift.SetVariable('pawal',VTglAwal2.Date);
  Qkon_Shift.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_Shift.Open;
  Qkon_Shift_Tot.Close;
  Qkon_Shift_Tot.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
  Qkon_Shift_Tot.SetVariable('pawal',VTglAwal2.Date);
  Qkon_Shift_Tot.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_Shift_Tot.Open;
  Qkon_Shift.EnableControls;
  wwDBGrid4.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',Qkon_Shift_TotPOTONG.AsFloat);
  wwDBGrid4.ColumnByName('KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',Qkon_Shift_TotKODI.AsFloat);
end;

procedure TReinspecPajitexFrm.VTglAwal4Change(Sender: TObject);
begin
 VTglakhir4.Date:=(VTglAwal4.Date);
end;

procedure TReinspecPajitexFrm.VTglakhir4Change(Sender: TObject);
begin
 if VTglAwal4.Date>VTglakhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TReinspecPajitexFrm.Qkon_ShiftAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(Qkon_Shift.RecNo)+' dari '+FormatFloat('#,#',Qkon_Shift.RecordCount)+' Records';
{azmi}
end;

procedure TReinspecPajitexFrm.Qkon_Shift_TotAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(Qkon_Shift.RecNo)+' dari '+FormatFloat('#,#',Qkon_Shift.RecordCount)+' Records';
{azmi}
end;

procedure TReinspecPajitexFrm.wwDBGrid4TitleButtonClick(Sender: TObject;
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

procedure TReinspecPajitexFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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
  begin
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;
end;

procedure TReinspecPajitexFrm.BtnFindClick(Sender: TObject);
begin
  if not Qkon_opening.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    Qkon_opening.QBEMode:=TRUE;
  end
  else
    Qkon_opening.ClearQBE;
end;

procedure TReinspecPajitexFrm.BtnOk2Click(Sender: TObject);
var
    vt1 : real;

begin
    if Qkon_opening.QBEMode then
        begin
            Qkon_opening.ExecuteQBE;
            wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
            //disini

            vt1:=0;

            while not Qkon_opening.Eof do
                begin
                    vt1 := vt1 + Qkon_openingPOTONG.AsFloat;

                    Qkon_opening.Next;
                end;
            wwDBGrid2.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            
            //disini
        end
end;

procedure TReinspecPajitexFrm.SpeedButton1Click(Sender: TObject);
begin
if not Qkon_Shift.QBEMode then
  begin
    wwDBGrid4.Options:=wwDBGrid4.Options-[dgRowSelect,dgAlwaysShowSelection];
    Qkon_Shift.QBEMode:=TRUE;
  end
  else
    Qkon_Shift.ClearQBE;
end;

procedure TReinspecPajitexFrm.SpeedButton2Click(Sender: TObject);
var
    vt1 : real;

begin
    if Qkon_Shift.QBEMode then
        begin
            Qkon_Shift.ExecuteQBE;
            wwDBGrid4.Options:=wwDBGrid4.Options+[dgRowSelect,dgAlwaysShowSelection];
            //disini

            vt1 := 0;

            while not Qkon_Shift.Eof do
                begin
                    vt1 := vt1 + Qkon_ShiftPOTONG.AsFloat;

                    Qkon_Shift.Next;
                end;
            wwDBGrid4.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            
            //disini
        end
end;

procedure TReinspecPajitexFrm.LookProsesCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
QTransaksi.Close;

if LookProses.Text = 'SARUNG' then
begin
  QTransaksi.SetVariable('kd_transaksi', 'R07');
  QMasterKD_TRANSAKSI.AsString := 'R07';
  // wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := true;
end
else
begin
  QTransaksi.SetVariable('kd_transaksi', 'R08');
  QMasterKD_TRANSAKSI.AsString := 'R08';
  // wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := false;
end;

QTransaksi.Open;
end;

procedure TReinspecPajitexFrm.LookWarnaClick(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TReinspecPajitexFrm.LookWarnaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_WARNA.AsString:=DMFrm.QLookWarnaKD_WARNA.AsString;
    QDetailWARNA.AsString:=DMFrm.QLookWarnaWARNA.AsString;
end;

procedure TReinspecPajitexFrm.LookWarnaEnter(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TReinspecPajitexFrm.LookCorakNewEnter(Sender: TObject);
begin
DMFrm.QCorak_New.Open;
end;

procedure TReinspecPajitexFrm.LookCorakNewClick(Sender: TObject);
begin
DMFrm.QCorak_New.Open;
end;

procedure TReinspecPajitexFrm.LookCorakNewCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorak_NewKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorak_NewNAMA_CORAK.AsString;
end;

procedure TReinspecPajitexFrm.LookMGDClick(Sender: TObject);
begin
DMFrm.MGD.Open;
end;

procedure TReinspecPajitexFrm.LookMGDEnter(Sender: TObject);
begin
DMFrm.MGD.Open;
end;

procedure TReinspecPajitexFrm.LookMGDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_PROSES.AsString:=DMFrm.MGDKD_PROSES.AsString;
    QDetailPROSES.AsString:=DMFrm.MGDPROSES.AsString;
end;

procedure TReinspecPajitexFrm.QDetailQTY_POTONGChange(Sender: TField);
begin
  if FUpdatingFields then Exit; // Mencegah eksekusi jika sedang memperbarui

  FUpdatingFields := True;
  try
    QDetailQTY_METER.AsFloat := QDetailQTY_POTONG.AsFloat * 2.12;
    QDetailQTY_KODI.AsFloat := QDetailQTY_POTONG.AsFloat / 20;
  finally
    FUpdatingFields := False; // Reset setelah selesai
  end;
end;

procedure TReinspecPajitexFrm.QDetailQTY_METERChange(Sender: TField);
begin
  if FUpdatingFields then Exit; // Mencegah eksekusi jika sedang memperbarui

  FUpdatingFields := True;
  try
    QDetailQTY_POTONG.AsFloat := QDetailQTY_METER.AsFloat / 2.12;
    QDetailQTY_KODI.AsFloat := (QDetailQTY_METER.AsFloat / 2.12) / 20;
  finally
    FUpdatingFields := False; // Reset setelah selesai
  end;
end;


procedure TReinspecPajitexFrm.LookLoomEnter(Sender: TObject);
begin
QLoom.Close;
QLoom.Open;
end;

procedure TReinspecPajitexFrm.wwDBNavigator2PostClick(Sender: TObject);
var
  i, Reg : Integer;
  QTY_GULUNG, QTY_POTONG, QTY_METER, AFFAL : Real;
  NO, TGL_KIRIM, MESIN, ITEM, NO_ORDER, SATUAN, PROSES, KETERANGAN : String;

begin
    if LookProsesImp.Text = 'SARUNG' then
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
            MESIN := ListView1.Items[i].SubItems[0];
            ITEM := ListView1.Items[i].SubItems[1];
            NO_ORDER := ListView1.Items[i].SubItems[2];

            QTY_GULUNG := StrToFloatDef(ListView1.Items[i].SubItems[3], 0);
            QTY_POTONG := StrToFloatDef(ListView1.Items[i].SubItems[4], 0);

            SATUAN := ListView1.Items[i].SubItems[5];
            KETERANGAN := ListView1.Items[i].SubItems[6];

            // Insert data ke dalam tabel menggunakan QInsertDetail
            QInsertDetail.Close;
            QInsertDetail.SetVariable('REG', REG);
            QInsertDetail.SetVariable('MESIN', MESIN);
            QInsertDetail.SetVariable('ITEM', ITEM);
            QInsertDetail.SetVariable('NO_ORDER', NO_ORDER);

            QInsertDetail.SetVariable('QTY_GULUNG', QTY_GULUNG);
            QInsertDetail.SetVariable('QTY_POTONG', QTY_POTONG);

            QInsertDetail.SetVariable('SATUAN', SATUAN);
            QInsertDetail.SetVariable('KETERANGAN', KETERANGAN);

            // Eksekusi perintah
            QInsertDetail.Execute;
        end;  // <- Perbaikan: `end;` di sini menutup loop `for`
    end
    else
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
            MESIN := ListView1.Items[i].SubItems[0];
            ITEM := ListView1.Items[i].SubItems[1];
            NO_ORDER := ListView1.Items[i].SubItems[2];

            QTY_GULUNG := StrToFloatDef(ListView1.Items[i].SubItems[3], 0);
            QTY_METER := StrToFloatDef(ListView1.Items[i].SubItems[4], 0);

            AFFAL := StrToFloatDef(ListView1.Items[i].SubItems[5], 0);

            SATUAN := ListView1.Items[i].SubItems[6];
            KETERANGAN := ListView1.Items[i].SubItems[7];

            // Insert data ke dalam tabel menggunakan QInsertDetail2
            QInsertDetail2.Close;
            QInsertDetail2.SetVariable('REG', REG);
            QInsertDetail2.SetVariable('MESIN', MESIN);
            QInsertDetail2.SetVariable('ITEM', ITEM);
            QInsertDetail2.SetVariable('NO_ORDER', NO_ORDER);

            QInsertDetail2.SetVariable('QTY_GULUNG', QTY_GULUNG);
            QInsertDetail2.SetVariable('QTY_METER', QTY_METER);

            QInsertDetail2.SetVariable('AFFAL', AFFAL);

            QInsertDetail2.SetVariable('SATUAN', SATUAN);
            QInsertDetail2.SetVariable('KETERANGAN', KETERANGAN);

            // Eksekusi perintah
            QInsertDetail2.Execute;
        end;  // <- Perbaikan: `end;` di sini menutup loop `for`
    end;  // <- Perbaikan: `end;` ini menutup `if...else`
end;


procedure TReinspecPajitexFrm.wwDBNavigator2InsertClick(Sender: TObject);
begin
ListView1.Clear;

Edit2.Clear;
end;

procedure TReinspecPajitexFrm.wwDBNavigator2DeleteClick(Sender: TObject);
var
    Reg :String;
begin
    ListView1.Clear;

    Edit2.Clear;

    QDetail.Close;

    Reg:=QMasterNO_REG.AsString;
    
    QDetail.Open;
    QDeleteDetail.Close;
    QDeleteDetail.SQL.Clear;
    QDeleteDetail.SQL.Add('begin') ;
    QDeleteDetail.SQL.Add('delete from ipisma_db5.PEMASUKAN_PAJITEX_DET where no_reg = '+Reg+';');
    QDeleteDetail.SQL.Add('commit;') ;
    QDeleteDetail.SQL.Add('end;') ;
    QDeleteDetail.Execute;
end;

procedure TReinspecPajitexFrm.wwDBNavigator2CancelClick(Sender: TObject);
var
    Reg :String;
begin
    ListView1.Clear;

    Edit2.Clear;

    QDetail.Close;
    Reg:=QMasterNO_REG.AsString;
    QDetail.Open;
    QDeleteDetail.Close;
    QDeleteDetail.SQL.Clear;
    QDeleteDetail.SQL.Add('begin') ;
    QDeleteDetail.SQL.Add('delete from ipisma_db5.PEMASUKAN_PAJITEX_DET where no_reg = '+Reg+';');
    QDeleteDetail.SQL.Add('commit;') ;
    QDeleteDetail.SQL.Add('end;') ;
    QDeleteDetail.Execute;
end;

procedure TReinspecPajitexFrm.wwDBNavigator2ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TReinspecPajitexFrm.Button1Click(Sender: TObject);
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

  QMaster.Post

  end;
end;

procedure TReinspecPajitexFrm.Button2Click(Sender: TObject);
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
            SaveDialog.FileName := 'TEMPLATE_PAJITEX_SARUNG.xls';

            // Menampilkan dialog Save As
            if SaveDialog.Execute then
            begin
            LocalFilePath := SaveDialog.FileName;

            try
                // URL tempat file template Excel disimpan
                ExcelTemplateURL := 'http:\\192.168.10.200\Template\TEMPLATE_PAJITEX_SARUNG.xls';

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
end;   //TEMPLATE Sarung

procedure TReinspecPajitexFrm.Button3Click(Sender: TObject);
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
            SaveDialog.FileName := 'TEMPLATE_PAJITEX_PRINTING.xls';

            // Menampilkan dialog Save As
            if SaveDialog.Execute then
            begin
            LocalFilePath := SaveDialog.FileName;

            try
                // URL tempat file template Excel disimpan
                ExcelTemplateURL := 'http:\\192.168.10.200\Template\TEMPLATE_PAJITEX_PRINTING.xls';

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

procedure TReinspecPajitexFrm.LookProsesImpCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
QTransaksi.Close;

if LookProsesImp.Text = 'SARUNG' then
begin
  QTransaksi.SetVariable('kd_transaksi', 'R07');
  QMasterKD_TRANSAKSI.AsString := 'R07';
  // wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := true;
end
else
begin
  QTransaksi.SetVariable('kd_transaksi', 'R08');
  QMasterKD_TRANSAKSI.AsString := 'R08';
  // wwDBGrid1.ColumnByName('NO_DESAIN').ReadOnly := false;
end;
QTransaksi.Open;
end;

procedure TReinspecPajitexFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TReinspecPajitexFrm.vTglAkhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TReinspecPajitexFrm.cbOtomatis3Click(Sender: TObject);
begin
if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid3.Options:=wwDBGrid3.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TReinspecPajitexFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowseRekap.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL' then
      dbcField3.Items.Add(wwDBGrid3.Columns[i].FieldName);

end;

procedure TReinspecPajitexFrm.vOperand3Click(Sender: TObject);
begin
if vOperand3.Caption='LIKE' then
    vOperand3.Caption:='='
    else
      vOperand3.Caption:='LIKE';
end;

procedure TReinspecPajitexFrm.cbTanggal3Click(Sender: TObject);
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

procedure TReinspecPajitexFrm.BitBtn11Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
wwDBGrid3.BringToFront;
QBrowseRekap.Open;
  vpertama:=True;
 { if cbTanggal3.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal3.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir3.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else  }
    vfilter:=' where (';
  if (QBrowseRekap.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid3.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowseRekap.FieldByName(wwDBGrid3.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand3.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid3.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid3.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand3.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid3.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid3.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QBrowseRekap.Active then
      vorder:=' order by '+wwDBGrid3.Columns[0].FieldName
      else
        vorder:=' order by kp';

  end;

    QBrowseRekap.DisableControls;
    QBrowseRekap.Close;
    QBrowseRekap.SetVariable('pawal',VTglAwal3.Date);
    QBrowseRekap.SetVariable('pakhir',vTglAkhir3.Date);
    QBrowseRekap.SetVariable('myparam', vfilter + vorder);
    if RadioGroup3.ItemIndex = 1 then
       QBrowseRekap.SetVariable('kd_transaksi','''R07''')
    else if RadioGroup3.ItemIndex = 2 then
       QBrowseRekap.SetVariable('kd_transaksi','''R08''')
    else
       QBrowseRekap.SetVariable('kd_transaksi','''R08'',''R07''');
    QBrowseRekap.Open;
    QBrowseRekap.EnableControls;

    QBrowseRekapTot.DisableControls;
    QBrowseRekapTot.Close;
    QBrowseRekapTot.SetVariable('pawal',VTglAwal3.Date);
    QBrowseRekapTot.SetVariable('pakhir',vTglAkhir3.Date);
    QBrowseRekapTot.SetVariable('myparam', vfilter + vorder);
    if RadioGroup3.ItemIndex = 1 then
       QBrowseRekapTot.SetVariable('kd_transaksi','''R07''')
    else if RadioGroup3.ItemIndex = 2 then
       QBrowseRekapTot.SetVariable('kd_transaksi','''R08''')
    else
       QBrowseRekapTot.SetVariable('kd_transaksi','''R08'',''R07''');
    QBrowseRekapTot.Open;
    QBrowseRekapTot.EnableControls;

  wwDBGrid3.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseRekapTotPOTONG.AsFloat);
  wwDBGrid3.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseRekapTotMETER.AsFloat);
  wwDBGrid3.ColumnByName('KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseRekapTotKODI.AsFloat);

  wwDBGrid3.ColumnByName('AFL_PJI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseRekapTotAFL_PJI.AsFloat);

  //  Untuk Nota Print
  //  QBrowseRekap2.DisableControls;
  //  QBrowseRekap2.Close;
  //  QBrowseRekap2.SetVariable('pawal',VTglAwal3.Date);
  //  QBrowseRekap2.SetVariable('pakhir',vTglAkhir3.Date);
  //  QBrowseRekap2.SetVariable('myparam', vfilter + vorder);
  //  if RadioGroup3.ItemIndex = 1 then
  //     QBrowseRekap2.SetVariable('kd_transaksi','''R07''')
  //  else if RadioGroup3.ItemIndex = 2 then
  //     QBrowseRekap2.SetVariable('kd_transaksi','''R08''')
  //  else
  //    QBrowseRekap2.SetVariable('kd_transaksi','''R08'',''R07''');
  //  QBrowseRekap2.Open;
  //  QBrowseRekap2.EnableControls;

end;

procedure TReinspecPajitexFrm.BitBtn12Click(Sender: TObject);
begin
if QBrowseRekap.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='Rekap Terima dari Pajitex';
             wwDBGrid3.ExportOptions.TitleName:='Rekap Terima dari Pajitex';
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

procedure TReinspecPajitexFrm.QBrowseRekapAfterScroll(DataSet: TDataSet);
begin
LabelBanner.Caption:='Record ke '+IntToStr(QBrowseRekap.RecNo)+' dari '+FormatFloat('#,#',QBrowseRekap.RecordCount)+' Records';
end;

procedure TReinspecPajitexFrm.LookSuplierEnter(Sender: TObject);
begin
QSuplier.Open
end;

procedure TReinspecPajitexFrm.RadioGroup3Click(Sender: TObject);
begin
    if RadioGroup3.ItemIndex = 0 then
        begin
            btnPrint.Visible := False;
            btnPrint.SendToBack;
        end
    else if RadioGroup3.ItemIndex = 1 then
        begin
            btnPrint.Visible := True;
            btnPrint.BringToFront;
        end
    else if RadioGroup3.ItemIndex = 2 then
        begin
            btnPrint.Visible := False;
            btnPrint.SendToBack;
        end;
end;

procedure TReinspecPajitexFrm.btnPrintClick(Sender: TObject);
var
  HTMLFile: TStringList;
  FilePath: string;
  HTMLContent: string;
  TotalPotong: Integer; // Variabel untuk menyimpan total kolom POTONG
  KdTransaksi: string;
begin

  if RadioGroup3.ItemIndex = 1 then
    KdTransaksi := 'R07'
  else if RadioGroup3.ItemIndex = 2 then
    KdTransaksi := 'R08'
  else
    Exit; // Keluar jika tidak ada kondisi yang cocok

  FNo_Urut_LPB2.Close;
  FNo_Urut_LPB2.SetVariable('pkode',KdTransaksi);
  FNo_Urut_LPB2.SetVariable('ptgl',VTglAwal3.Date);
  FNo_Urut_LPB2.Open;

  QNota_LPB.Close;
  QNota_LPB.Open;

  //QProc_PerMitra.Close;
  //QProc_PerMitra.SetVariable('NOTA_PRINT', FNo_Urut_LPB2NO_LPB.AsString);
  //QProc_PerMitra.Execute;

  WebBrowser1.BringToFront;
  FilePath := ExtractFilePath(Application.ExeName) + 'Laporan LPB Pajitex.html';
  HTMLFile := TStringList.Create;
  try
    HTMLContent := 
    '<!DOCTYPE html>' +
    '<html lang="id">' +
    '<head>' +
    '    <meta charset="UTF-8">' +
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' +
    '    <title>Laporan Penerimaan Barang</title>' +
    '    <style>' + 
    '        body { font-family: Arial, sans-serif; font-size: 12px; } ' +
    '        .container { width: 100%; max-width: 330mm; padding: 10px; margin: auto; border: 1px solid #000; } ' +
    '        .header { width: 100%; text-align: left; margin-bottom: 10px; } ' +
    '        .header-table { width: 100%; border-collapse: collapse; } ' +
    '        .header-table td { padding: 4px; vertical-align: top; } ' +
    '        .logo { font-size: 18px; font-weight: bold; text-align: center; width: 30%; } ' +
    '        .title { font-size: 14px; font-weight: bold; text-align: center; }' +
    '        .label { font-weight: bold; width: 20%; } ' +
    '        .received-from { font-weight: bold; margin-top: 10px; } ' +
    '        .order-table { margin-top: 5px; width: 80%; border-collapse: collapse; } ' +
    '        .order-table td { font-size: 12px; padding: 2px 5px; } ' +
    '        .table { width: 100%; border-collapse: collapse; margin-top: 10px; } ' +
    '        .table th, .table td { border: 1px solid #000; padding: 2px; text-align: center; } ' +
    '        .table th { background-color: #f0f0f0; } ' +
    '        .footer { margin-top: 5px; text-align: center; } ' +
    '        @media print { body { margin: 0; padding: 0; } .container { border: none; } @page { size: A5 landscape; margin: 10mm; } } ' +
    '        .footer-table { width: 100%; margin-top: 15px; border-collapse: collapse; } ' +
    '        .footer-table td { padding: 5px; border: none; font-weight: bold; } ' +
    '        .table tr:last-child td { border-bottom: 1px solid black; } ' +
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
    '                    <td class="title" colspan="3"><strong>LAPORAN PENERIMAAN BARANG</strong></td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td class="label" align="center">Sapugarut - Pekalongan</td>' +
    '                    <td class="label" align="center">Nomor : ' + QNota_LPBNOTA_PRINT.AsString + '</td>' +
    '                    <td class="label" align="center">Tanggal : ' + FormatDateTime('dd mmmm yyyy', VTglAwal3.Date) + '</td>' +
    '                </tr>' +
    '            </table>' +
    '            <p class="received-from">' +
    '                <table class="order-table" align="left">' +
    '                    <tr>' +
    '                        <td>Diterima dari :<strong><u> PT. PAJITEX </u></strong></td>' +
    '                        <td><input type="radio"> Order Pembelian</td>' +
    '                        <td><input type="radio"> Order Maklon</td>' +
    '                        <td></td>' +
    '                        <td>No. F</td>' +
    '                        <td> : </td>' +
    '                    </tr>' +
    '                    <tr>' +
    '                        <td></td>' +
    '                        <td><input type="radio"> Retur</td>' +
    '                        <td><input type="radio"> Hasil Maklon</td>' +
    '                        <td></td>' +
    '                        <td>No. SJ/DO</td>' +
    '                        <td> : </td>' +
    '                    </tr>' +
    '                    <tr>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td>No. P/L</td>' +
    '                        <td> : </td>' +
    '                    </tr>' +
    '                </table>' +
    '            </p>' +
    '        </div>' +
    '        <table class="table">' +
    '            <tr>' +
    '                <th>Nama Barang</th>' +
    '                <th>Kode Barang</th>' +
    '                <th>Unit</th>' +
    '                <th>Satuan</th>' +
    '                <th>Harga</th>' +
    '                <th>Jumlah Harga</th>' +
    '                <th style="border: 0px; color: white;">1</th>' +
    '            </tr>';
    TotalPotong := 0; // Inisialisasi total kolom POTONG
    wwDBGrid3.DataSource.DataSet.First;
    while not wwDBGrid3.DataSource.DataSet.Eof do
    begin
        HTMLContent := HTMLContent +
    '            <tr>' +
    '                <td>' + wwDBGrid3.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>' +
    '                <td>' + wwDBGrid3.DataSource.DataSet.FieldByName('KP').AsString + '</td>' +
    '                <td>' + wwDBGrid3.DataSource.DataSet.FieldByName('POTONG').AsString + '</td>' +
    '                <td>PCS</td>' +
    '                <td></td>' +
    '                <td></td>' +
    '                <td style="border: 0px; color: white;">1</td>' +
    '            </tr>';
    // Menambahkan nilai kolom POTONG ke total
        TotalPotong := TotalPotong + wwDBGrid3.DataSource.DataSet.FieldByName('POTONG').AsInteger;
        wwDBGrid3.DataSource.DataSet.Next;
    end;

    HTMLContent := HTMLContent +
    '            <tr>' +
    '                <td colspan="2" style="border: 1px solid black;"><strong>Jumlah</strong></td>' +
    '                <td style="border: 1px solid black;"><strong>' + IntToStr(TotalPotong) + '</strong></td>' +
    '                <td style="border: 1px solid black;"></td>' +
    '                <td style="border: 1px solid black;"></td>' +
    '                <td style="border: 1px solid black;"></td>' +
    '                <td style="border: 0px; color: white;">1</td>' +
    '            </tr>' +
    '        </table>' +
    '        <div class="footer">' +
    '            <table class="footer-table">' +
    '                <tr>' +
    '                    <td align="center">Penerima</td>' +
    '                    <td align="center">Pemakai</td>' +
    '                    <td align="center">Menyetujui</td>' +
    '                    <td align="center">Mengetahui</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td style="height: 30px;"></td>' +
    '                    <td></td>' +
    '                    <td></td>' +
    '                    <td></td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td align="center">Adm Inspect</td>' +
    '                    <td align="center">SH QC</td>' +
    '                    <td align="center">Kemitraan</td>' +
    '                    <td align="center">Warehouse</td>' +
    '                </tr>' +
    '            </table>' +
    '            <p style="text-align: center; margin-top:2px;"><small>Catatan: Kolom harga diisi oleh bagian Adm. Pengadaan</small></p>' +
    '        </div>' +
    '    </div>' +
    '</body>' +
    '</html>';

    HTMLFile.Text := HTMLContent;
    HTMLFile.SaveToFile(FilePath);
    WebBrowser1.Navigate(FilePath);
  finally
    HTMLFile.Free;
  end;
end;

procedure TReinspecPajitexFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

end.
