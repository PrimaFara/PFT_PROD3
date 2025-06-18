unit TerimaDariFinishing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls, jpeg, OleCtrls, SHDocVw;

type
  TTerimaDariFinishingFrm = class(TForm)
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
    QDetailNO_SERI_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailQTY: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QTotal: TOracleDataSet;
    QTotalTOTAL: TFloatField;
    QAmbilData: TOracleQuery;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QMasterNO_BUKTI: TStringField;
    QBrowse: TOracleDataSet;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseKODI_BK: TFloatField;
    QBrowsePCS_BK: TFloatField;
    QBrowseKODI_BS: TFloatField;
    QBrowsePCS_BS: TFloatField;
    QBrowseKODI_BS_PARAH: TFloatField;
    QBrowsePCS_BS_PARAH: TFloatField;
    dsQBrowse: TwwDataSource;
    QBrowseKETERANGAN: TStringField;
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
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
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
    QPerKonstruksi: TOracleDataSet;
    DsPerKonstruksi: TwwDataSource;
    QPerKonstruksi_Tot: TOracleDataSet;
    QDetailGRUP: TStringField;
    QBSBK_TOT: TOracleDataSet;
    QPerCorak: TOracleDataSet;
    StringField1: TStringField;
    DsPerCorak: TwwDataSource;
    QPerCorakCORAK: TStringField;
    QTotCorak: TOracleDataSet;
    QTotCorakTOTAL: TFloatField;
    QPerCorakQTY: TFloatField;
    QDetailNO_DESAIN: TStringField;
    QDetailMESIN: TStringField;
    QPerOperator: TOracleDataSet;
    dsQPerOperator: TwwDataSource;
    QPerOperator_Tot: TOracleDataSet;
    QPerOperatorKONSTRUKSI: TStringField;
    QPerOperatorQTY: TFloatField;
    QPerOperator_TotTOTAL: TFloatField;
    QPerOperatorREKANAN: TStringField;
    QBs_GrupORI: TOracleDataSet;
    QBs_Grup_Tot: TOracleDataSet;
    dsQBs_GrupORI: TwwDataSource;
    HasilInspecting: TPageControl;
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
    Label6: TLabel;
    DBText4: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label3: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboBox2: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
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
    TabSheet3: TTabSheet;
    LabelBanner1: TLabel;
    wwDBGrid2: TwwDBGrid;
    TabSheet5: TTabSheet;
    LabelBanner2: TLabel;
    wwDBGrid4: TwwDBGrid;
    TabSheet4: TTabSheet;
    LabelBanner3: TLabel;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    vTglAkhir2: TwwDBDateTimePicker;
    Panel7: TPanel;
    vOperand2: TLabel;
    cbTanggal2: TCheckBox;
    BitBtn6: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BtnExport2: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    TabSheet6: TTabSheet;
    Label17: TLabel;
    wwDBGrid5: TwwDBGrid;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel9: TPanel;
    BitBtn7: TBitBtn;
    BtnExport3: TBitBtn;
    TabSheet7: TTabSheet;
    Label18: TLabel;
    Panel10: TPanel;
    GroupBox4: TGroupBox;
    Label13: TLabel;
    VtglAwal4: TwwDBDateTimePicker;
    VTglAkhir4: TwwDBDateTimePicker;
    Panel11: TPanel;
    Label16: TLabel;
    cbTanggal4: TCheckBox;
    BitBtn8: TBitBtn;
    ECari4: TEdit;
    cbOtomatis4: TCheckBox;
    dbcField4: TwwDBComboBox;
    BtnExport4: TBitBtn;
    wwDBGrid6: TwwDBGrid;
    TabSheet8: TTabSheet;
    Label19: TLabel;
    Panel12: TPanel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel13: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    wwDBGrid7: TwwDBGrid;
    TabSheet9: TTabSheet;
    Panel14: TPanel;
    GroupBox6: TGroupBox;
    Label20: TLabel;
    vTglAwal6: TwwDBDateTimePicker;
    vTglAkhir6: TwwDBDateTimePicker;
    Panel15: TPanel;
    vOperand6: TLabel;
    cbTanggal6: TCheckBox;
    BitBtn11: TBitBtn;
    ECari6: TEdit;
    cbOtomatis6: TCheckBox;
    dbcField6: TwwDBComboBox;
    BitBtn12: TBitBtn;
    Label22: TLabel;
    wwDBGrid8: TwwDBGrid;
    QBs_Grup_TotQTY: TFloatField;
    QBs_Grup_TotLD: TFloatField;
    QBs_Grup_TotLB: TFloatField;
    QBs_Grup_TotLT: TFloatField;
    QBs_Grup_TotLK: TFloatField;
    QBs_Grup_TotFLS: TFloatField;
    QBs_Grup_TotFLP: TFloatField;
    QBs_Grup_TotLPT: TFloatField;
    QBs_Grup_TotLRG: TFloatField;
    QBs_Grup_TotWL: TFloatField;
    QBs_Grup_TotCK: TFloatField;
    QBs_Grup_TotOJ: TFloatField;
    QBs_Grup_TotCRT: TFloatField;
    QBs_Grup_TotCAJ: TFloatField;
    QBs_Grup_TotPD: TFloatField;
    QBs_Grup_TotPKP: TFloatField;
    QBs_Grup_TotBTS: TFloatField;
    QBs_Grup_TotBTB: TFloatField;
    QBs_Grup_TotWP: TFloatField;
    QBs_Grup_TotSC: TFloatField;
    QBs_Grup_TotKP: TFloatField;
    QBs_Grup_TotBO: TFloatField;
    QBs_Grup_TotKTR: TFloatField;
    QBs_Grup_TotSLL: TFloatField;
    QBs_Grup_TotSBK: TFloatField;
    QBs_Grup_TotANR: TFloatField;
    QBs_Grup_TotUTS: TFloatField;
    QBs_Grup_TotKNB: TFloatField;
    QBs_Grup_TotPJG: TFloatField;
    QBs_Grup_TotLBR: TFloatField;
    QBs_Grup_TotCUP: TFloatField;
    QBs_Grup_TotBGRADE: TFloatField;
    QBrowseNO_DESAIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    TabSheet10: TTabSheet;
    wwDBGrid9: TwwDBGrid;
    Panel16: TPanel;
    GroupBox7: TGroupBox;
    Label21: TLabel;
    VTglAkhir7: TwwDBDateTimePicker;
    Panel17: TPanel;
    vOperand7: TLabel;
    cbTanggal7: TCheckBox;
    BitBtn13: TBitBtn;
    ECari7: TEdit;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    BitBtn14: TBitBtn;
    Label24: TLabel;
    QBs_GrupDetail: TOracleDataSet;
    dsQBs_GrupDetail: TwwDataSource;
    QProcGrupDetail: TOracleQuery;
    BitBtn15: TBitBtn;
    VTglAwal7: TwwDBDateTimePicker;
    QBs_GrupDetailKD_TRANSAKSI: TStringField;
    QBs_GrupDetailTGL_PTG: TDateTimeField;
    QBs_GrupDetailTGL: TDateTimeField;
    QBs_GrupDetailGRUP: TStringField;
    QBs_GrupDetailQTY: TFloatField;
    QBs_GrupDetailBGRADE: TFloatField;
    QBs_GrupDetailPERSEN_BGRADE: TFloatField;
    QBs_GrupDetailKONSTRUKSI: TStringField;
    QBs_GrupDetailCAJ1: TFloatField;
    QBs_GrupDetailCAJ2: TFloatField;
    QBs_GrupDetailCAJ3: TFloatField;
    QBs_GrupDetailCAJ4: TFloatField;
    QBs_GrupDetailFLP1: TFloatField;
    QBs_GrupDetailFLP2: TFloatField;
    QBs_GrupDetailFLP3: TFloatField;
    QBs_GrupDetailFLP4: TFloatField;
    QBs_GrupDetailFLS1: TFloatField;
    QBs_GrupDetailFLS2: TFloatField;
    QBs_GrupDetailFLS3: TFloatField;
    QBs_GrupDetailFLS4: TFloatField;
    QBs_GrupDetailWP1: TFloatField;
    QBs_GrupDetailWP2: TFloatField;
    QBs_GrupDetailWP3: TFloatField;
    QBs_GrupDetailWP4: TFloatField;
    QBs_GrupDetailLPT1: TFloatField;
    QBs_GrupDetailLPT2: TFloatField;
    QBs_GrupDetailLPT3: TFloatField;
    QBs_GrupDetailLPT4: TFloatField;
    QBs_GrupDetailBTS1: TFloatField;
    QBs_GrupDetailBTS2: TFloatField;
    QBs_GrupDetailBTS3: TFloatField;
    QBs_GrupDetailBTS4: TFloatField;
    QBs_GrupDetailBTB1: TFloatField;
    QBs_GrupDetailBTB2: TFloatField;
    QBs_GrupDetailBTB3: TFloatField;
    QBs_GrupDetailBTB4: TFloatField;
    QBs_GrupDetailCK1: TFloatField;
    QBs_GrupDetailCK2: TFloatField;
    QBs_GrupDetailCK3: TFloatField;
    QBs_GrupDetailCK4: TFloatField;
    QBs_GrupDetailOJ1: TFloatField;
    QBs_GrupDetailOJ2: TFloatField;
    QBs_GrupDetailOJ3: TFloatField;
    QBs_GrupDetailOJ4: TFloatField;
    QBs_GrupDetailCRT1: TFloatField;
    QBs_GrupDetailCRT2: TFloatField;
    QBs_GrupDetailCRT3: TFloatField;
    QBs_GrupDetailCRT4: TFloatField;
    QBs_GrupDetailSC1: TFloatField;
    QBs_GrupDetailSC2: TFloatField;
    QBs_GrupDetailSC3: TFloatField;
    QBs_GrupDetailSC4: TFloatField;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand3: TQRBand;
    QRDBText21: TQRDBText;
    QRExpr11: TQRExpr;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRBand4: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRImage2: TQRImage;
    QRLabel27: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel92: TQRLabel;
    QRBand5: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    BitBtn16: TBitBtn;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape17: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape21: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape30: TQRShape;
    QRShape16: TQRShape;
    QRShape26: TQRShape;
    QRShape29: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape6: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape36: TQRShape;
    QRLabel41: TQRLabel;
    QRShape39: TQRShape;
    QRLabel43: TQRLabel;
    QRShape41: TQRShape;
    QRLabel44: TQRLabel;
    QRShape28: TQRShape;
    QRLabel46: TQRLabel;
    QRShape35: TQRShape;
    QRLabel47: TQRLabel;
    QRShape37: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape38: TQRShape;
    QRLabel50: TQRLabel;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRLabel52: TQRLabel;
    QRShape43: TQRShape;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel73: TQRLabel;
    QRShape3: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape22: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRShape97: TQRShape;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRShape98: TQRShape;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRLabel64: TQRLabel;
    QRShape60: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRLabel69: TQRLabel;
    QRShape66: TQRShape;
    QRLabel70: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRLabel71: TQRLabel;
    QRShape69: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRLabel83: TQRLabel;
    QRShape92: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QPerOperatorPOTONG: TFloatField;
    QPerOperator_TotJML_POTONG: TFloatField;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QDefect: TOracleDataSet;
    QDefectSUMLD: TFloatField;
    QDefectSUMLB: TFloatField;
    QDefectSUMLT: TFloatField;
    QDefectSUMLK: TFloatField;
    QDefectSUMPL: TFloatField;
    QDefectSUMLL: TFloatField;
    QDefectSUMLPT: TFloatField;
    QDefectSUMLRG: TFloatField;
    QDefectSUMWL: TFloatField;
    QDefectSUMCKK: TFloatField;
    QDefectSUMOJ: TFloatField;
    QDefectSUMCRT: TFloatField;
    QDefectSUMCAJ: TFloatField;
    QDefectSUMPD: TFloatField;
    QDefectSUMPKP: TFloatField;
    QDefectSUMNG: TFloatField;
    QDefectSUMBTB: TFloatField;
    QDefectSUMWP: TFloatField;
    QDefectSUMSC: TFloatField;
    QDefectSUMKP: TFloatField;
    QDefectSUMBO: TFloatField;
    QDefectSUMTCS: TFloatField;
    QDefectSUMSLL: TFloatField;
    QDefectSUMKS: TFloatField;
    QDefectSUMANR: TFloatField;
    QDefectSUMUTS: TFloatField;
    QDefectSUMKBR: TFloatField;
    QBrowse_Det2_ori: TOracleDataSet;
    QBrowse_Det2_oriNO_NOTA: TStringField;
    QBrowse_Det2_oriTANGGAL: TDateTimeField;
    QBrowse_Det2_oriKD_TRANSAKSI: TStringField;
    QBrowse_Det2_oriISPOST: TStringField;
    QBrowse_Det2_oriREKANAN: TStringField;
    QBrowse_Det2_oriKELOMPOK: TStringField;
    QBrowse_Det2_oriSATUAN: TStringField;
    QBrowse_Det2_oriNO_SERI_BEAM: TStringField;
    QBrowse_Det2_oriQTY: TFloatField;
    QBrowse_Det2_oriOPR_TENUN: TStringField;
    QBrowse_Det2_oriTGL_INSERT: TDateTimeField;
    QBrowse_Det2_oriOPR_INSERT: TStringField;
    QBrowse_Det2_oriNO_REG: TFloatField;
    QBrowse_Det2_oriPROSES: TStringField;
    QBrowse_Det2_oriLOKASI: TStringField;
    QBrowse_Det2_oriKONSTRUKSI: TStringField;
    QBrowse_Det2_oriCORAK: TStringField;
    QBrowse_Det2_oriNIK: TStringField;
    QBrowse_Det2_oriSHIFT: TStringField;
    QBrowse_Det2_oriNO_PRODUKSI: TStringField;
    QBrowse_Det2_oriGRUP: TStringField;
    QBrowse_Det2_oriNO_REG_TENUN: TFloatField;
    QBrowse_Det2_oriLD: TFloatField;
    QBrowse_Det2_oriLB: TFloatField;
    QBrowse_Det2_oriLT: TFloatField;
    QBrowse_Det2_oriLK: TFloatField;
    QBrowse_Det2_oriLL: TFloatField;
    QBrowse_Det2_oriLP: TFloatField;
    QBrowse_Det2_oriLR: TFloatField;
    QBrowse_Det2_oriWL: TFloatField;
    QBrowse_Det2_oriCB: TFloatField;
    QBrowse_Det2_oriCK: TFloatField;
    QBrowse_Det2_oriCRT: TFloatField;
    QBrowse_Det2_oriPD: TFloatField;
    QBrowse_Det2_oriPL: TFloatField;
    QBrowse_Det2_oriPP: TFloatField;
    QBrowse_Det2_oriPS: TFloatField;
    QBrowse_Det2_oriNG: TFloatField;
    QBrowse_Det2_oriWP: TFloatField;
    QBrowse_Det2_oriSC: TFloatField;
    QBrowse_Det2_oriKS: TFloatField;
    QBrowse_Det2_oriKP: TFloatField;
    QBrowse_Det2_oriBO: TFloatField;
    QBrowse_Det2_oriLN: TFloatField;
    QBrowse_Det2_oriQTY2: TFloatField;
    QBrowse_Det2_oriQTY3: TFloatField;
    QBrowse_Det2_oriKD_KONSTRUKSI: TStringField;
    QBrowse_Det2_oriKD_CORAK: TStringField;
    QBrowse_Det2_oriPR: TFloatField;
    QBrowse_Det2_oriUTB: TFloatField;
    QBrowse_Det2_oriUTK: TFloatField;
    QBrowse_Det2_oriLBK: TFloatField;
    QBrowse_Det2_oriSLL: TFloatField;
    QBrowse_Det2_oriTG: TFloatField;
    QBrowse_Det2_oriTCS: TFloatField;
    QBrowse_Det2_oriCUP: TFloatField;
    QBrowse_Det2_oriNO_URUT: TFloatField;
    QBrowse_Det2_oriLPB: TFloatField;
    QBrowse_Det2_oriLPS: TFloatField;
    QBrowse_Det2_oriLRB: TFloatField;
    QBrowse_Det2_oriLRS: TFloatField;
    QBrowse_Det2_oriLS: TFloatField;
    QBrowse_Det2_oriLSB: TFloatField;
    QBrowse_Det2_oriLSS: TFloatField;
    QBrowse_Det2_oriOJ: TFloatField;
    QBrowse_Det2_oriLPT: TFloatField;
    QBrowse_Det2_oriLRG: TFloatField;
    QBrowse_Det2_oriCKK: TFloatField;
    QBrowse_Det2_oriCAJ: TFloatField;
    QBrowse_Det2_oriPKP: TFloatField;
    QBrowse_Det2_oriBTB: TFloatField;
    QBrowse_Det2_oriANR: TFloatField;
    QBrowse_Det2_oriUTS: TFloatField;
    QBrowse_Det2_oriKBR: TFloatField;
    QBrowse_Det2_oriNO_DESAIN: TStringField;
    QBrowse_Det2_oriMESIN: TStringField;
    QBrowse_Det2_oriKD_PRODUKSI: TStringField;
    wwDBGrid10: TwwDBGrid;
    dsQBrowse_Det2_ori: TwwDataSource;
    RTgl: TRadioGroup;
    QBrowseTotal_Det2: TOracleDataSet;
    QBrowseTotal_Det2TOTAL: TFloatField;
    QBSBK_TOT2: TOracleDataSet;
    QDefect2: TOracleDataSet;
    QDefect2SUMLD: TFloatField;
    QDefect2SUMLB: TFloatField;
    QDefect2SUMLT: TFloatField;
    QDefect2SUMLK: TFloatField;
    QDefect2SUMPL: TFloatField;
    QDefect2SUMLL: TFloatField;
    QDefect2SUMLPT: TFloatField;
    QDefect2SUMLRG: TFloatField;
    QDefect2SUMWL: TFloatField;
    QDefect2SUMCKK: TFloatField;
    QDefect2SUMOJ: TFloatField;
    QDefect2SUMCRT: TFloatField;
    QDefect2SUMCAJ: TFloatField;
    QDefect2SUMPD: TFloatField;
    QDefect2SUMPKP: TFloatField;
    QDefect2SUMNG: TFloatField;
    QDefect2SUMBTB: TFloatField;
    QDefect2SUMWP: TFloatField;
    QDefect2SUMSC: TFloatField;
    QDefect2SUMKP: TFloatField;
    QDefect2SUMBO: TFloatField;
    QDefect2SUMTCS: TFloatField;
    QDefect2SUMSLL: TFloatField;
    QDefect2SUMKS: TFloatField;
    QDefect2SUMANR: TFloatField;
    QDefect2SUMUTS: TFloatField;
    QDefect2SUMKBR: TFloatField;
    QDetailQTY4: TFloatField;
    QBrowseKODI_BS_PARAH_AFL: TFloatField;
    QBrowsePCS_BS_PARAH_AFL: TFloatField;
    QDefectSUMAFL: TFloatField;
    QDefect2SUMAFL: TFloatField;
    QBrowse_Det2_oriPRA: TFloatField;
    QBrowse_Det2_oriAFL: TFloatField;
    QBrowse_Det2_oriTGL_PTG: TDateTimeField;
    QBrowse_Det2: TOracleDataSet;
    dsQBrowse_Det2: TwwDataSource;
    QBs_Grup_TotAFL: TFloatField;
    QBs_Grup: TOracleDataSet;
    dsQBs_Grup: TwwDataSource;
    QBs_GrupKD_TRANSAKSI: TStringField;
    QBs_GrupTANGGAL: TDateTimeField;
    QBs_GrupGRUP: TStringField;
    QBs_GrupQTY: TFloatField;
    QBs_GrupBGRADE: TFloatField;
    QBs_GrupPERSEN_BGRADE: TFloatField;
    QBs_GrupKONSTRUKSI: TStringField;
    QBs_GrupLD: TFloatField;
    QBs_GrupLB: TFloatField;
    QBs_GrupLT: TFloatField;
    QBs_GrupLK: TFloatField;
    QBs_GrupFLS: TFloatField;
    QBs_GrupFLP: TFloatField;
    QBs_GrupLPT: TFloatField;
    QBs_GrupLRG: TFloatField;
    QBs_GrupWL: TFloatField;
    QBs_GrupCK: TFloatField;
    QBs_GrupOJ: TFloatField;
    QBs_GrupCRT: TFloatField;
    QBs_GrupCAJ: TFloatField;
    QBs_GrupPD: TFloatField;
    QBs_GrupPKP: TFloatField;
    QBs_GrupBTS: TFloatField;
    QBs_GrupBTB: TFloatField;
    QBs_GrupWP: TFloatField;
    QBs_GrupSC: TFloatField;
    QBs_GrupKP: TFloatField;
    QBs_GrupBO: TFloatField;
    QBs_GrupKTR: TFloatField;
    QBs_GrupSLL: TFloatField;
    QBs_GrupSBK: TFloatField;
    QBs_GrupANR: TFloatField;
    QBs_GrupUTS: TFloatField;
    QBs_GrupKNB: TFloatField;
    QBs_GrupPJG: TFloatField;
    QBs_GrupLBR: TFloatField;
    QBs_GrupCUP: TFloatField;
    QBs_GrupAFL: TFloatField;
    QBs_GrupTGL: TDateTimeField;
    QTotalBS: TFloatField;
    QTotalPARAH: TFloatField;
    QTotalAFL: TFloatField;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel1: TQRLabel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    QDetailBGRADE: TFloatField;
    QTotalBGRADE: TFloatField;
    QBrowseKODI_BGRADE: TFloatField;
    QBrowsePCS_BGRADE: TFloatField;
    QBrowseTotalKODI_BK: TFloatField;
    QBrowseTotalPCS_BK: TFloatField;
    QBrowseTotalKODI_BS: TFloatField;
    QBrowseTotalPCS_BS: TFloatField;
    QBrowseTotalKODI_BGRADE: TFloatField;
    QBrowseTotalPCS_BGRADE: TFloatField;
    QBrowse_Det2NO_NOTA: TStringField;
    QBrowse_Det2TGL: TDateTimeField;
    QBrowse_Det2KD_TRANSAKSI: TStringField;
    QBrowse_Det2ISPOST: TStringField;
    QBrowse_Det2REKANAN: TStringField;
    QBrowse_Det2KELOMPOK: TStringField;
    QBrowse_Det2SATUAN: TStringField;
    QBrowse_Det2NO_SERI_BEAM: TStringField;
    QBrowse_Det2QTY: TFloatField;
    QBrowse_Det2OPR_TENUN: TStringField;
    QBrowse_Det2TGL_INSERT: TDateTimeField;
    QBrowse_Det2OPR_INSERT: TStringField;
    QBrowse_Det2NO_REG: TFloatField;
    QBrowse_Det2PROSES: TStringField;
    QBrowse_Det2LOKASI: TStringField;
    QBrowse_Det2KONSTRUKSI: TStringField;
    QBrowse_Det2CORAK: TStringField;
    QBrowse_Det2TANGGAL: TDateTimeField;
    QBrowse_Det2NIK: TStringField;
    QBrowse_Det2SHIFT: TStringField;
    QBrowse_Det2NO_PRODUKSI: TStringField;
    QBrowse_Det2GRUP: TStringField;
    QBrowse_Det2NO_REG_TENUN: TFloatField;
    TabSheet11: TTabSheet;
    wwDBGrid11: TwwDBGrid;
    Panel18: TPanel;
    GroupBox8: TGroupBox;
    Label23: TLabel;
    VTglAwal21: TwwDBDateTimePicker;
    VTglAkhir21: TwwDBDateTimePicker;
    Panel19: TPanel;
    BitBtn18: TBitBtn;
    Label25: TLabel;
    QPerMesin: TOracleDataSet;
    QPerMesin_Tot: TOracleDataSet;
    dsQPerMesin: TwwDataSource;
    QPerMesinPROSES: TStringField;
    QPerMesinKONSTRUKSI: TStringField;
    QPerMesinPOTONG: TFloatField;
    QPerMesinQTY: TFloatField;
    QPerMesin_TotJML_POTONG: TFloatField;
    QPerMesin_TotTOTAL: TFloatField;
    BitBtn21: TBitBtn;
    Look_KP: TwwDBLookupComboDlg;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    QBrowse_DetTGL: TDateTimeField;
    QBrowse_DetREKANAN: TStringField;
    QBrowse_DetKELOMPOK: TStringField;
    QBrowse_DetKD_KONSTRUKSI: TStringField;
    QBrowse_DetKD_CORAK: TStringField;
    QBrowse_DetTGL_PTG: TDateTimeField;
    QBrowse_DetLD: TFloatField;
    QBrowse_DetLB: TFloatField;
    QBrowse_DetLT: TFloatField;
    QBrowse_DetLK: TFloatField;
    QBrowse_DetLL: TFloatField;
    QBrowse_DetLP: TFloatField;
    QBrowse_DetLR: TFloatField;
    QBrowse_DetWL: TFloatField;
    QBrowse_DetCB: TFloatField;
    QBrowse_DetCK: TFloatField;
    QBrowse_DetCRT: TFloatField;
    QBrowse_DetPD: TFloatField;
    QBrowse_DetPL: TFloatField;
    QBrowse_DetPP: TFloatField;
    QBrowse_DetPS: TFloatField;
    QBrowse_DetNG: TFloatField;
    QBrowse_DetWP: TFloatField;
    QBrowse_DetSC: TFloatField;
    QBrowse_DetKS: TFloatField;
    QBrowse_DetKP: TFloatField;
    QBrowse_DetBO: TFloatField;
    QBrowse_DetLN: TFloatField;
    QBrowse_DetPR: TFloatField;
    QBrowse_DetUTB: TFloatField;
    QBrowse_DetUTK: TFloatField;
    QBrowse_DetLBK: TFloatField;
    QBrowse_DetSLL: TFloatField;
    QBrowse_DetTG: TFloatField;
    QBrowse_DetTCS: TFloatField;
    QBrowse_DetCUP: TFloatField;
    QBrowse_DetNO_URUT: TFloatField;
    QBrowse_DetLPB: TFloatField;
    QBrowse_DetLPS: TFloatField;
    QBrowse_DetLRB: TFloatField;
    QBrowse_DetLRS: TFloatField;
    QBrowse_DetLS: TFloatField;
    QBrowse_DetLSB: TFloatField;
    QBrowse_DetLSS: TFloatField;
    QBrowse_DetOJ: TFloatField;
    QBrowse_DetLPT: TFloatField;
    QBrowse_DetLRG: TFloatField;
    QBrowse_DetCKK: TFloatField;
    QBrowse_DetCAJ: TFloatField;
    QBrowse_DetPKP: TFloatField;
    QBrowse_DetBTB: TFloatField;
    QBrowse_DetANR: TFloatField;
    QBrowse_DetUTS: TFloatField;
    QBrowse_DetKBR: TFloatField;
    QBrowse_DetAFL: TFloatField;
    QBrowse_DetPRA: TFloatField;
    QBrowse_DetFLS: TFloatField;
    QBrowse_DetFLP: TFloatField;
    QBrowse_DetNEPS: TFloatField;
    QBrowse_DetBTS: TFloatField;
    QBrowse_DetKTR: TFloatField;
    QBrowse_DetPDK: TFloatField;
    QBrowse_DetSBK: TFloatField;
    QBrowse_DetKNB: TFloatField;
    QBrowse_DetBS_FLS: TFloatField;
    QBrowse_DetBS_FLP: TFloatField;
    QBrowse_DetBS_BTS: TFloatField;
    QBrowse_DetBS_BTB: TFloatField;
    QBrowse_DetBS_TK: TFloatField;
    QBrowse_DetQTY2: TFloatField;
    QBrowse_DetQTY3: TFloatField;
    QBrowse_DetBGRADE: TFloatField;
    QBrowse_DetM_QTY2: TFloatField;
    QBrowse_DetM_QTY3: TFloatField;
    QBrowse_DetM_BGRADE: TFloatField;
    QBrowse_DetP_BS: TFloatField;
    QBrowse_DetP_BK: TFloatField;
    QBrowse_DetP_BGRADE: TFloatField;
    QBrowse_DetPM_BS: TFloatField;
    QBrowse_DetPM_BK: TFloatField;
    QBrowse_DetPM_BGRADE: TFloatField;
    QBrowse_DetP_LD: TFloatField;
    QBrowse_DetP_LT: TFloatField;
    QBrowse_DetP_LPT: TFloatField;
    QBrowse_DetP_LRG: TFloatField;
    QBrowse_DetP_WL: TFloatField;
    QBrowse_DetP_FLS: TFloatField;
    QBrowse_DetP_FLP: TFloatField;
    QBrowse_DetP_NEPS: TFloatField;
    QBrowse_DetP_PP: TFloatField;
    QBrowse_DetP_WP: TFloatField;
    QBrowse_DetP_OJ: TFloatField;
    QBrowse_DetP_CRT: TFloatField;
    QBrowse_DetP_BTS: TFloatField;
    QBrowse_DetP_BTB: TFloatField;
    QBrowse_DetP_BO: TFloatField;
    QBrowse_DetP_SC: TFloatField;
    QBrowse_DetP_SLL: TFloatField;
    QBrowse_DetP_CK: TFloatField;
    QBrowse_DetP_CAJ: TFloatField;
    QBrowse_DetP_KTR: TFloatField;
    QBrowse_DetP_PDK: TFloatField;
    QBrowse_DetP_KP: TFloatField;
    QBrowse_DetP_SBK: TFloatField;
    QBrowse_DetP_UTS: TFloatField;
    QBrowse_DetP_KNB: TFloatField;
    QBrowse_DetP_BS_FLS: TFloatField;
    QBrowse_DetP_BS_FLP: TFloatField;
    QBrowse_DetP_BS_BTS: TFloatField;
    QBrowse_DetP_BS_BTB: TFloatField;
    QBrowse_DetP_BS_TK: TFloatField;
    QBrowse_DetP_AFL: TFloatField;
    QBrowse_DetP_UTB: TFloatField;
    QBrowse_DetP_LBK: TFloatField;
    QBrowse_DetP_CUP: TFloatField;
    QBrowse_DetNO_DESAIN: TStringField;
    QBrowse_DetPILIH: TStringField;
    QBrowse_DetMESIN: TStringField;
    QBrowse_DetKD_PRODUKSI: TStringField;
    QBrowse_DetJENIS: TStringField;
    QBrowse_DetTGL_POTONG: TDateTimeField;
    QBrowse_Det2KD_KONSTRUKSI: TStringField;
    QBrowse_Det2KD_CORAK: TStringField;
    QBrowse_Det2TGL_PTG: TDateTimeField;
    QBrowse_Det2LD: TFloatField;
    QBrowse_Det2LB: TFloatField;
    QBrowse_Det2LT: TFloatField;
    QBrowse_Det2LK: TFloatField;
    QBrowse_Det2LL: TFloatField;
    QBrowse_Det2LP: TFloatField;
    QBrowse_Det2LR: TFloatField;
    QBrowse_Det2WL: TFloatField;
    QBrowse_Det2CB: TFloatField;
    QBrowse_Det2CK: TFloatField;
    QBrowse_Det2CRT: TFloatField;
    QBrowse_Det2PD: TFloatField;
    QBrowse_Det2PL: TFloatField;
    QBrowse_Det2PP: TFloatField;
    QBrowse_Det2PS: TFloatField;
    QBrowse_Det2NG: TFloatField;
    QBrowse_Det2WP: TFloatField;
    QBrowse_Det2SC: TFloatField;
    QBrowse_Det2KS: TFloatField;
    QBrowse_Det2KP: TFloatField;
    QBrowse_Det2BO: TFloatField;
    QBrowse_Det2LN: TFloatField;
    QBrowse_Det2PR: TFloatField;
    QBrowse_Det2UTB: TFloatField;
    QBrowse_Det2UTK: TFloatField;
    QBrowse_Det2LBK: TFloatField;
    QBrowse_Det2SLL: TFloatField;
    QBrowse_Det2TG: TFloatField;
    QBrowse_Det2TCS: TFloatField;
    QBrowse_Det2CUP: TFloatField;
    QBrowse_Det2NO_URUT: TFloatField;
    QBrowse_Det2LPB: TFloatField;
    QBrowse_Det2LPS: TFloatField;
    QBrowse_Det2LRB: TFloatField;
    QBrowse_Det2LRS: TFloatField;
    QBrowse_Det2LS: TFloatField;
    QBrowse_Det2LSB: TFloatField;
    QBrowse_Det2LSS: TFloatField;
    QBrowse_Det2OJ: TFloatField;
    QBrowse_Det2LPT: TFloatField;
    QBrowse_Det2LRG: TFloatField;
    QBrowse_Det2CKK: TFloatField;
    QBrowse_Det2CAJ: TFloatField;
    QBrowse_Det2PKP: TFloatField;
    QBrowse_Det2BTB: TFloatField;
    QBrowse_Det2ANR: TFloatField;
    QBrowse_Det2UTS: TFloatField;
    QBrowse_Det2KBR: TFloatField;
    QBrowse_Det2AFL: TFloatField;
    QBrowse_Det2PRA: TFloatField;
    QBrowse_Det2FLS: TFloatField;
    QBrowse_Det2FLP: TFloatField;
    QBrowse_Det2NEPS: TFloatField;
    QBrowse_Det2BTS: TFloatField;
    QBrowse_Det2KTR: TFloatField;
    QBrowse_Det2PDK: TFloatField;
    QBrowse_Det2SBK: TFloatField;
    QBrowse_Det2KNB: TFloatField;
    QBrowse_Det2BS_FLS: TFloatField;
    QBrowse_Det2BS_FLP: TFloatField;
    QBrowse_Det2BS_BTS: TFloatField;
    QBrowse_Det2BS_BTB: TFloatField;
    QBrowse_Det2BS_TK: TFloatField;
    QBrowse_Det2QTY2: TFloatField;
    QBrowse_Det2QTY3: TFloatField;
    QBrowse_Det2BGRADE: TFloatField;
    QBrowse_Det2M_QTY2: TFloatField;
    QBrowse_Det2M_QTY3: TFloatField;
    QBrowse_Det2M_BGRADE: TFloatField;
    QBrowse_Det2P_BS: TFloatField;
    QBrowse_Det2P_BK: TFloatField;
    QBrowse_Det2P_BGRADE: TFloatField;
    QBrowse_Det2PM_BS: TFloatField;
    QBrowse_Det2PM_BK: TFloatField;
    QBrowse_Det2PM_BGRADE: TFloatField;
    QBrowse_Det2P_LD: TFloatField;
    QBrowse_Det2P_LT: TFloatField;
    QBrowse_Det2P_LPT: TFloatField;
    QBrowse_Det2P_LRG: TFloatField;
    QBrowse_Det2P_WL: TFloatField;
    QBrowse_Det2P_FLS: TFloatField;
    QBrowse_Det2P_FLP: TFloatField;
    QBrowse_Det2P_NEPS: TFloatField;
    QBrowse_Det2P_PP: TFloatField;
    QBrowse_Det2P_WP: TFloatField;
    QBrowse_Det2P_OJ: TFloatField;
    QBrowse_Det2P_CRT: TFloatField;
    QBrowse_Det2P_BTS: TFloatField;
    QBrowse_Det2P_BTB: TFloatField;
    QBrowse_Det2P_BO: TFloatField;
    QBrowse_Det2P_SC: TFloatField;
    QBrowse_Det2P_SLL: TFloatField;
    QBrowse_Det2P_CK: TFloatField;
    QBrowse_Det2P_CAJ: TFloatField;
    QBrowse_Det2P_KTR: TFloatField;
    QBrowse_Det2P_PDK: TFloatField;
    QBrowse_Det2P_KP: TFloatField;
    QBrowse_Det2P_SBK: TFloatField;
    QBrowse_Det2P_UTS: TFloatField;
    QBrowse_Det2P_KNB: TFloatField;
    QBrowse_Det2P_BS_FLS: TFloatField;
    QBrowse_Det2P_BS_FLP: TFloatField;
    QBrowse_Det2P_BS_BTS: TFloatField;
    QBrowse_Det2P_BS_BTB: TFloatField;
    QBrowse_Det2P_BS_TK: TFloatField;
    QBrowse_Det2P_AFL: TFloatField;
    QBrowse_Det2P_UTB: TFloatField;
    QBrowse_Det2P_LBK: TFloatField;
    QBrowse_Det2P_CUP: TFloatField;
    QBrowse_Det2NO_DESAIN: TStringField;
    QBrowse_Det2PILIH: TStringField;
    QBrowse_Det2MESIN: TStringField;
    QBrowse_Det2KD_PRODUKSI: TStringField;
    QBrowse_Det2JENIS: TStringField;
    QBrowse_Det2TGL_POTONG: TDateTimeField;
    QBSBK_TOTQTY: TFloatField;
    QBSBK_TOTQTY3: TFloatField;
    QBSBK_TOTBGRADE: TFloatField;
    QBSBK_TOTQTY2: TFloatField;
    QBSBK_TOTM_QTY3: TFloatField;
    QBSBK_TOTM_BGRADE: TFloatField;
    QBSBK_TOTM_QTY2: TFloatField;
    QBSBK_TOTP_BK: TFloatField;
    QBSBK_TOTP_BGRADE: TFloatField;
    QBSBK_TOTP_BS: TFloatField;
    QBSBK_TOTPM_BK: TFloatField;
    QBSBK_TOTPM_BGRADE: TFloatField;
    QBSBK_TOTPM_BS: TFloatField;
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
    QBSBK_TOTSBK: TFloatField;
    QBSBK_TOTUTS: TFloatField;
    QBSBK_TOTKNB: TFloatField;
    QBSBK_TOTBS_FLS: TFloatField;
    QBSBK_TOTBS_FLP: TFloatField;
    QBSBK_TOTBS_BTS: TFloatField;
    QBSBK_TOTBS_BTB: TFloatField;
    QBSBK_TOTBS_TK: TFloatField;
    QBSBK_TOTAFL: TFloatField;
    QBSBK_TOT2QTY: TFloatField;
    QBSBK_TOT2QTY3: TFloatField;
    QBSBK_TOT2BGRADE: TFloatField;
    QBSBK_TOT2QTY2: TFloatField;
    QBSBK_TOT2M_QTY3: TFloatField;
    QBSBK_TOT2M_BGRADE: TFloatField;
    QBSBK_TOT2M_QTY2: TFloatField;
    QBSBK_TOT2P_BK: TFloatField;
    QBSBK_TOT2P_BGRADE: TFloatField;
    QBSBK_TOT2P_BS: TFloatField;
    QBSBK_TOT2PM_BK: TFloatField;
    QBSBK_TOT2PM_BGRADE: TFloatField;
    QBSBK_TOT2PM_BS: TFloatField;
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
    QBSBK_TOT2SBK: TFloatField;
    QBSBK_TOT2UTS: TFloatField;
    QBSBK_TOT2KNB: TFloatField;
    QBSBK_TOT2BS_FLS: TFloatField;
    QBSBK_TOT2BS_FLP: TFloatField;
    QBSBK_TOT2BS_BTS: TFloatField;
    QBSBK_TOT2BS_BTB: TFloatField;
    QBSBK_TOT2BS_TK: TFloatField;
    QBSBK_TOT2AFL: TFloatField;
    QBSBK_TOT3: TOracleDataSet;
    QBSBK_TOT4: TOracleDataSet;
    QBSBK_TOT3QTY: TFloatField;
    QBSBK_TOT3QTY3: TFloatField;
    QBSBK_TOT3BGRADE: TFloatField;
    QBSBK_TOT3QTY2: TFloatField;
    QBSBK_TOT3M_QTY3: TFloatField;
    QBSBK_TOT3M_BGRADE: TFloatField;
    QBSBK_TOT3M_QTY2: TFloatField;
    QBSBK_TOT3P_BK: TFloatField;
    QBSBK_TOT3P_BGRADE: TFloatField;
    QBSBK_TOT3P_BS: TFloatField;
    QBSBK_TOT3PM_BK: TFloatField;
    QBSBK_TOT3PM_BGRADE: TFloatField;
    QBSBK_TOT3PM_BS: TFloatField;
    QBSBK_TOT3P_LD: TFloatField;
    QBSBK_TOT3P_LT: TFloatField;
    QBSBK_TOT3P_LPT: TFloatField;
    QBSBK_TOT3P_LRG: TFloatField;
    QBSBK_TOT3P_WL: TFloatField;
    QBSBK_TOT3P_FLS: TFloatField;
    QBSBK_TOT3P_FLP: TFloatField;
    QBSBK_TOT3P_NEPS: TFloatField;
    QBSBK_TOT3P_PP: TFloatField;
    QBSBK_TOT3P_WP: TFloatField;
    QBSBK_TOT3P_OJ: TFloatField;
    QBSBK_TOT3P_CRT: TFloatField;
    QBSBK_TOT3P_BTS: TFloatField;
    QBSBK_TOT3P_BTB: TFloatField;
    QBSBK_TOT3P_BO: TFloatField;
    QBSBK_TOT3P_SC: TFloatField;
    QBSBK_TOT3P_SLL: TFloatField;
    QBSBK_TOT3P_CK: TFloatField;
    QBSBK_TOT3P_CAJ: TFloatField;
    QBSBK_TOT3P_KTR: TFloatField;
    QBSBK_TOT3P_PDK: TFloatField;
    QBSBK_TOT3P_KP: TFloatField;
    QBSBK_TOT3P_SBK: TFloatField;
    QBSBK_TOT3P_UTS: TFloatField;
    QBSBK_TOT3P_KNB: TFloatField;
    QBSBK_TOT3P_BS_FLS: TFloatField;
    QBSBK_TOT3P_BS_FLP: TFloatField;
    QBSBK_TOT3P_BS_BTS: TFloatField;
    QBSBK_TOT3P_BS_BTB: TFloatField;
    QBSBK_TOT3P_BS_TK: TFloatField;
    QBSBK_TOT3P_AFL: TFloatField;
    QBSBK_TOT4QTY: TFloatField;
    QBSBK_TOT4QTY3: TFloatField;
    QBSBK_TOT4BGRADE: TFloatField;
    QBSBK_TOT4QTY2: TFloatField;
    QBSBK_TOT4M_QTY3: TFloatField;
    QBSBK_TOT4M_BGRADE: TFloatField;
    QBSBK_TOT4M_QTY2: TFloatField;
    QBSBK_TOT4P_BK: TFloatField;
    QBSBK_TOT4P_BGRADE: TFloatField;
    QBSBK_TOT4P_BS: TFloatField;
    QBSBK_TOT4PM_BK: TFloatField;
    QBSBK_TOT4PM_BGRADE: TFloatField;
    QBSBK_TOT4PM_BS: TFloatField;
    QBSBK_TOT4P_LD: TFloatField;
    QBSBK_TOT4P_LT: TFloatField;
    QBSBK_TOT4P_LPT: TFloatField;
    QBSBK_TOT4P_LRG: TFloatField;
    QBSBK_TOT4P_WL: TFloatField;
    QBSBK_TOT4P_FLS: TFloatField;
    QBSBK_TOT4P_FLP: TFloatField;
    QBSBK_TOT4P_NEPS: TFloatField;
    QBSBK_TOT4P_PP: TFloatField;
    QBSBK_TOT4P_WP: TFloatField;
    QBSBK_TOT4P_OJ: TFloatField;
    QBSBK_TOT4P_CRT: TFloatField;
    QBSBK_TOT4P_BTS: TFloatField;
    QBSBK_TOT4P_BTB: TFloatField;
    QBSBK_TOT4P_BO: TFloatField;
    QBSBK_TOT4P_SC: TFloatField;
    QBSBK_TOT4P_SLL: TFloatField;
    QBSBK_TOT4P_CK: TFloatField;
    QBSBK_TOT4P_CAJ: TFloatField;
    QBSBK_TOT4P_KTR: TFloatField;
    QBSBK_TOT4P_PDK: TFloatField;
    QBSBK_TOT4P_KP: TFloatField;
    QBSBK_TOT4P_SBK: TFloatField;
    QBSBK_TOT4P_UTS: TFloatField;
    QBSBK_TOT4P_KNB: TFloatField;
    QBSBK_TOT4P_BS_FLS: TFloatField;
    QBSBK_TOT4P_BS_FLP: TFloatField;
    QBSBK_TOT4P_BS_BTS: TFloatField;
    QBSBK_TOT4P_BS_BTB: TFloatField;
    QBSBK_TOT4P_BS_TK: TFloatField;
    QBSBK_TOT4P_AFL: TFloatField;
    TabSheet12: TTabSheet;
    Label28: TLabel;
    Panel20: TPanel;
    GroupBox9: TGroupBox;
    Label27: TLabel;
    vTglAwal8: TwwDBDateTimePicker;
    vTglAkhir8: TwwDBDateTimePicker;
    Panel21: TPanel;
    vOperand8: TLabel;
    BtnFind8: TSpeedButton;
    BtnOk8: TSpeedButton;
    cbTanggal8: TCheckBox;
    BitBtn17: TBitBtn;
    ECari8: TEdit;
    cbOtomatis8: TCheckBox;
    dbcField8: TwwDBComboBox;
    BitBtn19: TBitBtn;
    RTgl8: TRadioGroup;
    wwDBGrid12: TwwDBGrid;
    wwDBGrid13: TwwDBGrid;
    QBrowse_Det3: TOracleDataSet;
    QBrowse_Det4: TOracleDataSet;
    QBrowse_Det3NO_NOTA: TStringField;
    QBrowse_Det3TGL: TDateTimeField;
    QBrowse_Det3KD_TRANSAKSI: TStringField;
    QBrowse_Det3ISPOST: TStringField;
    QBrowse_Det3REKANAN: TStringField;
    QBrowse_Det3KELOMPOK: TStringField;
    QBrowse_Det3SATUAN: TStringField;
    QBrowse_Det3NO_SERI_BEAM: TStringField;
    QBrowse_Det3QTY: TFloatField;
    QBrowse_Det3OPR_TENUN: TStringField;
    QBrowse_Det3TGL_INSERT: TDateTimeField;
    QBrowse_Det3OPR_INSERT: TStringField;
    QBrowse_Det3NO_REG: TFloatField;
    QBrowse_Det3PROSES: TStringField;
    QBrowse_Det3LOKASI: TStringField;
    QBrowse_Det3KONSTRUKSI: TStringField;
    QBrowse_Det3CORAK: TStringField;
    QBrowse_Det3TANGGAL: TDateTimeField;
    QBrowse_Det3NIK: TStringField;
    QBrowse_Det3SHIFT: TStringField;
    QBrowse_Det3NO_PRODUKSI: TStringField;
    QBrowse_Det3GRUP: TStringField;
    QBrowse_Det3NO_REG_TENUN: TFloatField;
    QBrowse_Det3KD_KONSTRUKSI: TStringField;
    QBrowse_Det3KD_CORAK: TStringField;
    QBrowse_Det3TGL_PTG: TDateTimeField;
    QBrowse_Det3LD: TFloatField;
    QBrowse_Det3LB: TFloatField;
    QBrowse_Det3LT: TFloatField;
    QBrowse_Det3LK: TFloatField;
    QBrowse_Det3LL: TFloatField;
    QBrowse_Det3LP: TFloatField;
    QBrowse_Det3LR: TFloatField;
    QBrowse_Det3WL: TFloatField;
    QBrowse_Det3CB: TFloatField;
    QBrowse_Det3CK: TFloatField;
    QBrowse_Det3CRT: TFloatField;
    QBrowse_Det3PD: TFloatField;
    QBrowse_Det3PL: TFloatField;
    QBrowse_Det3PP: TFloatField;
    QBrowse_Det3PS: TFloatField;
    QBrowse_Det3NG: TFloatField;
    QBrowse_Det3WP: TFloatField;
    QBrowse_Det3SC: TFloatField;
    QBrowse_Det3KS: TFloatField;
    QBrowse_Det3KP: TFloatField;
    QBrowse_Det3BO: TFloatField;
    QBrowse_Det3LN: TFloatField;
    QBrowse_Det3PR: TFloatField;
    QBrowse_Det3UTB: TFloatField;
    QBrowse_Det3UTK: TFloatField;
    QBrowse_Det3LBK: TFloatField;
    QBrowse_Det3SLL: TFloatField;
    QBrowse_Det3TG: TFloatField;
    QBrowse_Det3TCS: TFloatField;
    QBrowse_Det3CUP: TFloatField;
    QBrowse_Det3NO_URUT: TFloatField;
    QBrowse_Det3LPB: TFloatField;
    QBrowse_Det3LPS: TFloatField;
    QBrowse_Det3LRB: TFloatField;
    QBrowse_Det3LRS: TFloatField;
    QBrowse_Det3LS: TFloatField;
    QBrowse_Det3LSB: TFloatField;
    QBrowse_Det3LSS: TFloatField;
    QBrowse_Det3OJ: TFloatField;
    QBrowse_Det3LPT: TFloatField;
    QBrowse_Det3LRG: TFloatField;
    QBrowse_Det3CKK: TFloatField;
    QBrowse_Det3CAJ: TFloatField;
    QBrowse_Det3PKP: TFloatField;
    QBrowse_Det3BTB: TFloatField;
    QBrowse_Det3ANR: TFloatField;
    QBrowse_Det3UTS: TFloatField;
    QBrowse_Det3KBR: TFloatField;
    QBrowse_Det3AFL: TFloatField;
    QBrowse_Det3PRA: TFloatField;
    QBrowse_Det3FLS: TFloatField;
    QBrowse_Det3FLP: TFloatField;
    QBrowse_Det3NEPS: TFloatField;
    QBrowse_Det3BTS: TFloatField;
    QBrowse_Det3KTR: TFloatField;
    QBrowse_Det3PDK: TFloatField;
    QBrowse_Det3SBK: TFloatField;
    QBrowse_Det3KNB: TFloatField;
    QBrowse_Det3BS_FLS: TFloatField;
    QBrowse_Det3BS_FLP: TFloatField;
    QBrowse_Det3BS_BTS: TFloatField;
    QBrowse_Det3BS_BTB: TFloatField;
    QBrowse_Det3BS_TK: TFloatField;
    QBrowse_Det3QTY2: TFloatField;
    QBrowse_Det3QTY3: TFloatField;
    QBrowse_Det3BGRADE: TFloatField;
    QBrowse_Det3M_QTY2: TFloatField;
    QBrowse_Det3M_QTY3: TFloatField;
    QBrowse_Det3M_BGRADE: TFloatField;
    QBrowse_Det3P_BS: TFloatField;
    QBrowse_Det3P_BK: TFloatField;
    QBrowse_Det3P_BGRADE: TFloatField;
    QBrowse_Det3PM_BS: TFloatField;
    QBrowse_Det3PM_BK: TFloatField;
    QBrowse_Det3PM_BGRADE: TFloatField;
    QBrowse_Det3P_LD: TFloatField;
    QBrowse_Det3P_LT: TFloatField;
    QBrowse_Det3P_LPT: TFloatField;
    QBrowse_Det3P_LRG: TFloatField;
    QBrowse_Det3P_WL: TFloatField;
    QBrowse_Det3P_FLS: TFloatField;
    QBrowse_Det3P_FLP: TFloatField;
    QBrowse_Det3P_NEPS: TFloatField;
    QBrowse_Det3P_PP: TFloatField;
    QBrowse_Det3P_WP: TFloatField;
    QBrowse_Det3P_OJ: TFloatField;
    QBrowse_Det3P_CRT: TFloatField;
    QBrowse_Det3P_BTS: TFloatField;
    QBrowse_Det3P_BTB: TFloatField;
    QBrowse_Det3P_BO: TFloatField;
    QBrowse_Det3P_SC: TFloatField;
    QBrowse_Det3P_SLL: TFloatField;
    QBrowse_Det3P_CK: TFloatField;
    QBrowse_Det3P_CAJ: TFloatField;
    QBrowse_Det3P_KTR: TFloatField;
    QBrowse_Det3P_PDK: TFloatField;
    QBrowse_Det3P_KP: TFloatField;
    QBrowse_Det3P_SBK: TFloatField;
    QBrowse_Det3P_UTS: TFloatField;
    QBrowse_Det3P_KNB: TFloatField;
    QBrowse_Det3P_BS_FLS: TFloatField;
    QBrowse_Det3P_BS_FLP: TFloatField;
    QBrowse_Det3P_BS_BTS: TFloatField;
    QBrowse_Det3P_BS_BTB: TFloatField;
    QBrowse_Det3P_BS_TK: TFloatField;
    QBrowse_Det3P_AFL: TFloatField;
    QBrowse_Det3P_UTB: TFloatField;
    QBrowse_Det3P_LBK: TFloatField;
    QBrowse_Det3P_CUP: TFloatField;
    QBrowse_Det3NO_DESAIN: TStringField;
    QBrowse_Det3PILIH: TStringField;
    QBrowse_Det3MESIN: TStringField;
    QBrowse_Det3KD_PRODUKSI: TStringField;
    QBrowse_Det3JENIS: TStringField;
    QBrowse_Det3TGL_POTONG: TDateTimeField;
    QBrowse_Det4NO_NOTA: TStringField;
    QBrowse_Det4TGL: TDateTimeField;
    QBrowse_Det4KD_TRANSAKSI: TStringField;
    QBrowse_Det4ISPOST: TStringField;
    QBrowse_Det4REKANAN: TStringField;
    QBrowse_Det4KELOMPOK: TStringField;
    QBrowse_Det4SATUAN: TStringField;
    QBrowse_Det4NO_SERI_BEAM: TStringField;
    QBrowse_Det4QTY: TFloatField;
    QBrowse_Det4OPR_TENUN: TStringField;
    QBrowse_Det4TGL_INSERT: TDateTimeField;
    QBrowse_Det4OPR_INSERT: TStringField;
    QBrowse_Det4NO_REG: TFloatField;
    QBrowse_Det4PROSES: TStringField;
    QBrowse_Det4LOKASI: TStringField;
    QBrowse_Det4KONSTRUKSI: TStringField;
    QBrowse_Det4CORAK: TStringField;
    QBrowse_Det4TANGGAL: TDateTimeField;
    QBrowse_Det4NIK: TStringField;
    QBrowse_Det4SHIFT: TStringField;
    QBrowse_Det4NO_PRODUKSI: TStringField;
    QBrowse_Det4GRUP: TStringField;
    QBrowse_Det4NO_REG_TENUN: TFloatField;
    QBrowse_Det4KD_KONSTRUKSI: TStringField;
    QBrowse_Det4KD_CORAK: TStringField;
    QBrowse_Det4TGL_PTG: TDateTimeField;
    QBrowse_Det4LD: TFloatField;
    QBrowse_Det4LB: TFloatField;
    QBrowse_Det4LT: TFloatField;
    QBrowse_Det4LK: TFloatField;
    QBrowse_Det4LL: TFloatField;
    QBrowse_Det4LP: TFloatField;
    QBrowse_Det4LR: TFloatField;
    QBrowse_Det4WL: TFloatField;
    QBrowse_Det4CB: TFloatField;
    QBrowse_Det4CK: TFloatField;
    QBrowse_Det4CRT: TFloatField;
    QBrowse_Det4PD: TFloatField;
    QBrowse_Det4PL: TFloatField;
    QBrowse_Det4PP: TFloatField;
    QBrowse_Det4PS: TFloatField;
    QBrowse_Det4NG: TFloatField;
    QBrowse_Det4WP: TFloatField;
    QBrowse_Det4SC: TFloatField;
    QBrowse_Det4KS: TFloatField;
    QBrowse_Det4KP: TFloatField;
    QBrowse_Det4BO: TFloatField;
    QBrowse_Det4LN: TFloatField;
    QBrowse_Det4PR: TFloatField;
    QBrowse_Det4UTB: TFloatField;
    QBrowse_Det4UTK: TFloatField;
    QBrowse_Det4LBK: TFloatField;
    QBrowse_Det4SLL: TFloatField;
    QBrowse_Det4TG: TFloatField;
    QBrowse_Det4TCS: TFloatField;
    QBrowse_Det4CUP: TFloatField;
    QBrowse_Det4NO_URUT: TFloatField;
    QBrowse_Det4LPB: TFloatField;
    QBrowse_Det4LPS: TFloatField;
    QBrowse_Det4LRB: TFloatField;
    QBrowse_Det4LRS: TFloatField;
    QBrowse_Det4LS: TFloatField;
    QBrowse_Det4LSB: TFloatField;
    QBrowse_Det4LSS: TFloatField;
    QBrowse_Det4OJ: TFloatField;
    QBrowse_Det4LPT: TFloatField;
    QBrowse_Det4LRG: TFloatField;
    QBrowse_Det4CKK: TFloatField;
    QBrowse_Det4CAJ: TFloatField;
    QBrowse_Det4PKP: TFloatField;
    QBrowse_Det4BTB: TFloatField;
    QBrowse_Det4ANR: TFloatField;
    QBrowse_Det4UTS: TFloatField;
    QBrowse_Det4KBR: TFloatField;
    QBrowse_Det4AFL: TFloatField;
    QBrowse_Det4PRA: TFloatField;
    QBrowse_Det4FLS: TFloatField;
    QBrowse_Det4FLP: TFloatField;
    QBrowse_Det4NEPS: TFloatField;
    QBrowse_Det4BTS: TFloatField;
    QBrowse_Det4KTR: TFloatField;
    QBrowse_Det4PDK: TFloatField;
    QBrowse_Det4SBK: TFloatField;
    QBrowse_Det4KNB: TFloatField;
    QBrowse_Det4BS_FLS: TFloatField;
    QBrowse_Det4BS_FLP: TFloatField;
    QBrowse_Det4BS_BTS: TFloatField;
    QBrowse_Det4BS_BTB: TFloatField;
    QBrowse_Det4BS_TK: TFloatField;
    QBrowse_Det4QTY2: TFloatField;
    QBrowse_Det4QTY3: TFloatField;
    QBrowse_Det4BGRADE: TFloatField;
    QBrowse_Det4M_QTY2: TFloatField;
    QBrowse_Det4M_QTY3: TFloatField;
    QBrowse_Det4M_BGRADE: TFloatField;
    QBrowse_Det4P_BS: TFloatField;
    QBrowse_Det4P_BK: TFloatField;
    QBrowse_Det4P_BGRADE: TFloatField;
    QBrowse_Det4PM_BS: TFloatField;
    QBrowse_Det4PM_BK: TFloatField;
    QBrowse_Det4PM_BGRADE: TFloatField;
    QBrowse_Det4P_LD: TFloatField;
    QBrowse_Det4P_LT: TFloatField;
    QBrowse_Det4P_LPT: TFloatField;
    QBrowse_Det4P_LRG: TFloatField;
    QBrowse_Det4P_WL: TFloatField;
    QBrowse_Det4P_FLS: TFloatField;
    QBrowse_Det4P_FLP: TFloatField;
    QBrowse_Det4P_NEPS: TFloatField;
    QBrowse_Det4P_PP: TFloatField;
    QBrowse_Det4P_WP: TFloatField;
    QBrowse_Det4P_OJ: TFloatField;
    QBrowse_Det4P_CRT: TFloatField;
    QBrowse_Det4P_BTS: TFloatField;
    QBrowse_Det4P_BTB: TFloatField;
    QBrowse_Det4P_BO: TFloatField;
    QBrowse_Det4P_SC: TFloatField;
    QBrowse_Det4P_SLL: TFloatField;
    QBrowse_Det4P_CK: TFloatField;
    QBrowse_Det4P_CAJ: TFloatField;
    QBrowse_Det4P_KTR: TFloatField;
    QBrowse_Det4P_PDK: TFloatField;
    QBrowse_Det4P_KP: TFloatField;
    QBrowse_Det4P_SBK: TFloatField;
    QBrowse_Det4P_UTS: TFloatField;
    QBrowse_Det4P_KNB: TFloatField;
    QBrowse_Det4P_BS_FLS: TFloatField;
    QBrowse_Det4P_BS_FLP: TFloatField;
    QBrowse_Det4P_BS_BTS: TFloatField;
    QBrowse_Det4P_BS_BTB: TFloatField;
    QBrowse_Det4P_BS_TK: TFloatField;
    QBrowse_Det4P_AFL: TFloatField;
    QBrowse_Det4P_UTB: TFloatField;
    QBrowse_Det4P_LBK: TFloatField;
    QBrowse_Det4P_CUP: TFloatField;
    QBrowse_Det4NO_DESAIN: TStringField;
    QBrowse_Det4PILIH: TStringField;
    QBrowse_Det4MESIN: TStringField;
    QBrowse_Det4KD_PRODUKSI: TStringField;
    QBrowse_Det4JENIS: TStringField;
    QBrowse_Det4TGL_POTONG: TDateTimeField;
    dsQBrowse_Det3: TwwDataSource;
    dsQBrowse_Det4: TwwDataSource;
    Button1: TButton;
    QUnpost: TOracleQuery;
    RadioGroup20: TRadioGroup;
    RadioGroup21: TRadioGroup;
    QBrowse_DetKECOES_BG: TFloatField;
    QBrowse_DetKECOES_BS: TFloatField;
    QBrowse_DetP_KECOES_BG: TFloatField;
    QBrowse_DetP_KECOES_BS: TFloatField;
    QBrowse_Det2KECOES_BG: TFloatField;
    QBrowse_Det2KECOES_BS: TFloatField;
    QBrowse_Det2P_KECOES_BG: TFloatField;
    QBrowse_Det2P_KECOES_BS: TFloatField;
    QBrowse_Det3KECOES_BG: TFloatField;
    QBrowse_Det3KECOES_BS: TFloatField;
    QBrowse_Det3P_KECOES_BG: TFloatField;
    QBrowse_Det3P_KECOES_BS: TFloatField;
    QBrowse_Det4KECOES_BG: TFloatField;
    QBrowse_Det4KECOES_BS: TFloatField;
    QBrowse_Det4P_KECOES_BG: TFloatField;
    QBrowse_Det4P_KECOES_BS: TFloatField;
    QBSBK_TOTKECOES_BG: TFloatField;
    QBSBK_TOTKECOES_BS: TFloatField;
    QBSBK_TOT2KECOES_BG: TFloatField;
    QBSBK_TOT2KECOES_BS: TFloatField;
    QBSBK_TOT3P_KECOES_BG: TFloatField;
    QBSBK_TOT3P_KECOES_BS: TFloatField;
    QBSBK_TOT4P_KECOES_BG: TFloatField;
    QBSBK_TOT4P_KECOES_BS: TFloatField;
    TabSheet13: TTabSheet;
    Panel22: TPanel;
    GroupBox10: TGroupBox;
    Label26: TLabel;
    VTglAwal11: TwwDBDateTimePicker;
    VTglAkhir11: TwwDBDateTimePicker;
    Panel23: TPanel;
    BitBtn20: TBitBtn;
    BitBtn22: TBitBtn;
    wwDBGrid14: TwwDBGrid;
    Label29: TLabel;
    QPerLoom: TOracleDataSet;
    dsQPerLoom: TwwDataSource;
    QPerLoomMESIN: TStringField;
    QPerLoomKD_PRODUKSI: TStringField;
    QPerLoomKONSTRUKSI: TStringField;
    QPerLoomPOTONG: TFloatField;
    QPerLoomKODI: TFloatField;
    QPerLoom_Tot: TOracleDataSet;
    dsQPerLoom_Tot: TwwDataSource;
    QPerLoom_TotPOTONG: TFloatField;
    QPerLoom_TotKODI: TFloatField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QPerLoomLD: TFloatField;
    QPerLoomLB: TFloatField;
    QPerLoomLT: TFloatField;
    QPerLoomLK: TFloatField;
    QPerLoomLL: TFloatField;
    QPerLoomLP: TFloatField;
    QPerLoomLR: TFloatField;
    QPerLoomWL: TFloatField;
    QPerLoomCB: TFloatField;
    QPerLoomCK: TFloatField;
    QPerLoomCRT: TFloatField;
    QPerLoomPD: TFloatField;
    QPerLoomPL: TFloatField;
    QPerLoomPP: TFloatField;
    QPerLoomPS: TFloatField;
    QPerLoomNG: TFloatField;
    QPerLoomWP: TFloatField;
    QPerLoomSC: TFloatField;
    QPerLoomKS: TFloatField;
    QPerLoomKP: TFloatField;
    QPerLoomKECOES_BG: TFloatField;
    QPerLoomBO: TFloatField;
    QPerLoomLN: TFloatField;
    QPerLoomPR: TFloatField;
    QPerLoomUTB: TFloatField;
    QPerLoomUTK: TFloatField;
    QPerLoomLBK: TFloatField;
    QPerLoomSLL: TFloatField;
    QPerLoomTG: TFloatField;
    QPerLoomTCS: TFloatField;
    QPerLoomCUP: TFloatField;
    QPerLoomLPB: TFloatField;
    QPerLoomLPS: TFloatField;
    QPerLoomLRB: TFloatField;
    QPerLoomLRS: TFloatField;
    QPerLoomLS: TFloatField;
    QPerLoomLSB: TFloatField;
    QPerLoomLSS: TFloatField;
    QPerLoomOJ: TFloatField;
    QPerLoomLPT: TFloatField;
    QPerLoomLRG: TFloatField;
    QPerLoomCKK: TFloatField;
    QPerLoomCAJ: TFloatField;
    QPerLoomPKP: TFloatField;
    QPerLoomBTB: TFloatField;
    QPerLoomANR: TFloatField;
    QPerLoomUTS: TFloatField;
    QPerLoomKBR: TFloatField;
    QPerLoomAFL: TFloatField;
    QPerLoomKECOES_BS: TFloatField;
    QPerLoomPRA: TFloatField;
    QPerLoomFLS: TFloatField;
    QPerLoomFLP: TFloatField;
    QPerLoomNEPS: TFloatField;
    QPerLoomBTS: TFloatField;
    QPerLoomKTR: TFloatField;
    QPerLoomPDK: TFloatField;
    QPerLoomSBK: TFloatField;
    QPerLoomKNB: TFloatField;
    QPerLoomBS_FLS: TFloatField;
    QPerLoomBS_FLP: TFloatField;
    QPerLoomBS_BTS: TFloatField;
    QPerLoomBS_BTB: TFloatField;
    QPerLoomBS_TK: TFloatField;
    QPerLoomQTY2: TFloatField;
    QPerLoomQTY3: TFloatField;
    QPerLoomBGRADE: TFloatField;
    QPerLoomM_QTY2: TFloatField;
    QPerLoomM_QTY3: TFloatField;
    QPerLoomM_BGRADE: TFloatField;
    QPerLoomP_BS: TFloatField;
    QPerLoomP_BK: TFloatField;
    QPerLoomP_BGRADE: TFloatField;
    QPerLoomPM_BS: TFloatField;
    QPerLoomPM_BK: TFloatField;
    QPerLoomPM_BGRADE: TFloatField;
    QPerLoomP_LD: TFloatField;
    QPerLoomP_LT: TFloatField;
    QPerLoomP_LPT: TFloatField;
    QPerLoomP_LRG: TFloatField;
    QPerLoomP_WL: TFloatField;
    QPerLoomP_FLS: TFloatField;
    QPerLoomP_FLP: TFloatField;
    QPerLoomP_NEPS: TFloatField;
    QPerLoomP_PP: TFloatField;
    QPerLoomP_WP: TFloatField;
    QPerLoomP_OJ: TFloatField;
    QPerLoomP_CRT: TFloatField;
    QPerLoomP_BTS: TFloatField;
    QPerLoomP_BTB: TFloatField;
    QPerLoomP_BO: TFloatField;
    QPerLoomP_SC: TFloatField;
    QPerLoomP_SLL: TFloatField;
    QPerLoomP_CK: TFloatField;
    QPerLoomP_CAJ: TFloatField;
    QPerLoomP_KTR: TFloatField;
    QPerLoomP_PDK: TFloatField;
    QPerLoomP_KP: TFloatField;
    QPerLoomP_KECOES_BG: TFloatField;
    QPerLoomP_SBK: TFloatField;
    QPerLoomP_UTS: TFloatField;
    QPerLoomP_KNB: TFloatField;
    QPerLoomP_BS_FLS: TFloatField;
    QPerLoomP_BS_FLP: TFloatField;
    QPerLoomP_BS_BTS: TFloatField;
    QPerLoomP_BS_BTB: TFloatField;
    QPerLoomP_BS_TK: TFloatField;
    QPerLoomP_AFL: TFloatField;
    QPerLoomP_KECOES_BS: TFloatField;
    QPerLoomP_UTB: TFloatField;
    QPerLoomP_LBK: TFloatField;
    QPerLoomP_CUP: TFloatField;
    QPerLoom_TotLD: TFloatField;
    QPerLoom_TotLB: TFloatField;
    QPerLoom_TotLT: TFloatField;
    QPerLoom_TotLK: TFloatField;
    QPerLoom_TotLL: TFloatField;
    QPerLoom_TotLP: TFloatField;
    QPerLoom_TotLR: TFloatField;
    QPerLoom_TotWL: TFloatField;
    QPerLoom_TotCB: TFloatField;
    QPerLoom_TotCK: TFloatField;
    QPerLoom_TotCRT: TFloatField;
    QPerLoom_TotPD: TFloatField;
    QPerLoom_TotPL: TFloatField;
    QPerLoom_TotPP: TFloatField;
    QPerLoom_TotPS: TFloatField;
    QPerLoom_TotNG: TFloatField;
    QPerLoom_TotWP: TFloatField;
    QPerLoom_TotSC: TFloatField;
    QPerLoom_TotKS: TFloatField;
    QPerLoom_TotKP: TFloatField;
    QPerLoom_TotKECOES_BG: TFloatField;
    QPerLoom_TotBO: TFloatField;
    QPerLoom_TotLN: TFloatField;
    QPerLoom_TotPR: TFloatField;
    QPerLoom_TotUTB: TFloatField;
    QPerLoom_TotUTK: TFloatField;
    QPerLoom_TotLBK: TFloatField;
    QPerLoom_TotSLL: TFloatField;
    QPerLoom_TotTG: TFloatField;
    QPerLoom_TotTCS: TFloatField;
    QPerLoom_TotCUP: TFloatField;
    QPerLoom_TotLPB: TFloatField;
    QPerLoom_TotLPS: TFloatField;
    QPerLoom_TotLRB: TFloatField;
    QPerLoom_TotLRS: TFloatField;
    QPerLoom_TotLS: TFloatField;
    QPerLoom_TotLSB: TFloatField;
    QPerLoom_TotLSS: TFloatField;
    QPerLoom_TotOJ: TFloatField;
    QPerLoom_TotLPT: TFloatField;
    QPerLoom_TotLRG: TFloatField;
    QPerLoom_TotCKK: TFloatField;
    QPerLoom_TotCAJ: TFloatField;
    QPerLoom_TotPKP: TFloatField;
    QPerLoom_TotBTB: TFloatField;
    QPerLoom_TotANR: TFloatField;
    QPerLoom_TotUTS: TFloatField;
    QPerLoom_TotKBR: TFloatField;
    QPerLoom_TotAFL: TFloatField;
    QPerLoom_TotKECOES_BS: TFloatField;
    QPerLoom_TotPRA: TFloatField;
    QPerLoom_TotFLS: TFloatField;
    QPerLoom_TotFLP: TFloatField;
    QPerLoom_TotNEPS: TFloatField;
    QPerLoom_TotBTS: TFloatField;
    QPerLoom_TotKTR: TFloatField;
    QPerLoom_TotPDK: TFloatField;
    QPerLoom_TotSBK: TFloatField;
    QPerLoom_TotKNB: TFloatField;
    QPerLoom_TotBS_FLS: TFloatField;
    QPerLoom_TotBS_FLP: TFloatField;
    QPerLoom_TotBS_BTS: TFloatField;
    QPerLoom_TotBS_BTB: TFloatField;
    QPerLoom_TotBS_TK: TFloatField;
    QPerLoom_TotQTY2: TFloatField;
    QPerLoom_TotQTY3: TFloatField;
    QPerLoom_TotBGRADE: TFloatField;
    QPerLoom_TotM_QTY2: TFloatField;
    QPerLoom_TotM_QTY3: TFloatField;
    QPerLoom_TotM_BGRADE: TFloatField;
    QPerLoom_TotP_BS: TFloatField;
    QPerLoom_TotP_BK: TFloatField;
    QPerLoom_TotP_BGRADE: TFloatField;
    QPerLoom_TotPM_BS: TFloatField;
    QPerLoom_TotPM_BK: TFloatField;
    QPerLoom_TotPM_BGRADE: TFloatField;
    QPerLoom_TotP_LD: TFloatField;
    QPerLoom_TotP_LT: TFloatField;
    QPerLoom_TotP_LPT: TFloatField;
    QPerLoom_TotP_LRG: TFloatField;
    QPerLoom_TotP_WL: TFloatField;
    QPerLoom_TotP_FLS: TFloatField;
    QPerLoom_TotP_FLP: TFloatField;
    QPerLoom_TotP_NEPS: TFloatField;
    QPerLoom_TotP_PP: TFloatField;
    QPerLoom_TotP_WP: TFloatField;
    QPerLoom_TotP_OJ: TFloatField;
    QPerLoom_TotP_CRT: TFloatField;
    QPerLoom_TotP_BTS: TFloatField;
    QPerLoom_TotP_BTB: TFloatField;
    QPerLoom_TotP_BO: TFloatField;
    QPerLoom_TotP_SC: TFloatField;
    QPerLoom_TotP_SLL: TFloatField;
    QPerLoom_TotP_CK: TFloatField;
    QPerLoom_TotP_CAJ: TFloatField;
    QPerLoom_TotP_KTR: TFloatField;
    QPerLoom_TotP_PDK: TFloatField;
    QPerLoom_TotP_KP: TFloatField;
    QPerLoom_TotP_KECOES_BG: TFloatField;
    QPerLoom_TotP_SBK: TFloatField;
    QPerLoom_TotP_UTS: TFloatField;
    QPerLoom_TotP_KNB: TFloatField;
    QPerLoom_TotP_BS_FLS: TFloatField;
    QPerLoom_TotP_BS_FLP: TFloatField;
    QPerLoom_TotP_BS_BTS: TFloatField;
    QPerLoom_TotP_BS_BTB: TFloatField;
    QPerLoom_TotP_BS_TK: TFloatField;
    QPerLoom_TotP_AFL: TFloatField;
    QPerLoom_TotP_KECOES_BS: TFloatField;
    QPerLoom_TotP_UTB: TFloatField;
    QPerLoom_TotP_LBK: TFloatField;
    QPerLoom_TotP_CUP: TFloatField;
    RLoom: TRadioGroup;
    QPerLoomLOKASI: TStringField;
    wwDBGrid15: TwwDBGrid;
    wwDBGrid16: TwwDBGrid;
    wwDBGrid17: TwwDBGrid;
    QLoom1: TOracleDataSet;
    dsQLoom1: TwwDataSource;
    QLoom1_Tot: TOracleDataSet;
    dsQLoom1_Tot: TwwDataSource;
    QLoom1_TotPOTONG: TFloatField;
    QLoom1_TotKODI: TFloatField;
    QLoom1_TotLD: TFloatField;
    QLoom1_TotLB: TFloatField;
    QLoom1_TotLT: TFloatField;
    QLoom1_TotLK: TFloatField;
    QLoom1_TotLL: TFloatField;
    QLoom1_TotLP: TFloatField;
    QLoom1_TotLR: TFloatField;
    QLoom1_TotWL: TFloatField;
    QLoom1_TotCB: TFloatField;
    QLoom1_TotCK: TFloatField;
    QLoom1_TotCRT: TFloatField;
    QLoom1_TotPD: TFloatField;
    QLoom1_TotPL: TFloatField;
    QLoom1_TotPP: TFloatField;
    QLoom1_TotPS: TFloatField;
    QLoom1_TotNG: TFloatField;
    QLoom1_TotWP: TFloatField;
    QLoom1_TotSC: TFloatField;
    QLoom1_TotKS: TFloatField;
    QLoom1_TotKP: TFloatField;
    QLoom1_TotKECOES_BG: TFloatField;
    QLoom1_TotBO: TFloatField;
    QLoom1_TotLN: TFloatField;
    QLoom1_TotPR: TFloatField;
    QLoom1_TotUTB: TFloatField;
    QLoom1_TotUTK: TFloatField;
    QLoom1_TotLBK: TFloatField;
    QLoom1_TotSLL: TFloatField;
    QLoom1_TotTG: TFloatField;
    QLoom1_TotTCS: TFloatField;
    QLoom1_TotCUP: TFloatField;
    QLoom1_TotLPB: TFloatField;
    QLoom1_TotLPS: TFloatField;
    QLoom1_TotLRB: TFloatField;
    QLoom1_TotLRS: TFloatField;
    QLoom1_TotLS: TFloatField;
    QLoom1_TotLSB: TFloatField;
    QLoom1_TotLSS: TFloatField;
    QLoom1_TotOJ: TFloatField;
    QLoom1_TotLPT: TFloatField;
    QLoom1_TotLRG: TFloatField;
    QLoom1_TotCKK: TFloatField;
    QLoom1_TotCAJ: TFloatField;
    QLoom1_TotPKP: TFloatField;
    QLoom1_TotBTB: TFloatField;
    QLoom1_TotANR: TFloatField;
    QLoom1_TotUTS: TFloatField;
    QLoom1_TotKBR: TFloatField;
    QLoom1_TotAFL: TFloatField;
    QLoom1_TotKECOES_BS: TFloatField;
    QLoom1_TotPRA: TFloatField;
    QLoom1_TotFLS: TFloatField;
    QLoom1_TotFLP: TFloatField;
    QLoom1_TotNEPS: TFloatField;
    QLoom1_TotBTS: TFloatField;
    QLoom1_TotKTR: TFloatField;
    QLoom1_TotPDK: TFloatField;
    QLoom1_TotSBK: TFloatField;
    QLoom1_TotKNB: TFloatField;
    QLoom1_TotBS_FLS: TFloatField;
    QLoom1_TotBS_FLP: TFloatField;
    QLoom1_TotBS_BTS: TFloatField;
    QLoom1_TotBS_BTB: TFloatField;
    QLoom1_TotBS_TK: TFloatField;
    QLoom1_TotQTY2: TFloatField;
    QLoom1_TotQTY3: TFloatField;
    QLoom1_TotBGRADE: TFloatField;
    QLoom1_TotP_BS: TFloatField;
    QLoom1_TotP_BK: TFloatField;
    QLoom1_TotP_BGRADE: TFloatField;
    QLoom1_TotM_QTY2: TFloatField;
    QLoom1_TotM_QTY3: TFloatField;
    QLoom1_TotM_BGRADE: TFloatField;
    QLoom1_TotPM_BS: TFloatField;
    QLoom1_TotPM_BK: TFloatField;
    QLoom1_TotPM_BGRADE: TFloatField;
    QLoom1_TotP_LD: TFloatField;
    QLoom1_TotP_LT: TFloatField;
    QLoom1_TotP_LPT: TFloatField;
    QLoom1_TotP_LRG: TFloatField;
    QLoom1_TotP_WL: TFloatField;
    QLoom1_TotP_FLS: TFloatField;
    QLoom1_TotP_FLP: TFloatField;
    QLoom1_TotP_NEPS: TFloatField;
    QLoom1_TotP_PP: TFloatField;
    QLoom1_TotP_WP: TFloatField;
    QLoom1_TotP_OJ: TFloatField;
    QLoom1_TotP_CRT: TFloatField;
    QLoom1_TotP_BTS: TFloatField;
    QLoom1_TotP_BTB: TFloatField;
    QLoom1_TotP_BO: TFloatField;
    QLoom1_TotP_SC: TFloatField;
    QLoom1_TotP_SLL: TFloatField;
    QLoom1_TotP_CK: TFloatField;
    QLoom1_TotP_CAJ: TFloatField;
    QLoom1_TotP_KTR: TFloatField;
    QLoom1_TotP_PDK: TFloatField;
    QLoom1_TotP_KP: TFloatField;
    QLoom1_TotP_KECOES_BG: TFloatField;
    QLoom1_TotP_SBK: TFloatField;
    QLoom1_TotP_UTS: TFloatField;
    QLoom1_TotP_KNB: TFloatField;
    QLoom1_TotP_BS_FLS: TFloatField;
    QLoom1_TotP_BS_FLP: TFloatField;
    QLoom1_TotP_BS_BTS: TFloatField;
    QLoom1_TotP_BS_BTB: TFloatField;
    QLoom1_TotP_BS_TK: TFloatField;
    QLoom1_TotP_AFL: TFloatField;
    QLoom1_TotP_KECOES_BS: TFloatField;
    QLoom1_TotP_UTB: TFloatField;
    QLoom1_TotP_LBK: TFloatField;
    QLoom1_TotP_CUP: TFloatField;
    QLoom3: TOracleDataSet;
    dsQLoom3: TwwDataSource;
    QLoom3_Tot: TOracleDataSet;
    dsQLoom3_Tot: TwwDataSource;
    QLoom4: TOracleDataSet;
    dsQLoom4: TwwDataSource;
    QLoom4_Tot: TOracleDataSet;
    dsQLoom4_Tot: TwwDataSource;
    QLoom4_TotPOTONG: TFloatField;
    QLoom4_TotKODI: TFloatField;
    QLoom4_TotLD: TFloatField;
    QLoom4_TotLB: TFloatField;
    QLoom4_TotLT: TFloatField;
    QLoom4_TotLK: TFloatField;
    QLoom4_TotLL: TFloatField;
    QLoom4_TotLP: TFloatField;
    QLoom4_TotLR: TFloatField;
    QLoom4_TotWL: TFloatField;
    QLoom4_TotCB: TFloatField;
    QLoom4_TotCK: TFloatField;
    QLoom4_TotCRT: TFloatField;
    QLoom4_TotPD: TFloatField;
    QLoom4_TotPL: TFloatField;
    QLoom4_TotPP: TFloatField;
    QLoom4_TotPS: TFloatField;
    QLoom4_TotNG: TFloatField;
    QLoom4_TotWP: TFloatField;
    QLoom4_TotSC: TFloatField;
    QLoom4_TotKS: TFloatField;
    QLoom4_TotKP: TFloatField;
    QLoom4_TotKECOES_BG: TFloatField;
    QLoom4_TotBO: TFloatField;
    QLoom4_TotLN: TFloatField;
    QLoom4_TotPR: TFloatField;
    QLoom4_TotUTB: TFloatField;
    QLoom4_TotUTK: TFloatField;
    QLoom4_TotLBK: TFloatField;
    QLoom4_TotSLL: TFloatField;
    QLoom4_TotTG: TFloatField;
    QLoom4_TotTCS: TFloatField;
    QLoom4_TotCUP: TFloatField;
    QLoom4_TotLPB: TFloatField;
    QLoom4_TotLPS: TFloatField;
    QLoom4_TotLRB: TFloatField;
    QLoom4_TotLRS: TFloatField;
    QLoom4_TotLS: TFloatField;
    QLoom4_TotLSB: TFloatField;
    QLoom4_TotLSS: TFloatField;
    QLoom4_TotOJ: TFloatField;
    QLoom4_TotLPT: TFloatField;
    QLoom4_TotLRG: TFloatField;
    QLoom4_TotCKK: TFloatField;
    QLoom4_TotCAJ: TFloatField;
    QLoom4_TotPKP: TFloatField;
    QLoom4_TotBTB: TFloatField;
    QLoom4_TotANR: TFloatField;
    QLoom4_TotUTS: TFloatField;
    QLoom4_TotKBR: TFloatField;
    QLoom4_TotAFL: TFloatField;
    QLoom4_TotKECOES_BS: TFloatField;
    QLoom4_TotPRA: TFloatField;
    QLoom4_TotFLS: TFloatField;
    QLoom4_TotFLP: TFloatField;
    QLoom4_TotNEPS: TFloatField;
    QLoom4_TotBTS: TFloatField;
    QLoom4_TotKTR: TFloatField;
    QLoom4_TotPDK: TFloatField;
    QLoom4_TotSBK: TFloatField;
    QLoom4_TotKNB: TFloatField;
    QLoom4_TotBS_FLS: TFloatField;
    QLoom4_TotBS_FLP: TFloatField;
    QLoom4_TotBS_BTS: TFloatField;
    QLoom4_TotBS_BTB: TFloatField;
    QLoom4_TotBS_TK: TFloatField;
    QLoom4_TotQTY2: TFloatField;
    QLoom4_TotQTY3: TFloatField;
    QLoom4_TotBGRADE: TFloatField;
    QLoom4_TotP_BS: TFloatField;
    QLoom4_TotP_BK: TFloatField;
    QLoom4_TotP_BGRADE: TFloatField;
    QLoom4_TotM_QTY2: TFloatField;
    QLoom4_TotM_QTY3: TFloatField;
    QLoom4_TotM_BGRADE: TFloatField;
    QLoom4_TotPM_BS: TFloatField;
    QLoom4_TotPM_BK: TFloatField;
    QLoom4_TotPM_BGRADE: TFloatField;
    QLoom4_TotP_LD: TFloatField;
    QLoom4_TotP_LT: TFloatField;
    QLoom4_TotP_LPT: TFloatField;
    QLoom4_TotP_LRG: TFloatField;
    QLoom4_TotP_WL: TFloatField;
    QLoom4_TotP_FLS: TFloatField;
    QLoom4_TotP_FLP: TFloatField;
    QLoom4_TotP_NEPS: TFloatField;
    QLoom4_TotP_PP: TFloatField;
    QLoom4_TotP_WP: TFloatField;
    QLoom4_TotP_OJ: TFloatField;
    QLoom4_TotP_CRT: TFloatField;
    QLoom4_TotP_BTS: TFloatField;
    QLoom4_TotP_BTB: TFloatField;
    QLoom4_TotP_BO: TFloatField;
    QLoom4_TotP_SC: TFloatField;
    QLoom4_TotP_SLL: TFloatField;
    QLoom4_TotP_CK: TFloatField;
    QLoom4_TotP_CAJ: TFloatField;
    QLoom4_TotP_KTR: TFloatField;
    QLoom4_TotP_PDK: TFloatField;
    QLoom4_TotP_KP: TFloatField;
    QLoom4_TotP_KECOES_BG: TFloatField;
    QLoom4_TotP_SBK: TFloatField;
    QLoom4_TotP_UTS: TFloatField;
    QLoom4_TotP_KNB: TFloatField;
    QLoom4_TotP_BS_FLS: TFloatField;
    QLoom4_TotP_BS_FLP: TFloatField;
    QLoom4_TotP_BS_BTS: TFloatField;
    QLoom4_TotP_BS_BTB: TFloatField;
    QLoom4_TotP_BS_TK: TFloatField;
    QLoom4_TotP_AFL: TFloatField;
    QLoom4_TotP_KECOES_BS: TFloatField;
    QLoom4_TotP_UTB: TFloatField;
    QLoom4_TotP_LBK: TFloatField;
    QLoom4_TotP_CUP: TFloatField;
    QLoom3_TotPOTONG: TFloatField;
    QLoom3_TotKODI: TFloatField;
    QLoom3_TotLD: TFloatField;
    QLoom3_TotLB: TFloatField;
    QLoom3_TotLT: TFloatField;
    QLoom3_TotLK: TFloatField;
    QLoom3_TotLL: TFloatField;
    QLoom3_TotLP: TFloatField;
    QLoom3_TotLR: TFloatField;
    QLoom3_TotWL: TFloatField;
    QLoom3_TotCB: TFloatField;
    QLoom3_TotCK: TFloatField;
    QLoom3_TotCRT: TFloatField;
    QLoom3_TotPD: TFloatField;
    QLoom3_TotPL: TFloatField;
    QLoom3_TotPP: TFloatField;
    QLoom3_TotPS: TFloatField;
    QLoom3_TotNG: TFloatField;
    QLoom3_TotWP: TFloatField;
    QLoom3_TotSC: TFloatField;
    QLoom3_TotKS: TFloatField;
    QLoom3_TotKP: TFloatField;
    QLoom3_TotKECOES_BG: TFloatField;
    QLoom3_TotBO: TFloatField;
    QLoom3_TotLN: TFloatField;
    QLoom3_TotPR: TFloatField;
    QLoom3_TotUTB: TFloatField;
    QLoom3_TotUTK: TFloatField;
    QLoom3_TotLBK: TFloatField;
    QLoom3_TotSLL: TFloatField;
    QLoom3_TotTG: TFloatField;
    QLoom3_TotTCS: TFloatField;
    QLoom3_TotCUP: TFloatField;
    QLoom3_TotLPB: TFloatField;
    QLoom3_TotLPS: TFloatField;
    QLoom3_TotLRB: TFloatField;
    QLoom3_TotLRS: TFloatField;
    QLoom3_TotLS: TFloatField;
    QLoom3_TotLSB: TFloatField;
    QLoom3_TotLSS: TFloatField;
    QLoom3_TotOJ: TFloatField;
    QLoom3_TotLPT: TFloatField;
    QLoom3_TotLRG: TFloatField;
    QLoom3_TotCKK: TFloatField;
    QLoom3_TotCAJ: TFloatField;
    QLoom3_TotPKP: TFloatField;
    QLoom3_TotBTB: TFloatField;
    QLoom3_TotANR: TFloatField;
    QLoom3_TotUTS: TFloatField;
    QLoom3_TotKBR: TFloatField;
    QLoom3_TotAFL: TFloatField;
    QLoom3_TotKECOES_BS: TFloatField;
    QLoom3_TotPRA: TFloatField;
    QLoom3_TotFLS: TFloatField;
    QLoom3_TotFLP: TFloatField;
    QLoom3_TotNEPS: TFloatField;
    QLoom3_TotBTS: TFloatField;
    QLoom3_TotKTR: TFloatField;
    QLoom3_TotPDK: TFloatField;
    QLoom3_TotSBK: TFloatField;
    QLoom3_TotKNB: TFloatField;
    QLoom3_TotBS_FLS: TFloatField;
    QLoom3_TotBS_FLP: TFloatField;
    QLoom3_TotBS_BTS: TFloatField;
    QLoom3_TotBS_BTB: TFloatField;
    QLoom3_TotBS_TK: TFloatField;
    QLoom3_TotQTY2: TFloatField;
    QLoom3_TotQTY3: TFloatField;
    QLoom3_TotBGRADE: TFloatField;
    QLoom3_TotP_BS: TFloatField;
    QLoom3_TotP_BK: TFloatField;
    QLoom3_TotP_BGRADE: TFloatField;
    QLoom3_TotM_QTY2: TFloatField;
    QLoom3_TotM_QTY3: TFloatField;
    QLoom3_TotM_BGRADE: TFloatField;
    QLoom3_TotPM_BS: TFloatField;
    QLoom3_TotPM_BK: TFloatField;
    QLoom3_TotPM_BGRADE: TFloatField;
    QLoom3_TotP_LD: TFloatField;
    QLoom3_TotP_LT: TFloatField;
    QLoom3_TotP_LPT: TFloatField;
    QLoom3_TotP_LRG: TFloatField;
    QLoom3_TotP_WL: TFloatField;
    QLoom3_TotP_FLS: TFloatField;
    QLoom3_TotP_FLP: TFloatField;
    QLoom3_TotP_NEPS: TFloatField;
    QLoom3_TotP_PP: TFloatField;
    QLoom3_TotP_WP: TFloatField;
    QLoom3_TotP_OJ: TFloatField;
    QLoom3_TotP_CRT: TFloatField;
    QLoom3_TotP_BTS: TFloatField;
    QLoom3_TotP_BTB: TFloatField;
    QLoom3_TotP_BO: TFloatField;
    QLoom3_TotP_SC: TFloatField;
    QLoom3_TotP_SLL: TFloatField;
    QLoom3_TotP_CK: TFloatField;
    QLoom3_TotP_CAJ: TFloatField;
    QLoom3_TotP_KTR: TFloatField;
    QLoom3_TotP_PDK: TFloatField;
    QLoom3_TotP_KP: TFloatField;
    QLoom3_TotP_KECOES_BG: TFloatField;
    QLoom3_TotP_SBK: TFloatField;
    QLoom3_TotP_UTS: TFloatField;
    QLoom3_TotP_KNB: TFloatField;
    QLoom3_TotP_BS_FLS: TFloatField;
    QLoom3_TotP_BS_FLP: TFloatField;
    QLoom3_TotP_BS_BTS: TFloatField;
    QLoom3_TotP_BS_BTB: TFloatField;
    QLoom3_TotP_BS_TK: TFloatField;
    QLoom3_TotP_AFL: TFloatField;
    QLoom3_TotP_KECOES_BS: TFloatField;
    QLoom3_TotP_UTB: TFloatField;
    QLoom3_TotP_LBK: TFloatField;
    QLoom3_TotP_CUP: TFloatField;
    QLoom1MESIN: TStringField;
    QLoom1LOKASI: TStringField;
    QLoom1POTONG: TFloatField;
    QLoom1KODI: TFloatField;
    QLoom1LD: TFloatField;
    QLoom1LB: TFloatField;
    QLoom1LT: TFloatField;
    QLoom1LK: TFloatField;
    QLoom1LL: TFloatField;
    QLoom1LP: TFloatField;
    QLoom1LR: TFloatField;
    QLoom1WL: TFloatField;
    QLoom1CB: TFloatField;
    QLoom1CK: TFloatField;
    QLoom1CRT: TFloatField;
    QLoom1PD: TFloatField;
    QLoom1PL: TFloatField;
    QLoom1PP: TFloatField;
    QLoom1PS: TFloatField;
    QLoom1NG: TFloatField;
    QLoom1WP: TFloatField;
    QLoom1SC: TFloatField;
    QLoom1KS: TFloatField;
    QLoom1KP: TFloatField;
    QLoom1KECOES_BG: TFloatField;
    QLoom1BO: TFloatField;
    QLoom1LN: TFloatField;
    QLoom1PR: TFloatField;
    QLoom1UTB: TFloatField;
    QLoom1UTK: TFloatField;
    QLoom1LBK: TFloatField;
    QLoom1SLL: TFloatField;
    QLoom1TG: TFloatField;
    QLoom1TCS: TFloatField;
    QLoom1CUP: TFloatField;
    QLoom1LPB: TFloatField;
    QLoom1LPS: TFloatField;
    QLoom1LRB: TFloatField;
    QLoom1LRS: TFloatField;
    QLoom1LS: TFloatField;
    QLoom1LSB: TFloatField;
    QLoom1LSS: TFloatField;
    QLoom1OJ: TFloatField;
    QLoom1LPT: TFloatField;
    QLoom1LRG: TFloatField;
    QLoom1CKK: TFloatField;
    QLoom1CAJ: TFloatField;
    QLoom1PKP: TFloatField;
    QLoom1BTB: TFloatField;
    QLoom1ANR: TFloatField;
    QLoom1UTS: TFloatField;
    QLoom1KBR: TFloatField;
    QLoom1AFL: TFloatField;
    QLoom1KECOES_BS: TFloatField;
    QLoom1PRA: TFloatField;
    QLoom1FLS: TFloatField;
    QLoom1FLP: TFloatField;
    QLoom1NEPS: TFloatField;
    QLoom1BTS: TFloatField;
    QLoom1KTR: TFloatField;
    QLoom1PDK: TFloatField;
    QLoom1SBK: TFloatField;
    QLoom1KNB: TFloatField;
    QLoom1BS_FLS: TFloatField;
    QLoom1BS_FLP: TFloatField;
    QLoom1BS_BTS: TFloatField;
    QLoom1BS_BTB: TFloatField;
    QLoom1BS_TK: TFloatField;
    QLoom1QTY2: TFloatField;
    QLoom1QTY3: TFloatField;
    QLoom1BGRADE: TFloatField;
    QLoom1P_BS: TFloatField;
    QLoom1P_BK: TFloatField;
    QLoom1P_BGRADE: TFloatField;
    QLoom1M_QTY2: TFloatField;
    QLoom1M_QTY3: TFloatField;
    QLoom1M_BGRADE: TFloatField;
    QLoom1PM_BS: TFloatField;
    QLoom1PM_BK: TFloatField;
    QLoom1PM_BGRADE: TFloatField;
    QLoom1P_LD: TFloatField;
    QLoom1P_LT: TFloatField;
    QLoom1P_LPT: TFloatField;
    QLoom1P_LRG: TFloatField;
    QLoom1P_WL: TFloatField;
    QLoom1P_FLS: TFloatField;
    QLoom1P_FLP: TFloatField;
    QLoom1P_NEPS: TFloatField;
    QLoom1P_PP: TFloatField;
    QLoom1P_WP: TFloatField;
    QLoom1P_OJ: TFloatField;
    QLoom1P_CRT: TFloatField;
    QLoom1P_BTS: TFloatField;
    QLoom1P_BTB: TFloatField;
    QLoom1P_BO: TFloatField;
    QLoom1P_SC: TFloatField;
    QLoom1P_SLL: TFloatField;
    QLoom1P_CK: TFloatField;
    QLoom1P_CAJ: TFloatField;
    QLoom1P_KTR: TFloatField;
    QLoom1P_PDK: TFloatField;
    QLoom1P_KP: TFloatField;
    QLoom1P_KECOES_BG: TFloatField;
    QLoom1P_SBK: TFloatField;
    QLoom1P_UTS: TFloatField;
    QLoom1P_KNB: TFloatField;
    QLoom1P_BS_FLS: TFloatField;
    QLoom1P_BS_FLP: TFloatField;
    QLoom1P_BS_BTS: TFloatField;
    QLoom1P_BS_BTB: TFloatField;
    QLoom1P_BS_TK: TFloatField;
    QLoom1P_AFL: TFloatField;
    QLoom1P_KECOES_BS: TFloatField;
    QLoom1P_UTB: TFloatField;
    QLoom1P_LBK: TFloatField;
    QLoom1P_CUP: TFloatField;
    QLoom4MESIN: TStringField;
    QLoom4LOKASI: TStringField;
    QLoom4POTONG: TFloatField;
    QLoom4KODI: TFloatField;
    QLoom4LD: TFloatField;
    QLoom4LB: TFloatField;
    QLoom4LT: TFloatField;
    QLoom4LK: TFloatField;
    QLoom4LL: TFloatField;
    QLoom4LP: TFloatField;
    QLoom4LR: TFloatField;
    QLoom4WL: TFloatField;
    QLoom4CB: TFloatField;
    QLoom4CK: TFloatField;
    QLoom4CRT: TFloatField;
    QLoom4PD: TFloatField;
    QLoom4PL: TFloatField;
    QLoom4PP: TFloatField;
    QLoom4PS: TFloatField;
    QLoom4NG: TFloatField;
    QLoom4WP: TFloatField;
    QLoom4SC: TFloatField;
    QLoom4KS: TFloatField;
    QLoom4KP: TFloatField;
    QLoom4KECOES_BG: TFloatField;
    QLoom4BO: TFloatField;
    QLoom4LN: TFloatField;
    QLoom4PR: TFloatField;
    QLoom4UTB: TFloatField;
    QLoom4UTK: TFloatField;
    QLoom4LBK: TFloatField;
    QLoom4SLL: TFloatField;
    QLoom4TG: TFloatField;
    QLoom4TCS: TFloatField;
    QLoom4CUP: TFloatField;
    QLoom4LPB: TFloatField;
    QLoom4LPS: TFloatField;
    QLoom4LRB: TFloatField;
    QLoom4LRS: TFloatField;
    QLoom4LS: TFloatField;
    QLoom4LSB: TFloatField;
    QLoom4LSS: TFloatField;
    QLoom4OJ: TFloatField;
    QLoom4LPT: TFloatField;
    QLoom4LRG: TFloatField;
    QLoom4CKK: TFloatField;
    QLoom4CAJ: TFloatField;
    QLoom4PKP: TFloatField;
    QLoom4BTB: TFloatField;
    QLoom4ANR: TFloatField;
    QLoom4UTS: TFloatField;
    QLoom4KBR: TFloatField;
    QLoom4AFL: TFloatField;
    QLoom4KECOES_BS: TFloatField;
    QLoom4PRA: TFloatField;
    QLoom4FLS: TFloatField;
    QLoom4FLP: TFloatField;
    QLoom4NEPS: TFloatField;
    QLoom4BTS: TFloatField;
    QLoom4KTR: TFloatField;
    QLoom4PDK: TFloatField;
    QLoom4SBK: TFloatField;
    QLoom4KNB: TFloatField;
    QLoom4BS_FLS: TFloatField;
    QLoom4BS_FLP: TFloatField;
    QLoom4BS_BTS: TFloatField;
    QLoom4BS_BTB: TFloatField;
    QLoom4BS_TK: TFloatField;
    QLoom4QTY2: TFloatField;
    QLoom4QTY3: TFloatField;
    QLoom4BGRADE: TFloatField;
    QLoom4P_BS: TFloatField;
    QLoom4P_BK: TFloatField;
    QLoom4P_BGRADE: TFloatField;
    QLoom4M_QTY2: TFloatField;
    QLoom4M_QTY3: TFloatField;
    QLoom4M_BGRADE: TFloatField;
    QLoom4PM_BS: TFloatField;
    QLoom4PM_BK: TFloatField;
    QLoom4PM_BGRADE: TFloatField;
    QLoom4P_LD: TFloatField;
    QLoom4P_LT: TFloatField;
    QLoom4P_LPT: TFloatField;
    QLoom4P_LRG: TFloatField;
    QLoom4P_WL: TFloatField;
    QLoom4P_FLS: TFloatField;
    QLoom4P_FLP: TFloatField;
    QLoom4P_NEPS: TFloatField;
    QLoom4P_PP: TFloatField;
    QLoom4P_WP: TFloatField;
    QLoom4P_OJ: TFloatField;
    QLoom4P_CRT: TFloatField;
    QLoom4P_BTS: TFloatField;
    QLoom4P_BTB: TFloatField;
    QLoom4P_BO: TFloatField;
    QLoom4P_SC: TFloatField;
    QLoom4P_SLL: TFloatField;
    QLoom4P_CK: TFloatField;
    QLoom4P_CAJ: TFloatField;
    QLoom4P_KTR: TFloatField;
    QLoom4P_PDK: TFloatField;
    QLoom4P_KP: TFloatField;
    QLoom4P_KECOES_BG: TFloatField;
    QLoom4P_SBK: TFloatField;
    QLoom4P_UTS: TFloatField;
    QLoom4P_KNB: TFloatField;
    QLoom4P_BS_FLS: TFloatField;
    QLoom4P_BS_FLP: TFloatField;
    QLoom4P_BS_BTS: TFloatField;
    QLoom4P_BS_BTB: TFloatField;
    QLoom4P_BS_TK: TFloatField;
    QLoom4P_AFL: TFloatField;
    QLoom4P_KECOES_BS: TFloatField;
    QLoom4P_UTB: TFloatField;
    QLoom4P_LBK: TFloatField;
    QLoom4P_CUP: TFloatField;
    QLoom3MESIN: TStringField;
    QLoom3KD_PRODUKSI: TStringField;
    QLoom3KONSTRUKSI: TStringField;
    QLoom3LOKASI: TStringField;
    QLoom3POTONG: TFloatField;
    QLoom3KODI: TFloatField;
    QLoom3LD: TFloatField;
    QLoom3LB: TFloatField;
    QLoom3LT: TFloatField;
    QLoom3LK: TFloatField;
    QLoom3LL: TFloatField;
    QLoom3LP: TFloatField;
    QLoom3LR: TFloatField;
    QLoom3WL: TFloatField;
    QLoom3CB: TFloatField;
    QLoom3CK: TFloatField;
    QLoom3CRT: TFloatField;
    QLoom3PD: TFloatField;
    QLoom3PL: TFloatField;
    QLoom3PP: TFloatField;
    QLoom3PS: TFloatField;
    QLoom3NG: TFloatField;
    QLoom3WP: TFloatField;
    QLoom3SC: TFloatField;
    QLoom3KS: TFloatField;
    QLoom3KP: TFloatField;
    QLoom3KECOES_BG: TFloatField;
    QLoom3BO: TFloatField;
    QLoom3LN: TFloatField;
    QLoom3PR: TFloatField;
    QLoom3UTB: TFloatField;
    QLoom3UTK: TFloatField;
    QLoom3LBK: TFloatField;
    QLoom3SLL: TFloatField;
    QLoom3TG: TFloatField;
    QLoom3TCS: TFloatField;
    QLoom3CUP: TFloatField;
    QLoom3LPB: TFloatField;
    QLoom3LPS: TFloatField;
    QLoom3LRB: TFloatField;
    QLoom3LRS: TFloatField;
    QLoom3LS: TFloatField;
    QLoom3LSB: TFloatField;
    QLoom3LSS: TFloatField;
    QLoom3OJ: TFloatField;
    QLoom3LPT: TFloatField;
    QLoom3LRG: TFloatField;
    QLoom3CKK: TFloatField;
    QLoom3CAJ: TFloatField;
    QLoom3PKP: TFloatField;
    QLoom3BTB: TFloatField;
    QLoom3ANR: TFloatField;
    QLoom3UTS: TFloatField;
    QLoom3KBR: TFloatField;
    QLoom3AFL: TFloatField;
    QLoom3KECOES_BS: TFloatField;
    QLoom3PRA: TFloatField;
    QLoom3FLS: TFloatField;
    QLoom3FLP: TFloatField;
    QLoom3NEPS: TFloatField;
    QLoom3BTS: TFloatField;
    QLoom3KTR: TFloatField;
    QLoom3PDK: TFloatField;
    QLoom3SBK: TFloatField;
    QLoom3KNB: TFloatField;
    QLoom3BS_FLS: TFloatField;
    QLoom3BS_FLP: TFloatField;
    QLoom3BS_BTS: TFloatField;
    QLoom3BS_BTB: TFloatField;
    QLoom3BS_TK: TFloatField;
    QLoom3QTY2: TFloatField;
    QLoom3QTY3: TFloatField;
    QLoom3BGRADE: TFloatField;
    QLoom3P_BS: TFloatField;
    QLoom3P_BK: TFloatField;
    QLoom3P_BGRADE: TFloatField;
    QLoom3M_QTY2: TFloatField;
    QLoom3M_QTY3: TFloatField;
    QLoom3M_BGRADE: TFloatField;
    QLoom3PM_BS: TFloatField;
    QLoom3PM_BK: TFloatField;
    QLoom3PM_BGRADE: TFloatField;
    QLoom3P_LD: TFloatField;
    QLoom3P_LT: TFloatField;
    QLoom3P_LPT: TFloatField;
    QLoom3P_LRG: TFloatField;
    QLoom3P_WL: TFloatField;
    QLoom3P_FLS: TFloatField;
    QLoom3P_FLP: TFloatField;
    QLoom3P_NEPS: TFloatField;
    QLoom3P_PP: TFloatField;
    QLoom3P_WP: TFloatField;
    QLoom3P_OJ: TFloatField;
    QLoom3P_CRT: TFloatField;
    QLoom3P_BTS: TFloatField;
    QLoom3P_BTB: TFloatField;
    QLoom3P_BO: TFloatField;
    QLoom3P_SC: TFloatField;
    QLoom3P_SLL: TFloatField;
    QLoom3P_CK: TFloatField;
    QLoom3P_CAJ: TFloatField;
    QLoom3P_KTR: TFloatField;
    QLoom3P_PDK: TFloatField;
    QLoom3P_KP: TFloatField;
    QLoom3P_KECOES_BG: TFloatField;
    QLoom3P_SBK: TFloatField;
    QLoom3P_UTS: TFloatField;
    QLoom3P_KNB: TFloatField;
    QLoom3P_BS_FLS: TFloatField;
    QLoom3P_BS_FLP: TFloatField;
    QLoom3P_BS_BTS: TFloatField;
    QLoom3P_BS_BTB: TFloatField;
    QLoom3P_BS_TK: TFloatField;
    QLoom3P_AFL: TFloatField;
    QLoom3P_KECOES_BS: TFloatField;
    QLoom3P_UTB: TFloatField;
    QLoom3P_LBK: TFloatField;
    QLoom3P_CUP: TFloatField;
    BtnGrid14: TBitBtn;
    WebBrowser1: TWebBrowser;
    RPrint: TRadioGroup;
    QPerKonstruksiLOKASI: TStringField;
    QPerKonstruksiJML_MESIN: TFloatField;
    QPerKonstruksiMESIN: TStringField;
    QPerKonstruksiKP: TStringField;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiJML_PROD: TFloatField;
    QPerKonstruksiJML_BK: TFloatField;
    QPerKonstruksiJML_BGRADE: TFloatField;
    QPerKonstruksiJML_BS: TFloatField;
    QPerKonstruksiPROD_KODI: TFloatField;
    QPerKonstruksiBK_KODI: TFloatField;
    QPerKonstruksiBGRADE_KODI: TFloatField;
    QPerKonstruksiBS_KODI: TFloatField;
    QPerKonstruksi_TotJML_PROD: TFloatField;
    QPerKonstruksi_TotJML_BK: TFloatField;
    QPerKonstruksi_TotJML_BGRADE: TFloatField;
    QPerKonstruksi_TotJML_BS: TFloatField;
    QPerKonstruksi_TotPROD_KODI: TFloatField;
    QPerKonstruksi_TotBK_KODI: TFloatField;
    QPerKonstruksi_TotBGRADE_KODI: TFloatField;
    QPerKonstruksi_TotBS_KODI: TFloatField;
    QPerKonstruksi_TotJML_MESIN: TFloatField;
    LokKons: TRadioGroup;
    Cari2: TSpeedButton;
    BtnOke2: TSpeedButton;
    RLoom2: TRadioGroup;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label30: TLabel;
    QMasterTGL_PROSES: TDateTimeField;
    wwDBGrid18: TwwDBGrid;
    QBrowse_Det5: TOracleDataSet;
    QBSBK_TOT5: TOracleDataSet;
    dsQBrowse_Det5: TwwDataSource;
    QBSBK_TOT5QTY: TFloatField;
    QBSBK_TOT5QTY3: TFloatField;
    QBSBK_TOT5BGRADE: TFloatField;
    QBSBK_TOT5QTY2: TFloatField;
    QBSBK_TOT5M_QTY3: TFloatField;
    QBSBK_TOT5M_BGRADE: TFloatField;
    QBSBK_TOT5M_QTY2: TFloatField;
    QBSBK_TOT5P_BK: TFloatField;
    QBSBK_TOT5P_BGRADE: TFloatField;
    QBSBK_TOT5P_BS: TFloatField;
    QBSBK_TOT5PM_BK: TFloatField;
    QBSBK_TOT5PM_BGRADE: TFloatField;
    QBSBK_TOT5PM_BS: TFloatField;
    QBSBK_TOT5LD: TFloatField;
    QBSBK_TOT5LT: TFloatField;
    QBSBK_TOT5LPT: TFloatField;
    QBSBK_TOT5LRG: TFloatField;
    QBSBK_TOT5WL: TFloatField;
    QBSBK_TOT5FLS: TFloatField;
    QBSBK_TOT5FLP: TFloatField;
    QBSBK_TOT5NEPS: TFloatField;
    QBSBK_TOT5PP: TFloatField;
    QBSBK_TOT5WP: TFloatField;
    QBSBK_TOT5OJ: TFloatField;
    QBSBK_TOT5CRT: TFloatField;
    QBSBK_TOT5BTS: TFloatField;
    QBSBK_TOT5BTB: TFloatField;
    QBSBK_TOT5BO: TFloatField;
    QBSBK_TOT5SC: TFloatField;
    QBSBK_TOT5SLL: TFloatField;
    QBSBK_TOT5CK: TFloatField;
    QBSBK_TOT5CAJ: TFloatField;
    QBSBK_TOT5KTR: TFloatField;
    QBSBK_TOT5PDK: TFloatField;
    QBSBK_TOT5KP: TFloatField;
    QBSBK_TOT5KECOES_BG: TFloatField;
    QBSBK_TOT5SBK: TFloatField;
    QBSBK_TOT5UTS: TFloatField;
    QBSBK_TOT5KNB: TFloatField;
    QBSBK_TOT5BS_FLS: TFloatField;
    QBSBK_TOT5BS_FLP: TFloatField;
    QBSBK_TOT5BS_BTS: TFloatField;
    QBSBK_TOT5BS_BTB: TFloatField;
    QBSBK_TOT5BS_TK: TFloatField;
    QBSBK_TOT5AFL: TFloatField;
    QBSBK_TOT5KECOES_BS: TFloatField;
    QBrowse_Det5NO_NOTA: TStringField;
    QBrowse_Det5TGL: TDateTimeField;
    QBrowse_Det5KD_TRANSAKSI: TStringField;
    QBrowse_Det5ISPOST: TStringField;
    QBrowse_Det5REKANAN: TStringField;
    QBrowse_Det5TGL_PROSES: TDateTimeField;
    QBrowse_Det5KELOMPOK: TStringField;
    QBrowse_Det5NO_SERI_BEAM: TStringField;
    QBrowse_Det5SATUAN: TStringField;
    QBrowse_Det5QTY: TFloatField;
    QBrowse_Det5OPR_TENUN: TStringField;
    QBrowse_Det5TGL_INSERT: TDateTimeField;
    QBrowse_Det5OPR_INSERT: TStringField;
    QBrowse_Det5NO_REG: TFloatField;
    QBrowse_Det5PROSES: TStringField;
    QBrowse_Det5LOKASI: TStringField;
    QBrowse_Det5KONSTRUKSI: TStringField;
    QBrowse_Det5CORAK: TStringField;
    QBrowse_Det5TANGGAL: TDateTimeField;
    QBrowse_Det5NIK: TStringField;
    QBrowse_Det5SHIFT: TStringField;
    QBrowse_Det5NO_PRODUKSI: TStringField;
    QBrowse_Det5GRUP: TStringField;
    QBrowse_Det5NO_REG_TENUN: TFloatField;
    QBrowse_Det5KD_KONSTRUKSI: TStringField;
    QBrowse_Det5KD_CORAK: TStringField;
    QBrowse_Det5TGL_PTG: TDateTimeField;
    QBrowse_Det5LD: TFloatField;
    QBrowse_Det5LB: TFloatField;
    QBrowse_Det5LT: TFloatField;
    QBrowse_Det5LK: TFloatField;
    QBrowse_Det5LL: TFloatField;
    QBrowse_Det5LP: TFloatField;
    QBrowse_Det5LR: TFloatField;
    QBrowse_Det5WL: TFloatField;
    QBrowse_Det5CB: TFloatField;
    QBrowse_Det5CK: TFloatField;
    QBrowse_Det5CRT: TFloatField;
    QBrowse_Det5PD: TFloatField;
    QBrowse_Det5PL: TFloatField;
    QBrowse_Det5PP: TFloatField;
    QBrowse_Det5PS: TFloatField;
    QBrowse_Det5NG: TFloatField;
    QBrowse_Det5WP: TFloatField;
    QBrowse_Det5SC: TFloatField;
    QBrowse_Det5KS: TFloatField;
    QBrowse_Det5KP: TFloatField;
    QBrowse_Det5KECOES_BG: TFloatField;
    QBrowse_Det5BO: TFloatField;
    QBrowse_Det5LN: TFloatField;
    QBrowse_Det5PR: TFloatField;
    QBrowse_Det5UTB: TFloatField;
    QBrowse_Det5UTK: TFloatField;
    QBrowse_Det5LBK: TFloatField;
    QBrowse_Det5SLL: TFloatField;
    QBrowse_Det5TG: TFloatField;
    QBrowse_Det5TCS: TFloatField;
    QBrowse_Det5CUP: TFloatField;
    QBrowse_Det5NO_URUT: TFloatField;
    QBrowse_Det5LPB: TFloatField;
    QBrowse_Det5LPS: TFloatField;
    QBrowse_Det5LRB: TFloatField;
    QBrowse_Det5LRS: TFloatField;
    QBrowse_Det5LS: TFloatField;
    QBrowse_Det5LSB: TFloatField;
    QBrowse_Det5LSS: TFloatField;
    QBrowse_Det5OJ: TFloatField;
    QBrowse_Det5LPT: TFloatField;
    QBrowse_Det5LRG: TFloatField;
    QBrowse_Det5CKK: TFloatField;
    QBrowse_Det5CAJ: TFloatField;
    QBrowse_Det5PKP: TFloatField;
    QBrowse_Det5BTB: TFloatField;
    QBrowse_Det5ANR: TFloatField;
    QBrowse_Det5UTS: TFloatField;
    QBrowse_Det5KBR: TFloatField;
    QBrowse_Det5AFL: TFloatField;
    QBrowse_Det5KECOES_BS: TFloatField;
    QBrowse_Det5PRA: TFloatField;
    QBrowse_Det5FLS: TFloatField;
    QBrowse_Det5FLP: TFloatField;
    QBrowse_Det5NEPS: TFloatField;
    QBrowse_Det5BTS: TFloatField;
    QBrowse_Det5KTR: TFloatField;
    QBrowse_Det5PDK: TFloatField;
    QBrowse_Det5SBK: TFloatField;
    QBrowse_Det5KNB: TFloatField;
    QBrowse_Det5BS_FLS: TFloatField;
    QBrowse_Det5BS_FLP: TFloatField;
    QBrowse_Det5BS_BTS: TFloatField;
    QBrowse_Det5BS_BTB: TFloatField;
    QBrowse_Det5BS_TK: TFloatField;
    QBrowse_Det5QTY2: TFloatField;
    QBrowse_Det5QTY3: TFloatField;
    QBrowse_Det5BGRADE: TFloatField;
    QBrowse_Det5M_QTY2: TFloatField;
    QBrowse_Det5M_QTY3: TFloatField;
    QBrowse_Det5M_BGRADE: TFloatField;
    QBrowse_Det5P_BS: TFloatField;
    QBrowse_Det5P_BK: TFloatField;
    QBrowse_Det5P_BGRADE: TFloatField;
    QBrowse_Det5PM_BS: TFloatField;
    QBrowse_Det5PM_BK: TFloatField;
    QBrowse_Det5PM_BGRADE: TFloatField;
    QBrowse_Det5P_LD: TFloatField;
    QBrowse_Det5P_LT: TFloatField;
    QBrowse_Det5P_LPT: TFloatField;
    QBrowse_Det5P_LRG: TFloatField;
    QBrowse_Det5P_WL: TFloatField;
    QBrowse_Det5P_FLS: TFloatField;
    QBrowse_Det5P_FLP: TFloatField;
    QBrowse_Det5P_NEPS: TFloatField;
    QBrowse_Det5P_PP: TFloatField;
    QBrowse_Det5P_WP: TFloatField;
    QBrowse_Det5P_OJ: TFloatField;
    QBrowse_Det5P_CRT: TFloatField;
    QBrowse_Det5P_BTS: TFloatField;
    QBrowse_Det5P_BTB: TFloatField;
    QBrowse_Det5P_BO: TFloatField;
    QBrowse_Det5P_SC: TFloatField;
    QBrowse_Det5P_SLL: TFloatField;
    QBrowse_Det5P_CK: TFloatField;
    QBrowse_Det5P_CAJ: TFloatField;
    QBrowse_Det5P_KTR: TFloatField;
    QBrowse_Det5P_PDK: TFloatField;
    QBrowse_Det5P_KP: TFloatField;
    QBrowse_Det5P_KECOES_BG: TFloatField;
    QBrowse_Det5P_SBK: TFloatField;
    QBrowse_Det5P_UTS: TFloatField;
    QBrowse_Det5P_KNB: TFloatField;
    QBrowse_Det5P_BS_FLS: TFloatField;
    QBrowse_Det5P_BS_FLP: TFloatField;
    QBrowse_Det5P_BS_BTS: TFloatField;
    QBrowse_Det5P_BS_BTB: TFloatField;
    QBrowse_Det5P_BS_TK: TFloatField;
    QBrowse_Det5P_AFL: TFloatField;
    QBrowse_Det5P_KECOES_BS: TFloatField;
    QBrowse_Det5P_UTB: TFloatField;
    QBrowse_Det5P_LBK: TFloatField;
    QBrowse_Det5P_CUP: TFloatField;
    QBrowse_Det5NO_DESAIN: TStringField;
    QBrowse_Det5PILIH: TStringField;
    QBrowse_Det5MESIN: TStringField;
    QBrowse_Det5KD_PRODUKSI: TStringField;
    QBrowse_Det5JENIS: TStringField;
    QBrowse_Det5TGL_POTONG: TDateTimeField;
    wwDBGrid19: TwwDBGrid;
    QBrowse_Det6: TOracleDataSet;
    QBSBK_TOT6: TOracleDataSet;
    QBrowse_Det6NO_NOTA: TStringField;
    QBrowse_Det6TGL: TDateTimeField;
    QBrowse_Det6KD_TRANSAKSI: TStringField;
    QBrowse_Det6ISPOST: TStringField;
    QBrowse_Det6REKANAN: TStringField;
    QBrowse_Det6TGL_PROSES: TDateTimeField;
    QBrowse_Det6KELOMPOK: TStringField;
    QBrowse_Det6NO_SERI_BEAM: TStringField;
    QBrowse_Det6SATUAN: TStringField;
    QBrowse_Det6QTY: TFloatField;
    QBrowse_Det6OPR_TENUN: TStringField;
    QBrowse_Det6TGL_INSERT: TDateTimeField;
    QBrowse_Det6OPR_INSERT: TStringField;
    QBrowse_Det6NO_REG: TFloatField;
    QBrowse_Det6PROSES: TStringField;
    QBrowse_Det6LOKASI: TStringField;
    QBrowse_Det6KONSTRUKSI: TStringField;
    QBrowse_Det6CORAK: TStringField;
    QBrowse_Det6TANGGAL: TDateTimeField;
    QBrowse_Det6NIK: TStringField;
    QBrowse_Det6SHIFT: TStringField;
    QBrowse_Det6NO_PRODUKSI: TStringField;
    QBrowse_Det6GRUP: TStringField;
    QBrowse_Det6NO_REG_TENUN: TFloatField;
    QBrowse_Det6KD_KONSTRUKSI: TStringField;
    QBrowse_Det6KD_CORAK: TStringField;
    QBrowse_Det6TGL_PTG: TDateTimeField;
    QBrowse_Det6LD: TFloatField;
    QBrowse_Det6LB: TFloatField;
    QBrowse_Det6LT: TFloatField;
    QBrowse_Det6LK: TFloatField;
    QBrowse_Det6LL: TFloatField;
    QBrowse_Det6LP: TFloatField;
    QBrowse_Det6LR: TFloatField;
    QBrowse_Det6WL: TFloatField;
    QBrowse_Det6CB: TFloatField;
    QBrowse_Det6CK: TFloatField;
    QBrowse_Det6CRT: TFloatField;
    QBrowse_Det6PD: TFloatField;
    QBrowse_Det6PL: TFloatField;
    QBrowse_Det6PP: TFloatField;
    QBrowse_Det6PS: TFloatField;
    QBrowse_Det6NG: TFloatField;
    QBrowse_Det6WP: TFloatField;
    QBrowse_Det6SC: TFloatField;
    QBrowse_Det6KS: TFloatField;
    QBrowse_Det6KP: TFloatField;
    QBrowse_Det6KECOES_BG: TFloatField;
    QBrowse_Det6BO: TFloatField;
    QBrowse_Det6LN: TFloatField;
    QBrowse_Det6PR: TFloatField;
    QBrowse_Det6UTB: TFloatField;
    QBrowse_Det6UTK: TFloatField;
    QBrowse_Det6LBK: TFloatField;
    QBrowse_Det6SLL: TFloatField;
    QBrowse_Det6TG: TFloatField;
    QBrowse_Det6TCS: TFloatField;
    QBrowse_Det6CUP: TFloatField;
    QBrowse_Det6NO_URUT: TFloatField;
    QBrowse_Det6LPB: TFloatField;
    QBrowse_Det6LPS: TFloatField;
    QBrowse_Det6LRB: TFloatField;
    QBrowse_Det6LRS: TFloatField;
    QBrowse_Det6LS: TFloatField;
    QBrowse_Det6LSB: TFloatField;
    QBrowse_Det6LSS: TFloatField;
    QBrowse_Det6OJ: TFloatField;
    QBrowse_Det6LPT: TFloatField;
    QBrowse_Det6LRG: TFloatField;
    QBrowse_Det6CKK: TFloatField;
    QBrowse_Det6CAJ: TFloatField;
    QBrowse_Det6PKP: TFloatField;
    QBrowse_Det6BTB: TFloatField;
    QBrowse_Det6ANR: TFloatField;
    QBrowse_Det6UTS: TFloatField;
    QBrowse_Det6KBR: TFloatField;
    QBrowse_Det6AFL: TFloatField;
    QBrowse_Det6KECOES_BS: TFloatField;
    QBrowse_Det6PRA: TFloatField;
    QBrowse_Det6FLS: TFloatField;
    QBrowse_Det6FLP: TFloatField;
    QBrowse_Det6NEPS: TFloatField;
    QBrowse_Det6BTS: TFloatField;
    QBrowse_Det6KTR: TFloatField;
    QBrowse_Det6PDK: TFloatField;
    QBrowse_Det6SBK: TFloatField;
    QBrowse_Det6KNB: TFloatField;
    QBrowse_Det6BS_FLS: TFloatField;
    QBrowse_Det6BS_FLP: TFloatField;
    QBrowse_Det6BS_BTS: TFloatField;
    QBrowse_Det6BS_BTB: TFloatField;
    QBrowse_Det6BS_TK: TFloatField;
    QBrowse_Det6QTY2: TFloatField;
    QBrowse_Det6QTY3: TFloatField;
    QBrowse_Det6BGRADE: TFloatField;
    QBrowse_Det6M_QTY2: TFloatField;
    QBrowse_Det6M_QTY3: TFloatField;
    QBrowse_Det6M_BGRADE: TFloatField;
    QBrowse_Det6P_BS: TFloatField;
    QBrowse_Det6P_BK: TFloatField;
    QBrowse_Det6P_BGRADE: TFloatField;
    QBrowse_Det6PM_BS: TFloatField;
    QBrowse_Det6PM_BK: TFloatField;
    QBrowse_Det6PM_BGRADE: TFloatField;
    QBrowse_Det6P_LD: TFloatField;
    QBrowse_Det6P_LT: TFloatField;
    QBrowse_Det6P_LPT: TFloatField;
    QBrowse_Det6P_LRG: TFloatField;
    QBrowse_Det6P_WL: TFloatField;
    QBrowse_Det6P_FLS: TFloatField;
    QBrowse_Det6P_FLP: TFloatField;
    QBrowse_Det6P_NEPS: TFloatField;
    QBrowse_Det6P_PP: TFloatField;
    QBrowse_Det6P_WP: TFloatField;
    QBrowse_Det6P_OJ: TFloatField;
    QBrowse_Det6P_CRT: TFloatField;
    QBrowse_Det6P_BTS: TFloatField;
    QBrowse_Det6P_BTB: TFloatField;
    QBrowse_Det6P_BO: TFloatField;
    QBrowse_Det6P_SC: TFloatField;
    QBrowse_Det6P_SLL: TFloatField;
    QBrowse_Det6P_CK: TFloatField;
    QBrowse_Det6P_CAJ: TFloatField;
    QBrowse_Det6P_KTR: TFloatField;
    QBrowse_Det6P_PDK: TFloatField;
    QBrowse_Det6P_KP: TFloatField;
    QBrowse_Det6P_KECOES_BG: TFloatField;
    QBrowse_Det6P_SBK: TFloatField;
    QBrowse_Det6P_UTS: TFloatField;
    QBrowse_Det6P_KNB: TFloatField;
    QBrowse_Det6P_BS_FLS: TFloatField;
    QBrowse_Det6P_BS_FLP: TFloatField;
    QBrowse_Det6P_BS_BTS: TFloatField;
    QBrowse_Det6P_BS_BTB: TFloatField;
    QBrowse_Det6P_BS_TK: TFloatField;
    QBrowse_Det6P_AFL: TFloatField;
    QBrowse_Det6P_KECOES_BS: TFloatField;
    QBrowse_Det6P_UTB: TFloatField;
    QBrowse_Det6P_LBK: TFloatField;
    QBrowse_Det6P_CUP: TFloatField;
    QBrowse_Det6NO_DESAIN: TStringField;
    QBrowse_Det6PILIH: TStringField;
    QBrowse_Det6MESIN: TStringField;
    QBrowse_Det6KD_PRODUKSI: TStringField;
    QBrowse_Det6JENIS: TStringField;
    QBrowse_Det6TGL_POTONG: TDateTimeField;
    QBSBK_TOT6QTY: TFloatField;
    QBSBK_TOT6QTY3: TFloatField;
    QBSBK_TOT6BGRADE: TFloatField;
    QBSBK_TOT6QTY2: TFloatField;
    QBSBK_TOT6M_QTY3: TFloatField;
    QBSBK_TOT6M_BGRADE: TFloatField;
    QBSBK_TOT6M_QTY2: TFloatField;
    QBSBK_TOT6P_BK: TFloatField;
    QBSBK_TOT6P_BGRADE: TFloatField;
    QBSBK_TOT6P_BS: TFloatField;
    QBSBK_TOT6PM_BK: TFloatField;
    QBSBK_TOT6PM_BGRADE: TFloatField;
    QBSBK_TOT6PM_BS: TFloatField;
    QBSBK_TOT6P_LD: TFloatField;
    QBSBK_TOT6P_LT: TFloatField;
    QBSBK_TOT6P_LPT: TFloatField;
    QBSBK_TOT6P_LRG: TFloatField;
    QBSBK_TOT6P_WL: TFloatField;
    QBSBK_TOT6P_FLS: TFloatField;
    QBSBK_TOT6P_FLP: TFloatField;
    QBSBK_TOT6P_NEPS: TFloatField;
    QBSBK_TOT6P_PP: TFloatField;
    QBSBK_TOT6P_WP: TFloatField;
    QBSBK_TOT6P_OJ: TFloatField;
    QBSBK_TOT6P_CRT: TFloatField;
    QBSBK_TOT6P_BTS: TFloatField;
    QBSBK_TOT6P_BTB: TFloatField;
    QBSBK_TOT6P_BO: TFloatField;
    QBSBK_TOT6P_SC: TFloatField;
    QBSBK_TOT6P_SLL: TFloatField;
    QBSBK_TOT6P_CK: TFloatField;
    QBSBK_TOT6P_CAJ: TFloatField;
    QBSBK_TOT6P_KTR: TFloatField;
    QBSBK_TOT6P_PDK: TFloatField;
    QBSBK_TOT6P_KP: TFloatField;
    QBSBK_TOT6P_KECOES_BG: TFloatField;
    QBSBK_TOT6P_SBK: TFloatField;
    QBSBK_TOT6P_UTS: TFloatField;
    QBSBK_TOT6P_KNB: TFloatField;
    QBSBK_TOT6P_BS_FLS: TFloatField;
    QBSBK_TOT6P_BS_FLP: TFloatField;
    QBSBK_TOT6P_BS_BTS: TFloatField;
    QBSBK_TOT6P_BS_BTB: TFloatField;
    QBSBK_TOT6P_BS_TK: TFloatField;
    QBSBK_TOT6P_AFL: TFloatField;
    QBSBK_TOT6P_KECOES_BS: TFloatField;
    dsQBrowse_Det6: TwwDataSource;
    QBrowse_DetP_LB: TFloatField;
    QBrowse_Det3P_LB: TFloatField;
    QBrowse_Det2P_LB: TFloatField;
    QBrowse_Det5P_LB: TFloatField;
    QBrowse_Det4P_LB: TFloatField;
    QBrowse_Det6P_LB: TFloatField;
    QBSBK_TOT6P_LB: TFloatField;
    QBSBK_TOT4P_LB: TFloatField;
    QBSBK_TOT2LB: TFloatField;
    QBSBK_TOT3P_LB: TFloatField;
    QBSBK_TOTLB: TFloatField;
    QBSBK_TOT5LB: TFloatField;
    QLoom4P_LB: TFloatField;
    QLoom4_TotP_LB: TFloatField;
    QPerLoomP_LB: TFloatField;
    QLoom1P_LB: TFloatField;
    QLoom3P_LB: TFloatField;
    QPerLoom_TotP_LB: TFloatField;
    QLoom1_TotP_LB: TFloatField;
    QLoom3_TotP_LB: TFloatField;
    QBrowse_DetP_KBR: TFloatField;
    QBrowse_DetP_LK: TFloatField;
    QBSBK_TOTKBR: TFloatField;
    QBSBK_TOTLK: TFloatField;
    QBrowse_Det2P_KBR: TFloatField;
    QBrowse_Det2P_LK: TFloatField;
    QBSBK_TOT2KBR: TFloatField;
    QBSBK_TOT2LK: TFloatField;
    QBrowse_Det5P_KBR: TFloatField;
    QBrowse_Det5P_LK: TFloatField;
    QBSBK_TOT5KBR: TFloatField;
    QBSBK_TOT5LK: TFloatField;
    QBrowse_Det3P_KBR: TFloatField;
    QBrowse_Det3P_LK: TFloatField;
    QBSBK_TOT3P_KBR: TFloatField;
    QBSBK_TOT3P_LK: TFloatField;
    QBrowse_Det4P_KBR: TFloatField;
    QBrowse_Det4P_LK: TFloatField;
    QBSBK_TOT4P_KBR: TFloatField;
    QBSBK_TOT4P_LK: TFloatField;
    QBrowse_Det6P_KBR: TFloatField;
    QBrowse_Det6P_LK: TFloatField;
    QBSBK_TOT6P_KBR: TFloatField;
    QBSBK_TOT6P_LK: TFloatField;
    QBSBK_TOTP_LK: TFloatField;
    QBSBK_TOTP_LB: TFloatField;
    QBSBK_TOT3LK: TFloatField;
    QBSBK_TOT3LB: TFloatField;
    QBSBK_TOT4LK: TFloatField;
    QBSBK_TOT4LB: TFloatField;
    QBSBK_TOT2P_LK: TFloatField;
    QBSBK_TOT2P_LB: TFloatField;
    QBSBK_TOT5P_LK: TFloatField;
    QBSBK_TOT5P_LB: TFloatField;
    QBSBK_TOT6LK: TFloatField;
    QBSBK_TOT6LB: TFloatField;
    QPerLoomP_LK: TFloatField;
    QPerLoomP_KBR: TFloatField;
    QPerLoom_TotP_LK: TFloatField;
    QPerLoom_TotP_KBR: TFloatField;
    QLoom1_TotP_LK: TFloatField;
    QLoom1_TotP_KBR: TFloatField;
    QLoom4P_LK: TFloatField;
    QLoom4P_KBR: TFloatField;
    QLoom1P_LK: TFloatField;
    QLoom1P_KBR: TFloatField;
    QLoom4_TotP_LK: TFloatField;
    QLoom4_TotP_KBR: TFloatField;
    QLoom3_TotP_LK: TFloatField;
    QLoom3_TotP_KBR: TFloatField;
    QLoom3P_LK: TFloatField;
    QLoom3P_KBR: TFloatField;
    QBrowse_DetKETERANGAN: TStringField;
    QBrowse_DetKNT: TFloatField;
    QBrowse_DetP_KNT: TFloatField;
    QBSBK_TOTKNT: TFloatField;
    QBrowse_Det2KETERANGAN: TStringField;
    QBrowse_Det2KNT: TFloatField;
    QBrowse_Det2P_KNT: TFloatField;
    QBSBK_TOT2KNT: TFloatField;
    QBrowse_Det5KETERANGAN: TStringField;
    QBrowse_Det5KNT: TFloatField;
    QBrowse_Det5P_KNT: TFloatField;
    QBSBK_TOT5KNT: TFloatField;
    QBrowse_Det3KETERANGAN: TStringField;
    QBrowse_Det3KNT: TFloatField;
    QBrowse_Det3P_KNT: TFloatField;
    QBrowse_Det4KETERANGAN: TStringField;
    QBrowse_Det4KNT: TFloatField;
    QBrowse_Det4P_KNT: TFloatField;
    QBSBK_TOT4P_KNT: TFloatField;
    QBrowse_Det6KETERANGAN: TStringField;
    QBrowse_Det6KNT: TFloatField;
    QBrowse_Det6P_KNT: TFloatField;
    QBSBK_TOT6P_KNT: TFloatField;
    QPerLoomKNT: TFloatField;
    QPerLoomP_KNT: TFloatField;
    QLoom4KNT: TFloatField;
    QLoom4P_KNT: TFloatField;
    QLoom1KNT: TFloatField;
    QLoom1P_KNT: TFloatField;
    QLoom3KNT: TFloatField;
    QLoom3P_KNT: TFloatField;
    QBSBK_TOT3P_KNT: TFloatField;
    QLoom1_TotKNT: TFloatField;
    QLoom1_TotP_KNT: TFloatField;
    QPerLoom_TotKNT: TFloatField;
    QPerLoom_TotP_KNT: TFloatField;
    QLoom4_TotKNT: TFloatField;
    QLoom4_TotP_KNT: TFloatField;
    QLoom3_TotKNT: TFloatField;
    QLoom3_TotP_KNT: TFloatField;
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
    procedure FormShow(Sender: TObject);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure QBrowseTotal2CalcFields(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet5Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure QBrowseTotal2AfterScroll(DataSet: TDataSet);
    procedure QBrowse3AfterScroll(DataSet: TDataSet);
    procedure QBrowse_DetAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid1xxxxxEnter(Sender: TObject);
    procedure wwDBGrid3Enter(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure QPerKonstruksiAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid5UpdateFooter(Sender: TObject);
    procedure wwDBGrid5TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid6UpdateFooter(Sender: TObject);
    procedure VtglAwal4Change(Sender: TObject);
    procedure VTglAkhir4Change(Sender: TObject);
    procedure cbOtomatis4Click(Sender: TObject);
    procedure dbcField4Enter(Sender: TObject);
    procedure cbTanggal4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BtnExport4Click(Sender: TObject);
    procedure wwDBGrid6TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure look_opEnter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure vTglAwal6Change(Sender: TObject);
    procedure vTglAkhir6Change(Sender: TObject);
    procedure dbcField6Enter(Sender: TObject);
    procedure cbOtomatis6Click(Sender: TObject);
    procedure vOperand6Click(Sender: TObject);
    procedure cbTanggal6Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure wwDBGrid8TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBs_GrupORIAfterScroll(DataSet: TDataSet);
    procedure BitBtn12Click(Sender: TObject);
    procedure VTglAkhir7Change(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure cbOtomatis7Click(Sender: TObject);
    procedure dbcField7Enter(Sender: TObject);
    procedure vOperand7Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure cbTanggal7Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure RTglClick(Sender: TObject);
    procedure QBrowse_Det2_oriAfterScroll(DataSet: TDataSet);
    procedure QBrowse_Det2AfterScroll(DataSet: TDataSet);
    procedure wwDBGrid10TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBs_GrupAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid9TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBs_GrupDetailAfterScroll(DataSet: TDataSet);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure QPerMesinAfterScroll(DataSet: TDataSet);
    procedure QPerMesin_TotAfterScroll(DataSet: TDataSet);
    procedure VTglAwal21Change(Sender: TObject);
    procedure VTglAkhir21Change(Sender: TObject);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPEnter(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure vTglAwal8Change(Sender: TObject);
    procedure vTglAkhir8Change(Sender: TObject);
    procedure cbOtomatis8Click(Sender: TObject);
    procedure dbcField8Enter(Sender: TObject);
    procedure vOperand8Click(Sender: TObject);
    procedure cbTanggal8Click(Sender: TObject);
    procedure RTgl8Click(Sender: TObject);
    procedure BtnFind8Click(Sender: TObject);
    procedure QBrowse_Det3AfterScroll(DataSet: TDataSet);
    procedure QBrowse_Det4AfterScroll(DataSet: TDataSet);
    procedure TabSheet12Show(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BtnOk8Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure VTglAwal11Change(Sender: TObject);
    procedure VTglAkhir11Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RLoomClick(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure Cari2Click(Sender: TObject);
    procedure BtnOke2Click(Sender: TObject);
    procedure BtnGrid14Click(Sender: TObject);
    procedure wwDBGrid18TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowse_Det5AfterScroll(DataSet: TDataSet);
    procedure QBrowse_Det6AfterScroll(DataSet: TDataSet);
    procedure wwDBGrid19TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure DBText1Click(Sender: TObject);
  private
    { Private declarations }
    vorder,vfilter,vorder2,vfilter2,vorder3,vfilter3:string;

    procedure PrintLoomIntern;
    procedure PrintLoomPPC;

    procedure PrintLoomKpIntern;
    procedure PrintLoomKpPPC;

    procedure PrintLoomInternPersen;
    procedure PrintLoomInternKpPersen;
  public
    { Public declarations }

  end;

var
  TerimaDariFinishingFrm: TTerimaDariFinishingFrm;

implementation

uses DM, Math, HasilTenun, DateUtils;

{$R *.dfm}

procedure TTerimaDariFinishingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDariFinishingFrm:=Nil;
end;

procedure TTerimaDariFinishingFrm.FormResize(Sender: TObject);
begin
  //pPanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
end;

procedure TTerimaDariFinishingFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDariFinishingFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','991');
 QTransaksi.Open;
TerimaDariFinishingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;

end;

procedure TTerimaDariFinishingFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
end;

procedure TTerimaDariFinishingFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishingFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishingFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TTerimaDariFinishingFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TTerimaDariFinishingFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TTerimaDariFinishingFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TTerimaDariFinishingFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TTerimaDariFinishingFrm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TTerimaDariFinishingFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TTerimaDariFinishingFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TTerimaDariFinishingFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='BK';
  QDetailJENIS.AsString:='PALEKAT';
  QDetailKD_CORAK.AsString:='000';
  QDetailCORAK.AsString:='-';
  QMasterISPOST.AsString:='0.0,0;(0.0,0);-';
end;

procedure TTerimaDariFinishingFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TTerimaDariFinishingFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TTerimaDariFinishingFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TTerimaDariFinishingFrm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TTerimaDariFinishingFrm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
end;

procedure TTerimaDariFinishingFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalTOTAL.AsFloat);
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalPARAH.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalAFL.AsFloat);
end;

procedure TTerimaDariFinishingFrm.BitBtn4Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilTenunFrm:=THasilTenunFrm.Create(Self);
  HasilTenunFrm.QDetail.Close;
  HasilTenunFrm.QDetail.Open;
  HasilTenunFrm.QMaster.Close;
  HasilTenunFrm.QMaster.SetVariable('no_reg',HasilTenunFrm.QDetailNO_REG_TENUN.AsInteger);
  HasilTenunFrm.QMaster.Open;
  HasilTenunFrm.ShowModal;
  HasilTenunFrm.Free;
end;

procedure TTerimaDariFinishingFrm.BitBtn3Click(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.FormShow(Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=Date;
  VTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal2.Date:=Trunc(date());

  VTglakhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir2.Date:=Trunc(date());

  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal3.Date:=Trunc(date());

  VTglakhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir3.Date:=Trunc(date());

  VTglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal5.Date:=Trunc(date());

  VTglakhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir5.Date:=Trunc(date());

  vTglAwal6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal6.Date:=Trunc(date());

  vTglakhir6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglakhir6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglakhir6.Date:=Trunc(date());

  VTglAwal7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal7.Date:=Trunc(date());

  VTglAkhir7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir7.Date:=Trunc(date());
end;

procedure TTerimaDariFinishingFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));

end;

procedure TTerimaDariFinishingFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;

end;

procedure TTerimaDariFinishingFrm.cbOtomatisClick(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TTerimaDariFinishingFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';

end;

procedure TTerimaDariFinishingFrm.cbTanggalClick(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.BitBtn5Click(Sender: TObject);
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
  wwDBGrid1xxxxx.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KODI_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KODI_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BGRADE.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BGRADE.AsFloat);
end;

procedure TTerimaDariFinishingFrm.BtnExportClick(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.TabSheet2Show(Sender: TObject);
begin
  vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  //QBrowse.Open;
end;

procedure TTerimaDariFinishingFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TTerimaDariFinishingFrm.TabSheet1Show(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','991');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Close;
 QDetail.Close;
 QMaster.Open;
 QDetail.Open;
end;

procedure TTerimaDariFinishingFrm.wwDBDateTimePicker1Change(
  Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=wwDBDateTimePicker1.Date;
end;

procedure TTerimaDariFinishingFrm.QBrowseTotal2CalcFields(
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

procedure TTerimaDariFinishingFrm.TabSheet3Show(Sender: TObject);
begin
  QBrowseTotal2.Close;
  QBrowseTotal2.Open;
end;

procedure TTerimaDariFinishingFrm.wwDBNavigator1Button1Click(
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

procedure TTerimaDariFinishingFrm.VTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=trunc(EndOfTheMonth(VTglAwal2.Date));

end;

procedure TTerimaDariFinishingFrm.vTglAkhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.cbOtomatis2Click(Sender: TObject);
begin
if RTgl.ItemIndex = 0 then
begin
  if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid3.Options:=wwDBGrid3.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end
else
begin
    if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid10.Options:=wwDBGrid10.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid10.Options:=wwDBGrid10.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;
end;

procedure TTerimaDariFinishingFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
if RTgl.ItemIndex = 0 then
begin
  if (QBrowse_Det.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid3.Columns[i].FieldName);
end
else
begin
if (QBrowse_Det2.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid10.FieldCount-1 do
    //if UpperCase(wwDBGrid10.Columns[i].FieldName)<>'TANGGAL' then
    if UpperCase(wwDBGrid10.Columns[i].FieldName)<>'TGL_PTG' then
      dbcField2.Items.Add(wwDBGrid10.Columns[i].FieldName);
end;

end;



procedure TTerimaDariFinishingFrm.cbTanggal2Click(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.BitBtn6Click(Sender: TObject);
var
  i: Word;
  vpertama: Boolean;
  vkd,vjam,vloom,vrgTanggal,vgrup: string;
  vjam1, vjam2: Integer;
begin
    // Item Index 0 Start---------------------------------------------------------------------------------
    if RTgl.ItemIndex = 0 then
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
        ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
        QBrowse_Det.Close;
        QBrowseTotal_Det.Close;
        abort;
        end
        else
        QBrowse_Det.Open;

        vpertama := True;
        if cbTanggal2.Checked then
        vfilter := ' where (TANGGAL >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''',''dd/mm/yyyy'') and TANGGAL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
        vfilter := ' where (';

        if QBrowse_Det.FieldCount >= 1 then
        begin
        if dbcField2.ItemIndex = 0 then
        begin
            for i := 0 to wwDBGrid3.Selected.Count - 1 do
            begin
            if (QBrowse_Det.FieldByName(wwDBGrid3.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid3.Columns[i].FieldName) <> 'TANGGAL') then
            begin
                if vpertama then
                begin
                if vOperand2.Caption = 'LIKE' then
                    vfilter := vfilter + wwDBGrid3.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                else
                    vfilter := vfilter + wwDBGrid3.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                vpertama := False;
                end
                else
                begin
                if vOperand2.Caption = 'LIKE' then
                    vfilter := vfilter + ' or ' + wwDBGrid3.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                else
                    vfilter := vfilter + ' or ' + wwDBGrid3.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                end;
            end;
            end;
        end
        else
        begin
            if vOperand2.Caption = 'LIKE' then
            vfilter := vfilter + dbcField2.Text + ' like ''%' + ECari2.Text + '%'''
            else
            vfilter := vfilter + dbcField2.Text + ' = ''' + ECari2.Text + '''';
        end;
        vfilter := vfilter + ')';
        if QBrowse_Det.Active then
            vorder := ' order by ' + wwDBGrid3.Columns[0].FieldName
        else
            vorder := ' order by no_reg';
        end;

        QBrowse_Det.DisableControls;
        QBrowse_Det.Close;

        case RadioGroup20.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det.SetVariable('loom',vloom);
        QBrowse_Det.SetVariable('myparam', vfilter + vorder);
        QBrowse_Det.Open;
        QBrowse_Det.EnableControls;

        QBSBK_TOT.DisableControls;
        QBSBK_TOT.Close;
        QBSBK_TOT.SetVariable('myparam', vfilter);
        QBSBK_TOT.SetVariable('loom',vloom);
        QBSBK_TOT.Open;
        QBSBK_TOT.EnableControls;

        wwDBGrid3.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY.AsFloat);

        wwDBGrid3.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY3.AsFloat);
        wwDBGrid3.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBGRADE.AsFloat);
        wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY2.AsFloat);

        wwDBGrid3.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY3.AsFloat);
        wwDBGrid3.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_BGRADE.AsFloat);
        wwDBGrid3.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY2.AsFloat);

        wwDBGrid3.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BK.AsFloat);
        wwDBGrid3.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BGRADE.AsFloat);
        wwDBGrid3.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BS.AsFloat);

        wwDBGrid3.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BK.AsFloat);
        wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BGRADE.AsFloat);
        wwDBGrid3.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BS.AsFloat);

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

        wwDBGrid3.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKBR.AsFloat);
        wwDBGrid3.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLK.AsFloat);
        wwDBGrid3.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLB.AsFloat);
        wwDBGrid3.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_LK.AsFloat);
        wwDBGrid3.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_LB.AsFloat);

        wwDBGrid3.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKNT.AsFloat);
        
    end
    // Item Index 0 End-----------------------------------------------------------------------------------

    // Item Index 1 Start---------------------------------------------------------------------------------
    else if RTgl.ItemIndex = 1 then
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
            ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
            QBrowse_Det2.Close;
            QBrowseTotal_Det2.Close;
            abort;
        end
        else
            QBrowse_Det2.Open;

        vpertama := True;
        if cbTanggal2.Checked then
            vfilter2 := ' where (tgl >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''', ''dd/mm/yyyy'') and tgl <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter2 := ' where (';

        if QBrowse_Det2.FieldCount >= 1 then
        begin
            if dbcField2.ItemIndex = 0 then
            begin
            for i := 0 to wwDBGrid10.Selected.Count - 1 do
            begin
                if (QBrowse_Det2.FieldByName(wwDBGrid10.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid10.Columns[i].FieldName) <> 'TANGGAL') then
                begin
                if vpertama then
                begin
                    if vOperand2.Caption = 'LIKE' then
                    vfilter2 := vfilter2 + wwDBGrid10.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                    else
                    vfilter2 := vfilter2 + wwDBGrid10.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                    vpertama := False;
                end
                else
                begin
                    if vOperand2.Caption = 'LIKE' then
                    vfilter2 := vfilter2 + ' or ' + wwDBGrid10.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                    else
                    vfilter2 := vfilter2 + ' or ' + wwDBGrid10.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                end;
                end;
            end;
            end
            else
            begin
            if vOperand2.Caption = 'LIKE' then
                vfilter2 := vfilter2 + dbcField2.Text + ' like ''%' + ECari2.Text + '%'''
            else
                vfilter2 := vfilter2 + dbcField2.Text + ' = ''' + ECari2.Text + '''';
            end;
            vfilter2 := vfilter2 + ')';
            if QBrowse_Det2.Active then
            vorder2 := ' order by ' + wwDBGrid10.Columns[0].FieldName
            else
            vorder2 := ' order by no_reg';
        end;

        QBrowse_Det2.DisableControls;
        QBrowse_Det2.Close;

        case RadioGroup20.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det2.SetVariable('myparam', vfilter2 + vorder2);
        QBrowse_Det2.SetVariable('loom',vloom);
        QBrowse_Det2.Open;
        QBrowse_Det2.EnableControls;

        QBSBK_TOT2.DisableControls;
        QBSBK_TOT2.Close;
        QBSBK_TOT2.SetVariable('myparam', vfilter2);
        QBSBK_TOT2.SetVariable('loom',vloom);
        QBSBK_TOT2.Open;
        QBSBK_TOT2.EnableControls;

        wwDBGrid10.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY.AsFloat);

        wwDBGrid10.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY3.AsFloat);
        wwDBGrid10.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BGRADE.AsFloat);
        wwDBGrid10.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY2.AsFloat);

        wwDBGrid10.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY3.AsFloat);
        wwDBGrid10.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_BGRADE.AsFloat);
        wwDBGrid10.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY2.AsFloat);

        wwDBGrid10.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BK.AsFloat);
        wwDBGrid10.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BGRADE.AsFloat);
        wwDBGrid10.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS.AsFloat);

        wwDBGrid10.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BK.AsFloat);
        wwDBGrid10.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BGRADE.AsFloat);
        wwDBGrid10.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BS.AsFloat);

        wwDBGrid10.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LD.AsFloat);
        wwDBGrid10.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LT.AsFloat);
        wwDBGrid10.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LPT.AsFloat);
        wwDBGrid10.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LRG.AsFloat);
        wwDBGrid10.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2WL.AsFloat);
        wwDBGrid10.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2FLS.AsFloat);
        wwDBGrid10.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2FLP.AsFloat);
        wwDBGrid10.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2NEPS.AsFloat);
        wwDBGrid10.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PP.AsFloat);
        wwDBGrid10.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2WP.AsFloat);
        wwDBGrid10.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2OJ.AsFloat);
        wwDBGrid10.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2CRT.AsFloat);
        wwDBGrid10.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BTS.AsFloat);
        wwDBGrid10.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BTB.AsFloat);
        wwDBGrid10.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BO.AsFloat);
        wwDBGrid10.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2SC.AsFloat);
        wwDBGrid10.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2SLL.AsFloat);
        wwDBGrid10.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2CK.AsFloat);
        wwDBGrid10.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2CAJ.AsFloat);
        wwDBGrid10.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KTR.AsFloat);
        wwDBGrid10.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PDK.AsFloat);
        wwDBGrid10.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KP.AsFloat);
        wwDBGrid10.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KECOES_BG.AsFloat);

        wwDBGrid10.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2SBK.AsFloat);
        wwDBGrid10.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2UTS.AsFloat);
        wwDBGrid10.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KNB.AsFloat);
        wwDBGrid10.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2AFL.AsFloat);
        wwDBGrid10.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KECOES_BS.AsFloat);

        wwDBGrid10.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BS_FLS.AsFloat);
        wwDBGrid10.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BS_FLP.AsFloat);
        wwDBGrid10.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BS_BTS.AsFloat);
        wwDBGrid10.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BS_BTB.AsFloat);
        wwDBGrid10.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BS_TK.AsFloat);

        wwDBGrid10.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KBR.AsFloat);
        wwDBGrid10.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LK.AsFloat);
        wwDBGrid10.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LB.AsFloat);
        wwDBGrid10.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LK.AsFloat);
        wwDBGrid10.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LB.AsFloat);

        wwDBGrid10.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2KNT.AsFloat);
    end
    // Item Index 1 End-----------------------------------------------------------------------------------

    // Item Index 2 Start---------------------------------------------------------------------------------
    else if RTgl.ItemIndex = 2 then
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
            ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
            QBrowse_Det5.Close;
            // QBrowseTotal_Det3.Close;
            abort;
        end
        else
            QBrowse_Det5.Open;

        vpertama := True;
        if cbTanggal2.Checked then
            vfilter3 := ' where (TGL_PROSES >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''', ''dd/mm/yyyy'') and TGL_PROSES <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter3 := ' where (';

        if QBrowse_Det5.FieldCount >= 1 then
        begin
            if dbcField2.ItemIndex = 0 then
            begin
            for i := 0 to wwDBGrid18.Selected.Count - 1 do
            begin
                if (QBrowse_Det5.FieldByName(wwDBGrid18.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid18.Columns[i].FieldName) <> 'TANGGAL') then
                begin
                if vpertama then
                begin
                    if vOperand2.Caption = 'LIKE' then
                    vfilter3 := vfilter3 + wwDBGrid18.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                    else
                    vfilter3 := vfilter3 + wwDBGrid18.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                    vpertama := False;
                end
                else
                begin
                    if vOperand2.Caption = 'LIKE' then
                    vfilter3 := vfilter3 + ' or ' + wwDBGrid18.Columns[i].FieldName + ' like ''%' + ECari2.Text + '%'''
                    else
                    vfilter3 := vfilter3 + ' or ' + wwDBGrid18.Columns[i].FieldName + ' = ''' + ECari2.Text + '''';
                end;
                end;
            end;
            end
            else
            begin
            if vOperand2.Caption = 'LIKE' then
                vfilter3 := vfilter3 + dbcField2.Text + ' like ''%' + ECari2.Text + '%'''
            else
                vfilter3 := vfilter3 + dbcField2.Text + ' = ''' + ECari2.Text + '''';
            end;
            vfilter3 := vfilter3 + ')';
            if QBrowse_Det5.Active then
            vorder3 := ' order by ' + wwDBGrid18.Columns[0].FieldName
            else
            vorder3 := ' order by no_reg';
        end;

        QBrowse_Det5.DisableControls;
        QBrowse_Det5.Close;

        case RadioGroup20.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det5.SetVariable('myparam', vfilter3 + vorder3);
        QBrowse_Det5.SetVariable('loom',vloom);
        QBrowse_Det5.Open;
        QBrowse_Det5.EnableControls;

        QBSBK_TOT5.DisableControls;
        QBSBK_TOT5.Close;
        QBSBK_TOT5.SetVariable('myparam', vfilter3);
        QBSBK_TOT5.SetVariable('loom',vloom);
        QBSBK_TOT5.Open;
        QBSBK_TOT5.EnableControls;

        wwDBGrid18.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5QTY.AsFloat);

        wwDBGrid18.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5QTY3.AsFloat);
        wwDBGrid18.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BGRADE.AsFloat);
        wwDBGrid18.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5QTY2.AsFloat);

        wwDBGrid18.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5M_QTY3.AsFloat);
        wwDBGrid18.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5M_BGRADE.AsFloat);
        wwDBGrid18.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5M_QTY2.AsFloat);

        wwDBGrid18.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5P_BK.AsFloat);
        wwDBGrid18.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5P_BGRADE.AsFloat);
        wwDBGrid18.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5P_BS.AsFloat);

        wwDBGrid18.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5PM_BK.AsFloat);
        wwDBGrid18.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5PM_BGRADE.AsFloat);
        wwDBGrid18.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5PM_BS.AsFloat);

        wwDBGrid18.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LD.AsFloat);
        wwDBGrid18.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LT.AsFloat);
        wwDBGrid18.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LPT.AsFloat);
        wwDBGrid18.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LRG.AsFloat);
        wwDBGrid18.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5WL.AsFloat);
        wwDBGrid18.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5FLS.AsFloat);
        wwDBGrid18.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5FLP.AsFloat);
        wwDBGrid18.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5NEPS.AsFloat);
        wwDBGrid18.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5PP.AsFloat);
        wwDBGrid18.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5WP.AsFloat);
        wwDBGrid18.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5OJ.AsFloat);
        wwDBGrid18.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5CRT.AsFloat);
        wwDBGrid18.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BTS.AsFloat);
        wwDBGrid18.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BTB.AsFloat);
        wwDBGrid18.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BO.AsFloat);
        wwDBGrid18.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5SC.AsFloat);
        wwDBGrid18.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5SLL.AsFloat);
        wwDBGrid18.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5CK.AsFloat);
        wwDBGrid18.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5CAJ.AsFloat);
        wwDBGrid18.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KTR.AsFloat);
        wwDBGrid18.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5PDK.AsFloat);
        wwDBGrid18.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KP.AsFloat);
        wwDBGrid18.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KECOES_BG.AsFloat);

        wwDBGrid18.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5SBK.AsFloat);
        wwDBGrid18.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5UTS.AsFloat);
        wwDBGrid18.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KNB.AsFloat);
        wwDBGrid18.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5AFL.AsFloat);
        wwDBGrid18.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KECOES_BS.AsFloat);

        wwDBGrid18.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BS_FLS.AsFloat);
        wwDBGrid18.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BS_FLP.AsFloat);
        wwDBGrid18.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BS_BTS.AsFloat);
        wwDBGrid18.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BS_BTB.AsFloat);
        wwDBGrid18.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5BS_TK.AsFloat);

        wwDBGrid18.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KBR.AsFloat);
        wwDBGrid18.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LK.AsFloat);
        wwDBGrid18.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5LB.AsFloat);
        wwDBGrid18.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5P_LK.AsFloat);
        wwDBGrid18.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5P_LB.AsFloat);

        wwDBGrid18.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT5KNT.AsFloat);
    end;
    // Item Index 2 End-----------------------------------------------------------------------------------
end;

procedure TTerimaDariFinishingFrm.BtnExport2Click(Sender: TObject);
begin
    case RTgl.ItemIndex of
    0:
        begin
                if QBrowse_Det.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Produksi';
                    wwDBGrid3.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Produksi';
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
    1:
        begin
                if QBrowse_Det2.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Potong';
                    wwDBGrid10.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Potong';
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
    2:
        begin
                if QBrowse_Det5.Active then
                begin
                    DMFrm.SaveDialog1.DefaultExt:='XLK';
                    DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                    DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Proses';
                    wwDBGrid18.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Proses';
                    if DMFrm.SaveDialog1.Execute then
                    begin
                        try
                        wwDBGrid18.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                        wwDBGrid18.ExportOptions.Save;
                        ShowMessage('Simpan Sukses !');
                        except
                        ShowMessage('Simpan Gagal !');
                        end;
                    end;
                end
                else
                    ShowMessage('Tabel belum di-OPEN !');
        end;
end;   end;

procedure TTerimaDariFinishingFrm.TabSheet4Show(Sender: TObject);
begin
  vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',vTglAkhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  //QBrowse_Det.Open;
end;

procedure TTerimaDariFinishingFrm.wwDBGrid3TitleButtonClick(
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

procedure TTerimaDariFinishingFrm.TabSheet5Show(Sender: TObject);
begin
{azmi}
  QBrowse3.Close;
  QBrowse3.Open;
{azmi}
end;

procedure TTerimaDariFinishingFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDariFinishingFrm.QBrowseTotal2AfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner1.Caption:='Record ke '+IntToStr(QBrowseTotal2.RecNo)+' dari '+FormatFloat('#,#',QBrowseTotal2.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDariFinishingFrm.QBrowse3AfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner2.Caption:='Record ke '+IntToStr(QBrowse3.RecNo)+' dari '+FormatFloat('#,#',QBrowse3.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDariFinishingFrm.QBrowse_DetAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner3.Caption:='Record ke '+IntToStr(QBrowse_Det.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDariFinishingFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
 //If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDariFinishingFrm.wwDBGrid3Enter(Sender: TObject);
begin
  //If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDariFinishingFrm.TabSheet6Show(Sender: TObject);
begin
 //vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
 //QPerKonstruksi.Open
 end;

procedure TTerimaDariFinishingFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=trunc(EndOfTheMonth(VTglAwal3.Date));
end;

procedure TTerimaDariFinishingFrm.vTglAkhir3Change(Sender: TObject);
begin
 if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.BitBtn7Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
  vjam,vloom,vrgTanggal,vgrup: string;
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
QPerKonstruksi.Close;
QPerKonstruksi_Tot.Close;
abort;
end
else
  QPerKonstruksi.DisableControls;
  QPerKonstruksi.Close;

        case LokKons.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

  QPerKonstruksi.SetVariable('loom',vloom);
  QPerKonstruksi.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi.SetVariable('pakhir',vTglAkhir3.Date);  
  QPerKonstruksi.Open;

  QPerKonstruksi_Tot.Close;
  QPerKonstruksi_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi_Tot.SetVariable('loom',vloom);
  QPerKonstruksi_Tot.Open;
  QPerKonstruksi.EnableControls;

    wwDBGrid5.ColumnByName('JML_MESIN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_MESIN.AsFloat);

    wwDBGrid5.ColumnByName('JML_PROD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_PROD.AsFloat);
    wwDBGrid5.ColumnByName('PROD_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotPROD_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BK.AsFloat);
    wwDBGrid5.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBK_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BGRADE.AsFloat);
    wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBGRADE_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BS.AsFloat);
    wwDBGrid5.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBS_KODI.AsFloat);

  end;

procedure TTerimaDariFinishingFrm.BtnExport3Click(Sender: TObject);
begin
 if QPerKonstruksi.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet6.Caption+' Inspecting';
             wwDBGrid5.ExportOptions.TitleName:=''+TabSheet6.Caption+' Inspecting';
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

procedure TTerimaDariFinishingFrm.QPerKonstruksiAfterScroll(
  DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QPerKonstruksi.RecNo)+' dari '+FormatFloat('#,#',QPerKonstruksi.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.wwDBGrid5UpdateFooter(Sender: TObject);
begin
  QPerKonstruksi_Tot.Close;
  QPerKonstruksi_Tot.Open;
  
    wwDBGrid5.ColumnByName('JML_MESIN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_MESIN.AsFloat);

    wwDBGrid5.ColumnByName('JML_PROD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_PROD.AsFloat);
    wwDBGrid5.ColumnByName('PROD_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotPROD_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BK.AsFloat);
    wwDBGrid5.ColumnByName('BK_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBK_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BGRADE.AsFloat);
    wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBGRADE_KODI.AsFloat);

    wwDBGrid5.ColumnByName('JML_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotJML_BS.AsFloat);
    wwDBGrid5.ColumnByName('BS_KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotBS_KODI.AsFloat);
end;

procedure TTerimaDariFinishingFrm.wwDBGrid5TitleButtonClick(
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

procedure TTerimaDariFinishingFrm.wwDBGrid6UpdateFooter(Sender: TObject);
begin
  QTotCorak.Close;
  QTotCorak.Open;
  wwDBGrid6.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotCorakTOTAL.AsFloat);
end;

procedure TTerimaDariFinishingFrm.VtglAwal4Change(Sender: TObject);
begin
VTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TTerimaDariFinishingFrm.VTglAkhir4Change(Sender: TObject);
begin
 if VTglAwal4.Date>vTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.cbOtomatis4Click(Sender: TObject);
begin
if cbOtomatis4.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid6.Options:=wwDBGrid6.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid6.Options:=wwDBGrid6.Options-[dgAlwaysShowSelection];
  ECari4.SetFocus;
end;

procedure TTerimaDariFinishingFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
if (QPerCorak.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid6.FieldCount-1 do
    if UpperCase(wwDBGrid6.Columns[i].FieldName)<>'TANGGAL' then
      dbcField4.Items.Add(wwDBGrid6.Columns[i].FieldName);
end;

procedure TTerimaDariFinishingFrm.cbTanggal4Click(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.BitBtn8Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
QPerCorak.Open;
  vpertama:=True;
  if cbTanggal4.Checked then
    vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal4.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir4.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QPerCorak.FieldCount>=1) then
  begin
    if dbcField4.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid6.Selected.Count-1 do
      begin
        if (QPerCorak.FieldByName(wwDBGrid6.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid6.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid6.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid6.Columns[i].FieldName+' = '''+ECari4.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid6.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid6.Columns[i].FieldName+' = '''+ECari4.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField4.Text+' like ''%'+ECari4.Text+'%'''
         else
           vfilter:=vfilter+dbcField4.Text+' = '''+ECari4.Text+'''';
    vfilter:=vfilter+')';
    if QPerCorak.Active then
      vorder:=' order by '+wwDBGrid6.Columns[0].FieldName
      else
        vorder:=' order by konstruksi, corak';

  end;
  QPerCorak.DisableControls;
  QPerCorak.Close;
  QPerCorak.SetVariable('myparam',vfilter+'group by konstruksi, corak'+vorder);
  QPerCorak.Open;

  QTotCorak.DisableControls;
  QTotCorak.Close;
  QTotCorak.SetVariable('myparam',vfilter+vorder);
  QTotCorak.Open;
  QTotCorak.EnableControls;

  QTotCorak.EnableControls;
  wwDBGrid6.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotCorakTOTAL.AsFloat);
 { wwDBGrid3.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BK.AsFloat);
  wwDBGrid3.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BK.AsFloat);
  wwDBGrid3.ColumnByName('KODI_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS.AsFloat);
  wwDBGrid3.ColumnByName('PCS_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS.AsFloat);
  wwDBGrid3.ColumnByName('KODI_BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS_PARAH.AsFloat);
  wwDBGrid3.ColumnByName('PCS_BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS_PARAH.AsFloat);
   }


end;

procedure TTerimaDariFinishingFrm.BtnExport4Click(Sender: TObject);
begin
if QPerCorak.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=Caption;
             wwDBGrid6.ExportOptions.TitleName:=Caption;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid6.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid6.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TTerimaDariFinishingFrm.wwDBGrid6TitleButtonClick(
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

procedure TTerimaDariFinishingFrm.look_opEnter(Sender: TObject);
begin
DMFrm.QOp_Inspect.Open;
end;

procedure TTerimaDariFinishingFrm.BitBtn9Click(Sender: TObject);
var
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
QPerOperator.Close;
QPerOperator_Tot.Close;
abort;
end
else
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

procedure TTerimaDariFinishingFrm.TabSheet8Show(Sender: TObject);
begin
//QPerKonstruksi.Open;
//QPerOperator.Open;
//QPerOperator_Tot.Open;
end;

procedure TTerimaDariFinishingFrm.BitBtn10Click(Sender: TObject);
begin
if QPerOperator.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet8.Caption+' Inspecting';
             wwDBGrid7.ExportOptions.TitleName:=''+TabSheet8.Caption+' Inspecting';
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

procedure TTerimaDariFinishingFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TTerimaDariFinishingFrm.vTglAwal6Change(Sender: TObject);
begin
  vTglAkhir6.Date:=trunc(EndOfTheMonth(vTglAwal6.Date));
end;

procedure TTerimaDariFinishingFrm.vTglAkhir6Change(Sender: TObject);
begin
 if vTglAwal6.Date>vTglAkhir6.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir6.Date:=vTglAwal6.Date;
  end;
end;




procedure TTerimaDariFinishingFrm.dbcField6Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBs_Grup.Active) and (dbcField6.Items.Count=1) then
  for i:=0 to wwDBGrid8.FieldCount-1 do
    if UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TANGGAL' then
      dbcField6.Items.Add(wwDBGrid8.Columns[i].FieldName);
end;

procedure TTerimaDariFinishingFrm.cbOtomatis6Click(Sender: TObject);
begin
  if cbOtomatis6.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid8.Options:=wwDBGrid8.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid8.Options:=wwDBGrid8.Options-[dgAlwaysShowSelection];
  ECari6.SetFocus;
end;

procedure TTerimaDariFinishingFrm.vOperand6Click(Sender: TObject);
begin
  if vOperand6.Caption='LIKE' then
    vOperand6.Caption:='='
    else
      vOperand6.Caption:='LIKE';
end;

procedure TTerimaDariFinishingFrm.cbTanggal6Click(Sender: TObject);
begin
  if cbTanggal6.Checked then
  begin
    vTglAwal6.Enabled:=cbTanggal6.Checked;
    vTglAkhir6.Enabled:=cbTanggal6.Checked;
    vTglAwal6.SetFocus;
  end
  else
    ECari6.SetFocus;
end;

procedure TTerimaDariFinishingFrm.BitBtn11Click(Sender: TObject);
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
QBs_Grup.Close;
QBs_Grup_Tot.Close;
abort;
end
else
  QBs_Grup.Open;
  vpertama:=True;
  if cbTanggal6.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',vTglAwal6.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',vTglAkhir6.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBs_Grup.FieldCount>=1) then
  begin
    if dbcField6.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid8.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBs_Grup.FieldByName(wwDBGrid8.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid8.Columns[i].FieldName)<>'GRUP') then
        begin
          if vpertama then
            begin
              if vOperand6.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari6.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' = '''+ECari6.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand6.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari6.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' = '''+ECari6.Text+''''
        end;
      end;
    end
    else
      if vOperand6.Caption='LIKE' then
         vfilter:=vfilter+dbcField6.Text+' like ''%'+ECari6.Text+'%'''
         else
           vfilter:=vfilter+dbcField6.Text+' = '''+ECari6.Text+'''';
    vfilter:=vfilter+')';
    if QBs_Grup.Active then
      vorder:=' order by '+wwDBGrid8.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  QBs_Grup.DisableControls;
  QBs_Grup.Close;
  QBs_Grup.SetVariable('myparam',vfilter+vorder);
  QBs_Grup.Open;

  QBs_Grup_Tot.Close;
  QBs_Grup_Tot.SetVariable('myparam',vfilter);
  QBs_Grup_Tot.Open;
  QBs_Grup.EnableControls;

  wwDBGrid8.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotQTY.AsFloat);
  wwDBGrid8.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotBGRADE.AsFloat);
  //wwDBGrid8.ColumnByName('PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotPARAH.AsFloat);
  wwDBGrid8.ColumnByName('LD').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLD.AsFloat);
  wwDBGrid8.ColumnByName('LB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLB.AsFloat);
  wwDBGrid8.ColumnByName('LT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLT.AsFloat);
  wwDBGrid8.ColumnByName('LK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLK.AsFloat);
  wwDBGrid8.ColumnByName('FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotFLS.AsFloat);
  wwDBGrid8.ColumnByName('FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotFLP.AsFloat);
  wwDBGrid8.ColumnByName('LPT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLPT.AsFloat);
  wwDBGrid8.ColumnByName('LRG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotLRG.AsFloat);
  wwDBGrid8.ColumnByName('WL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotWL.AsFloat);
  wwDBGrid8.ColumnByName('CK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotCK.AsFloat);
  wwDBGrid8.ColumnByName('OJ').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotOJ.AsFloat);
  wwDBGrid8.ColumnByName('CRT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotCRT.AsFloat);
  wwDBGrid8.ColumnByName('CAJ').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotCAJ.AsFloat);
  wwDBGrid8.ColumnByName('PD').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotPD.AsFloat);
  wwDBGrid8.ColumnByName('PKP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotPKP.AsFloat);
  wwDBGrid8.ColumnByName('BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotBTS.AsFloat);
  wwDBGrid8.ColumnByName('BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotBTB.AsFloat);
  wwDBGrid8.ColumnByName('WP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotWP.AsFloat);
  wwDBGrid8.ColumnByName('SC').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotSC.AsFloat);
  wwDBGrid8.ColumnByName('KP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotKP.AsFloat);
  wwDBGrid8.ColumnByName('BO').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotBO.AsFloat);
  wwDBGrid8.ColumnByName('KTR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotKTR.AsFloat);
  wwDBGrid8.ColumnByName('SLL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotSLL.AsFloat);
  wwDBGrid8.ColumnByName('SBK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotSBK.AsFloat);
  wwDBGrid8.ColumnByName('ANR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotANR.AsFloat);
  wwDBGrid8.ColumnByName('UTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotUTS.AsFloat);
  wwDBGrid8.ColumnByName('KNB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotKNB.AsFloat);
  wwDBGrid8.ColumnByName('AFL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBs_Grup_TotAFL.AsFloat);
end;

procedure TTerimaDariFinishingFrm.wwDBGrid8TitleButtonClick(
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

procedure TTerimaDariFinishingFrm.QBs_GrupORIAfterScroll(DataSet: TDataSet);
begin
  Label22.Caption:='Record ke '+IntToStr(QBs_Grup.RecNo)+' dari '+FormatFloat('#,#',QBs_Grup.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.BitBtn12Click(Sender: TObject);
begin
if QBs_Grup.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet9.Caption+' Inspecting';
             wwDBGrid8.ExportOptions.TitleName:=''+TabSheet9.Caption+' Inspecting';
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

procedure TTerimaDariFinishingFrm.VTglAkhir7Change(Sender: TObject);
begin
 if VTglAwal7.Date>VTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.VTglAwal7Change(Sender: TObject);
begin
  VTglAkhir7.Date:=trunc(EndOfTheMonth(VTglAwal7.Date));
end;

procedure TTerimaDariFinishingFrm.BitBtn15Click(Sender: TObject);
var
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
QProcGrupDetail.Close;
QBs_GrupDetail.Close;
abort;
end
else
  QProcGrupDetail.Close;
  QProcGrupDetail.SetVariable('pawal',VTglAwal7.Date);
  QProcGrupDetail.SetVariable('pakhir',VTglAkhir7.Date);
  QProcGrupDetail.Execute;

  QBs_GrupDetail.DisableControls;
  QBs_GrupDetail.Close;
  //ShowMessage('QBs_GrupDetail1');
  //ShowMessage(vfilter+vorder);
  //QBs_GrupDetail.SetVariable('myparam',vfilter+vorder);
  QBs_GrupDetail.Open;
  //ShowMessage('QBs_GrupDetail2');
  //QHasil_Total.Close;
 // QHasil_Total.SetVariable('myparam',vfilter);
 // QHasil_Total.Open;
  QBs_GrupDetail.EnableControls;
end;

procedure TTerimaDariFinishingFrm.TabSheet10Show(Sender: TObject);
begin
//QBs_GrupDetail.Open;
//QBrowse.Open;
end;

procedure TTerimaDariFinishingFrm.TabSheet9Show(Sender: TObject);
begin
//QBs_Grup.Open;
end;

procedure TTerimaDariFinishingFrm.BitBtn13Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
 QBs_GrupDetail.Open;
  vpertama:=True;
 { if cbTanggal7.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal7.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir7.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else   }
    vfilter:=' where (';
  if (QBs_GrupDetail.FieldCount>=1) then
  begin
    if dbcField7.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid9.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBs_GrupDetail.FieldByName(wwDBGrid9.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid9.Columns[i].FieldName)<>'BGRADE') then
        begin
          if vpertama then
            begin
              if vOperand7.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid9.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid9.Columns[i].FieldName+' = '''+ECari7.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand7.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid9.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid9.Columns[i].FieldName+' = '''+ECari7.Text+''''
        end;
      end;
    end
    else
      if vOperand7.Caption='LIKE' then
         vfilter:=vfilter+dbcField7.Text+' like ''%'+ECari7.Text+'%'''
         else
           vfilter:=vfilter+dbcField7.Text+' = '''+ECari7.Text+'''';
    vfilter:=vfilter+')';
    if QBs_GrupDetail.Active then
      vorder:=' order by '+wwDBGrid9.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  QBs_GrupDetail.DisableControls;
  QBs_GrupDetail.Close;
  QBs_GrupDetail.SetVariable('myparam',vfilter+vorder);
  QBs_GrupDetail.Open;

  {QBs_Grup_Tot.Close;
  QBs_Grup_Tot.SetVariable('myparam',vfilter);
  QBs_Grup_Tot.Open;  }
  QBs_GrupDetail.EnableControls;
end;

procedure TTerimaDariFinishingFrm.cbOtomatis7Click(Sender: TObject);
begin
  if cbOtomatis7.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid9.Options:=wwDBGrid9.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid9.Options:=wwDBGrid9.Options-[dgAlwaysShowSelection];
  ECari7.SetFocus;
end;

procedure TTerimaDariFinishingFrm.dbcField7Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBs_GrupDetail.Active) and (dbcField7.Items.Count=1) then
  for i:=0 to wwDBGrid9.FieldCount-1 do
    if UpperCase(wwDBGrid9.Columns[i].FieldName)<>'BGRADE' then
      dbcField7.Items.Add(wwDBGrid9.Columns[i].FieldName);
end;

procedure TTerimaDariFinishingFrm.vOperand7Click(Sender: TObject);
begin
  if vOperand7.Caption='LIKE' then
    vOperand7.Caption:='='
    else
      vOperand7.Caption:='LIKE';
end;

procedure TTerimaDariFinishingFrm.BitBtn14Click(Sender: TObject);
begin
if QBs_GrupDetail.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet10.Caption+' Inspecting';
             wwDBGrid9.ExportOptions.TitleName:=''+TabSheet10.Caption+' Inspecting';
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

procedure TTerimaDariFinishingFrm.cbTanggal7Click(Sender: TObject);
begin
  if cbTanggal7.Checked then
  begin
    VTglAwal7.Enabled:=cbTanggal7.Checked;
    VTglAkhir7.Enabled:=cbTanggal7.Checked;
    VTglAwal7.SetFocus;
  end
  else
    ECari7.SetFocus;
end;

procedure TTerimaDariFinishingFrm.BitBtn16Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep2.Preview
   //else
     //QuickRep1.Print;
end;

procedure TTerimaDariFinishingFrm.RTglClick(Sender: TObject);
begin
if RTgl.ItemIndex=0 then
begin
wwDBGrid3.BringToFront
end
else if RTgl.ItemIndex=1 then
begin
wwDBGrid10.BringToFront;
end
else if RTgl.ItemIndex=2 then
begin
wwDBGrid18.BringToFront;
end;
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det2_oriAfterScroll(
  DataSet: TDataSet);
begin
LabelBanner3.Caption:='Record ke '+IntToStr(QBrowse_Det2.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det2.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det2AfterScroll(
  DataSet: TDataSet);
begin
    LabelBanner3.Caption:='Record ke '+IntToStr(QBrowse_Det2.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det2.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.wwDBGrid10TitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder2=' ASC' then
              vorder2:=' DESC'
          else
              vorder2:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder2);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TTerimaDariFinishingFrm.QBs_GrupAfterScroll(DataSet: TDataSet);
begin
  Label22.Caption:='Record ke '+IntToStr(QBs_Grup.RecNo)+' dari '+FormatFloat('#,#',QBs_Grup.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.wwDBGrid9TitleButtonClick(
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

procedure TTerimaDariFinishingFrm.QBs_GrupDetailAfterScroll(
  DataSet: TDataSet);
begin
    Label24.Caption:='Record ke '+IntToStr(QBs_GrupDetail.RecNo)+' dari '+FormatFloat('#,#',QBs_GrupDetail.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.wwDBLookupComboDlg2CloseUp(
  Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TTerimaDariFinishingFrm.wwDBLookupComboDlg2Enter(
  Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TTerimaDariFinishingFrm.VTglAwal5Change(Sender: TObject);
begin
VTglAkhir5.Date:=trunc(EndOfTheMonth(VTglAwal5.Date));
end;

procedure TTerimaDariFinishingFrm.VTglAkhir5Change(Sender: TObject);
begin
if VTglAwal5.Date>VTglAkhir5.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir5.Date:=VTglAwal5.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.BitBtn21Click(Sender: TObject);
var
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
QPerMesin.Close;
QPerMesin_Tot.Close;
abort;
end
else
  QPerMesin.DisableControls;
  QPerMesin.Close;
  QPerMesin.SetVariable('pawal',VTglAwal21.Date);
  QPerMesin.SetVariable('pakhir',VTglAkhir21.Date);
  QPerMesin.Open;
  QPerMesin_Tot.Close;
  QPerMesin_Tot.SetVariable('pawal',VTglAwal21.Date);
  QPerMesin_Tot.SetVariable('pakhir',VTglAkhir21.Date);
  QPerMesin_Tot.Open;
  QPerMesin.EnableControls;
  wwDBGrid11.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMesin_TotJML_POTONG.AsFloat);
  wwDBGrid11.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMesin_TotTOTAL.AsFloat);
  //wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',Qkon_opening_TotPOTONG.AsFloat);

end;

procedure TTerimaDariFinishingFrm.QPerMesinAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QPerMesin.RecNo)+' dari '+FormatFloat('#,#',QPerMesin.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.QPerMesin_TotAfterScroll(
  DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QPerMesin.RecNo)+' dari '+FormatFloat('#,#',QPerMesin.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.VTglAwal21Change(Sender: TObject);
begin
VTglAkhir21.Date:=trunc(EndOfTheMonth(VTglAwal21.Date));
end;

procedure TTerimaDariFinishingFrm.VTglAkhir21Change(Sender: TObject);
begin
if VTglAwal21.Date>VTglAkhir21.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir21.Date:=VTglAwal21.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.Look_KPClick(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  //DMFrm.QKonstruksi_Kp.Open;
end;

procedure TTerimaDariFinishingFrm.Look_KPCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectSUB_KELOMPOK.AsString;
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKP_Hasil_InspectKP.AsString;
end;

procedure TTerimaDariFinishingFrm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  //DMFrm.QKonstruksi_Kp.Open;
end;

procedure TTerimaDariFinishingFrm.BtnFindClick(Sender: TObject);
begin
    if RTgl.ItemIndex=0 then
    begin
        if not QBrowse_det.QBEMode then
        begin
            wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det.QBEMode:=TRUE;
        end
        else
            QBrowse_det.ClearQBE;
    end

    else if RTgl.ItemIndex=1 then
    begin
        if not QBrowse_det2.QBEMode then
        begin
            wwDBGrid10.Options:=wwDBGrid10.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det2.QBEMode:=TRUE;
        end
        else
            QBrowse_det2.ClearQBE;
    end

    else if RTgl.ItemIndex=2 then
    begin
        if not QBrowse_det5.QBEMode then
        begin
            wwDBGrid18.Options:=wwDBGrid18.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det5.QBEMode:=TRUE;
        end
        else
            QBrowse_det5.ClearQBE;
    end;
end;

procedure TTerimaDariFinishingFrm.BtnOk2Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47, vt48, vt49, vt50,
    vt51, vt52: real;

begin
    if RTgl.ItemIndex=0 then
    begin
        if QBrowse_det.QBEMode then
            begin
                QBrowse_det.ExecuteQBE;
                wwDBGrid3.Options:=wwDBGrid3.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini
                vt1:=0;
                while not QBrowse_det.Eof do
                    begin
                        vt1 := vt1 + QBrowse_detQTY.AsFloat;

                        vt2 := vt2 + QBrowse_detQTY3.AsFloat;
                        vt3 := vt3 + QBrowse_detBGRADE.AsFloat;
                        vt4 := vt4 + QBrowse_detQTY2.AsFloat;

                        vt5 := vt5 + QBrowse_detM_QTY3.AsFloat;
                        vt6 := vt6 + QBrowse_detM_BGRADE.AsFloat;
                        vt7 := vt7 + QBrowse_detM_QTY2.AsFloat;

                        vt8 := vt8 + QBrowse_detP_BK.AsFloat;
                        vt9 := vt9 + QBrowse_detP_BGRADE.AsFloat;
                        vt10 := vt10 + QBrowse_detP_BS.AsFloat;

                        vt11 := vt11 + QBrowse_detPM_BK.AsFloat;
                        vt12 := vt12 + QBrowse_detPM_BGRADE.AsFloat;
                        vt13 := vt13 + QBrowse_detPM_BS.AsFloat;

                        vt14 := vt14 + QBrowse_detLD.AsFloat;
                        vt15 := vt15 + QBrowse_detLT.AsFloat;
                        vt16 := vt16 + QBrowse_detLPT.AsFloat;
                        vt17 := vt17 + QBrowse_detLRG.AsFloat;
                        vt18 := vt18 + QBrowse_detWL.AsFloat;
                        vt19 := vt19 + QBrowse_detFLS.AsFloat;
                        vt20 := vt20 + QBrowse_detFLP.AsFloat;
                        vt21 := vt21 + QBrowse_detNEPS.AsFloat;
                        vt22 := vt22 + QBrowse_detPP.AsFloat;
                        vt23 := vt23 + QBrowse_detWP.AsFloat;
                        vt24 := vt24 + QBrowse_detOJ.AsFloat;
                        vt25 := vt25 + QBrowse_detCRT.AsFloat;
                        vt26 := vt26 + QBrowse_detBTS.AsFloat;
                        vt27 := vt27 + QBrowse_detBTB.AsFloat;
                        vt28 := vt28 + QBrowse_detBO.AsFloat;
                        vt29 := vt29 + QBrowse_detSC.AsFloat;
                        vt30 := vt30 + QBrowse_detSLL.AsFloat;

                        vt31 := vt31 + QBrowse_detCK.AsFloat;
                        vt32 := vt32 + QBrowse_detCAJ.AsFloat;
                        vt33 := vt33 + QBrowse_detKTR.AsFloat;
                        vt34 := vt34 + QBrowse_detPDK.AsFloat;
                        vt35 := vt35 + QBrowse_detKP.AsFloat;
                        vt36 := vt36 + QBrowse_detSBK.AsFloat;
                        vt37 := vt37 + QBrowse_detUTS.AsFloat;
                        vt38 := vt38 + QBrowse_detKNB.AsFloat;
                        vt39 := vt39 + QBrowse_detAFL.AsFloat;

                        vt40 := vt40 + QBrowse_detBS_FLS.AsFloat;
                        vt41 := vt41 + QBrowse_detBS_FLP.AsFloat;
                        vt42 := vt42 + QBrowse_detBS_BTS.AsFloat;
                        vt43 := vt43 + QBrowse_detBS_BTB.AsFloat;
                        vt44 := vt44 + QBrowse_detBS_TK.AsFloat;

                        vt45 := vt45 + QBrowse_detKECOES_BG.AsFloat;
                        vt46 := vt46 + QBrowse_detKECOES_BS.AsFloat;

                        vt47 := vt47 + QBrowse_detKBR.AsFloat;
                        vt48 := vt48 + QBrowse_detLK.AsFloat;
                        vt49 := vt49 + QBrowse_detLB.AsFloat;
                        vt50 := vt50 + QBrowse_detP_LK.AsFloat;
                        vt51 := vt51 + QBrowse_detP_LB.AsFloat;

                        vt52 := vt52 + QBrowse_detKNT.AsFloat;

                        QBrowse_det.Next;
                    end;
                wwDBGrid3.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid3.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid3.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid3.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt5);
                wwDBGrid3.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
                wwDBGrid3.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);

                wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
                wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
                wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);

                wwDBGrid3.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
                wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
                wwDBGrid3.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);

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

                wwDBGrid3.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
                wwDBGrid3.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);

                wwDBGrid3.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
                wwDBGrid3.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid3.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid3.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid3.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid3.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);
                //disini
            end
    end

    else if RTgl.ItemIndex=1 then
    begin
        QBrowse_det2.ExecuteQBE;
        wwDBGrid10.Options:=wwDBGrid10.Options+[dgRowSelect,dgAlwaysShowSelection];
        //disini
        vt1:=0;
        while not QBrowse_det2.Eof do
            begin
                vt1 := vt1 + QBrowse_det2QTY.AsFloat;

                vt2 := vt2 + QBrowse_det2QTY3.AsFloat;
                vt3 := vt3 + QBrowse_det2BGRADE.AsFloat;
                vt4 := vt4 + QBrowse_det2QTY2.AsFloat;

                vt5 := vt5 + QBrowse_det2M_QTY3.AsFloat;
                vt6 := vt6 + QBrowse_det2M_BGRADE.AsFloat;
                vt7 := vt7 + QBrowse_det2M_QTY2.AsFloat;

                vt8 := vt8 + QBrowse_det2P_BK.AsFloat;
                vt9 := vt9 + QBrowse_det2P_BGRADE.AsFloat;
                vt10 := vt10 + QBrowse_det2P_BS.AsFloat;

                vt11 := vt11 + QBrowse_det2PM_BK.AsFloat;
                vt12 := vt12 + QBrowse_det2PM_BGRADE.AsFloat;
                vt13 := vt13 + QBrowse_det2PM_BS.AsFloat;

                vt14 := vt14 + QBrowse_det2LD.AsFloat;
                vt15 := vt15 + QBrowse_det2LT.AsFloat;
                vt16 := vt16 + QBrowse_det2LPT.AsFloat;
                vt17 := vt17 + QBrowse_det2LRG.AsFloat;
                vt18 := vt18 + QBrowse_det2WL.AsFloat;
                vt19 := vt19 + QBrowse_det2FLS.AsFloat;
                vt20 := vt20 + QBrowse_det2FLP.AsFloat;
                vt21 := vt21 + QBrowse_det2NEPS.AsFloat;
                vt22 := vt22 + QBrowse_det2PP.AsFloat;
                vt23 := vt23 + QBrowse_det2WP.AsFloat;
                vt24 := vt24 + QBrowse_det2OJ.AsFloat;
                vt25 := vt25 + QBrowse_det2CRT.AsFloat;
                vt26 := vt26 + QBrowse_det2BTS.AsFloat;
                vt27 := vt27 + QBrowse_det2BTB.AsFloat;
                vt28 := vt28 + QBrowse_det2BO.AsFloat;
                vt29 := vt29 + QBrowse_det2SC.AsFloat;
                vt30 := vt30 + QBrowse_det2SLL.AsFloat;
                vt31 := vt31 + QBrowse_det2CK.AsFloat;
                vt32 := vt32 + QBrowse_det2CAJ.AsFloat;
                vt33 := vt33 + QBrowse_det2KTR.AsFloat;
                vt34 := vt34 + QBrowse_det2PDK.AsFloat;
                vt35 := vt35 + QBrowse_det2KP.AsFloat;
                vt36 := vt36 + QBrowse_det2SBK.AsFloat;
                vt37 := vt37 + QBrowse_det2UTS.AsFloat;
                vt38 := vt38 + QBrowse_det2KNB.AsFloat;
                vt39 := vt39 + QBrowse_det2AFL.AsFloat;
                vt40 := vt40 + QBrowse_det2BS_FLS.AsFloat;
                vt41 := vt41 + QBrowse_det2BS_FLP.AsFloat;
                vt42 := vt42 + QBrowse_det2BS_BTS.AsFloat;
                vt43 := vt43 + QBrowse_det2BS_BTB.AsFloat;
                vt44 := vt44 + QBrowse_det2BS_TK.AsFloat;

                vt45 := vt45 + QBrowse_det2KECOES_BG.AsFloat;
                vt46 := vt46 + QBrowse_det2KECOES_BS.AsFloat;

                vt47 := vt47 + QBrowse_det2KBR.AsFloat;
                vt48 := vt48 + QBrowse_det2LK.AsFloat;
                vt49 := vt49 + QBrowse_det2LB.AsFloat;
                vt50 := vt50 + QBrowse_det2P_LK.AsFloat;
                vt51 := vt51 + QBrowse_det2P_LB.AsFloat;

                vt52 := vt52 + QBrowse_det2KNT.AsFloat;

                QBrowse_det2.Next;
            end;
        wwDBGrid10.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid10.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
        wwDBGrid10.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid10.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        wwDBGrid10.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt5);
        wwDBGrid10.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
        wwDBGrid10.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);

        wwDBGrid10.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
        wwDBGrid10.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
        wwDBGrid10.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);

        wwDBGrid10.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
        wwDBGrid10.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
        wwDBGrid10.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);

        wwDBGrid10.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);
        wwDBGrid10.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
        wwDBGrid10.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
        wwDBGrid10.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);
        wwDBGrid10.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
        wwDBGrid10.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
        wwDBGrid10.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
        wwDBGrid10.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);
        wwDBGrid10.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);
        wwDBGrid10.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt23);
        wwDBGrid10.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt24);
        wwDBGrid10.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt25);
        wwDBGrid10.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt26);
        wwDBGrid10.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt27);
        wwDBGrid10.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt28);
        wwDBGrid10.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt29);
        wwDBGrid10.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt30);
        wwDBGrid10.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt31);
        wwDBGrid10.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt32);
        wwDBGrid10.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt33);
        wwDBGrid10.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt34);
        wwDBGrid10.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt35);
        wwDBGrid10.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt36);
        wwDBGrid10.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt37);
        wwDBGrid10.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt38);
        wwDBGrid10.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt39);
        wwDBGrid10.ColumnByName('BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt40);
        wwDBGrid10.ColumnByName('BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt41);
        wwDBGrid10.ColumnByName('BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt42);
        wwDBGrid10.ColumnByName('BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt43);
        wwDBGrid10.ColumnByName('BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt44);

        wwDBGrid10.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
        wwDBGrid10.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);

        wwDBGrid10.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
        wwDBGrid10.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
        wwDBGrid10.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
        wwDBGrid10.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
        wwDBGrid10.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

        wwDBGrid10.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);

        //disini

    end

    else if RTgl.ItemIndex=2 then
    begin
        QBrowse_det5.ExecuteQBE;
        wwDBGrid18.Options:=wwDBGrid18.Options+[dgRowSelect,dgAlwaysShowSelection];
        //disini
        vt1:=0;
        while not QBrowse_det5.Eof do
            begin
                vt1 := vt1 + QBrowse_det5QTY.AsFloat;

                vt2 := vt2 + QBrowse_det5QTY3.AsFloat;
                vt3 := vt3 + QBrowse_det5BGRADE.AsFloat;
                vt4 := vt4 + QBrowse_det5QTY2.AsFloat;

                vt5 := vt5 + QBrowse_det5M_QTY3.AsFloat;
                vt6 := vt6 + QBrowse_det5M_BGRADE.AsFloat;
                vt7 := vt7 + QBrowse_det5M_QTY2.AsFloat;

                vt8 := vt8 + QBrowse_det5P_BK.AsFloat;
                vt9 := vt9 + QBrowse_det5P_BGRADE.AsFloat;
                vt10 := vt10 + QBrowse_det5P_BS.AsFloat;

                vt11 := vt11 + QBrowse_det5PM_BK.AsFloat;
                vt12 := vt12 + QBrowse_det5PM_BGRADE.AsFloat;
                vt13 := vt13 + QBrowse_det5PM_BS.AsFloat;

                vt14 := vt14 + QBrowse_det5LD.AsFloat;
                vt15 := vt15 + QBrowse_det5LT.AsFloat;
                vt16 := vt16 + QBrowse_det5LPT.AsFloat;
                vt17 := vt17 + QBrowse_det5LRG.AsFloat;
                vt18 := vt18 + QBrowse_det5WL.AsFloat;
                vt19 := vt19 + QBrowse_det5FLS.AsFloat;
                vt20 := vt20 + QBrowse_det5FLP.AsFloat;
                vt21 := vt21 + QBrowse_det5NEPS.AsFloat;
                vt22 := vt22 + QBrowse_det5PP.AsFloat;
                vt23 := vt23 + QBrowse_det5WP.AsFloat;
                vt24 := vt24 + QBrowse_det5OJ.AsFloat;
                vt25 := vt25 + QBrowse_det5CRT.AsFloat;
                vt26 := vt26 + QBrowse_det5BTS.AsFloat;
                vt27 := vt27 + QBrowse_det5BTB.AsFloat;
                vt28 := vt28 + QBrowse_det5BO.AsFloat;
                vt29 := vt29 + QBrowse_det5SC.AsFloat;
                vt30 := vt30 + QBrowse_det5SLL.AsFloat;
                vt31 := vt31 + QBrowse_det5CK.AsFloat;
                vt32 := vt32 + QBrowse_det5CAJ.AsFloat;
                vt33 := vt33 + QBrowse_det5KTR.AsFloat;
                vt34 := vt34 + QBrowse_det5PDK.AsFloat;
                vt35 := vt35 + QBrowse_det5KP.AsFloat;
                vt36 := vt36 + QBrowse_det5SBK.AsFloat;
                vt37 := vt37 + QBrowse_det5UTS.AsFloat;
                vt38 := vt38 + QBrowse_det5KNB.AsFloat;
                vt39 := vt39 + QBrowse_det5AFL.AsFloat;
                vt40 := vt40 + QBrowse_det5BS_FLS.AsFloat;
                vt41 := vt41 + QBrowse_det5BS_FLP.AsFloat;
                vt42 := vt42 + QBrowse_det5BS_BTS.AsFloat;
                vt43 := vt43 + QBrowse_det5BS_BTB.AsFloat;
                vt44 := vt44 + QBrowse_det5BS_TK.AsFloat;

                vt45 := vt45 + QBrowse_det5KECOES_BG.AsFloat;
                vt46 := vt46 + QBrowse_det5KECOES_BS.AsFloat;

                vt47 := vt47 + QBrowse_det5KBR.AsFloat;
                vt48 := vt48 + QBrowse_det5LK.AsFloat;
                vt49 := vt49 + QBrowse_det5LB.AsFloat;
                vt50 := vt50 + QBrowse_det5P_LK.AsFloat;
                vt51 := vt51 + QBrowse_det5P_LB.AsFloat;

                vt52 := vt52 + QBrowse_det5KNT.AsFloat;

                QBrowse_det5.Next;
            end;
        wwDBGrid18.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid18.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
        wwDBGrid18.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid18.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        wwDBGrid18.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt5);
        wwDBGrid18.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt6);
        wwDBGrid18.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt7);

        wwDBGrid18.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt8);
        wwDBGrid18.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt9);
        wwDBGrid18.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt10);

        wwDBGrid18.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt11);
        wwDBGrid18.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt12);
        wwDBGrid18.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt13);

        wwDBGrid18.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);
        wwDBGrid18.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
        wwDBGrid18.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
        wwDBGrid18.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);
        wwDBGrid18.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
        wwDBGrid18.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
        wwDBGrid18.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
        wwDBGrid18.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);
        wwDBGrid18.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);
        wwDBGrid18.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt23);
        wwDBGrid18.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt24);
        wwDBGrid18.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt25);
        wwDBGrid18.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt26);
        wwDBGrid18.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt27);
        wwDBGrid18.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt28);
        wwDBGrid18.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt29);
        wwDBGrid18.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt30);
        wwDBGrid18.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt31);
        wwDBGrid18.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt32);
        wwDBGrid18.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt33);
        wwDBGrid18.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt34);
        wwDBGrid18.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt35);
        wwDBGrid18.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt36);
        wwDBGrid18.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt37);
        wwDBGrid18.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt38);
        wwDBGrid18.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt39);
        wwDBGrid18.ColumnByName('BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt40);
        wwDBGrid18.ColumnByName('BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt41);
        wwDBGrid18.ColumnByName('BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt42);
        wwDBGrid18.ColumnByName('BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt43);
        wwDBGrid18.ColumnByName('BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt44);

        wwDBGrid18.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
        wwDBGrid18.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);

        wwDBGrid18.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
        wwDBGrid18.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
        wwDBGrid18.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
        wwDBGrid18.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
        wwDBGrid18.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

        wwDBGrid18.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);

        //disini

    end;
end;

procedure TTerimaDariFinishingFrm.vTglAwal8Change(Sender: TObject);
begin
vTglAkhir8.Date:=trunc(EndOfTheMonth(vTglAwal8.Date));
end;

procedure TTerimaDariFinishingFrm.vTglAkhir8Change(Sender: TObject);
begin
  if vTglAwal8.Date>vTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir8.Date:=vTglAwal8.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.cbOtomatis8Click(Sender: TObject);
begin
if RTgl8.ItemIndex = 0 then
begin
  if cbOtomatis8.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid12.Options:=wwDBGrid12.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid12.Options:=wwDBGrid12.Options-[dgAlwaysShowSelection];
  ECari8.SetFocus;
end
else
begin
    if cbOtomatis8.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid13.Options:=wwDBGrid13.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid13.Options:=wwDBGrid13.Options-[dgAlwaysShowSelection];
  ECari8.SetFocus;
end;
end;

procedure TTerimaDariFinishingFrm.dbcField8Enter(Sender: TObject);
var
  i : Word;
begin
if RTgl8.ItemIndex = 0 then
begin
  if (QBrowse_Det3.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid12.FieldCount-1 do
    if UpperCase(wwDBGrid12.Columns[i].FieldName)<>'TANGGAL' then
      dbcField8.Items.Add(wwDBGrid12.Columns[i].FieldName);
end
else
begin
if (QBrowse_Det4.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid13.FieldCount-1 do
    //if UpperCase(wwDBGrid10.Columns[i].FieldName)<>'TANGGAL' then
    if UpperCase(wwDBGrid13.Columns[i].FieldName)<>'TGL_PTG' then
      dbcField8.Items.Add(wwDBGrid13.Columns[i].FieldName);
end;
end;

procedure TTerimaDariFinishingFrm.vOperand8Click(Sender: TObject);
begin
if vOperand8.Caption='LIKE' then
    vOperand8.Caption:='='
    else
      vOperand8.Caption:='LIKE';
end;

procedure TTerimaDariFinishingFrm.cbTanggal8Click(Sender: TObject);
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

procedure TTerimaDariFinishingFrm.RTgl8Click(Sender: TObject);
begin
    if RTgl8.ItemIndex=0 then
    begin
        wwDBGrid13.BringToFront
    end

    else if RTgl8.ItemIndex=1 then
    begin
        wwDBGrid12.BringToFront;
    end

    else if RTgl8.ItemIndex=2 then
    begin
        wwDBGrid19.BringToFront;
    end
end;

procedure TTerimaDariFinishingFrm.BtnFind8Click(Sender: TObject);
begin
    if RTgl8.ItemIndex=0 then
    begin
        if not QBrowse_det3.QBEMode then
        begin
            wwDBGrid12.Options:=wwDBGrid12.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det3.QBEMode:=TRUE;
        end
        else
            QBrowse_det3.ClearQBE;
    end

    else if RTgl8.ItemIndex=1 then
    begin
        if not QBrowse_det4.QBEMode then
        begin
            wwDBGrid13.Options:=wwDBGrid13.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det4.QBEMode:=TRUE;
        end
        else
            QBrowse_det4.ClearQBE;
    end

    else if RTgl8.ItemIndex=2 then
    begin
        if not QBrowse_det6.QBEMode then
        begin
            wwDBGrid19.Options:=wwDBGrid19.Options-[dgRowSelect,dgAlwaysShowSelection];
            QBrowse_det6.QBEMode:=TRUE;
        end
        else
            QBrowse_det6.ClearQBE;
    end;
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det3AfterScroll(
  DataSet: TDataSet);
begin
Label28.Caption:='Record ke '+IntToStr(QBrowse_Det3.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det3.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det4AfterScroll(
  DataSet: TDataSet);
begin
Label28.Caption:='Record ke '+IntToStr(QBrowse_Det4.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det4.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.TabSheet12Show(Sender: TObject);
begin
  vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',vTglAwal8.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',vTglAkhir8.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
end;

procedure TTerimaDariFinishingFrm.BitBtn17Click(Sender: TObject);
var
  i: Word;
  vpertama: Boolean;
  vkd,vjam,vloom,vrgTanggal,vgrup: string;
  vjam1, vjam2: Integer;
begin
    // Item Index 0 Start---------------------------------------------------------------------------------
    if RTgl8.ItemIndex = 0 then
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
        ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
        QBrowse_Det3.Close;
        abort;
        end
        else
        QBrowse_Det3.Open;

        vpertama := True;
        if cbTanggal8.Checked then
        vfilter := ' where (TANGGAL >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''',''dd/mm/yyyy'') and TANGGAL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
        vfilter := ' where (';

        if QBrowse_Det3.FieldCount >= 1 then
        begin
        if dbcField8.ItemIndex = 0 then
        begin
            for i := 0 to wwDBGrid13.Selected.Count - 1 do
            begin
            if (QBrowse_Det3.FieldByName(wwDBGrid13.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid13.Columns[i].FieldName) <> 'TANGGAL') then
            begin
                if vpertama then
                begin
                if vOperand8.Caption = 'LIKE' then
                    vfilter := vfilter + wwDBGrid13.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                else
                    vfilter := vfilter + wwDBGrid13.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                vpertama := False;
                end
                else
                begin
                if vOperand8.Caption = 'LIKE' then
                    vfilter := vfilter + ' or ' + wwDBGrid13.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                else
                    vfilter := vfilter + ' or ' + wwDBGrid13.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                end;
            end;
            end;
        end
        else
        begin
            if vOperand8.Caption = 'LIKE' then
            vfilter := vfilter + dbcField8.Text + ' like ''%' + ECari8.Text + '%'''
            else
            vfilter := vfilter + dbcField8.Text + ' = ''' + ECari8.Text + '''';
        end;
        vfilter := vfilter + ')';
        if QBrowse_Det3.Active then
            vorder := ' order by ' + wwDBGrid13.Columns[0].FieldName
        else
            vorder := ' order by no_reg';
        end;

        QBrowse_Det3.DisableControls;
        QBrowse_Det3.Close;

        case RadioGroup21.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det3.SetVariable('loom',vloom);
        QBrowse_Det3.SetVariable('myparam', vfilter + vorder);
        QBrowse_Det3.Open;
        QBrowse_Det3.EnableControls;

        QBSBK_TOT3.DisableControls;
        QBSBK_TOT3.Close;
        QBSBK_TOT3.SetVariable('myparam', vfilter);
        QBSBK_TOT3.SetVariable('loom',vloom);
        QBSBK_TOT3.Open;
        QBSBK_TOT3.EnableControls;

        wwDBGrid13.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3QTY.AsFloat);

        wwDBGrid13.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3QTY3.AsFloat);
        wwDBGrid13.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3BGRADE.AsFloat);
        wwDBGrid13.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3QTY2.AsFloat);

        wwDBGrid13.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3M_QTY3.AsFloat);
        wwDBGrid13.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3M_BGRADE.AsFloat);
        wwDBGrid13.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3M_QTY2.AsFloat);

        wwDBGrid13.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BK.AsFloat);
        wwDBGrid13.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BGRADE.AsFloat);
        wwDBGrid13.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS.AsFloat);

        wwDBGrid13.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3PM_BK.AsFloat);
        wwDBGrid13.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3PM_BGRADE.AsFloat);
        wwDBGrid13.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3PM_BS.AsFloat);

        wwDBGrid13.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_LD.AsFloat);
        wwDBGrid13.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_LT.AsFloat);
        wwDBGrid13.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_LPT.AsFloat);
        wwDBGrid13.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_LRG.AsFloat);
        wwDBGrid13.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_WL.AsFloat);
        wwDBGrid13.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_FLS.AsFloat);
        wwDBGrid13.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_FLP.AsFloat);
        wwDBGrid13.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_NEPS.AsFloat);
        wwDBGrid13.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_PP.AsFloat);
        wwDBGrid13.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_WP.AsFloat);
        wwDBGrid13.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_OJ.AsFloat);
        wwDBGrid13.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_CRT.AsFloat);
        wwDBGrid13.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BTS.AsFloat);
        wwDBGrid13.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BTB.AsFloat);
        wwDBGrid13.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BO.AsFloat);
        wwDBGrid13.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_SC.AsFloat);
        wwDBGrid13.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_SLL.AsFloat);
        wwDBGrid13.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_CK.AsFloat);
        wwDBGrid13.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_CAJ.AsFloat);
        wwDBGrid13.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KTR.AsFloat);
        wwDBGrid13.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_PDK.AsFloat);
        wwDBGrid13.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KP.AsFloat);
        wwDBGrid13.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KECOES_BG.AsFloat);

        wwDBGrid13.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_SBK.AsFloat);
        wwDBGrid13.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_UTS.AsFloat);
        wwDBGrid13.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KNB.AsFloat);
        wwDBGrid13.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_AFL.AsFloat);
        wwDBGrid13.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_LB.AsFloat);
        wwDBGrid13.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KECOES_BS.AsFloat);

        wwDBGrid13.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS_FLS.AsFloat);
        wwDBGrid13.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS_FLP.AsFloat);
        wwDBGrid13.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS_BTS.AsFloat);
        wwDBGrid13.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS_BTB.AsFloat);
        wwDBGrid13.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_BS_TK.AsFloat);

        wwDBGrid13.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT3P_KNT.AsFloat);

    end
    // Item Index 0 End-----------------------------------------------------------------------------------


    // Item Index 1 Start---------------------------------------------------------------------------------
    else if RTgl8.ItemIndex = 1 then
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
            ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
            QBrowse_Det4.Close;
            QBrowseTotal_Det2.Close;
            abort;
        end
        else
            QBrowse_Det4.Open;

        vpertama := True;
        if cbTanggal8.Checked then
            vfilter2 := ' where (tgl >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''', ''dd/mm/yyyy'') and tgl <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter2 := ' where (';

        if QBrowse_Det4.FieldCount >= 1 then
        begin
            if dbcField8.ItemIndex = 0 then
            begin
            for i := 0 to wwDBGrid12.Selected.Count - 1 do
            begin
                if (QBrowse_Det4.FieldByName(wwDBGrid12.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid12.Columns[i].FieldName) <> 'TANGGAL') then
                begin
                if vpertama then
                begin
                    if vOperand8.Caption = 'LIKE' then
                    vfilter2 := vfilter2 + wwDBGrid12.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                    else
                    vfilter2 := vfilter2 + wwDBGrid12.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                    vpertama := False;
                end
                else
                begin
                    if vOperand8.Caption = 'LIKE' then
                    vfilter2 := vfilter2 + ' or ' + wwDBGrid12.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                    else
                    vfilter2 := vfilter2 + ' or ' + wwDBGrid12.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                end;
                end;
            end;
            end
            else
            begin
            if vOperand8.Caption = 'LIKE' then
                vfilter2 := vfilter2 + dbcField8.Text + ' like ''%' + ECari8.Text + '%'''
            else
                vfilter2 := vfilter2 + dbcField8.Text + ' = ''' + ECari8.Text + '''';
            end;
            vfilter2 := vfilter2 + ')';
            if QBrowse_Det4.Active then
            vorder2 := ' order by ' + wwDBGrid12.Columns[0].FieldName
            else
            vorder2 := ' order by no_reg';
        end;

        QBrowse_Det4.DisableControls;
        QBrowse_Det4.Close;

        case RadioGroup21.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det4.SetVariable('loom',vloom);
        QBrowse_Det4.SetVariable('myparam', vfilter2 + vorder2);
        QBrowse_Det4.Open;
        QBrowse_Det4.EnableControls;

        QBSBK_TOT4.DisableControls;
        QBSBK_TOT4.Close;
        QBSBK_TOT4.SetVariable('myparam', vfilter2);
        QBSBK_TOT4.SetVariable('loom',vloom);
        QBSBK_TOT4.Open;
        QBSBK_TOT4.EnableControls;

        wwDBGrid12.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4QTY.AsFloat);

        wwDBGrid12.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4QTY3.AsFloat);
        wwDBGrid12.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4BGRADE.AsFloat);
        wwDBGrid12.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4QTY2.AsFloat);

        wwDBGrid12.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4M_QTY3.AsFloat);
        wwDBGrid12.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4M_BGRADE.AsFloat);
        wwDBGrid12.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4M_QTY2.AsFloat);

        wwDBGrid12.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BK.AsFloat);
        wwDBGrid12.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BGRADE.AsFloat);
        wwDBGrid12.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS.AsFloat);

        wwDBGrid12.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4PM_BK.AsFloat);
        wwDBGrid12.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4PM_BGRADE.AsFloat);
        wwDBGrid12.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4PM_BS.AsFloat);

        wwDBGrid12.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_LD.AsFloat);
        wwDBGrid12.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_LT.AsFloat);
        wwDBGrid12.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_LPT.AsFloat);
        wwDBGrid12.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_LRG.AsFloat);
        wwDBGrid12.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_WL.AsFloat);
        wwDBGrid12.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_FLS.AsFloat);
        wwDBGrid12.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_FLP.AsFloat);
        wwDBGrid12.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_NEPS.AsFloat);
        wwDBGrid12.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_PP.AsFloat);
        wwDBGrid12.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_WP.AsFloat);
        wwDBGrid12.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_OJ.AsFloat);
        wwDBGrid12.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_CRT.AsFloat);
        wwDBGrid12.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BTS.AsFloat);
        wwDBGrid12.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BTB.AsFloat);
        wwDBGrid12.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BO.AsFloat);
        wwDBGrid12.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_SC.AsFloat);
        wwDBGrid12.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_SLL.AsFloat);
        wwDBGrid12.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_CK.AsFloat);
        wwDBGrid12.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_CAJ.AsFloat);
        wwDBGrid12.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KTR.AsFloat);
        wwDBGrid12.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_PDK.AsFloat);
        wwDBGrid12.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KP.AsFloat);
        wwDBGrid12.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KECOES_BG.AsFloat);

        wwDBGrid12.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_SBK.AsFloat);
        wwDBGrid12.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_UTS.AsFloat);
        wwDBGrid12.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KNB.AsFloat);
        wwDBGrid12.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_AFL.AsFloat);
        wwDBGrid12.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_LB.AsFloat);
        wwDBGrid12.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KECOES_BS.AsFloat);

        wwDBGrid12.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS_FLS.AsFloat);
        wwDBGrid12.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS_FLP.AsFloat);
        wwDBGrid12.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS_BTS.AsFloat);
        wwDBGrid12.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS_BTB.AsFloat);
        wwDBGrid12.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_BS_TK.AsFloat);

        wwDBGrid12.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT4P_KNT.AsFloat);
    end
    // Item Index 1 Start---------------------------------------------------------------------------------

    // Item Index 2 Start---------------------------------------------------------------------------------
    else if RTgl8.ItemIndex = 2 then 
    begin
        DMFrm.QHak_jam.Open;
        vjam := DMFrm.QUserTimeVJAM.AsString;
        vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
        vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

        if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
        begin
            ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
            QBrowse_Det6.Close;
            // QBrowseTotal_Det2.Close;
            abort;
        end
        else
            QBrowse_Det6.Open;

        vpertama := True;
        if cbTanggal8.Checked then
            vfilter3 := ' where (TGL_PROSES >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''', ''dd/mm/yyyy'') and TGL_PROSES <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter3 := ' where (';

        if QBrowse_Det6.FieldCount >= 1 then
        begin
            if dbcField8.ItemIndex = 0 then
            begin
            for i := 0 to wwDBGrid19.Selected.Count - 1 do
            begin
                if (QBrowse_Det6.FieldByName(wwDBGrid19.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid19.Columns[i].FieldName) <> 'TANGGAL') then
                begin
                if vpertama then
                begin
                    if vOperand8.Caption = 'LIKE' then
                    vfilter3 := vfilter3 + wwDBGrid19.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                    else
                    vfilter3 := vfilter3 + wwDBGrid19.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                    vpertama := False;
                end
                else
                begin
                    if vOperand8.Caption = 'LIKE' then
                    vfilter3 := vfilter3 + ' or ' + wwDBGrid19.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
                    else
                    vfilter3 := vfilter3 + ' or ' + wwDBGrid19.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
                end;
                end;
            end;
            end
            else
            begin
            if vOperand8.Caption = 'LIKE' then
                vfilter3 := vfilter3 + dbcField8.Text + ' like ''%' + ECari8.Text + '%'''
            else
                vfilter3 := vfilter3 + dbcField8.Text + ' = ''' + ECari8.Text + '''';
            end;
            vfilter3 := vfilter3 + ')';
            if QBrowse_Det6.Active then
            vorder3 := ' order by ' + wwDBGrid19.Columns[0].FieldName
            else
            vorder3 := ' order by no_reg';
        end;

        QBrowse_Det6.DisableControls;
        QBrowse_Det6.Close;

        case RadioGroup21.ItemIndex of
          0 : vloom:='%2%';
          1 : vloom:='%3%';
          2 : vloom:='%5%';
          3 : vloom:='%';
        end;

        QBrowse_Det6.SetVariable('loom',vloom);
        QBrowse_Det6.SetVariable('myparam', vfilter3 + vorder3);
        QBrowse_Det6.Open;
        QBrowse_Det6.EnableControls;

        QBSBK_TOT6.DisableControls;
        QBSBK_TOT6.Close;
        QBSBK_TOT6.SetVariable('myparam', vfilter3);
        QBSBK_TOT6.SetVariable('loom',vloom);
        QBSBK_TOT6.Open;
        QBSBK_TOT6.EnableControls;

        wwDBGrid19.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6QTY.AsFloat);

        wwDBGrid19.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6QTY3.AsFloat);
        wwDBGrid19.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6BGRADE.AsFloat);
        wwDBGrid19.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6QTY2.AsFloat);

        wwDBGrid19.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6M_QTY3.AsFloat);
        wwDBGrid19.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6M_BGRADE.AsFloat);
        wwDBGrid19.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6M_QTY2.AsFloat);

        wwDBGrid19.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BK.AsFloat);
        wwDBGrid19.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BGRADE.AsFloat);
        wwDBGrid19.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS.AsFloat);

        wwDBGrid19.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6PM_BK.AsFloat);
        wwDBGrid19.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6PM_BGRADE.AsFloat);
        wwDBGrid19.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6PM_BS.AsFloat);

        wwDBGrid19.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_LD.AsFloat);
        wwDBGrid19.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_LT.AsFloat);
        wwDBGrid19.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_LPT.AsFloat);
        wwDBGrid19.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_LRG.AsFloat);
        wwDBGrid19.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_WL.AsFloat);
        wwDBGrid19.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_FLS.AsFloat);
        wwDBGrid19.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_FLP.AsFloat);
        wwDBGrid19.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_NEPS.AsFloat);
        wwDBGrid19.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_PP.AsFloat);
        wwDBGrid19.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_WP.AsFloat);
        wwDBGrid19.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_OJ.AsFloat);
        wwDBGrid19.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_CRT.AsFloat);
        wwDBGrid19.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BTS.AsFloat);
        wwDBGrid19.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BTB.AsFloat);
        wwDBGrid19.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BO.AsFloat);
        wwDBGrid19.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_SC.AsFloat);
        wwDBGrid19.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_SLL.AsFloat);
        wwDBGrid19.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_CK.AsFloat);
        wwDBGrid19.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_CAJ.AsFloat);
        wwDBGrid19.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KTR.AsFloat);
        wwDBGrid19.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_PDK.AsFloat);
        wwDBGrid19.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KP.AsFloat);
        wwDBGrid19.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KECOES_BG.AsFloat);

        wwDBGrid19.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_SBK.AsFloat);
        wwDBGrid19.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_UTS.AsFloat);
        wwDBGrid19.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KNB.AsFloat);
        wwDBGrid19.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_AFL.AsFloat);
        wwDBGrid19.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_LB.AsFloat);
        wwDBGrid19.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KECOES_BS.AsFloat);

        wwDBGrid19.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS_FLS.AsFloat);
        wwDBGrid19.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS_FLP.AsFloat);
        wwDBGrid19.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS_BTS.AsFloat);
        wwDBGrid19.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS_BTB.AsFloat);
        wwDBGrid19.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_BS_TK.AsFloat);

        wwDBGrid19.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT6P_KNT.AsFloat);
    end;
    // Item Index 2 Start---------------------------------------------------------------------------------
end;

procedure TTerimaDariFinishingFrm.BtnOk8Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47, vt48, vt49, vt50,
    vt51, vt52: real;

begin
    if RTgl8.ItemIndex=0 then
    begin
        if QBrowse_det3.QBEMode then
            begin
                QBrowse_det3.ExecuteQBE;
                wwDBGrid13.Options:=wwDBGrid13.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini
                vt1:=0;
                while not QBrowse_det3.Eof do
                    begin
                        vt1 := vt1 + QBrowse_det3QTY.AsFloat;

                        vt2 := vt2 + QBrowse_det3QTY3.AsFloat;
                        vt3 := vt3 + QBrowse_det3BGRADE.AsFloat;
                        vt4 := vt4 + QBrowse_det3QTY2.AsFloat;

                        vt5 := vt5 + QBrowse_det3M_QTY3.AsFloat;
                        vt6 := vt6 + QBrowse_det3M_BGRADE.AsFloat;
                        vt7 := vt7 + QBrowse_det3M_QTY2.AsFloat;

                        vt8 := vt8 + QBrowse_det3P_BK.AsFloat;
                        vt9 := vt9 + QBrowse_det3P_BGRADE.AsFloat;
                        vt10 := vt10 + QBrowse_det3P_BS.AsFloat;

                        vt11 := vt11 + QBrowse_det3PM_BK.AsFloat;
                        vt12 := vt12 + QBrowse_det3PM_BGRADE.AsFloat;
                        vt13 := vt13 + QBrowse_det3PM_BS.AsFloat;

                        vt14 := vt14 + QBrowse_det3LD.AsFloat;
                        vt15 := vt15 + QBrowse_det3LT.AsFloat;
                        vt16 := vt16 + QBrowse_det3LPT.AsFloat;
                        vt17 := vt17 + QBrowse_det3LRG.AsFloat;
                        vt18 := vt18 + QBrowse_det3WL.AsFloat;
                        vt19 := vt19 + QBrowse_det3FLS.AsFloat;
                        vt20 := vt20 + QBrowse_det3FLP.AsFloat;
                        vt21 := vt21 + QBrowse_det3NEPS.AsFloat;
                        vt22 := vt22 + QBrowse_det3PP.AsFloat;
                        vt23 := vt23 + QBrowse_det3WP.AsFloat;
                        vt24 := vt24 + QBrowse_det3OJ.AsFloat;
                        vt25 := vt25 + QBrowse_det3CRT.AsFloat;
                        vt26 := vt26 + QBrowse_det3BTS.AsFloat;
                        vt27 := vt27 + QBrowse_det3BTB.AsFloat;
                        vt28 := vt28 + QBrowse_det3BO.AsFloat;
                        vt29 := vt29 + QBrowse_det3SC.AsFloat;
                        vt30 := vt30 + QBrowse_det3SLL.AsFloat;

                        vt31 := vt31 + QBrowse_det3CK.AsFloat;
                        vt32 := vt32 + QBrowse_det3CAJ.AsFloat;
                        vt33 := vt33 + QBrowse_det3KTR.AsFloat;
                        vt34 := vt34 + QBrowse_det3PDK.AsFloat;
                        vt35 := vt35 + QBrowse_det3KP.AsFloat;
                        vt36 := vt36 + QBrowse_det3SBK.AsFloat;
                        vt37 := vt37 + QBrowse_det3UTS.AsFloat;
                        vt38 := vt38 + QBrowse_det3KNB.AsFloat;
                        vt39 := vt39 + QBrowse_det3AFL.AsFloat;

                        vt40 := vt40 + QBrowse_det3BS_FLS.AsFloat;
                        vt41 := vt41 + QBrowse_det3BS_FLP.AsFloat;
                        vt42 := vt42 + QBrowse_det3BS_BTS.AsFloat;
                        vt43 := vt43 + QBrowse_det3BS_BTB.AsFloat;
                        vt44 := vt44 + QBrowse_det3BS_TK.AsFloat;

                        vt45 := vt45 + QBrowse_det3KECOES_BG.AsFloat;
                        vt46 := vt46 + QBrowse_det3KECOES_BS.AsFloat;
                        
                        vt47 := vt47 + QBrowse_det3KBR.AsFloat;
                        vt48 := vt48 + QBrowse_det3LK.AsFloat;
                        vt49 := vt49 + QBrowse_det3LB.AsFloat;
                        vt50 := vt50 + QBrowse_det3P_LK.AsFloat;
                        vt51 := vt51 + QBrowse_det3P_LB.AsFloat;

                        vt52 := vt52 + QBrowse_det3KNT.AsFloat;

                        QBrowse_det3.Next;
                    end;
                wwDBGrid13.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid13.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid13.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid13.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid13.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2));
                wwDBGrid13.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2));
                wwDBGrid13.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2));

                wwDBGrid13.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
                wwDBGrid13.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

                wwDBGrid13.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2)/(vt1*2.2)*100);
                wwDBGrid13.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2)/(vt1*2.2)*100);
                wwDBGrid13.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2)/(vt1*2.2)*100);

                wwDBGrid13.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1)*100);
                wwDBGrid13.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1)*100);
                wwDBGrid13.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1)*100);
                wwDBGrid13.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1)*100);
                wwDBGrid13.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1)*100);
                wwDBGrid13.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1)*100);
                wwDBGrid13.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1)*100);
                wwDBGrid13.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1)*100);
                wwDBGrid13.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1)*100);
                wwDBGrid13.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1)*100);
                wwDBGrid13.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1)*100);
                wwDBGrid13.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1)*100);
                wwDBGrid13.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1)*100);
                wwDBGrid13.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1)*100);
                wwDBGrid13.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1)*100);
                wwDBGrid13.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1)*100);
                wwDBGrid13.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1)*100);
                wwDBGrid13.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1)*100);
                wwDBGrid13.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1)*100);
                wwDBGrid13.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1)*100);
                wwDBGrid13.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1)*100);
                wwDBGrid13.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1)*100);
                wwDBGrid13.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1)*100);
                wwDBGrid13.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1)*100);
                wwDBGrid13.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1)*100);
                wwDBGrid13.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1)*100);
                wwDBGrid13.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1)*100);

                wwDBGrid13.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt45/vt1)*100);
                wwDBGrid13.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1)*100);

                wwDBGrid13.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1)*100);
                wwDBGrid13.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid13.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid13.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid13.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid13.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);


                //disini
            end
    end

    else if RTgl8.ItemIndex=1 then
    begin
        QBrowse_det4.ExecuteQBE;
        wwDBGrid12.Options:=wwDBGrid12.Options+[dgRowSelect,dgAlwaysShowSelection];
        //disini
        vt1:=0;
        while not QBrowse_det4.Eof do
            begin
                vt1 := vt1 + QBrowse_det4QTY.AsFloat;

                vt2 := vt2 + QBrowse_det4QTY3.AsFloat;
                vt3 := vt3 + QBrowse_det4BGRADE.AsFloat;
                vt4 := vt4 + QBrowse_det4QTY2.AsFloat;

                vt5 := vt5 + QBrowse_det4M_QTY3.AsFloat;
                vt6 := vt6 + QBrowse_det4M_BGRADE.AsFloat;
                vt7 := vt7 + QBrowse_det4M_QTY2.AsFloat;

                vt8 := vt8 + QBrowse_det4P_BK.AsFloat;
                vt9 := vt9 + QBrowse_det4P_BGRADE.AsFloat;
                vt10 := vt10 + QBrowse_det4P_BS.AsFloat;

                vt11 := vt11 + QBrowse_det4PM_BK.AsFloat;
                vt12 := vt12 + QBrowse_det4PM_BGRADE.AsFloat;
                vt13 := vt13 + QBrowse_det4PM_BS.AsFloat;

                vt14 := vt14 + QBrowse_det4LD.AsFloat;
                vt15 := vt15 + QBrowse_det4LT.AsFloat;
                vt16 := vt16 + QBrowse_det4LPT.AsFloat;
                vt17 := vt17 + QBrowse_det4LRG.AsFloat;
                vt18 := vt18 + QBrowse_det4WL.AsFloat;
                vt19 := vt19 + QBrowse_det4FLS.AsFloat;
                vt20 := vt20 + QBrowse_det4FLP.AsFloat;
                vt21 := vt21 + QBrowse_det4NEPS.AsFloat;
                vt22 := vt22 + QBrowse_det4PP.AsFloat;
                vt23 := vt23 + QBrowse_det4WP.AsFloat;
                vt24 := vt24 + QBrowse_det4OJ.AsFloat;
                vt25 := vt25 + QBrowse_det4CRT.AsFloat;
                vt26 := vt26 + QBrowse_det4BTS.AsFloat;
                vt27 := vt27 + QBrowse_det4BTB.AsFloat;
                vt28 := vt28 + QBrowse_det4BO.AsFloat;
                vt29 := vt29 + QBrowse_det4SC.AsFloat;
                vt30 := vt30 + QBrowse_det4SLL.AsFloat;
                vt31 := vt31 + QBrowse_det4CK.AsFloat;
                vt32 := vt32 + QBrowse_det4CAJ.AsFloat;
                vt33 := vt33 + QBrowse_det4KTR.AsFloat;
                vt34 := vt34 + QBrowse_det4PDK.AsFloat;
                vt35 := vt35 + QBrowse_det4KP.AsFloat;
                vt36 := vt36 + QBrowse_det4SBK.AsFloat;
                vt37 := vt37 + QBrowse_det4UTS.AsFloat;
                vt38 := vt38 + QBrowse_det4KNB.AsFloat;
                vt39 := vt39 + QBrowse_det4AFL.AsFloat;
                vt40 := vt40 + QBrowse_det4BS_FLS.AsFloat;
                vt41 := vt41 + QBrowse_det4BS_FLP.AsFloat;
                vt42 := vt42 + QBrowse_det4BS_BTS.AsFloat;
                vt43 := vt43 + QBrowse_det4BS_BTB.AsFloat;
                vt44 := vt44 + QBrowse_det4BS_TK.AsFloat;

                vt45 := vt45 + QBrowse_det4KECOES_BG.AsFloat;
                vt46 := vt46 + QBrowse_det4KECOES_BS.AsFloat;

                vt47 := vt47 + QBrowse_det4KBR.AsFloat;
                vt48 := vt48 + QBrowse_det4LK.AsFloat;
                vt49 := vt49 + QBrowse_det4LB.AsFloat;
                vt50 := vt50 + QBrowse_det4P_LK.AsFloat;
                vt51 := vt51 + QBrowse_det4P_LB.AsFloat;

                vt52 := vt52 + QBrowse_det4KNT.AsFloat;

                QBrowse_det4.Next;
            end;
        wwDBGrid12.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid12.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
        wwDBGrid12.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid12.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        wwDBGrid12.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2));
        wwDBGrid12.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2));
        wwDBGrid12.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2));

        wwDBGrid12.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
        wwDBGrid12.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

        wwDBGrid12.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2)/(vt1*2.2)*100);
        wwDBGrid12.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2)/(vt1*2.2)*100);
        wwDBGrid12.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2)/(vt1*2.2)*100);

        wwDBGrid12.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1)*100);
        wwDBGrid12.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1)*100);
        wwDBGrid12.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1)*100);
        wwDBGrid12.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1)*100);
        wwDBGrid12.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1)*100);
        wwDBGrid12.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1)*100);
        wwDBGrid12.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1)*100);
        wwDBGrid12.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1)*100);
        wwDBGrid12.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1)*100);
        wwDBGrid12.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1)*100);
        wwDBGrid12.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1)*100);
        wwDBGrid12.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1)*100);
        wwDBGrid12.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1)*100);
        wwDBGrid12.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1)*100);
        wwDBGrid12.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1)*100);
        wwDBGrid12.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1)*100);
        wwDBGrid12.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1)*100);
        wwDBGrid12.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1)*100);
        wwDBGrid12.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1)*100);
        wwDBGrid12.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1)*100);
        wwDBGrid12.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1)*100);
        wwDBGrid12.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1)*100);
        wwDBGrid12.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1)*100);
        wwDBGrid12.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1)*100);
        wwDBGrid12.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1)*100);
        wwDBGrid12.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1)*100);
        wwDBGrid12.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1)*100);

        wwDBGrid12.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt45/vt1)*100);
        wwDBGrid12.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1)*100);

        wwDBGrid12.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1)*100);
        wwDBGrid12.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
        wwDBGrid12.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
        wwDBGrid12.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
        wwDBGrid12.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

        wwDBGrid12.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);

        //disini

    end

    else if RTgl8.ItemIndex=2 then
    begin
        QBrowse_det6.ExecuteQBE;
        wwDBGrid19.Options:=wwDBGrid19.Options+[dgRowSelect,dgAlwaysShowSelection];
        //disini
        vt1:=0;
        while not QBrowse_det6.Eof do
            begin
                vt1 := vt1 + QBrowse_det6QTY.AsFloat;

                vt2 := vt2 + QBrowse_det6QTY3.AsFloat;
                vt3 := vt3 + QBrowse_det6BGRADE.AsFloat;
                vt4 := vt4 + QBrowse_det6QTY2.AsFloat;

                vt5 := vt5 + QBrowse_det6M_QTY3.AsFloat;
                vt6 := vt6 + QBrowse_det6M_BGRADE.AsFloat;
                vt7 := vt7 + QBrowse_det6M_QTY2.AsFloat;

                vt8 := vt8 + QBrowse_det6P_BK.AsFloat;
                vt9 := vt9 + QBrowse_det6P_BGRADE.AsFloat;
                vt10 := vt10 + QBrowse_det6P_BS.AsFloat;

                vt11 := vt11 + QBrowse_det6PM_BK.AsFloat;
                vt12 := vt12 + QBrowse_det6PM_BGRADE.AsFloat;
                vt13 := vt13 + QBrowse_det6PM_BS.AsFloat;

                vt14 := vt14 + QBrowse_det6LD.AsFloat;
                vt15 := vt15 + QBrowse_det6LT.AsFloat;
                vt16 := vt16 + QBrowse_det6LPT.AsFloat;
                vt17 := vt17 + QBrowse_det6LRG.AsFloat;
                vt18 := vt18 + QBrowse_det6WL.AsFloat;
                vt19 := vt19 + QBrowse_det6FLS.AsFloat;
                vt20 := vt20 + QBrowse_det6FLP.AsFloat;
                vt21 := vt21 + QBrowse_det6NEPS.AsFloat;
                vt22 := vt22 + QBrowse_det6PP.AsFloat;
                vt23 := vt23 + QBrowse_det6WP.AsFloat;
                vt24 := vt24 + QBrowse_det6OJ.AsFloat;
                vt25 := vt25 + QBrowse_det6CRT.AsFloat;
                vt26 := vt26 + QBrowse_det6BTS.AsFloat;
                vt27 := vt27 + QBrowse_det6BTB.AsFloat;
                vt28 := vt28 + QBrowse_det6BO.AsFloat;
                vt29 := vt29 + QBrowse_det6SC.AsFloat;
                vt30 := vt30 + QBrowse_det6SLL.AsFloat;
                vt31 := vt31 + QBrowse_det6CK.AsFloat;
                vt32 := vt32 + QBrowse_det6CAJ.AsFloat;
                vt33 := vt33 + QBrowse_det6KTR.AsFloat;
                vt34 := vt34 + QBrowse_det6PDK.AsFloat;
                vt35 := vt35 + QBrowse_det6KP.AsFloat;
                vt36 := vt36 + QBrowse_det6SBK.AsFloat;
                vt37 := vt37 + QBrowse_det6UTS.AsFloat;
                vt38 := vt38 + QBrowse_det6KNB.AsFloat;
                vt39 := vt39 + QBrowse_det6AFL.AsFloat;
                vt40 := vt40 + QBrowse_det6BS_FLS.AsFloat;
                vt41 := vt41 + QBrowse_det6BS_FLP.AsFloat;
                vt42 := vt42 + QBrowse_det6BS_BTS.AsFloat;
                vt43 := vt43 + QBrowse_det6BS_BTB.AsFloat;
                vt44 := vt44 + QBrowse_det6BS_TK.AsFloat;

                vt45 := vt45 + QBrowse_det6KECOES_BG.AsFloat;
                vt46 := vt46 + QBrowse_det6KECOES_BS.AsFloat;

                vt47 := vt47 + QBrowse_det6KBR.AsFloat;
                vt48 := vt48 + QBrowse_det6LK.AsFloat;
                vt49 := vt49 + QBrowse_det6LB.AsFloat;
                vt50 := vt50 + QBrowse_det6P_LK.AsFloat;
                vt51 := vt51 + QBrowse_det6P_LB.AsFloat;

                vt52 := vt52 + QBrowse_det6KNT.AsFloat;

                QBrowse_det6.Next;
            end;
        wwDBGrid19.ColumnByName('QTY').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid19.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
        wwDBGrid19.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid19.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        wwDBGrid19.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2));
        wwDBGrid19.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2));
        wwDBGrid19.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2));

        wwDBGrid19.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
        wwDBGrid19.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

        wwDBGrid19.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.2)/(vt1*2.2)*100);
        wwDBGrid19.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.2)/(vt1*2.2)*100);
        wwDBGrid19.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.2)/(vt1*2.2)*100);

        wwDBGrid19.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1)*100);
        wwDBGrid19.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1)*100);
        wwDBGrid19.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1)*100);
        wwDBGrid19.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1)*100);
        wwDBGrid19.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1)*100);
        wwDBGrid19.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1)*100);
        wwDBGrid19.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1)*100);
        wwDBGrid19.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1)*100);
        wwDBGrid19.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1)*100);
        wwDBGrid19.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1)*100);
        wwDBGrid19.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1)*100);
        wwDBGrid19.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1)*100);
        wwDBGrid19.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1)*100);
        wwDBGrid19.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1)*100);
        wwDBGrid19.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1)*100);
        wwDBGrid19.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1)*100);
        wwDBGrid19.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1)*100);
        wwDBGrid19.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1)*100);
        wwDBGrid19.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1)*100);
        wwDBGrid19.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1)*100);
        wwDBGrid19.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1)*100);
        wwDBGrid19.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1)*100);
        wwDBGrid19.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1)*100);
        wwDBGrid19.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1)*100);
        wwDBGrid19.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1)*100);
        wwDBGrid19.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1)*100);
        wwDBGrid19.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1)*100);

        wwDBGrid19.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt45/vt1)*100);
        wwDBGrid19.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1)*100);

        wwDBGrid19.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1)*100);
        wwDBGrid19.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
        wwDBGrid19.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
        wwDBGrid19.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
        wwDBGrid19.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

        wwDBGrid19.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);

        //disini

    end;      
end;

procedure TTerimaDariFinishingFrm.BitBtn19Click(Sender: TObject);
begin
    case RTgl8.ItemIndex of
    0:
    begin
            if QBrowse_Det3.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Produksi';
                wwDBGrid13.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Produksi';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid13.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid13.ExportOptions.Save;
                    ShowMessage('Simpan Sukses !');
                    except
                    ShowMessage('Simpan Gagal !');
                    end;
                end;
            end
            else
                ShowMessage('Tabel belum di-OPEN !');
    end;

    1:
    begin
    if QBrowse_Det4.Active then
        begin
            DMFrm.SaveDialog1.DefaultExt:='XLK';
            DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
            DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Potong';
            wwDBGrid12.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Potong';
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

    2:
    begin
    if QBrowse_Det6.Active then
        begin
            DMFrm.SaveDialog1.DefaultExt:='XLK';
            DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
            DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Inspecting Tgl Proses';
            wwDBGrid19.ExportOptions.TitleName:=''+TabSheet4.Caption+' Inspecting Tgl Proses';
            if DMFrm.SaveDialog1.Execute then
            begin
                try
                wwDBGrid19.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                wwDBGrid19.ExportOptions.Save;
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
end;

procedure TTerimaDariFinishingFrm.Button1Click(Sender: TObject);
begin
if QBrowse.Active= true then
  try
  QUnpost.Close;
  QUnpost.SetVariable('no_nota',wwDBGrid1xxxxx.Fields[1].AsString);
  QUnpost.Execute;
  ShowMessage('No Nota '+wwDBGrid1xxxxx.Fields[1].AsString+' Berhasil di UNPOST !');
  except
  on E : Exception do
  begin
  ShowMessage(E.Message);
  end;
end;
end;

procedure TTerimaDariFinishingFrm.BitBtn22Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;

            QLoom1.DisableControls;
            QLoom1.Close;
            QLoom1.SetVariable('pawal',VTglAwal11.Date);
            QLoom1.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom1.Open;
            QLoom1_Tot.Close;
            QLoom1_Tot.SetVariable('pawal',VTglAwal11.Date);
            QLoom1_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom1_Tot.Open;
            QLoom1.EnableControls;

            wwDBGrid15.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QLoom1_TotPOTONG.AsFloat);

            wwDBGrid15.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotQTY3.AsFloat);
            wwDBGrid15.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBGRADE.AsFloat);
            wwDBGrid15.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotQTY2.AsFloat);

            wwDBGrid15.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotP_BK.AsFloat);
            wwDBGrid15.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotP_BGRADE.AsFloat);
            wwDBGrid15.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotP_BS.AsFloat);

            wwDBGrid15.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLD.AsFloat);
            wwDBGrid15.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLT.AsFloat);
            wwDBGrid15.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLPT.AsFloat);
            wwDBGrid15.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLRG.AsFloat);
            wwDBGrid15.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotWL.AsFloat);
            wwDBGrid15.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotFLS.AsFloat);
            wwDBGrid15.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotFLP.AsFloat);
            wwDBGrid15.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotNEPS.AsFloat);
            wwDBGrid15.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotPP.AsFloat);
            wwDBGrid15.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotWP.AsFloat);
            wwDBGrid15.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotOJ.AsFloat);
            wwDBGrid15.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotCRT.AsFloat);
            wwDBGrid15.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBTS.AsFloat);
            wwDBGrid15.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBTB.AsFloat);
            wwDBGrid15.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBO.AsFloat);
            wwDBGrid15.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotSC.AsFloat);
            wwDBGrid15.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotSLL.AsFloat);
            wwDBGrid15.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotCK.AsFloat);
            wwDBGrid15.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotCAJ.AsFloat);
            wwDBGrid15.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKTR.AsFloat);
            wwDBGrid15.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotPDK.AsFloat);
            wwDBGrid15.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKP.AsFloat);
            wwDBGrid15.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKECOES_BG.AsFloat);

            wwDBGrid15.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotSBK.AsFloat);
            wwDBGrid15.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotUTS.AsFloat);
            wwDBGrid15.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKNB.AsFloat);
            wwDBGrid15.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotAFL.AsFloat);
            wwDBGrid15.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKECOES_BS.AsFloat);

            wwDBGrid15.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBS_FLS.AsFloat);
            wwDBGrid15.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBS_FLP.AsFloat);
            wwDBGrid15.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBS_BTS.AsFloat);
            wwDBGrid15.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBS_BTB.AsFloat);
            wwDBGrid15.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotBS_TK.AsFloat);

            wwDBGrid15.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKBR.AsFloat);
            wwDBGrid15.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLK.AsFloat);
            wwDBGrid15.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotLB.AsFloat);
            wwDBGrid15.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotP_LK.AsFloat);
            wwDBGrid15.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotP_LB.AsFloat);

            wwDBGrid15.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom1_TotKNT.AsFloat);
        end
    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;

            QPerLoom.DisableControls;
            QPerLoom.Close;
            QPerLoom.SetVariable('pawal',VTglAwal11.Date);
            QPerLoom.SetVariable('pakhir',VTglAkhir11.Date);
            QPerLoom.Open;
            QPerLoom_Tot.Close;
            QPerLoom_Tot.SetVariable('pawal',VTglAwal11.Date);
            QPerLoom_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QPerLoom_Tot.Open;
            QPerLoom.EnableControls;

            wwDBGrid14.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerLoom_TotPOTONG.AsFloat);

            wwDBGrid14.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotQTY3.AsFloat);
            wwDBGrid14.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBGRADE.AsFloat);
            wwDBGrid14.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotQTY2.AsFloat);

            wwDBGrid14.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_BK.AsFloat);
            wwDBGrid14.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_BGRADE.AsFloat);
            wwDBGrid14.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_BS.AsFloat);

            wwDBGrid14.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLD.AsFloat);
            wwDBGrid14.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLT.AsFloat);
            wwDBGrid14.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLPT.AsFloat);
            wwDBGrid14.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLRG.AsFloat);
            wwDBGrid14.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotWL.AsFloat);
            wwDBGrid14.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotFLS.AsFloat);
            wwDBGrid14.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotFLP.AsFloat);
            wwDBGrid14.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotNEPS.AsFloat);
            wwDBGrid14.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotPP.AsFloat);
            wwDBGrid14.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotWP.AsFloat);
            wwDBGrid14.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotOJ.AsFloat);
            wwDBGrid14.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotCRT.AsFloat);
            wwDBGrid14.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBTS.AsFloat);
            wwDBGrid14.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBTB.AsFloat);
            wwDBGrid14.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBO.AsFloat);
            wwDBGrid14.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotSC.AsFloat);
            wwDBGrid14.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotSLL.AsFloat);
            wwDBGrid14.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotCK.AsFloat);
            wwDBGrid14.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotCAJ.AsFloat);
            wwDBGrid14.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKTR.AsFloat);
            wwDBGrid14.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotPDK.AsFloat);
            wwDBGrid14.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKP.AsFloat);
            wwDBGrid14.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKECOES_BG.AsFloat);

            wwDBGrid14.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotSBK.AsFloat);
            wwDBGrid14.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotUTS.AsFloat);
            wwDBGrid14.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKNB.AsFloat);
            wwDBGrid14.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotAFL.AsFloat);
            wwDBGrid14.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKECOES_BS.AsFloat);

            wwDBGrid14.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_FLS.AsFloat);
            wwDBGrid14.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_FLP.AsFloat);
            wwDBGrid14.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_BTS.AsFloat);
            wwDBGrid14.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_BTB.AsFloat);
            wwDBGrid14.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_TK.AsFloat);

            wwDBGrid14.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKBR.AsFloat);
            wwDBGrid14.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLK.AsFloat);
            wwDBGrid14.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLB.AsFloat);
            wwDBGrid14.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_LK.AsFloat);
            wwDBGrid14.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_LB.AsFloat);

            wwDBGrid14.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKNT.AsFloat);
        end
    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;

            QLoom4.DisableControls;
            QLoom4.Close;
            QLoom4.SetVariable('pawal',VTglAwal11.Date);
            QLoom4.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom4.Open;
            QLoom4_Tot.Close;
            QLoom4_Tot.SetVariable('pawal',VTglAwal11.Date);
            QLoom4_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom4_Tot.Open;
            QLoom4.EnableControls;

            wwDBGrid16.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QLoom4_TotPOTONG.AsFloat);

            wwDBGrid16.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotQTY3.AsFloat);
            wwDBGrid16.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotBGRADE.AsFloat);
            wwDBGrid16.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotQTY2.AsFloat);

            wwDBGrid16.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BK.AsFloat);
            wwDBGrid16.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BGRADE.AsFloat);
            wwDBGrid16.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS.AsFloat);

            wwDBGrid16.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LD.AsFloat);
            wwDBGrid16.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LT.AsFloat);
            wwDBGrid16.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LPT.AsFloat);
            wwDBGrid16.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LRG.AsFloat);
            wwDBGrid16.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_WL.AsFloat);
            wwDBGrid16.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_FLS.AsFloat);
            wwDBGrid16.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_FLP.AsFloat);
            wwDBGrid16.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_NEPS.AsFloat);
            wwDBGrid16.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_PP.AsFloat);
            wwDBGrid16.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_WP.AsFloat);
            wwDBGrid16.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_OJ.AsFloat);
            wwDBGrid16.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_CRT.AsFloat);
            wwDBGrid16.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BTS.AsFloat);
            wwDBGrid16.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BTB.AsFloat);
            wwDBGrid16.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BO.AsFloat);
            wwDBGrid16.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_SC.AsFloat);
            wwDBGrid16.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_SLL.AsFloat);
            wwDBGrid16.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_CK.AsFloat);
            wwDBGrid16.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_CAJ.AsFloat);
            wwDBGrid16.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KTR.AsFloat);
            wwDBGrid16.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_PDK.AsFloat);
            wwDBGrid16.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KP.AsFloat);
            wwDBGrid16.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KECOES_BG.AsFloat);

            wwDBGrid16.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_SBK.AsFloat);
            wwDBGrid16.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_UTS.AsFloat);
            wwDBGrid16.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KNB.AsFloat);
            wwDBGrid16.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_AFL.AsFloat);
            wwDBGrid16.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KECOES_BS.AsFloat);

            wwDBGrid16.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS_FLS.AsFloat);
            wwDBGrid16.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS_FLP.AsFloat);
            wwDBGrid16.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS_BTS.AsFloat);
            wwDBGrid16.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS_BTB.AsFloat);
            wwDBGrid16.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_BS_TK.AsFloat);

            wwDBGrid16.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KBR.AsFloat);
            wwDBGrid16.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotLK.AsFloat);
            wwDBGrid16.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotLB.AsFloat);
            wwDBGrid16.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LK.AsFloat);
            wwDBGrid16.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_LB.AsFloat);

            wwDBGrid16.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom4_TotP_KNT.AsFloat);
        end
    else
        begin
            wwDBGrid17.BringToFront;

            QLoom3.DisableControls;
            QLoom3.Close;
            QLoom3.SetVariable('pawal',VTglAwal11.Date);
            QLoom3.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom3.Open;
            QLoom3_Tot.Close;
            QLoom3_Tot.SetVariable('pawal',VTglAwal11.Date);
            QLoom3_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom3_Tot.Open;
            QLoom3.EnableControls;

            wwDBGrid17.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QLoom3_TotPOTONG.AsFloat);

            wwDBGrid17.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotQTY3.AsFloat);
            wwDBGrid17.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotBGRADE.AsFloat);
            wwDBGrid17.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotQTY2.AsFloat);

            wwDBGrid17.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BK.AsFloat);
            wwDBGrid17.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BGRADE.AsFloat);
            wwDBGrid17.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS.AsFloat);

            wwDBGrid17.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LD.AsFloat);
            wwDBGrid17.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LT.AsFloat);
            wwDBGrid17.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LPT.AsFloat);
            wwDBGrid17.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LRG.AsFloat);
            wwDBGrid17.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_WL.AsFloat);
            wwDBGrid17.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_FLS.AsFloat);
            wwDBGrid17.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_FLP.AsFloat);
            wwDBGrid17.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_NEPS.AsFloat);
            wwDBGrid17.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_PP.AsFloat);
            wwDBGrid17.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_WP.AsFloat);
            wwDBGrid17.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_OJ.AsFloat);
            wwDBGrid17.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_CRT.AsFloat);
            wwDBGrid17.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BTS.AsFloat);
            wwDBGrid17.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BTB.AsFloat);
            wwDBGrid17.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BO.AsFloat);
            wwDBGrid17.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_SC.AsFloat);
            wwDBGrid17.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_SLL.AsFloat);
            wwDBGrid17.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_CK.AsFloat);
            wwDBGrid17.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_CAJ.AsFloat);
            wwDBGrid17.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KTR.AsFloat);
            wwDBGrid17.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_PDK.AsFloat);
            wwDBGrid17.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KP.AsFloat);
            wwDBGrid17.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KECOES_BG.AsFloat);

            wwDBGrid17.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_SBK.AsFloat);
            wwDBGrid17.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_UTS.AsFloat);
            wwDBGrid17.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KNB.AsFloat);
            wwDBGrid17.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_AFL.AsFloat);
            wwDBGrid17.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KECOES_BS.AsFloat);

            wwDBGrid17.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_FLS.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_FLP.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_BTS.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_BTB.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_TK.AsFloat);

            wwDBGrid17.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KBR.AsFloat);
            wwDBGrid17.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotLK.AsFloat);
            wwDBGrid17.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotLB.AsFloat);
            wwDBGrid17.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LK.AsFloat);
            wwDBGrid17.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LB.AsFloat);

            wwDBGrid17.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KNT.AsFloat);
        end; 
end;

procedure TTerimaDariFinishingFrm.VTglAwal11Change(Sender: TObject);
begin
  VTglAkhir11.Date:=trunc(EndOfTheMonth(VTglAwal11.Date));
end;

procedure TTerimaDariFinishingFrm.VTglAkhir11Change(Sender: TObject);
begin
  if VTglAwal11.Date>VTglAkhir11.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir11.Date:=VTglAwal11.Date;
  end;
end;

procedure TTerimaDariFinishingFrm.SpeedButton1Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;

            if not QLoom1.QBEMode then
            begin
                wwDBGrid15.Options:=wwDBGrid15.Options-[dgRowSelect,dgAlwaysShowSelection];
                QLoom1.QBEMode:=TRUE;
            end
            else
                QLoom1.ClearQBE;

        end
    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;

            if not QPerLoom.QBEMode then
            begin
                wwDBGrid14.Options:=wwDBGrid14.Options-[dgRowSelect,dgAlwaysShowSelection];
                QPerLoom.QBEMode:=TRUE;
            end
            else
                QPerLoom.ClearQBE;
            
        end
    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;
            
            if not QLoom4.QBEMode then
            begin
                wwDBGrid16.Options:=wwDBGrid16.Options-[dgRowSelect,dgAlwaysShowSelection];
                QLoom4.QBEMode:=TRUE;
            end
            else
                QLoom4.ClearQBE;

        end
    else
        begin
            wwDBGrid17.BringToFront;

            if not QLoom3.QBEMode then
            begin
                wwDBGrid17.Options:=wwDBGrid17.Options-[dgRowSelect,dgAlwaysShowSelection];
                QLoom3.QBEMode:=TRUE;
            end
            else
                QLoom3.ClearQBE;
            
        end; 
end;

procedure TTerimaDariFinishingFrm.SpeedButton2Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47, vt48, vt49, vt50,
    vt51, vt52: real;

begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;
        
            if QLoom1.QBEMode then
            begin
                QLoom1.ExecuteQBE;
                wwDBGrid15.Options:=wwDBGrid15.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini

                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0; vt8 := 0; vt9 := 0;
                vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
                vt20 := 0; vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0; vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0;
                vt30 := 0; vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0; vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0;
                vt40 := 0; vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0; vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0;
                vt50 := 0; vt51 := 0; vt52 := 0;

                while not QLoom1.Eof do
                    begin
                        vt1 := vt1 + QLoom1POTONG.AsFloat;

                        vt2 := vt2 + QLoom1QTY3.AsFloat;
                        vt3 := vt3 + QLoom1BGRADE.AsFloat;
                        vt4 := vt4 + QLoom1QTY2.AsFloat;

                        vt8 := vt8 + QLoom1P_BK.AsFloat;
                        vt9 := vt9 + QLoom1P_BGRADE.AsFloat;
                        vt10 := vt10 + QLoom1P_BS.AsFloat;

                        vt14 := vt14 + QLoom1LD.AsFloat;
                        vt15 := vt15 + QLoom1LT.AsFloat;
                        vt16 := vt16 + QLoom1LPT.AsFloat;
                        vt17 := vt17 + QLoom1LRG.AsFloat;
                        vt18 := vt18 + QLoom1WL.AsFloat;
                        vt19 := vt19 + QLoom1FLS.AsFloat;
                        vt20 := vt20 + QLoom1FLP.AsFloat;
                        vt21 := vt21 + QLoom1NEPS.AsFloat;
                        vt22 := vt22 + QLoom1PP.AsFloat;
                        vt23 := vt23 + QLoom1WP.AsFloat;
                        vt24 := vt24 + QLoom1OJ.AsFloat;
                        vt25 := vt25 + QLoom1CRT.AsFloat;
                        vt26 := vt26 + QLoom1BTS.AsFloat;
                        vt27 := vt27 + QLoom1BTB.AsFloat;
                        vt28 := vt28 + QLoom1BO.AsFloat;
                        vt29 := vt29 + QLoom1SC.AsFloat;
                        vt30 := vt30 + QLoom1SLL.AsFloat;

                        vt31 := vt31 + QLoom1CK.AsFloat;
                        vt32 := vt32 + QLoom1CAJ.AsFloat;
                        vt33 := vt33 + QLoom1KTR.AsFloat;
                        vt34 := vt34 + QLoom1PDK.AsFloat;
                        vt35 := vt35 + QLoom1KP.AsFloat;
                        vt36 := vt36 + QLoom1SBK.AsFloat;
                        vt37 := vt37 + QLoom1UTS.AsFloat;
                        vt38 := vt38 + QLoom1KNB.AsFloat;
                        vt39 := vt39 + QLoom1AFL.AsFloat;

                        vt40 := vt40 + QLoom1BS_FLS.AsFloat;
                        vt41 := vt41 + QLoom1BS_FLP.AsFloat;
                        vt42 := vt42 + QLoom1BS_BTS.AsFloat;
                        vt43 := vt43 + QLoom1BS_BTB.AsFloat;
                        vt44 := vt44 + QLoom1BS_TK.AsFloat;

                        vt45 := vt45 + QLoom1KECOES_BG.AsFloat;
                        vt46 := vt46 + QLoom1KECOES_BS.AsFloat;

                        vt47 := vt47 + QLoom1KBR.AsFloat;
                        vt48 := vt48 + QLoom1LK.AsFloat;
                        vt49 := vt49 + QLoom1LB.AsFloat;
                        vt50 := vt50 + QLoom1P_LK.AsFloat;
                        vt51 := vt51 + QLoom1P_LB.AsFloat;

                        vt52 := vt52 + QLoom1KNT.AsFloat;

                        QLoom1.Next;
                    end;
                
                wwDBGrid15.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid15.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid15.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid15.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid15.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
                wwDBGrid15.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
                wwDBGrid15.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

                wwDBGrid15.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);
                wwDBGrid15.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
                wwDBGrid15.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
                wwDBGrid15.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);
                wwDBGrid15.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
                wwDBGrid15.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
                wwDBGrid15.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
                wwDBGrid15.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);
                wwDBGrid15.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);
                wwDBGrid15.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt23);
                wwDBGrid15.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt24);
                wwDBGrid15.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt25);
                wwDBGrid15.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt26);
                wwDBGrid15.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt27);
                wwDBGrid15.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt28);
                wwDBGrid15.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt29);
                wwDBGrid15.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt30);
                wwDBGrid15.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt31);
                wwDBGrid15.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt32);
                wwDBGrid15.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt33);
                wwDBGrid15.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt34);
                wwDBGrid15.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt35);
                wwDBGrid15.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt36);
                wwDBGrid15.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt37);
                wwDBGrid15.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt38);
                wwDBGrid15.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt39);
                wwDBGrid15.ColumnByName('BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt40);
                wwDBGrid15.ColumnByName('BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt41);
                wwDBGrid15.ColumnByName('BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt42);
                wwDBGrid15.ColumnByName('BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt43);
                wwDBGrid15.ColumnByName('BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt44);

                wwDBGrid15.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
                wwDBGrid15.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);

                wwDBGrid15.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
                wwDBGrid15.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid15.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid15.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid15.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid15.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);

            end
        end
    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;

            if QPerLoom.QBEMode then
            begin
                QPerLoom.ExecuteQBE;
                wwDBGrid14.Options:=wwDBGrid14.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini
                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0; vt8 := 0; vt9 := 0;
                vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
                vt20 := 0; vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0; vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0;
                vt30 := 0; vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0; vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0;
                vt40 := 0; vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0; vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0;
                vt50 := 0; vt51 := 0; vt52 := 0;

                while not QPerLoom.Eof do
                    begin
                        vt1 := vt1 + QPerLoomPOTONG.AsFloat;

                        vt2 := vt2 + QPerLoomQTY3.AsFloat;
                        vt3 := vt3 + QPerLoomBGRADE.AsFloat;
                        vt4 := vt4 + QPerLoomQTY2.AsFloat;

                        vt8 := vt8 + QPerLoomP_BK.AsFloat;
                        vt9 := vt9 + QPerLoomP_BGRADE.AsFloat;
                        vt10 := vt10 + QPerLoomP_BS.AsFloat;

                        vt14 := vt14 + QPerLoomLD.AsFloat;
                        vt15 := vt15 + QPerLoomLT.AsFloat;
                        vt16 := vt16 + QPerLoomLPT.AsFloat;
                        vt17 := vt17 + QPerLoomLRG.AsFloat;
                        vt18 := vt18 + QPerLoomWL.AsFloat;
                        vt19 := vt19 + QPerLoomFLS.AsFloat;
                        vt20 := vt20 + QPerLoomFLP.AsFloat;
                        vt21 := vt21 + QPerLoomNEPS.AsFloat;
                        vt22 := vt22 + QPerLoomPP.AsFloat;
                        vt23 := vt23 + QPerLoomWP.AsFloat;
                        vt24 := vt24 + QPerLoomOJ.AsFloat;
                        vt25 := vt25 + QPerLoomCRT.AsFloat;
                        vt26 := vt26 + QPerLoomBTS.AsFloat;
                        vt27 := vt27 + QPerLoomBTB.AsFloat;
                        vt28 := vt28 + QPerLoomBO.AsFloat;
                        vt29 := vt29 + QPerLoomSC.AsFloat;
                        vt30 := vt30 + QPerLoomSLL.AsFloat;

                        vt31 := vt31 + QPerLoomCK.AsFloat;
                        vt32 := vt32 + QPerLoomCAJ.AsFloat;
                        vt33 := vt33 + QPerLoomKTR.AsFloat;
                        vt34 := vt34 + QPerLoomPDK.AsFloat;
                        vt35 := vt35 + QPerLoomKP.AsFloat;
                        vt36 := vt36 + QPerLoomSBK.AsFloat;
                        vt37 := vt37 + QPerLoomUTS.AsFloat;
                        vt38 := vt38 + QPerLoomKNB.AsFloat;
                        vt39 := vt39 + QPerLoomAFL.AsFloat;

                        vt40 := vt40 + QPerLoomBS_FLS.AsFloat;
                        vt41 := vt41 + QPerLoomBS_FLP.AsFloat;
                        vt42 := vt42 + QPerLoomBS_BTS.AsFloat;
                        vt43 := vt43 + QPerLoomBS_BTB.AsFloat;
                        vt44 := vt44 + QPerLoomBS_TK.AsFloat;

                        vt45 := vt45 + QPerLoomKECOES_BG.AsFloat;
                        vt46 := vt46 + QPerLoomKECOES_BS.AsFloat;

                        vt47 := vt47 + QPerLoomKBR.AsFloat;
                        vt48 := vt48 + QPerLoomLK.AsFloat;
                        vt49 := vt49 + QPerLoomLB.AsFloat;
                        vt50 := vt50 + QPerLoomP_LK.AsFloat;
                        vt51 := vt51 + QPerLoomP_LB.AsFloat;

                        vt52 := vt52 + QPerLoomKNT.AsFloat;

                        QPerLoom.Next;
                    end;
                
                wwDBGrid14.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid14.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid14.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid14.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid14.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
                wwDBGrid14.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
                wwDBGrid14.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

                wwDBGrid14.ColumnByName('LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt14);
                wwDBGrid14.ColumnByName('LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt15);
                wwDBGrid14.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt16);
                wwDBGrid14.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt17);
                wwDBGrid14.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt18);
                wwDBGrid14.ColumnByName('FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt19);
                wwDBGrid14.ColumnByName('FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt20);
                wwDBGrid14.ColumnByName('NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt21);
                wwDBGrid14.ColumnByName('PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt22);
                wwDBGrid14.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt23);
                wwDBGrid14.ColumnByName('OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt24);
                wwDBGrid14.ColumnByName('CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt25);
                wwDBGrid14.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt26);
                wwDBGrid14.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt27);
                wwDBGrid14.ColumnByName('BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt28);
                wwDBGrid14.ColumnByName('SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt29);
                wwDBGrid14.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt30);
                wwDBGrid14.ColumnByName('CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt31);
                wwDBGrid14.ColumnByName('CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt32);
                wwDBGrid14.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt33);
                wwDBGrid14.ColumnByName('PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt34);
                wwDBGrid14.ColumnByName('KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt35);
                wwDBGrid14.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt36);
                wwDBGrid14.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt37);
                wwDBGrid14.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt38);
                wwDBGrid14.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt39);
                wwDBGrid14.ColumnByName('BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt40);
                wwDBGrid14.ColumnByName('BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt41);
                wwDBGrid14.ColumnByName('BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt42);
                wwDBGrid14.ColumnByName('BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt43);
                wwDBGrid14.ColumnByName('BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt44);

                wwDBGrid14.ColumnByName('KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);
                wwDBGrid14.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt46);

                wwDBGrid14.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
                wwDBGrid14.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid14.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid14.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid14.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid14.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);

            end            
        end
    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;
            
            if QLoom4.QBEMode then
            begin
                QLoom4.ExecuteQBE;
                wwDBGrid16.Options:=wwDBGrid16.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini

                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0; vt8 := 0; vt9 := 0;
                vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
                vt20 := 0; vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0; vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0;
                vt30 := 0; vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0; vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0;
                vt40 := 0; vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0; vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0;
                vt50 := 0; vt51 := 0; vt52 := 0;

                while not QLoom4.Eof do
                    begin
                        vt1 := vt1 + QLoom4POTONG.AsFloat;

                        vt2 := vt2 + QLoom4QTY3.AsFloat;
                        vt3 := vt3 + QLoom4BGRADE.AsFloat;
                        vt4 := vt4 + QLoom4QTY2.AsFloat;

                        vt8 := vt8 + QLoom4P_BK.AsFloat;
                        vt9 := vt9 + QLoom4P_BGRADE.AsFloat;
                        vt10 := vt10 + QLoom4P_BS.AsFloat;

                        vt14 := vt14 + QLoom4LD.AsFloat;
                        vt15 := vt15 + QLoom4LT.AsFloat;
                        vt16 := vt16 + QLoom4LPT.AsFloat;
                        vt17 := vt17 + QLoom4LRG.AsFloat;
                        vt18 := vt18 + QLoom4WL.AsFloat;
                        vt19 := vt19 + QLoom4FLS.AsFloat;
                        vt20 := vt20 + QLoom4FLP.AsFloat;
                        vt21 := vt21 + QLoom4NEPS.AsFloat;
                        vt22 := vt22 + QLoom4PP.AsFloat;
                        vt23 := vt23 + QLoom4WP.AsFloat;
                        vt24 := vt24 + QLoom4OJ.AsFloat;
                        vt25 := vt25 + QLoom4CRT.AsFloat;
                        vt26 := vt26 + QLoom4BTS.AsFloat;
                        vt27 := vt27 + QLoom4BTB.AsFloat;
                        vt28 := vt28 + QLoom4BO.AsFloat;
                        vt29 := vt29 + QLoom4SC.AsFloat;
                        vt30 := vt30 + QLoom4SLL.AsFloat;

                        vt31 := vt31 + QLoom4CK.AsFloat;
                        vt32 := vt32 + QLoom4CAJ.AsFloat;
                        vt33 := vt33 + QLoom4KTR.AsFloat;
                        vt34 := vt34 + QLoom4PDK.AsFloat;
                        vt35 := vt35 + QLoom4KP.AsFloat;
                        vt36 := vt36 + QLoom4SBK.AsFloat;
                        vt37 := vt37 + QLoom4UTS.AsFloat;
                        vt38 := vt38 + QLoom4KNB.AsFloat;
                        vt39 := vt39 + QLoom4AFL.AsFloat;

                        vt40 := vt40 + QLoom4BS_FLS.AsFloat;
                        vt41 := vt41 + QLoom4BS_FLP.AsFloat;
                        vt42 := vt42 + QLoom4BS_BTS.AsFloat;
                        vt43 := vt43 + QLoom4BS_BTB.AsFloat;
                        vt44 := vt44 + QLoom4BS_TK.AsFloat;

                        vt45 := vt45 + QLoom4KECOES_BG.AsFloat;
                        vt46 := vt46 + QLoom4KECOES_BS.AsFloat;

                        vt47 := vt47 + QLoom4KBR.AsFloat;
                        vt48 := vt48 + QLoom4LK.AsFloat;
                        vt49 := vt49 + QLoom4LB.AsFloat;
                        vt50 := vt50 + QLoom4P_LK.AsFloat;
                        vt51 := vt51 + QLoom4P_LB.AsFloat;

                        vt52 := vt52 + QLoom4KNT.AsFloat;

                        QLoom4.Next;
                    end;
                
                wwDBGrid16.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid16.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid16.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid16.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid16.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
                wwDBGrid16.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

                wwDBGrid16.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1)*100);
                wwDBGrid16.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1)*100);
                wwDBGrid16.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1)*100);
                wwDBGrid16.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1)*100);
                wwDBGrid16.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1)*100);
                wwDBGrid16.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1)*100);
                wwDBGrid16.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1)*100);
                wwDBGrid16.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1)*100);
                wwDBGrid16.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1)*100);
                wwDBGrid16.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1)*100);
                wwDBGrid16.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1)*100);
                wwDBGrid16.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1)*100);
                wwDBGrid16.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1)*100);
                wwDBGrid16.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1)*100);
                wwDBGrid16.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1)*100);
                wwDBGrid16.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1)*100);
                wwDBGrid16.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1)*100);
                wwDBGrid16.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1)*100);
                wwDBGrid16.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1)*100);
                wwDBGrid16.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1)*100);
                wwDBGrid16.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1)*100);
                wwDBGrid16.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1)*100);
                wwDBGrid16.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1)*100);
                wwDBGrid16.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1)*100);
                wwDBGrid16.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1)*100);
                wwDBGrid16.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1)*100);
                wwDBGrid16.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1)*100);

                wwDBGrid16.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt45/vt1)*100);
                wwDBGrid16.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1)*100);

                wwDBGrid16.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1)*100);
                wwDBGrid16.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid16.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid16.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid16.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid16.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);

            end
        end
    else
        begin
            wwDBGrid17.BringToFront;

            if QLoom3.QBEMode then
            begin
                QLoom3.ExecuteQBE;
                wwDBGrid17.Options:=wwDBGrid17.Options+[dgRowSelect,dgAlwaysShowSelection];
                //disini

                vt1 := 0; vt2 := 0; vt3 := 0; vt4 := 0; vt5 := 0; vt6 := 0; vt7 := 0; vt8 := 0; vt9 := 0;
                vt10 := 0; vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0; vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0;
                vt20 := 0; vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0; vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0;
                vt30 := 0; vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0; vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0;
                vt40 := 0; vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0; vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0;
                vt50 := 0; vt51 := 0; vt52 := 0;

                while not QLoom3.Eof do
                    begin
                        vt1 := vt1 + QLoom3POTONG.AsFloat;

                        vt2 := vt2 + QLoom3QTY3.AsFloat;
                        vt3 := vt3 + QLoom3BGRADE.AsFloat;
                        vt4 := vt4 + QLoom3QTY2.AsFloat;

                        vt8 := vt8 + QLoom3P_BK.AsFloat;
                        vt9 := vt9 + QLoom3P_BGRADE.AsFloat;
                        vt10 := vt10 + QLoom3P_BS.AsFloat;

                        vt14 := vt14 + QLoom3LD.AsFloat;
                        vt15 := vt15 + QLoom3LT.AsFloat;
                        vt16 := vt16 + QLoom3LPT.AsFloat;
                        vt17 := vt17 + QLoom3LRG.AsFloat;
                        vt18 := vt18 + QLoom3WL.AsFloat;
                        vt19 := vt19 + QLoom3FLS.AsFloat;
                        vt20 := vt20 + QLoom3FLP.AsFloat;
                        vt21 := vt21 + QLoom3NEPS.AsFloat;
                        vt22 := vt22 + QLoom3PP.AsFloat;
                        vt23 := vt23 + QLoom3WP.AsFloat;
                        vt24 := vt24 + QLoom3OJ.AsFloat;
                        vt25 := vt25 + QLoom3CRT.AsFloat;
                        vt26 := vt26 + QLoom3BTS.AsFloat;
                        vt27 := vt27 + QLoom3BTB.AsFloat;
                        vt28 := vt28 + QLoom3BO.AsFloat;
                        vt29 := vt29 + QLoom3SC.AsFloat;
                        vt30 := vt30 + QLoom3SLL.AsFloat;

                        vt31 := vt31 + QLoom3CK.AsFloat;
                        vt32 := vt32 + QLoom3CAJ.AsFloat;
                        vt33 := vt33 + QLoom3KTR.AsFloat;
                        vt34 := vt34 + QLoom3PDK.AsFloat;
                        vt35 := vt35 + QLoom3KP.AsFloat;
                        vt36 := vt36 + QLoom3SBK.AsFloat;
                        vt37 := vt37 + QLoom3UTS.AsFloat;
                        vt38 := vt38 + QLoom3KNB.AsFloat;
                        vt39 := vt39 + QLoom3AFL.AsFloat;

                        vt40 := vt40 + QLoom3BS_FLS.AsFloat;
                        vt41 := vt41 + QLoom3BS_FLP.AsFloat;
                        vt42 := vt42 + QLoom3BS_BTS.AsFloat;
                        vt43 := vt43 + QLoom3BS_BTB.AsFloat;
                        vt44 := vt44 + QLoom3BS_TK.AsFloat;

                        vt45 := vt45 + QLoom3KECOES_BG.AsFloat;
                        vt46 := vt46 + QLoom3KECOES_BS.AsFloat;

                        vt47 := vt47 + QLoom3KBR.AsFloat;
                        vt48 := vt48 + QLoom3LK.AsFloat;
                        vt49 := vt49 + QLoom3LB.AsFloat;
                        vt50 := vt50 + QLoom3P_LK.AsFloat;
                        vt51 := vt51 + QLoom3P_LB.AsFloat;

                        vt52 := vt52 + QLoom3KNT.AsFloat;

                        QLoom3.Next;
                    end;
                
                wwDBGrid17.ColumnByName('POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

                wwDBGrid17.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
                wwDBGrid17.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
                wwDBGrid17.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

                wwDBGrid17.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1)*100);
                wwDBGrid17.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

                wwDBGrid17.ColumnByName('P_LD').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt14/vt1)*100);
                wwDBGrid17.ColumnByName('P_LT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt15/vt1)*100);
                wwDBGrid17.ColumnByName('P_LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt16/vt1)*100);
                wwDBGrid17.ColumnByName('P_LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt17/vt1)*100);
                wwDBGrid17.ColumnByName('P_WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt18/vt1)*100);
                wwDBGrid17.ColumnByName('P_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt19/vt1)*100);
                wwDBGrid17.ColumnByName('P_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt20/vt1)*100);
                wwDBGrid17.ColumnByName('P_NEPS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt21/vt1)*100);
                wwDBGrid17.ColumnByName('P_PP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt22/vt1)*100);
                wwDBGrid17.ColumnByName('P_WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt23/vt1)*100);
                wwDBGrid17.ColumnByName('P_OJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt24/vt1)*100);
                wwDBGrid17.ColumnByName('P_CRT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt25/vt1)*100);
                wwDBGrid17.ColumnByName('P_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt26/vt1)*100);
                wwDBGrid17.ColumnByName('P_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt27/vt1)*100);
                wwDBGrid17.ColumnByName('P_BO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt28/vt1)*100);
                wwDBGrid17.ColumnByName('P_SC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt29/vt1)*100);
                wwDBGrid17.ColumnByName('P_SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt30/vt1)*100);
                wwDBGrid17.ColumnByName('P_CK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt31/vt1)*100);
                wwDBGrid17.ColumnByName('P_CAJ').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt32/vt1)*100);
                wwDBGrid17.ColumnByName('P_KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt33/vt1)*100);
                wwDBGrid17.ColumnByName('P_PDK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt34/vt1)*100);
                wwDBGrid17.ColumnByName('P_KP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt35/vt1)*100);
                wwDBGrid17.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt36/vt1)*100);
                wwDBGrid17.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt37/vt1)*100);
                wwDBGrid17.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt38/vt1)*100);
                wwDBGrid17.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt39/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS_FLS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt40/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS_FLP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt41/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS_BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt42/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS_BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt43/vt1)*100);
                wwDBGrid17.ColumnByName('P_BS_TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt44/vt1)*100);

                wwDBGrid17.ColumnByName('P_KECOES_BG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt45/vt1)*100);
                wwDBGrid17.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt46/vt1)*100);

                wwDBGrid17.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt47/vt1)*100);
                wwDBGrid17.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid17.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
                wwDBGrid17.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid17.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid17.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);

            end
        end; 
end;

procedure TTerimaDariFinishingFrm.RLoomClick(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;
            RPrint.BringToFront;
        end
    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;
            RPrint.BringToFront;
        end
    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;
            RLoom2.BringToFront;
        end
    else
        begin
            wwDBGrid17.BringToFront;
            RLoom2.BringToFront;
        end;
end;

procedure TTerimaDariFinishingFrm.BitBtn20Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;

            if QLoom1.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:=''+TabSheet13.Caption+' Inspecting Per Loom PCS';
                wwDBGrid15.ExportOptions.TitleName:=''+TabSheet13.Caption+' Inspecting Per Loom PCS';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid15.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid15.ExportOptions.Save;
                    ShowMessage('Simpan Sukses !');
                    except
                    ShowMessage('Simpan Gagal !');
                    end;
                end;
            end
            else
                ShowMessage('Tabel belum di-OPEN !');
            
        end
    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;

            if QPerLoom.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:=''+TabSheet13.Caption+' Inspecting Per Loom KP';
                wwDBGrid14.ExportOptions.TitleName:=''+TabSheet13.Caption+' Inspecting Per Loom KP';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid14.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid14.ExportOptions.Save;
                    ShowMessage('Simpan Sukses !');
                    except
                    ShowMessage('Simpan Gagal !');
                    end;
                end;
            end
            else
                ShowMessage('Tabel belum di-OPEN !');
        end
    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;

            if QLoom4.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:=''+TabSheet13.Caption+' Inspecting Per Loom % PCS';
                wwDBGrid16.ExportOptions.TitleName:=''+TabSheet13.Caption+' Inspecting Per Loom % PCS';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid16.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid16.ExportOptions.Save;
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
            wwDBGrid17.BringToFront;

            if QLoom3.Active then
            begin
                DMFrm.SaveDialog1.DefaultExt:='XLK';
                DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
                DMFrm.SaveDialog1.FileName:=''+TabSheet13.Caption+' Inspecting Per Loom % KP';
                wwDBGrid17.ExportOptions.TitleName:=''+TabSheet13.Caption+' Inspecting Per Loom % KP';
                if DMFrm.SaveDialog1.Execute then
                begin
                    try
                    wwDBGrid17.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                    wwDBGrid17.ExportOptions.Save;
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

// Loom Intern
procedure TTerimaDariFinishingFrm.PrintLoomIntern;
var
  HTMLContent: TStringList;
  FieldName: String;
  FileName: string;
  TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
  TotalBGrade: Double;
  TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

  TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
  TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
  TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS, TotalKBR, TotalLK, TotalLB, TotalKNT: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS, TotalP_LK, TotalP_LB, TotalP_KNT: Real;
  
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

    TotalLD := 0; TotalLT := 0; TotalLPT := 0; TotalLRG := 0; TotalWL := 0;
    TotalFLS := 0; TotalFLP := 0; TotalNEPS := 0; TotalPP := 0; TotalWP := 0;
    TotalOJ := 0; TotalCRT := 0; TotalBTS := 0; TotalBTB := 0; TotalBO := 0;
    TotalSC := 0; TotalSLL := 0; TotalCK := 0; TotalCAJ := 0; TotalKTR := 0;
    TotalPDK := 0; TotalKP := 0; TotalKECOES_BG := 0; TotalSBK := 0;
    TotalUTS := 0; TotalKNB := 0; TotalBS_FLS := 0; TotalBS_FLP := 0;
    TotalBS_BTS := 0; TotalBS_BTB := 0; TotalBS_TK := 0; TotalAFL := 0;
    TotalKECOES_BS := 0; TotalKBR := 0; TotalLK := 0; TotalLB := 0; TotalKNT := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


    if VTglAwal11.Date = VTglAkhir11.Date then
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
    end
    else
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
    end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    // HTMLContent.Add('<th>Kode Prod</th>');
    // HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>Ket</th>');        // Nama Loom
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');

    // DEFECT BGRADE
    HTMLContent.Add('<th>LD</th>');
    HTMLContent.Add('<th>LT</th>');
    HTMLContent.Add('<th>LPT</th>');
    HTMLContent.Add('<th>LRG</th>');
    HTMLContent.Add('<th>WL</th>');
    HTMLContent.Add('<th>FLS</th>');
    HTMLContent.Add('<th>FLP</th>');
    HTMLContent.Add('<th>NEPS</th>');
    HTMLContent.Add('<th>PP</th>');
    HTMLContent.Add('<th>WP</th>');
    HTMLContent.Add('<th>OJ</th>');
    HTMLContent.Add('<th>CRT</th>');
    HTMLContent.Add('<th>BTS</th>');
    HTMLContent.Add('<th>BTB</th>');
    HTMLContent.Add('<th>BO</th>');
    HTMLContent.Add('<th>SC</th>');
    HTMLContent.Add('<th>SLL</th>');
    HTMLContent.Add('<th>CK</th>');
    HTMLContent.Add('<th>CAJ</th>');
    HTMLContent.Add('<th>KTR</th>');
    HTMLContent.Add('<th>PDK</th>');
    HTMLContent.Add('<th>KP</th>');
    HTMLContent.Add('<th>KECOES_BG</th>');
    HTMLContent.Add('<th>KMBG RSK</th>');

    // DEFECT BS
    HTMLContent.Add('<th>SBK</th>');
    HTMLContent.Add('<th>LBG</th>');
    HTMLContent.Add('<th>UTS</th>');
    HTMLContent.Add('<th>KNB</th>');
    HTMLContent.Add('<th>BS_SLL</th>');
    HTMLContent.Add('<th>BS_FLP</th>');
    HTMLContent.Add('<th>BS_BTS</th>');
    HTMLContent.Add('<th>BS_SC</th>');
    HTMLContent.Add('<th>BS_TK</th>');
    HTMLContent.Add('<th>KMBG RSK</th>');
    HTMLContent.Add('<th>KECOES_BS</th>');

    HTMLContent.Add('<th>AFL LGS(CM)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(CM)</th>');
    HTMLContent.Add('<th>AFL LGS(KG)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(KG)</th>');
    HTMLContent.Add('</tr>');


    wwDBGrid15.DataSource.DataSet.First;
    while not wwDBGrid15.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        // HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
        // HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat * 100)) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
        

        // Menambahkan data untuk kolom tambahan

       // Tambahkan data untuk kolom tambahan
        TotalLD := TotalLD + wwDBGrid15.DataSource.DataSet.FieldByName('LD').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LD').AsFloat) + '</td>');

        TotalLT := TotalLT + wwDBGrid15.DataSource.DataSet.FieldByName('LT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LT').AsFloat) + '</td>');

        TotalLPT := TotalLPT + wwDBGrid15.DataSource.DataSet.FieldByName('LPT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LPT').AsFloat) + '</td>');

        TotalLRG := TotalLRG + wwDBGrid15.DataSource.DataSet.FieldByName('LRG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LRG').AsFloat) + '</td>');

        TotalWL := TotalWL + wwDBGrid15.DataSource.DataSet.FieldByName('WL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('WL').AsFloat) + '</td>');

        // Menambahkan kode serupa untuk kolom lainnya
        TotalFLS := TotalFLS + wwDBGrid15.DataSource.DataSet.FieldByName('FLS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('FLS').AsFloat) + '</td>');

        TotalFLP := TotalFLP + wwDBGrid15.DataSource.DataSet.FieldByName('FLP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('FLP').AsFloat) + '</td>');

        TotalNEPS := TotalNEPS + wwDBGrid15.DataSource.DataSet.FieldByName('NEPS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('NEPS').AsFloat) + '</td>');

        TotalPP := TotalPP + wwDBGrid15.DataSource.DataSet.FieldByName('PP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('PP').AsFloat) + '</td>');

        TotalWP := TotalWP + wwDBGrid15.DataSource.DataSet.FieldByName('WP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('WP').AsFloat) + '</td>');

        TotalOJ := TotalOJ + wwDBGrid15.DataSource.DataSet.FieldByName('OJ').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('OJ').AsFloat) + '</td>');

        TotalCRT := TotalCRT + wwDBGrid15.DataSource.DataSet.FieldByName('CRT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('CRT').AsFloat) + '</td>');

        TotalBTS := TotalBTS + wwDBGrid15.DataSource.DataSet.FieldByName('BTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BTS').AsFloat) + '</td>');

        TotalBTB := TotalBTB + wwDBGrid15.DataSource.DataSet.FieldByName('BTB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BTB').AsFloat) + '</td>');

        TotalBO := TotalBO + wwDBGrid15.DataSource.DataSet.FieldByName('BO').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BO').AsFloat) + '</td>');

        TotalSC := TotalSC + wwDBGrid15.DataSource.DataSet.FieldByName('SC').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('SC').AsFloat) + '</td>');

        TotalSLL := TotalSLL + wwDBGrid15.DataSource.DataSet.FieldByName('SLL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('SLL').AsFloat) + '</td>');

        TotalCK := TotalCK + wwDBGrid15.DataSource.DataSet.FieldByName('CK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('CK').AsFloat) + '</td>');

        TotalCAJ := TotalCAJ + wwDBGrid15.DataSource.DataSet.FieldByName('CAJ').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('CAJ').AsFloat) + '</td>');

        TotalKTR := TotalKTR + wwDBGrid15.DataSource.DataSet.FieldByName('KTR').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KTR').AsFloat) + '</td>');

        TotalPDK := TotalPDK + wwDBGrid15.DataSource.DataSet.FieldByName('PDK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('PDK').AsFloat) + '</td>');

        TotalKP := TotalKP + wwDBGrid15.DataSource.DataSet.FieldByName('KP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KP').AsFloat) + '</td>');

        TotalKECOES_BG := TotalKECOES_BG + wwDBGrid15.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat) + '</td>');

        TotalKBR := TotalKBR + wwDBGrid15.DataSource.DataSet.FieldByName('KBR').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KBR').AsFloat) + '</td>');

        TotalSBK := TotalSBK + wwDBGrid15.DataSource.DataSet.FieldByName('SBK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('SBK').AsFloat) + '</td>');

        TotalKNT := TotalKNT + wwDBGrid15.DataSource.DataSet.FieldByName('KNT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KNT').AsFloat) + '</td>');

        TotalUTS := TotalUTS + wwDBGrid15.DataSource.DataSet.FieldByName('UTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('UTS').AsFloat) + '</td>');

        TotalKNB := TotalKNB + wwDBGrid15.DataSource.DataSet.FieldByName('KNB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KNB').AsFloat) + '</td>');

        TotalBS_FLS := TotalBS_FLS + wwDBGrid15.DataSource.DataSet.FieldByName('BS_FLS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BS_FLS').AsFloat) + '</td>');

        TotalBS_FLP := TotalBS_FLP + wwDBGrid15.DataSource.DataSet.FieldByName('BS_FLP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BS_FLP').AsFloat) + '</td>');

        TotalBS_BTS := TotalBS_BTS + wwDBGrid15.DataSource.DataSet.FieldByName('BS_BTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BS_BTS').AsFloat) + '</td>');

        TotalBS_BTB := TotalBS_BTB + wwDBGrid15.DataSource.DataSet.FieldByName('BS_BTB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BS_BTB').AsFloat) + '</td>');

        TotalBS_TK := TotalBS_TK + wwDBGrid15.DataSource.DataSet.FieldByName('BS_TK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BS_TK').AsFloat) + '</td>');

        TotalAFL := TotalAFL + wwDBGrid15.DataSource.DataSet.FieldByName('AFL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('AFL').AsFloat) + '</td>');

        TotalKECOES_BS := TotalKECOES_BS + wwDBGrid15.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat) + '</td>');

        // --------------------------------------------------------------------------------------------------------------------------------

        TotalLK := TotalLK + wwDBGrid15.DataSource.DataSet.FieldByName('LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LK').AsFloat) + '</td>');

        TotalLB := TotalLB + wwDBGrid15.DataSource.DataSet.FieldByName('LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('LB').AsFloat) + '</td>');

        TotalP_LK := TotalP_LK + wwDBGrid15.DataSource.DataSet.FieldByName('P_LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('P_LK').AsFloat) + '</td>');

        TotalP_LB := TotalP_LB + wwDBGrid15.DataSource.DataSet.FieldByName('P_LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('P_LB').AsFloat) + '</td>');


        // Lanjutkan untuk semua field tambahan...
        HTMLContent.Add('</tr>');
        wwDBGrid15.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="2" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

    // Tambahkan total untuk field tambahan
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLD) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLPT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLRG) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalWL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalFLS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalFLP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalNEPS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalPP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalWP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalOJ) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCRT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBTB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBO) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSC) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSLL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCAJ) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKTR) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalPDK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKECOES_BG) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKBR) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSBK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKNT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalUTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKNB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_FLS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_FLP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_BTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_BTB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_TK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalAFL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKECOES_BS) + '</b></td>');

    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LB) + '</b></td>');

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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

// Loom PPC
procedure TTerimaDariFinishingFrm.PrintLoomPPC;
var
  HTMLContent: TStringList;
  FieldName: String;
  FileName: string;
  TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
  TotalBGrade: Double;
  TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

  TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
  TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
  TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS: Real;
begin
  WebBrowser1.BringToFront;
  HTMLContent := TStringList.Create;
  try
    // Inisialisasi variabel total
    TotalProd := 0;
    TotalBk := 0;
    TotalBGrade := 0;  // Tambahkan ini
    TotalBs := 0;
    TotalPBk := 0;
    TotalPctBGrade := 0;  // Tambahkan ini
    TotalPbs := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}'); // Style untuk tanggal serah terima
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    // HTMLContent.Add('<h4 style="text-align: center;">Desember 2024</h4>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');

    // HTMLContent.Add('<p>Tanggal: ' + FormatDateTime('dd mmmm yyyy', Date) + '</p>');

    if VTglAwal11.Date = VTglAkhir11.Date then
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
      end
    else
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
      end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    // HTMLContent.Add('<th>LOOM</th><th>Kode Prod</th><th>Konstruksi</th><th>Wvg</th><th>Prod</th><th>BK</th><th>% BK</th><th>BGRADE</th><th>% BGRADE</th><th>BS</th><th>% BS</th>');

    // HTMLContent.Add('<th>Kode Prod</th>');
    // HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>LOOM</th>');
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');        // % BK
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');        // % BGRADE
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');        // % BS


    HTMLContent.Add('</tr>');

    // Menambahkan baris data dari wwDBGrid15
    wwDBGrid15.DataSource.DataSet.First;
    while not wwDBGrid15.DataSource.DataSet.Eof do
    begin
      HTMLContent.Add('<tr>');

      // Menambahkan data per kolom sesuai dengan field
      // HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
      // HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
      HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
      HTMLContent.Add('<td>' + wwDBGrid15.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
      
      TotalProd := TotalProd + wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

      TotalBk := TotalBk + wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
      // Menghitung dan menampilkan % BK
      if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPBk := (wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat * 100)) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBGrade := TotalBGrade + wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
      // Menampilkan data BGrade
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BGRADE
      if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPBg := (wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBs := TotalBs + wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BS
      if wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPbs := (wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid15.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid15.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      HTMLContent.Add('</tr>');
      wwDBGrid15.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total di bawah tabel
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="2" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('</tr>');

    // Menambahkan kolom tanda tangan di bagian bawah halaman
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

    // Simpan file HTML dan tampilkan
    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

  finally
    HTMLContent.Free;
  end;
end;

// Loom Kp Intern
procedure TTerimaDariFinishingFrm.PrintLoomKpIntern;
var
  HTMLContent: TStringList;
  FieldName: String;
  FileName: string;
  TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
  TotalBGrade: Double;
  TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

  TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
  TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
  TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS, TotalKBR, TotalLK, TotalLB, TotalP_LK, TotalP_LB, TotalKNT: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP, TotalP_KNT: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS: Real;
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

    TotalLD := 0; TotalLT := 0; TotalLPT := 0; TotalLRG := 0; TotalWL := 0;
    TotalFLS := 0; TotalFLP := 0; TotalNEPS := 0; TotalPP := 0; TotalWP := 0;
    TotalOJ := 0; TotalCRT := 0; TotalBTS := 0; TotalBTB := 0; TotalBO := 0;
    TotalSC := 0; TotalSLL := 0; TotalCK := 0; TotalCAJ := 0; TotalKTR := 0;
    TotalPDK := 0; TotalKP := 0; TotalKECOES_BG := 0; TotalSBK := 0;
    TotalUTS := 0; TotalKNB := 0; TotalBS_FLS := 0; TotalBS_FLP := 0;
    TotalBS_BTS := 0; TotalBS_BTB := 0; TotalBS_TK := 0; TotalAFL := 0;
    TotalKECOES_BS := 0; TotalKBR := 0; TotalLK := 0; TotalLB := 0; TotalKNT := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


    if VTglAwal11.Date = VTglAkhir11.Date then
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
    end
    else
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
    end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>Kode Prod</th>');
    HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>Ket</th>');        // Nama Loom
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');

    // DEFECT BGRADE
    HTMLContent.Add('<th>LD</th>');
    HTMLContent.Add('<th>LT</th>');
    HTMLContent.Add('<th>LPT</th>');
    HTMLContent.Add('<th>LRG</th>');
    HTMLContent.Add('<th>WL</th>');
    HTMLContent.Add('<th>FLS</th>');
    HTMLContent.Add('<th>FLP</th>');
    HTMLContent.Add('<th>NEPS</th>');
    HTMLContent.Add('<th>PP</th>');
    HTMLContent.Add('<th>WP</th>');
    HTMLContent.Add('<th>OJ</th>');
    HTMLContent.Add('<th>CRT</th>');
    HTMLContent.Add('<th>BTS</th>');
    HTMLContent.Add('<th>BTB</th>');
    HTMLContent.Add('<th>BO</th>');
    HTMLContent.Add('<th>SC</th>');
    HTMLContent.Add('<th>SLL</th>');
    HTMLContent.Add('<th>CK</th>');
    HTMLContent.Add('<th>CAJ</th>');
    HTMLContent.Add('<th>KTR</th>');
    HTMLContent.Add('<th>PDK</th>');
    HTMLContent.Add('<th>KP</th>');
    HTMLContent.Add('<th>KECOES_BG</th>');
    HTMLContent.Add('<th>KMBG RSK</th>');

    // DEFECT BS
    HTMLContent.Add('<th>SBK</th>');
    HTMLContent.Add('<th>LBG</th>');
    HTMLContent.Add('<th>UTS</th>');
    HTMLContent.Add('<th>KNB</th>');
    HTMLContent.Add('<th>BS_SLL</th>');
    HTMLContent.Add('<th>BS_FLP</th>');
    HTMLContent.Add('<th>BS_BTS</th>');
    HTMLContent.Add('<th>BS_SC</th>');
    HTMLContent.Add('<th>BS_TK</th>');
    HTMLContent.Add('<th>KMBG RSK</th>');
    HTMLContent.Add('<th>KECOES_BS</th>');

    HTMLContent.Add('<th>AFL LGS(CM)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(CM)</th>');
    HTMLContent.Add('<th>AFL LGS(KG)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(KG)</th>');
    HTMLContent.Add('</tr>');


    wwDBGrid14.DataSource.DataSet.First;
    while not wwDBGrid14.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat * 100)) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // Menambahkan data untuk kolom tambahan

       // Tambahkan data untuk kolom tambahan
        TotalLD := TotalLD + wwDBGrid14.DataSource.DataSet.FieldByName('LD').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LD').AsFloat) + '</td>');

        TotalLT := TotalLT + wwDBGrid14.DataSource.DataSet.FieldByName('LT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LT').AsFloat) + '</td>');

        TotalLPT := TotalLPT + wwDBGrid14.DataSource.DataSet.FieldByName('LPT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LPT').AsFloat) + '</td>');

        TotalLRG := TotalLRG + wwDBGrid14.DataSource.DataSet.FieldByName('LRG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LRG').AsFloat) + '</td>');

        TotalWL := TotalWL + wwDBGrid14.DataSource.DataSet.FieldByName('WL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('WL').AsFloat) + '</td>');

        // Menambahkan kode serupa untuk kolom lainnya
        TotalFLS := TotalFLS + wwDBGrid14.DataSource.DataSet.FieldByName('FLS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('FLS').AsFloat) + '</td>');

        TotalFLP := TotalFLP + wwDBGrid14.DataSource.DataSet.FieldByName('FLP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('FLP').AsFloat) + '</td>');

        TotalNEPS := TotalNEPS + wwDBGrid14.DataSource.DataSet.FieldByName('NEPS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('NEPS').AsFloat) + '</td>');

        TotalPP := TotalPP + wwDBGrid14.DataSource.DataSet.FieldByName('PP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('PP').AsFloat) + '</td>');

        TotalWP := TotalWP + wwDBGrid14.DataSource.DataSet.FieldByName('WP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('WP').AsFloat) + '</td>');

        TotalOJ := TotalOJ + wwDBGrid14.DataSource.DataSet.FieldByName('OJ').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('OJ').AsFloat) + '</td>');

        TotalCRT := TotalCRT + wwDBGrid14.DataSource.DataSet.FieldByName('CRT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('CRT').AsFloat) + '</td>');

        TotalBTS := TotalBTS + wwDBGrid14.DataSource.DataSet.FieldByName('BTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BTS').AsFloat) + '</td>');

        TotalBTB := TotalBTB + wwDBGrid14.DataSource.DataSet.FieldByName('BTB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BTB').AsFloat) + '</td>');

        TotalBO := TotalBO + wwDBGrid14.DataSource.DataSet.FieldByName('BO').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BO').AsFloat) + '</td>');

        TotalSC := TotalSC + wwDBGrid14.DataSource.DataSet.FieldByName('SC').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('SC').AsFloat) + '</td>');

        TotalSLL := TotalSLL + wwDBGrid14.DataSource.DataSet.FieldByName('SLL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('SLL').AsFloat) + '</td>');

        TotalCK := TotalCK + wwDBGrid14.DataSource.DataSet.FieldByName('CK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('CK').AsFloat) + '</td>');

        TotalCAJ := TotalCAJ + wwDBGrid14.DataSource.DataSet.FieldByName('CAJ').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('CAJ').AsFloat) + '</td>');

        TotalKTR := TotalKTR + wwDBGrid14.DataSource.DataSet.FieldByName('KTR').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KTR').AsFloat) + '</td>');

        TotalPDK := TotalPDK + wwDBGrid14.DataSource.DataSet.FieldByName('PDK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('PDK').AsFloat) + '</td>');

        TotalKP := TotalKP + wwDBGrid14.DataSource.DataSet.FieldByName('KP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KP').AsFloat) + '</td>');

        TotalKECOES_BG := TotalKECOES_BG + wwDBGrid14.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat) + '</td>');

        TotalKBR := TotalKBR + wwDBGrid14.DataSource.DataSet.FieldByName('KBR').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KBR').AsFloat) + '</td>');

        TotalSBK := TotalSBK + wwDBGrid14.DataSource.DataSet.FieldByName('SBK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('SBK').AsFloat) + '</td>');

        TotalKNT := TotalKNT + wwDBGrid14.DataSource.DataSet.FieldByName('KNT').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KNT').AsFloat) + '</td>');

        TotalUTS := TotalUTS + wwDBGrid14.DataSource.DataSet.FieldByName('UTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('UTS').AsFloat) + '</td>');

        TotalKNB := TotalKNB + wwDBGrid14.DataSource.DataSet.FieldByName('KNB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KNB').AsFloat) + '</td>');

        TotalBS_FLS := TotalBS_FLS + wwDBGrid14.DataSource.DataSet.FieldByName('BS_FLS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BS_FLS').AsFloat) + '</td>');

        TotalBS_FLP := TotalBS_FLP + wwDBGrid14.DataSource.DataSet.FieldByName('BS_FLP').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BS_FLP').AsFloat) + '</td>');

        TotalBS_BTS := TotalBS_BTS + wwDBGrid14.DataSource.DataSet.FieldByName('BS_BTS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BS_BTS').AsFloat) + '</td>');

        TotalBS_BTB := TotalBS_BTB + wwDBGrid14.DataSource.DataSet.FieldByName('BS_BTB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BS_BTB').AsFloat) + '</td>');

        TotalBS_TK := TotalBS_TK + wwDBGrid14.DataSource.DataSet.FieldByName('BS_TK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BS_TK').AsFloat) + '</td>');

        TotalAFL := TotalAFL + wwDBGrid14.DataSource.DataSet.FieldByName('AFL').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('AFL').AsFloat) + '</td>');

        TotalKECOES_BS := TotalKECOES_BS + wwDBGrid14.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat) + '</td>');

        // --------------------------------------------------------------------------------------------------------------------------------

        TotalLK := TotalLK + wwDBGrid14.DataSource.DataSet.FieldByName('LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LK').AsFloat) + '</td>');

        TotalLB := TotalLB + wwDBGrid14.DataSource.DataSet.FieldByName('LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('LB').AsFloat) + '</td>');

        TotalP_LK := TotalP_LK + wwDBGrid14.DataSource.DataSet.FieldByName('P_LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('P_LK').AsFloat) + '</td>');

        TotalP_LB := TotalP_LB + wwDBGrid14.DataSource.DataSet.FieldByName('P_LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('P_LB').AsFloat) + '</td>');


        // Lanjutkan untuk semua field tambahan...
        HTMLContent.Add('</tr>');
        wwDBGrid14.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="4" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

    // Tambahkan total untuk field tambahan
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLD) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLPT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLRG) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalWL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalFLS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalFLP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalNEPS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalPP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalWP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalOJ) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCRT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBTB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBO) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSC) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSLL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalCAJ) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKTR) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalPDK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKECOES_BG) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKBR) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalSBK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKNT) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalUTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKNB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_FLS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_FLP) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_BTS) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_BTB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBS_TK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalAFL) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalKECOES_BS) + '</b></td>');

    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LB) + '</b></td>');

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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

// Loom Kp PPC
procedure TTerimaDariFinishingFrm.PrintLoomKpPPC;
var
  HTMLContent: TStringList;
  FieldName: String;
  FileName: string;
  TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
  TotalBGrade: Double;
  TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

  TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
  TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
  TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS: Real;
begin
  WebBrowser1.BringToFront;
  HTMLContent := TStringList.Create;
  try
    // Inisialisasi variabel total
    TotalProd := 0;
    TotalBk := 0;
    TotalBGrade := 0;  // Tambahkan ini
    TotalBs := 0;
    TotalPBk := 0;
    TotalPctBGrade := 0;  // Tambahkan ini
    TotalPbs := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}'); // Style untuk tanggal serah terima
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    // HTMLContent.Add('<h4 style="text-align: center;">Desember 2024</h4>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');

    // HTMLContent.Add('<p>Tanggal: ' + FormatDateTime('dd mmmm yyyy', Date) + '</p>');

    if VTglAwal11.Date = VTglAkhir11.Date then
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
      end
    else
      begin
        HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
      end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    // HTMLContent.Add('<th>LOOM</th><th>Kode Prod</th><th>Konstruksi</th><th>Wvg</th><th>Prod</th><th>BK</th><th>% BK</th><th>BGRADE</th><th>% BGRADE</th><th>BS</th><th>% BS</th>');

    HTMLContent.Add('<th>Kode Prod</th>');
    HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>LOOM</th>');
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');        // % BK
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');        // % BGRADE
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');        // % BS


    HTMLContent.Add('</tr>');

    // Menambahkan baris data dari wwDBGrid14
    wwDBGrid14.DataSource.DataSet.First;
    while not wwDBGrid14.DataSource.DataSet.Eof do
    begin
      HTMLContent.Add('<tr>');

      // Menambahkan data per kolom sesuai dengan field
      HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
      HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
      HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
      HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
      
      TotalProd := TotalProd + wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

      TotalBk := TotalBk + wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
      // Menghitung dan menampilkan % BK
      if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPBk := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat * 100)) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBGrade := TotalBGrade + wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
      // Menampilkan data BGrade
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BGRADE
      if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPBg := (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBs := TotalBs + wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BS
      if wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
      begin
          TotalPbs := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      HTMLContent.Add('</tr>');
      wwDBGrid14.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total di bawah tabel
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="4" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('</tr>');

    // Menambahkan kolom tanda tangan di bagian bawah halaman
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

    // Simpan file HTML dan tampilkan
    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

  finally
    HTMLContent.Free;
  end;
end;

// Print Loom Intern Persen
procedure TTerimaDariFinishingFrm.PrintLoomInternPersen;
var
    HTMLContent: TStringList;
    FieldName: String;
    FileName: string;
    TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
    TotalBGrade: Double;
    TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

    TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
    TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
    TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
    TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS, TotalKBR, TotalLK, TotalLB, TotalP_LK, TotalP_LB, TotalP_KBR, TotalP_KNT, TotalKNT: Real;

    TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
    TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
    TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
    TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS: Real;
    
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

    TotalLD := 0; TotalLT := 0; TotalLPT := 0; TotalLRG := 0; TotalWL := 0;
    TotalFLS := 0; TotalFLP := 0; TotalNEPS := 0; TotalPP := 0; TotalWP := 0;
    TotalOJ := 0; TotalCRT := 0; TotalBTS := 0; TotalBTB := 0; TotalBO := 0;
    TotalSC := 0; TotalSLL := 0; TotalCK := 0; TotalCAJ := 0; TotalKTR := 0;
    TotalPDK := 0; TotalKP := 0; TotalKECOES_BG := 0; TotalSBK := 0;
    TotalUTS := 0; TotalKNB := 0; TotalBS_FLS := 0; TotalBS_FLP := 0;
    TotalBS_BTS := 0; TotalBS_BTB := 0; TotalBS_TK := 0; TotalAFL := 0;
    TotalKECOES_BS := 0; TotalKBR := 0; TotalLK := 0; TotalLB := 0; TotalKNT := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


    if VTglAwal11.Date = VTglAkhir11.Date then
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
    end
    else
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
    end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    // HTMLContent.Add('<th>Kode Prod</th>');
    // HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>Ket</th>');        // Nama Loom
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');

    // DEFECT BGRADE
    HTMLContent.Add('<th>% LD</th>');
    HTMLContent.Add('<th>% LT</th>');
    HTMLContent.Add('<th>% LPT</th>');
    HTMLContent.Add('<th>% LRG</th>');
    HTMLContent.Add('<th>% WL</th>');
    HTMLContent.Add('<th>% FLS</th>');
    HTMLContent.Add('<th>% FLP</th>');
    HTMLContent.Add('<th>% NEPS</th>');
    HTMLContent.Add('<th>% PP</th>');
    HTMLContent.Add('<th>% WP</th>');
    HTMLContent.Add('<th>% OJ</th>');
    HTMLContent.Add('<th>% CRT</th>');
    HTMLContent.Add('<th>% BTS</th>');
    HTMLContent.Add('<th>% BTB</th>');
    HTMLContent.Add('<th>% BO</th>');
    HTMLContent.Add('<th>% SC</th>');
    HTMLContent.Add('<th>% SLL</th>');
    HTMLContent.Add('<th>% CK</th>');
    HTMLContent.Add('<th>% CAJ</th>');
    HTMLContent.Add('<th>% KTR</th>');
    HTMLContent.Add('<th>% PDK</th>');
    HTMLContent.Add('<th>% KP</th>');
    HTMLContent.Add('<th>% KECOES_BG</th>');
    HTMLContent.Add('<th>% KMBG RSK</th>');

    // DEFECT BS
    HTMLContent.Add('<th>% SBK</th>');
    HTMLContent.Add('<th>% LBG</th>');
    HTMLContent.Add('<th>% UTS</th>');
    HTMLContent.Add('<th>% KNB</th>');
    HTMLContent.Add('<th>% BS_SLL</th>');
    HTMLContent.Add('<th>% BS_FLP</th>');
    HTMLContent.Add('<th>% BS_BTS</th>');
    HTMLContent.Add('<th>% BS_SC</th>');
    HTMLContent.Add('<th>% BS_TK</th>');
    HTMLContent.Add('<th>% KMBG RSK</th>');
    HTMLContent.Add('<th>% KECOES_BS</th>');

    HTMLContent.Add('<th>AFL LGS(CM)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(CM)</th>');
    HTMLContent.Add('<th>AFL LGS(KG)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(KG)</th>');
    HTMLContent.Add('</tr>');


    wwDBGrid16.DataSource.DataSet.First;
    while not wwDBGrid16.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td>' + wwDBGrid16.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid16.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid16.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid16.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid16.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid16.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid16.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid16.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
        

        // Tambahkan data untuk kolom tambahan
        // Menghitung dan menampilkan % LD
                TotalLD := TotalLD + wwDBGrid16.DataSource.DataSet.FieldByName('LD').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LD := (wwDBGrid16.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLT := TotalLT + wwDBGrid16.DataSource.DataSet.FieldByName('LT').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LT := (wwDBGrid16.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLPT := TotalLPT + wwDBGrid16.DataSource.DataSet.FieldByName('LPT').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LPT := (wwDBGrid16.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLRG := TotalLRG + wwDBGrid16.DataSource.DataSet.FieldByName('LRG').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LRG := (wwDBGrid16.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWL := TotalWL + wwDBGrid16.DataSource.DataSet.FieldByName('WL').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_WL := (wwDBGrid16.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // Menambahkan kode serupa untuk kolom lainnya
        TotalFLS := TotalFLS + wwDBGrid16.DataSource.DataSet.FieldByName('FLS').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_FLS := (wwDBGrid16.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalFLP := TotalFLP + wwDBGrid16.DataSource.DataSet.FieldByName('FLP').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_FLP := (wwDBGrid16.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalNEPS := TotalNEPS + wwDBGrid16.DataSource.DataSet.FieldByName('NEPS').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_NEPS := (wwDBGrid16.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPP := TotalPP + wwDBGrid16.DataSource.DataSet.FieldByName('PP').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_PP := (wwDBGrid16.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWP := TotalWP + wwDBGrid16.DataSource.DataSet.FieldByName('WP').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_WP := (wwDBGrid16.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalOJ := TotalOJ + wwDBGrid16.DataSource.DataSet.FieldByName('OJ').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_OJ := (wwDBGrid16.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCRT := TotalCRT + wwDBGrid16.DataSource.DataSet.FieldByName('CRT').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CRT := (wwDBGrid16.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBTS := TotalBTS + wwDBGrid16.DataSource.DataSet.FieldByName('BTS').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BTS := (wwDBGrid16.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');        

        TotalBTB := TotalBTB + wwDBGrid16.DataSource.DataSet.FieldByName('BTB').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BTB := (wwDBGrid16.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBO := TotalBO + wwDBGrid16.DataSource.DataSet.FieldByName('BO').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BO := (wwDBGrid16.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSC := TotalSC + wwDBGrid16.DataSource.DataSet.FieldByName('SC').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SC := (wwDBGrid16.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSLL := TotalSLL + wwDBGrid16.DataSource.DataSet.FieldByName('SLL').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SLL := (wwDBGrid16.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCK := TotalCK + wwDBGrid16.DataSource.DataSet.FieldByName('CK').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CK := (wwDBGrid16.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCAJ := TotalCAJ + wwDBGrid16.DataSource.DataSet.FieldByName('CAJ').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CAJ := (wwDBGrid16.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKTR := TotalKTR + wwDBGrid16.DataSource.DataSet.FieldByName('KTR').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KTR := (wwDBGrid16.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPDK := TotalPDK + wwDBGrid16.DataSource.DataSet.FieldByName('PDK').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_PDK := (wwDBGrid16.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKP := TotalKP + wwDBGrid16.DataSource.DataSet.FieldByName('KP').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KP := (wwDBGrid16.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKECOES_BG := TotalKECOES_BG + wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KECOES_BG := (wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKBR := TotalKBR + wwDBGrid16.DataSource.DataSet.FieldByName('KBR').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KBR := (wwDBGrid16.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSBK := TotalSBK + wwDBGrid16.DataSource.DataSet.FieldByName('SBK').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SBK := (wwDBGrid16.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNT := TotalKNT + wwDBGrid16.DataSource.DataSet.FieldByName('KNT').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KNT := (wwDBGrid16.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalUTS := TotalUTS + wwDBGrid16.DataSource.DataSet.FieldByName('UTS').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_UTS := (wwDBGrid16.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNB := TotalKNB + wwDBGrid16.DataSource.DataSet.FieldByName('KNB').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KNB := (wwDBGrid16.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLS := TotalBS_FLS + wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLS').AsFloat;        
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_FLS := (wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLP := TotalBS_FLP + wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLP').AsFloat;       
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_FLP := (wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTS := TotalBS_BTS + wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTS').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_BTS := (wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTB := TotalBS_BTB + wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTB').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_BTB := (wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_TK := TotalBS_TK + wwDBGrid16.DataSource.DataSet.FieldByName('BS_TK').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_TK := (wwDBGrid16.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalAFL := TotalAFL + wwDBGrid16.DataSource.DataSet.FieldByName('AFL').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_AFL := (wwDBGrid16.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');        

        TotalKECOES_BS := TotalKECOES_BS + wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat;
        if wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KECOES_BS := (wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid16.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid16.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');       

        // --------------------------------------------------------------------------------------------------------------------------------

        TotalLK := TotalLK + wwDBGrid16.DataSource.DataSet.FieldByName('LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('LK').AsFloat) + '</td>');

        TotalLB := TotalLB + wwDBGrid16.DataSource.DataSet.FieldByName('LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('LB').AsFloat) + '</td>');

        TotalP_LK := TotalP_LK + wwDBGrid16.DataSource.DataSet.FieldByName('P_LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('P_LK').AsFloat) + '</td>');

        TotalP_LB := TotalP_LB + wwDBGrid16.DataSource.DataSet.FieldByName('P_LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid16.DataSource.DataSet.FieldByName('P_LB').AsFloat) + '</td>');

        // Lanjutkan untuk semua field tambahan...
        HTMLContent.Add('</tr>');
        wwDBGrid16.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="2" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

    // Tambahkan total untuk field tambahan
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLD / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLPT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLRG / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalWL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalNEPS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalPP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalWP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalOJ / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCRT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBTB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBO / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSC / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSLL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCAJ / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKTR / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalPDK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKECOES_BG / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKBR / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSBK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKNT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalUTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKNB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_FLS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_FLP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_BTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_BTB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_TK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalAFL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKECOES_BS / TotalProd) * 100) + '</b></td>');

    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LB) + '</b></td>');


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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

// Persen Kp Intern
procedure TTerimaDariFinishingFrm.PrintLoomInternKpPersen;
var
    HTMLContent: TStringList;
    FieldName: String;
    FileName: string;
    TotalProd, TotalBk, TotalBs, TotalPBk, TotalPBg, TotalPbs: Real;
    TotalBGrade: Double;
    TotalPctBK, TotalPctBGrade, TotalPctBS: Double;

    TotalLD, TotalLT, TotalLPT, TotalLRG, TotalWL, TotalFLS, TotalFLP, TotalNEPS, TotalPP, TotalWP: Real;
    TotalOJ, TotalCRT, TotalBTS, TotalBTB, TotalBO, TotalSC, TotalSLL, TotalCK, TotalCAJ, TotalKTR: Real;
    TotalPDK, TotalKP, TotalKECOES_BG, TotalSBK, TotalUTS, TotalKNB, TotalBS_FLS, TotalBS_FLP: Real;
    TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS, TotalKBR, TotalLK, TotalLB, TotalP_LK, TotalP_LB, TotalP_KBR, TotalP_KNT, TotalKNT: Real;

    TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
    TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
    TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
    TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS: Real;
    
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

    TotalLD := 0; TotalLT := 0; TotalLPT := 0; TotalLRG := 0; TotalWL := 0;
    TotalFLS := 0; TotalFLP := 0; TotalNEPS := 0; TotalPP := 0; TotalWP := 0;
    TotalOJ := 0; TotalCRT := 0; TotalBTS := 0; TotalBTB := 0; TotalBO := 0;
    TotalSC := 0; TotalSLL := 0; TotalCK := 0; TotalCAJ := 0; TotalKTR := 0;
    TotalPDK := 0; TotalKP := 0; TotalKECOES_BG := 0; TotalSBK := 0;
    TotalUTS := 0; TotalKNB := 0; TotalBS_FLS := 0; TotalBS_FLP := 0;
    TotalBS_BTS := 0; TotalBS_BTB := 0; TotalBS_TK := 0; TotalAFL := 0;
    TotalKECOES_BS := 0; TotalKBR := 0; TotalLK := 0; TotalLB := 0; TotalKNT := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Grey Inspect (GD)</h3>');
    HTMLContent.Add('<h5 style="text-align: center;">QUALITY CONTROL</h5>');


    if VTglAwal11.Date = VTglAkhir11.Date then
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + '</div>');
    end
    else
    begin
      HTMLContent.Add('<div class="left-align">Tanggal Serah Terima: ' + FormatDateTime('dd mmmm yyyy', VTglAwal11.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir11.Date) + '</div>');
    end;

    HTMLContent.Add('<table>');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>Kode Prod</th>');
    HTMLContent.Add('<th>Konstruksi</th>');
    HTMLContent.Add('<th>Ket</th>');        // Nama Loom
    HTMLContent.Add('<th>Wvg</th>');
    HTMLContent.Add('<th>Prod</th>');
    HTMLContent.Add('<th>BK</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BGRADE</th>');
    HTMLContent.Add('<th>%</th>');
    HTMLContent.Add('<th>BS</th>');
    HTMLContent.Add('<th>%</th>');

    // DEFECT BGRADE
    HTMLContent.Add('<th>% LD</th>');
    HTMLContent.Add('<th>% LT</th>');
    HTMLContent.Add('<th>% LPT</th>');
    HTMLContent.Add('<th>% LRG</th>');
    HTMLContent.Add('<th>% WL</th>');
    HTMLContent.Add('<th>% FLS</th>');
    HTMLContent.Add('<th>% FLP</th>');
    HTMLContent.Add('<th>% NEPS</th>');
    HTMLContent.Add('<th>% PP</th>');
    HTMLContent.Add('<th>% WP</th>');
    HTMLContent.Add('<th>% OJ</th>');
    HTMLContent.Add('<th>% CRT</th>');
    HTMLContent.Add('<th>% BTS</th>');
    HTMLContent.Add('<th>% BTB</th>');
    HTMLContent.Add('<th>% BO</th>');
    HTMLContent.Add('<th>% SC</th>');
    HTMLContent.Add('<th>% SLL</th>');
    HTMLContent.Add('<th>% CK</th>');
    HTMLContent.Add('<th>% CAJ</th>');
    HTMLContent.Add('<th>% KTR</th>');
    HTMLContent.Add('<th>% PDK</th>');
    HTMLContent.Add('<th>% KP</th>');
    HTMLContent.Add('<th>% KECOES_BG</th>');
    HTMLContent.Add('<th>% KMBG RSK</th>');

    // DEFECT BS
    HTMLContent.Add('<th>% SBK</th>');
    HTMLContent.Add('<th>% LBG</th>');
    HTMLContent.Add('<th>% UTS</th>');
    HTMLContent.Add('<th>% KNB</th>');
    HTMLContent.Add('<th>% BS_SLL</th>');
    HTMLContent.Add('<th>% BS_FLP</th>');
    HTMLContent.Add('<th>% BS_BTS</th>');
    HTMLContent.Add('<th>% BS_SC</th>');
    HTMLContent.Add('<th>% BS_TK</th>');
    HTMLContent.Add('<th>% KMBG RSK</th>');
    HTMLContent.Add('<th>% KECOES_BS</th>');

    HTMLContent.Add('<th>AFL LGS(CM)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(CM)</th>');
    HTMLContent.Add('<th>AFL LGS(KG)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(KG)</th>');
    HTMLContent.Add('</tr>');


    wwDBGrid17.DataSource.DataSet.First;
    while not wwDBGrid17.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('MESIN').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('LOKASI').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
        

        // Tambahkan data untuk kolom tambahan
        // Menghitung dan menampilkan % LD
                TotalLD := TotalLD + wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LD := (wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLT := TotalLT + wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LT := (wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLPT := TotalLPT + wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LPT := (wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLRG := TotalLRG + wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_LRG := (wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWL := TotalWL + wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_WL := (wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // Menambahkan kode serupa untuk kolom lainnya
        TotalFLS := TotalFLS + wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_FLS := (wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalFLP := TotalFLP + wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_FLP := (wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalNEPS := TotalNEPS + wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_NEPS := (wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPP := TotalPP + wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_PP := (wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWP := TotalWP + wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_WP := (wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalOJ := TotalOJ + wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_OJ := (wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCRT := TotalCRT + wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CRT := (wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBTS := TotalBTS + wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BTS := (wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');        

        TotalBTB := TotalBTB + wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BTB := (wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBO := TotalBO + wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BO := (wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSC := TotalSC + wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SC := (wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSLL := TotalSLL + wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SLL := (wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCK := TotalCK + wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CK := (wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCAJ := TotalCAJ + wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_CAJ := (wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKTR := TotalKTR + wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KTR := (wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPDK := TotalPDK + wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_PDK := (wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKP := TotalKP + wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KP := (wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKECOES_BG := TotalKECOES_BG + wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KECOES_BG := (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKBR := TotalKBR + wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KBR := (wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSBK := TotalSBK + wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_SBK := (wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNT := TotalKNT + wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KNT := (wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalUTS := TotalUTS + wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_UTS := (wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNB := TotalKNB + wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KNB := (wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLS := TotalBS_FLS + wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_FLS := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLP := TotalBS_FLP + wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat;       
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_FLP := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTS := TotalBS_BTS + wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_BTS := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTB := TotalBS_BTB + wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_BTB := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_TK := TotalBS_TK + wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_BS_TK := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalAFL := TotalAFL + wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_AFL := (wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');        

        TotalKECOES_BS := TotalKECOES_BS + wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat > 0 then
        begin
            TotalP_KECOES_BS := (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('POTONG').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');       
        
        // --------------------------------------------------------------------------------------------------------------------------------

        TotalLK := TotalLK + wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat) + '</td>');

        TotalLB := TotalLB + wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat) + '</td>');

        TotalP_LK := TotalP_LK + wwDBGrid17.DataSource.DataSet.FieldByName('P_LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('P_LK').AsFloat) + '</td>');

        TotalP_LB := TotalP_LB + wwDBGrid17.DataSource.DataSet.FieldByName('P_LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('P_LB').AsFloat) + '</td>');

        // Lanjutkan untuk semua field tambahan...
        HTMLContent.Add('</tr>');
        wwDBGrid17.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="4" style="text-align: right;"><b>Total:</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalProd) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBk) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBk / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBGrade) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBGrade / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalBs) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBs / TotalProd) * 100) + '</b></td>');

    // Tambahkan total untuk field tambahan
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLD / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLPT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLRG / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalWL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalFLP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalNEPS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalPP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalWP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalOJ / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCRT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBTB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBO / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSC / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSLL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalCAJ / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKTR / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalPDK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKECOES_BG / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKBR / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalSBK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKNT / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalUTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKNB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_FLS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_FLP / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_BTS / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_BTB / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalBS_TK / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalAFL / TotalProd) * 100) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalKECOES_BS / TotalProd) * 100) + '</b></td>');

    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalLB) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LK) + '</b></td>');
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', TotalP_LB) + '</b></td>');


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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiGreyInspect.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

procedure TTerimaDariFinishingFrm.WebBrowser1DocumentComplete(
  Sender: TObject; const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TTerimaDariFinishingFrm.Cari2Click(Sender: TObject);
begin
    if not QPerKonstruksi.QBEMode then
    begin
        wwDBGrid5.Options:=wwDBGrid5.Options-[dgRowSelect,dgAlwaysShowSelection];
        QPerKonstruksi.QBEMode:=TRUE;
    end
    else
        QPerKonstruksi.ClearQBE;
end;

procedure TTerimaDariFinishingFrm.BtnOke2Click(Sender: TObject);
var
  vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9: real;

begin
  wwDBGrid5.BringToFront;

  if QPerKonstruksi.QBEMode then
  begin
    QPerKonstruksi.ExecuteQBE;
    wwDBGrid5.Options := wwDBGrid5.Options + [dgRowSelect, dgAlwaysShowSelection];

    // Inisialisasi variabel
    vt1 := 0; vt2 := 0; vt3 := 0;
    vt4 := 0; vt5 := 0; vt6 := 0;
    vt7 := 0; vt8 := 0; vt9 := 0;

    // Perhitungan
    while not QPerKonstruksi.Eof do
    begin
      vt1 := vt1 + QPerKonstruksiJML_MESIN.AsFloat;
      vt2 := vt2 + QPerKonstruksiJML_PROD.AsFloat;
      vt3 := vt3 + QPerKonstruksiPROD_KODI.AsFloat;
      vt4 := vt4 + QPerKonstruksiJML_BK.AsFloat;
      vt5 := vt5 + QPerKonstruksiBK_KODI.AsFloat;
      vt6 := vt6 + QPerKonstruksiJML_BGRADE.AsFloat;
      vt7 := vt7 + QPerKonstruksiBGRADE_KODI.AsFloat;
      vt8 := vt8 + QPerKonstruksiJML_BS.AsFloat;
      vt9 := vt9 + QPerKonstruksiBS_KODI.AsFloat;

      QPerKonstruksi.Next;
    end;

    // Menampilkan hasil pada FooterValue
    wwDBGrid5.ColumnByName('JML_MESIN').FooterValue := FormatFloat('0.0', vt1);
    wwDBGrid5.ColumnByName('JML_PROD').FooterValue := FormatFloat('0.0', vt2);
    wwDBGrid5.ColumnByName('PROD_KODI').FooterValue := FormatFloat('0.0', vt3);
    wwDBGrid5.ColumnByName('JML_BK').FooterValue := FormatFloat('0.0', vt4);
    wwDBGrid5.ColumnByName('BK_KODI').FooterValue := FormatFloat('0.0', vt5);
    wwDBGrid5.ColumnByName('JML_BGRADE').FooterValue := FormatFloat('0.0', vt6);
    wwDBGrid5.ColumnByName('BGRADE_KODI').FooterValue := FormatFloat('0.0', vt7);
    wwDBGrid5.ColumnByName('JML_BS').FooterValue := FormatFloat('0.0', vt8);
    wwDBGrid5.ColumnByName('BS_KODI').FooterValue := FormatFloat('0.0', vt9);
  end;
end;

procedure TTerimaDariFinishingFrm.BtnGrid14Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid15.BringToFront;
            RPrint.BringToFront;

            if RPrint.ItemIndex = 0 then
                begin
                    PrintLoomIntern;
                end
            else
                begin
                    PrintLoomPPC;
                end;
            
        end

    else if RLoom.ItemIndex = 1 then
        begin
            wwDBGrid14.BringToFront;
            RPrint.BringToFront;

            if RPrint.ItemIndex = 0 then
                begin
                    PrintLoomKpIntern;
                end
            else
                begin
                    PrintLoomKpPPC;
                end;

        end

    else if RLoom.ItemIndex = 2 then
        begin
            wwDBGrid16.BringToFront;
            RLoom2.BringToFront;

            PrintLoomInternPersen;
            
        end

    else
        begin
            wwDBGrid17.BringToFront;
            RLoom2.BringToFront;

            PrintLoomInternKpPersen;

        end;

end;

procedure TTerimaDariFinishingFrm.wwDBGrid18TitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder3=' ASC' then
              vorder3:=' DESC'
          else
              vorder3:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter3+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder3);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det5AfterScroll(
  DataSet: TDataSet);
begin
    LabelBanner3.Caption:='Record ke '+IntToStr(QBrowse_Det5.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det5.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.QBrowse_Det6AfterScroll(
  DataSet: TDataSet);
begin
  Label28.Caption:='Record ke '+IntToStr(QBrowse_Det6.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det6.RecordCount)+' Records';
end;

procedure TTerimaDariFinishingFrm.wwDBGrid19TitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder3=' ASC' then
              vorder3:=' DESC'
          else
              vorder3:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter3+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder3);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

procedure TTerimaDariFinishingFrm.DBText1Click(Sender: TObject);
begin
 InputBox (' Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

end.


