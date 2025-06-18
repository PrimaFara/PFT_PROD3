unit InspectingMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls, jpeg, OleCtrls, SHDocVw;

type
  TInspectingMitraFrm = class(TForm)
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
    LookCorak: TwwDBLookupComboDlg;
    LookSatuan: TwwDBComboBox;
    LookJenis: TwwDBComboBox;
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
    QBrowseTotalKODI_BK: TFloatField;
    QBrowseTotalPCS_BK: TFloatField;
    QBrowseTotalKODI_BS: TFloatField;
    QBrowseTotalPCS_BS: TFloatField;
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
    QDetailNO_MESIN: TStringField;
    QDetailMUTU: TStringField;
    QDetailQTY: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailSATUAN: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QDetailNO_SPB: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailMITRA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseOPERATOR: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseMESIN_TENUN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseMUTU: TStringField;
    QBrowseKODI_BK: TFloatField;
    QBrowsePCS_BK: TFloatField;
    QBrowseKODI_BS: TFloatField;
    QBrowsePCS_BS: TFloatField;
    QBrowseKODI_BS_PARAH: TFloatField;
    QBrowsePCS_BS_PARAH: TFloatField;
    QBrowseKD_TRANSAKSI: TStringField;
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
    QDetailKD_PRODUKSI: TStringField;
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
    QBrowseKD_PRODUKSI: TStringField;
    QPerKonstruksiCORAK: TStringField;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel1: TQRLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    QDetailBGRADE: TFloatField;
    QTotalBGRADE: TFloatField;
    QTotalBS: TFloatField;
    QTotalBK: TFloatField;
    QBrowseKODI_BGRADE: TFloatField;
    QBrowsePCS_BGRADE: TFloatField;
    QBrowseTotalKODI_BGRADE: TFloatField;
    QBrowseTotalPCS_BGRADE: TFloatField;
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
    Button1: TButton;
    QUnpost: TOracleQuery;
    QPerKonstruksiPOTONG: TFloatField;
    QPerKonstruksiQTY: TFloatField;
    QPerKonstruksiMETER: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    QPerKonstruksi_TotQTY: TFloatField;
    QPerKonstruksi_TotMETER: TFloatField;
    TabSheet13: TTabSheet;
    Panel22: TPanel;
    GroupBox10: TGroupBox;
    Label26: TLabel;
    VTglAwal11: TwwDBDateTimePicker;
    VTglAkhir11: TwwDBDateTimePicker;
    Panel23: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RLoom2: TRadioGroup;
    BitBtn20: TBitBtn;
    BitBtn22: TBitBtn;
    RLoom: TRadioGroup;
    BtnGrid14: TBitBtn;
    RPrint: TRadioGroup;
    WebBrowser1: TWebBrowser;
    Label29: TLabel;
    wwDBGrid14: TwwDBGrid;
    QPerLoom: TOracleDataSet;
    QPerLoom_Tot: TOracleDataSet;
    dsQPerLoom: TwwDataSource;
    dsQPerLoom_Tot: TwwDataSource;
    QLoom3_Tot: TOracleDataSet;
    QLoom3: TOracleDataSet;
    dsQLoom3: TwwDataSource;
    dsQLoom3_Tot: TwwDataSource;
    QPerLoomKD_PRODUKSI: TStringField;
    QPerLoomKONSTRUKSI: TStringField;
    QPerLoomMITRA: TStringField;
    QPerLoomMESIN_TENUN: TStringField;
    QPerLoomLB: TFloatField;
    QPerLoomLK: TFloatField;
    QPerLoomPD: TFloatField;
    QPerLoomKNT: TFloatField;
    QPerLoomANR: TFloatField;
    QPerLoomLD: TFloatField;
    QPerLoomLT: TFloatField;
    QPerLoomLPT: TFloatField;
    QPerLoomLRG: TFloatField;
    QPerLoomWL: TFloatField;
    QPerLoomFLS: TFloatField;
    QPerLoomFLP: TFloatField;
    QPerLoomNEPS: TFloatField;
    QPerLoomPP: TFloatField;
    QPerLoomWP: TFloatField;
    QPerLoomOJ: TFloatField;
    QPerLoomCRT: TFloatField;
    QPerLoomBTS: TFloatField;
    QPerLoomBTB: TFloatField;
    QPerLoomBO: TFloatField;
    QPerLoomSC: TFloatField;
    QPerLoomSLL: TFloatField;
    QPerLoomCK: TFloatField;
    QPerLoomCAJ: TFloatField;
    QPerLoomKTR: TFloatField;
    QPerLoomPDK: TFloatField;
    QPerLoomKP: TFloatField;
    QPerLoomKECOES_BG: TFloatField;
    QPerLoomSBK: TFloatField;
    QPerLoomKNB: TFloatField;
    QPerLoomUTS: TFloatField;
    QPerLoomAFL: TFloatField;
    QPerLoomKECOES_BS: TFloatField;
    QPerLoomBS_FLS: TFloatField;
    QPerLoomBS_FLP: TFloatField;
    QPerLoomBS_BTS: TFloatField;
    QPerLoomBS_BTB: TFloatField;
    QPerLoomBS_TK: TFloatField;
    QPerLoomPJG: TFloatField;
    QPerLoomLBR: TFloatField;
    QPerLoomCUP: TFloatField;
    QPerLoomPR: TFloatField;
    QPerLoomMETER: TFloatField;
    QPerLoomSATUAN: TStringField;
    QPerLoomQTY: TFloatField;
    QPerLoomQTY_PCS: TFloatField;
    QPerLoomQTY_METER: TFloatField;
    QPerLoomQTY3: TFloatField;
    QPerLoomBGRADE: TFloatField;
    QPerLoomQTY2: TFloatField;
    QPerLoomP_BK: TFloatField;
    QPerLoomP_BGRADE: TFloatField;
    QPerLoomP_BS: TFloatField;
    QPerLoomM_QTY2: TFloatField;
    QPerLoomM_QTY3: TFloatField;
    QPerLoomM_BGRADE: TFloatField;
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
    QPerLoom_TotLB: TFloatField;
    QPerLoom_TotLK: TFloatField;
    QPerLoom_TotPD: TFloatField;
    QPerLoom_TotKNT: TFloatField;
    QPerLoom_TotANR: TFloatField;
    QPerLoom_TotLD: TFloatField;
    QPerLoom_TotLT: TFloatField;
    QPerLoom_TotLPT: TFloatField;
    QPerLoom_TotLRG: TFloatField;
    QPerLoom_TotWL: TFloatField;
    QPerLoom_TotFLS: TFloatField;
    QPerLoom_TotFLP: TFloatField;
    QPerLoom_TotNEPS: TFloatField;
    QPerLoom_TotPP: TFloatField;
    QPerLoom_TotWP: TFloatField;
    QPerLoom_TotOJ: TFloatField;
    QPerLoom_TotCRT: TFloatField;
    QPerLoom_TotBTS: TFloatField;
    QPerLoom_TotBTB: TFloatField;
    QPerLoom_TotBO: TFloatField;
    QPerLoom_TotSC: TFloatField;
    QPerLoom_TotSLL: TFloatField;
    QPerLoom_TotCK: TFloatField;
    QPerLoom_TotCAJ: TFloatField;
    QPerLoom_TotKTR: TFloatField;
    QPerLoom_TotPDK: TFloatField;
    QPerLoom_TotKP: TFloatField;
    QPerLoom_TotKECOES_BG: TFloatField;
    QPerLoom_TotSBK: TFloatField;
    QPerLoom_TotKNB: TFloatField;
    QPerLoom_TotUTS: TFloatField;
    QPerLoom_TotAFL: TFloatField;
    QPerLoom_TotKECOES_BS: TFloatField;
    QPerLoom_TotBS_FLS: TFloatField;
    QPerLoom_TotBS_FLP: TFloatField;
    QPerLoom_TotBS_BTS: TFloatField;
    QPerLoom_TotBS_BTB: TFloatField;
    QPerLoom_TotBS_TK: TFloatField;
    QPerLoom_TotPJG: TFloatField;
    QPerLoom_TotLBR: TFloatField;
    QPerLoom_TotCUP: TFloatField;
    QPerLoom_TotPR: TFloatField;
    QPerLoom_TotMETER: TFloatField;
    QPerLoom_TotQTY: TFloatField;
    QPerLoom_TotQTY_PCS: TFloatField;
    QPerLoom_TotQTY_METER: TFloatField;
    QPerLoom_TotQTY3: TFloatField;
    QPerLoom_TotBGRADE: TFloatField;
    QPerLoom_TotQTY2: TFloatField;
    QPerLoom_TotP_BK: TFloatField;
    QPerLoom_TotP_BGRADE: TFloatField;
    QPerLoom_TotP_BS: TFloatField;
    QPerLoom_TotM_QTY2: TFloatField;
    QPerLoom_TotM_QTY3: TFloatField;
    QPerLoom_TotM_BGRADE: TFloatField;
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
    QLoom3KD_PRODUKSI: TStringField;
    QLoom3KONSTRUKSI: TStringField;
    QLoom3MITRA: TStringField;
    QLoom3MESIN_TENUN: TStringField;
    QLoom3LB: TFloatField;
    QLoom3LK: TFloatField;
    QLoom3PD: TFloatField;
    QLoom3KNT: TFloatField;
    QLoom3ANR: TFloatField;
    QLoom3LD: TFloatField;
    QLoom3LT: TFloatField;
    QLoom3LPT: TFloatField;
    QLoom3LRG: TFloatField;
    QLoom3WL: TFloatField;
    QLoom3FLS: TFloatField;
    QLoom3FLP: TFloatField;
    QLoom3NEPS: TFloatField;
    QLoom3PP: TFloatField;
    QLoom3WP: TFloatField;
    QLoom3OJ: TFloatField;
    QLoom3CRT: TFloatField;
    QLoom3BTS: TFloatField;
    QLoom3BTB: TFloatField;
    QLoom3BO: TFloatField;
    QLoom3SC: TFloatField;
    QLoom3SLL: TFloatField;
    QLoom3CK: TFloatField;
    QLoom3CAJ: TFloatField;
    QLoom3KTR: TFloatField;
    QLoom3PDK: TFloatField;
    QLoom3KP: TFloatField;
    QLoom3KECOES_BG: TFloatField;
    QLoom3SBK: TFloatField;
    QLoom3KNB: TFloatField;
    QLoom3UTS: TFloatField;
    QLoom3AFL: TFloatField;
    QLoom3KECOES_BS: TFloatField;
    QLoom3BS_FLS: TFloatField;
    QLoom3BS_FLP: TFloatField;
    QLoom3BS_BTS: TFloatField;
    QLoom3BS_BTB: TFloatField;
    QLoom3BS_TK: TFloatField;
    QLoom3PJG: TFloatField;
    QLoom3LBR: TFloatField;
    QLoom3CUP: TFloatField;
    QLoom3PR: TFloatField;
    QLoom3METER: TFloatField;
    QLoom3SATUAN: TStringField;
    QLoom3QTY: TFloatField;
    QLoom3QTY_PCS: TFloatField;
    QLoom3QTY_METER: TFloatField;
    QLoom3QTY3: TFloatField;
    QLoom3BGRADE: TFloatField;
    QLoom3QTY2: TFloatField;
    QLoom3P_BK: TFloatField;
    QLoom3P_BGRADE: TFloatField;
    QLoom3P_BS: TFloatField;
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
    QLoom3_TotLB: TFloatField;
    QLoom3_TotLK: TFloatField;
    QLoom3_TotPD: TFloatField;
    QLoom3_TotKNT: TFloatField;
    QLoom3_TotANR: TFloatField;
    QLoom3_TotLD: TFloatField;
    QLoom3_TotLT: TFloatField;
    QLoom3_TotLPT: TFloatField;
    QLoom3_TotLRG: TFloatField;
    QLoom3_TotWL: TFloatField;
    QLoom3_TotFLS: TFloatField;
    QLoom3_TotFLP: TFloatField;
    QLoom3_TotNEPS: TFloatField;
    QLoom3_TotPP: TFloatField;
    QLoom3_TotWP: TFloatField;
    QLoom3_TotOJ: TFloatField;
    QLoom3_TotCRT: TFloatField;
    QLoom3_TotBTS: TFloatField;
    QLoom3_TotBTB: TFloatField;
    QLoom3_TotBO: TFloatField;
    QLoom3_TotSC: TFloatField;
    QLoom3_TotSLL: TFloatField;
    QLoom3_TotCK: TFloatField;
    QLoom3_TotCAJ: TFloatField;
    QLoom3_TotKTR: TFloatField;
    QLoom3_TotPDK: TFloatField;
    QLoom3_TotKP: TFloatField;
    QLoom3_TotKECOES_BG: TFloatField;
    QLoom3_TotSBK: TFloatField;
    QLoom3_TotKNB: TFloatField;
    QLoom3_TotUTS: TFloatField;
    QLoom3_TotAFL: TFloatField;
    QLoom3_TotKECOES_BS: TFloatField;
    QLoom3_TotBS_FLS: TFloatField;
    QLoom3_TotBS_FLP: TFloatField;
    QLoom3_TotBS_BTS: TFloatField;
    QLoom3_TotBS_BTB: TFloatField;
    QLoom3_TotBS_TK: TFloatField;
    QLoom3_TotPJG: TFloatField;
    QLoom3_TotLBR: TFloatField;
    QLoom3_TotCUP: TFloatField;
    QLoom3_TotPR: TFloatField;
    QLoom3_TotMETER: TFloatField;
    QLoom3_TotQTY: TFloatField;
    QLoom3_TotQTY_PCS: TFloatField;
    QLoom3_TotQTY_METER: TFloatField;
    QLoom3_TotQTY3: TFloatField;
    QLoom3_TotBGRADE: TFloatField;
    QLoom3_TotQTY2: TFloatField;
    QLoom3_TotP_BK: TFloatField;
    QLoom3_TotP_BGRADE: TFloatField;
    QLoom3_TotP_BS: TFloatField;
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
    wwDBGrid17: TwwDBGrid;
    QBrowse_Mitra_detNO_NOTA: TStringField;
    QBrowse_Mitra_detTGL: TDateTimeField;
    QBrowse_Mitra_detKD_TRANSAKSI: TStringField;
    QBrowse_Mitra_detISPOST: TStringField;
    QBrowse_Mitra_detOPERATOR: TStringField;
    QBrowse_Mitra_detNO_REG: TFloatField;
    QBrowse_Mitra_detNO_REG_MITRA: TFloatField;
    QBrowse_Mitra_detNO_REFF: TStringField;
    QBrowse_Mitra_detTANGGAL: TDateTimeField;
    QBrowse_Mitra_detNO_ORDER: TStringField;
    QBrowse_Mitra_detKD_KONSTRUKSI: TStringField;
    QBrowse_Mitra_detKONSTRUKSI: TStringField;
    QBrowse_Mitra_detMESIN_TENUN: TStringField;
    QBrowse_Mitra_detKD_CORAK: TStringField;
    QBrowse_Mitra_detCORAK: TStringField;
    QBrowse_Mitra_detNO_RESEP: TStringField;
    QBrowse_Mitra_detNO_MESIN: TStringField;
    QBrowse_Mitra_detMITRA: TStringField;
    QBrowse_Mitra_detKETERANGAN: TStringField;
    QBrowse_Mitra_detTGL_INSERT: TDateTimeField;
    QBrowse_Mitra_detOPR_INSERT: TStringField;
    QBrowse_Mitra_detLOKASI: TStringField;
    QBrowse_Mitra_detGRUP: TStringField;
    QBrowse_Mitra_detSHIFT: TStringField;
    QBrowse_Mitra_detPILIH: TStringField;
    QBrowse_Mitra_detKD_PRODUKSI: TStringField;
    QBrowse_Mitra_detNO_BEAM: TStringField;
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
    QBrowse_Mitra_det2NO_NOTA: TStringField;
    QBrowse_Mitra_det2TGL: TDateTimeField;
    QBrowse_Mitra_det2KD_TRANSAKSI: TStringField;
    QBrowse_Mitra_det2ISPOST: TStringField;
    QBrowse_Mitra_det2OPERATOR: TStringField;
    QBrowse_Mitra_det2NO_REG: TFloatField;
    QBrowse_Mitra_det2NO_REG_MITRA: TFloatField;
    QBrowse_Mitra_det2NO_REFF: TStringField;
    QBrowse_Mitra_det2TANGGAL: TDateTimeField;
    QBrowse_Mitra_det2NO_ORDER: TStringField;
    QBrowse_Mitra_det2KD_KONSTRUKSI: TStringField;
    QBrowse_Mitra_det2KONSTRUKSI: TStringField;
    QBrowse_Mitra_det2MESIN_TENUN: TStringField;
    QBrowse_Mitra_det2KD_CORAK: TStringField;
    QBrowse_Mitra_det2CORAK: TStringField;
    QBrowse_Mitra_det2NO_RESEP: TStringField;
    QBrowse_Mitra_det2NO_MESIN: TStringField;
    QBrowse_Mitra_det2MITRA: TStringField;
    QBrowse_Mitra_det2KETERANGAN: TStringField;
    QBrowse_Mitra_det2TGL_INSERT: TDateTimeField;
    QBrowse_Mitra_det2OPR_INSERT: TStringField;
    QBrowse_Mitra_det2LOKASI: TStringField;
    QBrowse_Mitra_det2GRUP: TStringField;
    QBrowse_Mitra_det2SHIFT: TStringField;
    QBrowse_Mitra_det2PILIH: TStringField;
    QBrowse_Mitra_det2KD_PRODUKSI: TStringField;
    QBrowse_Mitra_det2NO_BEAM: TStringField;
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
    QBSBK_TOTQTY_PCS: TFloatField;
    QBSBK_TOTQTY_METER: TFloatField;
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
    QBSBK_TOTKECOES_BG: TFloatField;
    QBSBK_TOTSBK: TFloatField;
    QBSBK_TOTUTS: TFloatField;
    QBSBK_TOTKNB: TFloatField;
    QBSBK_TOTBS_FLS: TFloatField;
    QBSBK_TOTBS_FLP: TFloatField;
    QBSBK_TOTBS_BTS: TFloatField;
    QBSBK_TOTBS_BTB: TFloatField;
    QBSBK_TOTBS_TK: TFloatField;
    QBSBK_TOTAFL: TFloatField;
    QBSBK_TOTKECOES_BS: TFloatField;
    QBSBK_TOT2QTY_PCS: TFloatField;
    QBSBK_TOT2QTY_METER: TFloatField;
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
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    Label30: TLabel;
    QMasterTGL_PROSES: TDateTimeField;
    RTgl5: TRadioGroup;
    QBrowseTGL_PROSES: TDateTimeField;
    RTgl6: TRadioGroup;
    QBrowse_Mitra_detTGL_PROSES: TDateTimeField;
    QBrowse_Mitra_det2TGL_PROSES: TDateTimeField;
    RTgl7: TRadioGroup;
    RTgl8: TRadioGroup;
    RTgl9: TRadioGroup;
    QBrowse_Mitra_detP_LB: TFloatField;
    QBrowse_Mitra_det2P_LB: TFloatField;
    QBSBK_TOT2P_LB: TFloatField;
    QBSBK_TOTLB: TFloatField;
    QLoom3P_LB: TFloatField;
    QLoom3_TotP_LB: TFloatField;
    QPerLoomP_LB: TFloatField;
    QPerLoom_TotP_LB: TFloatField;
    QBrowse_Mitra_det2P_LK: TFloatField;
    QBrowse_Mitra_detP_LK: TFloatField;
    QBSBK_TOT2P_LK: TFloatField;
    QBSBK_TOTLK: TFloatField;
    QLoom3P_LK: TFloatField;
    QLoom3_TotP_LK: TFloatField;
    QPerLoomP_LK: TFloatField;
    QPerLoom_TotP_LK: TFloatField;
    QBSBK_TOTP_LK: TFloatField;
    QBSBK_TOTP_LB: TFloatField;
    QBrowse_Mitra_det2KBR: TFloatField;
    QBrowse_Mitra_det2P_KBR: TFloatField;
    QBrowse_Mitra_detKBR: TFloatField;
    QBrowse_Mitra_detP_KBR: TFloatField;
    QBSBK_TOT2P_KBR: TFloatField;
    QBSBK_TOT2LK: TFloatField;
    QBSBK_TOT2LB: TFloatField;
    QBSBK_TOTKBR: TFloatField;
    QLoom3KBR: TFloatField;
    QLoom3P_KBR: TFloatField;
    QLoom3_TotKBR: TFloatField;
    QLoom3_TotP_KBR: TFloatField;
    QPerLoomKBR: TFloatField;
    QPerLoomP_KBR: TFloatField;
    QPerLoom_TotKBR: TFloatField;
    QPerLoom_TotP_KBR: TFloatField;
    QBSBK_TOT2P_KNT: TFloatField;
    QBSBK_TOTKNT: TFloatField;
    QBrowse_Mitra_det2P_KNT: TFloatField;
    QBrowse_Mitra_detP_KNT: TFloatField;
    QLoom3P_KNT: TFloatField;
    QLoom3_TotP_KNT: TFloatField;
    QPerLoomP_KNT: TFloatField;
    QPerLoom_TotP_KNT: TFloatField;
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
    procedure Button1Click(Sender: TObject);
    procedure VTglAwal11Change(Sender: TObject);
    procedure VTglAkhir11Change(Sender: TObject);
    procedure RLoomClick(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BtnGrid14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
  private
    { Private declarations }
    vorder,vfilter:string;

    procedure PrintLoomKpIntern;
    procedure PrintLoomKpPPC;

    procedure PrintLoomInternKpPersen;
  public
    { Public declarations }
  end;

var
  InspectingMitraFrm: TInspectingMitraFrm;

implementation

uses DM, Math, HasilTenun, DateUtils, TerimaDariFinishing, HasilTenunMitra;

{$R *.dfm}

procedure TInspectingMitraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InspectingMitraFrm:=Nil;
end;

procedure TInspectingMitraFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
end;

procedure TInspectingMitraFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TInspectingMitraFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','913');
 QTransaksi.Open;
 InspectingMitraFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;

end;

procedure TInspectingMitraFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterGRUP.AsString:='E';
  QMasterSHIFT.AsString:='0';
  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TInspectingMitraFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TInspectingMitraFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TInspectingMitraFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode','913');
      FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TInspectingMitraFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TInspectingMitraFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TInspectingMitraFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TInspectingMitraFrm.LookKonstruksiCloseUp(Sender: TObject;
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

procedure TInspectingMitraFrm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TInspectingMitraFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TInspectingMitraFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TInspectingMitraFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='BK';
  QDetailJENIS.AsString:='PALEKAT';
  QDetailKD_CORAK.AsString:='000';
  QDetailCORAK.AsString:='-';
  QMasterISPOST.AsString:='0';
end;

procedure TInspectingMitraFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TInspectingMitraFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TInspectingMitraFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TInspectingMitraFrm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TInspectingMitraFrm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);  
end;

procedure TInspectingMitraFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalBK.AsFloat);

end;

procedure TInspectingMitraFrm.BitBtn4Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilTenunMitraFrm:=THasilTenunMitraFrm.Create(Self);
  HasilTenunMitraFrm.QDetail.Close;
  HasilTenunMitraFrm.QDetail.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  HasilTenunMitraFrm.QDetail.Open;
 { HasilTenunMitraFrm.QMaster.Close;
  HasilTenunMitraFrm.QMaster.SetVariable('no_reg',HasilTenunFrm.QDetailNO_REG_TENUN.AsInteger);
  HasilTenunMitraFrm.QMaster.Open; }
  HasilTenunMitraFrm.ShowModal;
  HasilTenunMitraFrm.Free;
end;

procedure TInspectingMitraFrm.BitBtn3Click(Sender: TObject);
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

procedure TInspectingMitraFrm.FormShow(Sender: TObject);
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

procedure TInspectingMitraFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);

end;

procedure TInspectingMitraFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;

end;

procedure TInspectingMitraFrm.cbOtomatisClick(Sender: TObject);
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

procedure TInspectingMitraFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TInspectingMitraFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';

end;

procedure TInspectingMitraFrm.cbTanggalClick(Sender: TObject);
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

procedure TInspectingMitraFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse.Open;
  vpertama:=True;
  if cbTanggal.Checked then
    // vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('

    if RTgl5.ItemIndex=0 then
            vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
        else
            vfilter:=' where (TGL_PROSES>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL_PROSES<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('

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
  wwDBGrid1xxxxx.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BK.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KODI_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KODI_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BGRADE.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('PCS_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BGRADE.AsFloat);
end;

procedure TInspectingMitraFrm.BtnExportClick(Sender: TObject);
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

procedure TInspectingMitraFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TInspectingMitraFrm.TabSheet1Show(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','913');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Close;
 QDetail.Close;
 QMaster.Open;
 QDetail.Open;
end;

procedure TInspectingMitraFrm.wwDBDateTimePicker1Change(
  Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=wwDBDateTimePicker1.Date;
end;

procedure TInspectingMitraFrm.QBrowseTotal2CalcFields(
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

procedure TInspectingMitraFrm.TabSheet3Show(Sender: TObject);
begin
  QBrowseTotal2.Close;
  QBrowseTotal2.Open;
end;

procedure TInspectingMitraFrm.wwDBNavigator1Button1Click(
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

procedure TInspectingMitraFrm.TabSheet4Show(Sender: TObject);
begin
  vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  //QBrowse_Det.Open;
end;

procedure TInspectingMitraFrm.wwDBGrid3TitleButtonClick(
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

procedure TInspectingMitraFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TInspectingMitraFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
//  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TInspectingMitraFrm.wwDBGrid3Enter(Sender: TObject);
begin
//  If QMaster.State<> dsBrowse then QMaster.Post;  
end;

procedure TInspectingMitraFrm.TabSheet6Show(Sender: TObject);
begin
 //vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
 QPerKonstruksi.Open
 end;

procedure TInspectingMitraFrm.wwDBGrid5TitleButtonClick(
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

procedure TInspectingMitraFrm.wwDBGrid6TitleButtonClick(
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

procedure TInspectingMitraFrm.look_opEnter(Sender: TObject);
begin
DMFrm.QOp_Inspect.Open;
end;

procedure TInspectingMitraFrm.look_opCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  QMasterOPERATOR.AsString:=DMFrm.QOp_InspectNAMA_KARYAWAN.AsString;
end;

procedure TInspectingMitraFrm.TabSheet8Show(Sender: TObject);
begin
QPerOperator.Open;
end;

procedure TInspectingMitraFrm.TabSheet7Show(Sender: TObject);
begin
QPerCorak.Open;
end;

procedure TInspectingMitraFrm.BitBtn7Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QPerKonstruksi.DisableControls;
  QPerKonstruksi.Close;

  if RTgl9.ItemIndex = 0 then
     QPerKonstruksi.SetVariable('ptgl', 'a.tgl')
  else
     QPerKonstruksi.SetVariable('ptgl', 'a.tgl_proses');

  QPerKonstruksi.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi.Open;
  QPerKonstruksi_Tot.Close;

  if RTgl9.ItemIndex = 0 then
     QPerKonstruksi_Tot.SetVariable('ptgl', 'a.tgl')
  else
     QPerKonstruksi_Tot.SetVariable('ptgl', 'a.tgl_proses');

  QPerKonstruksi_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi_Tot.Open;
  QPerKonstruksi.EnableControls;
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',QPerKonstruksi_TotQTY.AsFloat);
  wwDBGrid5.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-  ',QPerKonstruksi_TotPOTONG.AsFloat);
  wwDBGrid5.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);- ',QPerKonstruksi_TotMETER.AsFloat);


  end;

procedure TInspectingMitraFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TInspectingMitraFrm.vTglAkhir3Change(Sender: TObject);
begin
 if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TInspectingMitraFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+VTglAwal3.Text+' s/d '+vTglAkhir3.Text+')';
end;

procedure TInspectingMitraFrm.BtnExport3Click(Sender: TObject);
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

procedure TInspectingMitraFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TInspectingMitraFrm.VTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=trunc(EndOfTheMonth(VTglAwal2.Date));
end;

procedure TInspectingMitraFrm.VTglAkhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TInspectingMitraFrm.cbOtomatis2Click(Sender: TObject);
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

procedure TInspectingMitraFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Mitra_det.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TGL' then
      dbcField2.Items.Add(wwDBGrid3.Columns[i].FieldName);
end;

procedure TInspectingMitraFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TInspectingMitraFrm.cbTanggal2Click(Sender: TObject);
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

procedure TInspectingMitraFrm.BtnExport2Click(Sender: TObject);
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

procedure TInspectingMitraFrm.BtnFindClick(Sender: TObject);
begin
  if not QBrowse_Mitra_det.QBEMode then
  begin
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse_Mitra_det.QBEMode:=TRUE;
  end
  else
    QBrowse_Mitra_det.ClearQBE;
end;

procedure TInspectingMitraFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TInspectingMitraFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TInspectingMitraFrm.BitBtn8Click(Sender: TObject);
var
  i: Word;
  vpertama: Boolean;
  vkd, vjam: string;
  vjam1, vjam2: Integer;

begin
    DMFrm.QHak_jam.Open;
    vjam := DMFrm.QUserTimeVJAM.AsString;
    vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
    vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

    if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
    begin
    ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
    QBrowse_Mitra_det.Close;
    abort;
    end
    else
    QBrowse_Mitra_det.Open;

    vpertama := True;
    if cbTanggal2.Checked then

    // vfilter := ' where (TGL >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''',''dd/mm/yyyy'') and TGL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('

    if RTgl6.ItemIndex=0 then
            vfilter := ' where (TGL >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''',''dd/mm/yyyy'') and TGL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter := ' where (TGL_PROSES >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal2.Date) + ''',''dd/mm/yyyy'') and TGL_PROSES <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir2.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('


    else
    vfilter := ' where (';

    if QBrowse_Mitra_det.FieldCount >= 1 then
    begin
    if dbcField2.ItemIndex = 0 then
    begin
        for i := 0 to wwDBGrid3.Selected.Count - 1 do
        begin
        if (QBrowse_Mitra_det.FieldByName(wwDBGrid3.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid3.Columns[i].FieldName) <> 'TGL') then
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
    if QBrowse_Mitra_det.Active then
        vorder := ' order by ' + wwDBGrid3.Columns[0].FieldName
    else
        vorder := ' order by no_reg';
    end;

    QBrowse_Mitra_det.DisableControls;
    QBrowse_Mitra_det.Close;
    QBrowse_Mitra_det.SetVariable('myparam', vfilter + vorder);
    QBrowse_Mitra_det.Open;
    QBrowse_Mitra_det.EnableControls;

    QBSBK_TOT.DisableControls;
    QBSBK_TOT.Close;
    QBSBK_TOT.SetVariable('myparam', vfilter);
    QBSBK_TOT.Open;
    QBSBK_TOT.EnableControls;

    wwDBGrid3.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY_PCS.AsFloat);
    wwDBGrid3.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY_METER.AsFloat);

    wwDBGrid3.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY3.AsFloat);
    wwDBGrid3.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTBGRADE.AsFloat);
    wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTQTY2.AsFloat);

    wwDBGrid3.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BK.AsFloat);
    wwDBGrid3.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BGRADE.AsFloat);
    wwDBGrid3.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_BS.AsFloat);

    //wwDBGrid3.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY3.AsFloat);
    //wwDBGrid3.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_BGRADE.AsFloat);
    //wwDBGrid3.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTM_QTY2.AsFloat);
                   
    //wwDBGrid3.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BK.AsFloat);
    //wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BGRADE.AsFloat);
    //wwDBGrid3.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTPM_BS.AsFloat);

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
    wwDBGrid3.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKBR.AsFloat);

    wwDBGrid3.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTSBK.AsFloat);
    wwDBGrid3.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTKNT.AsFloat);
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

    wwDBGrid3.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLK.AsFloat);        // AFFAL LANGSUNG CM
    wwDBGrid3.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTLB.AsFloat);        // AFFAL TDK LANGSUNG CM
    wwDBGrid3.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_LK.AsFloat);        // AFFAL LANGSUNG CM
    wwDBGrid3.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOTP_LB.AsFloat);        // AFFAL TDK LANGSUNG CM
  
end;

procedure TInspectingMitraFrm.BtnOk2Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47, vt48, vt49, vt50,
    vt51: real;

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
        vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0; vt50 := 0;
        vt51 := 0;

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
            vt48 := vt48 + QBrowse_Mitra_detLB.AsFloat;
            vt49 := vt49 + QBrowse_Mitra_detLK.AsFloat;
            vt50 := vt50 + QBrowse_Mitra_detKBR.AsFloat;

            vt51 := vt51 + QBrowse_Mitra_detKNT.AsFloat;

            QBrowse_Mitra_det.Next;
        end;


        wwDBGrid3.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

        wwDBGrid3.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1-vt3-vt4);
        wwDBGrid3.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
        wwDBGrid3.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

        //wwDBGrid3.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt45-vt3-vt4)*2.15));
        //wwDBGrid3.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3*2.15);
        //wwDBGrid3.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4*2.15);

        wwDBGrid3.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt1-vt3-vt4)/vt1)*100);
        wwDBGrid3.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1)*100);
        wwDBGrid3.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1)*100);

        //wwDBGrid3.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (((vt45-vt3-vt4)*2.15)/vt45)*100);
        //wwDBGrid3.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt3*2.15)/vt45)*100);
        //wwDBGrid3.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', ((vt4*2.15)/vt45)*100);

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
        wwDBGrid3.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
        wwDBGrid3.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
        wwDBGrid3.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);

        wwDBGrid3.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

        wwDBGrid3.Refresh;
    end;
end;


procedure TInspectingMitraFrm.BitBtn9Click(Sender: TObject);
var
  i: Word;
  vpertama: Boolean;
  vkd, vjam: string;
  vjam1, vjam2: Integer;

begin
    DMFrm.QHak_jam.Open;
    vjam := DMFrm.QUserTimeVJAM.AsString;
    vjam1 := StrToInt(DMFrm.QHak_JamJAM1.AsString);
    vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

    if (StrToInt(vjam) >= vjam1) and (StrToInt(vjam) <= vjam2) then
    begin
    ShowMessage('jam input data !!! Silahkan Browse Setelah Jam 12');
    QBrowse_Mitra_det2.Close;
    abort;
    end
    else
    QBrowse_Mitra_det2.Open;

    vpertama := True;
    if cbTanggal8.Checked then


    // vfilter := ' where (TGL >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''',''dd/mm/yyyy'') and TGL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('

    if RTgl7.ItemIndex=0 then
            vfilter := ' where (TGL >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''',''dd/mm/yyyy'') and TGL <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('
        else
            vfilter := ' where (TGL_PROSES >= to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAwal8.Date) + ''',''dd/mm/yyyy'') and TGL_PROSES <= (to_date(''' + FormatDateTime('dd/mm/yyyy', vTglAkhir8.Date) + ''',''dd/mm/yyyy'') + 1 - 1/86400)) and ('


    else
    vfilter := ' where (';

    if QBrowse_Mitra_det2.FieldCount >= 1 then
    begin
    if dbcField8.ItemIndex = 0 then
    begin
        for i := 0 to wwDBGrid2.Selected.Count - 1 do
        begin
        if (QBrowse_Mitra_det2.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind = fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName) <> 'TGL') then
        begin
            if vpertama then
            begin
            if vOperand8.Caption = 'LIKE' then
                vfilter := vfilter + wwDBGrid2.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
            else
                vfilter := vfilter + wwDBGrid2.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
            vpertama := False;
            end
            else
            begin
            if vOperand8.Caption = 'LIKE' then
                vfilter := vfilter + ' or ' + wwDBGrid2.Columns[i].FieldName + ' like ''%' + ECari8.Text + '%'''
            else
                vfilter := vfilter + ' or ' + wwDBGrid2.Columns[i].FieldName + ' = ''' + ECari8.Text + '''';
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
    if QBrowse_Mitra_det2.Active then
        vorder := ' order by ' + wwDBGrid2.Columns[0].FieldName
    else
        vorder := ' order by no_reg';
    end;

    QBrowse_Mitra_det2.DisableControls;
    QBrowse_Mitra_det2.Close;
    QBrowse_Mitra_det2.SetVariable('myparam', vfilter + vorder);
    QBrowse_Mitra_det2.Open;
    QBrowse_Mitra_det2.EnableControls;

    QBSBK_TOT2.DisableControls;
    QBSBK_TOT2.Close;
    QBSBK_TOT2.SetVariable('myparam', vfilter);
    QBSBK_TOT2.Open;
    QBSBK_TOT2.EnableControls;

    wwDBGrid2.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY_PCS.AsFloat);
    wwDBGrid2.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY_METER.AsFloat);

    wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY3.AsFloat);
    wwDBGrid2.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2BGRADE.AsFloat);
    wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2QTY2.AsFloat);

    //wwDBGrid2.ColumnByName('M_QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY3.AsFloat);
    //wwDBGrid2.ColumnByName('M_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_BGRADE.AsFloat);
    //wwDBGrid2.ColumnByName('M_QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2M_QTY2.AsFloat);

    wwDBGrid2.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BK.AsFloat);
    wwDBGrid2.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BGRADE.AsFloat);
    wwDBGrid2.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_BS.AsFloat);

    //wwDBGrid2.ColumnByName('PM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BK.AsFloat);
    //wwDBGrid2.ColumnByName('PM_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BGRADE.AsFloat);
    //wwDBGrid2.ColumnByName('PM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2PM_BS.AsFloat);

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
    wwDBGrid2.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KBR.AsFloat);

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

    wwDBGrid2.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LK.AsFloat);        // AFFAL LANGSUNG CM
    wwDBGrid2.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2LB.AsFloat);        // AFFAL TDK LANGSUNG CM
    wwDBGrid2.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LK.AsFloat);      // AFFAL LANGSUNG CM
    wwDBGrid2.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_LB.AsFloat);      // AFFAL TDK LANGSUNG CM

    wwDBGrid2.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBSBK_TOT2P_KNT.AsFloat);
    
end;

procedure TInspectingMitraFrm.vTglAwal8Change(Sender: TObject);
begin
vTglAkhir8.Date:=trunc(EndOfTheMonth(vTglAwal8.Date));
end;

procedure TInspectingMitraFrm.vTglAkhir8Change(Sender: TObject);
begin
if vTglAwal8.Date>vTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir8.Date:=vTglAwal8.Date;
  end;
end;

procedure TInspectingMitraFrm.cbOtomatis8Click(Sender: TObject);
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

procedure TInspectingMitraFrm.dbcField8Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Mitra_det2.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TGL' then
      dbcField8.Items.Add(wwDBGrid2.Columns[i].FieldName);
end;

procedure TInspectingMitraFrm.vOperand8Click(Sender: TObject);
begin
if vOperand8.Caption='LIKE' then
    vOperand8.Caption:='='
    else
      vOperand8.Caption:='LIKE';
end;

procedure TInspectingMitraFrm.cbTanggal8Click(Sender: TObject);
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

procedure TInspectingMitraFrm.BtnExport8Click(Sender: TObject);
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

procedure TInspectingMitraFrm.BtnFind8Click(Sender: TObject);
begin
  if not QBrowse_Mitra_det2.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse_Mitra_det2.QBEMode:=TRUE;
  end
  else
    QBrowse_Mitra_det2.ClearQBE;
end;

procedure TInspectingMitraFrm.BtnOk8Click(Sender: TObject);
var
    vt1, vt2, vt3, vt4, vt5, vt6, vt7, vt8, vt9, vt10,
    vt11, vt12, vt13, vt14, vt15, vt16, vt17, vt18, vt19, vt20,
    vt21, vt22, vt23, vt24, vt25, vt26, vt27, vt28, vt29, vt30,
    vt31, vt32, vt33, vt34, vt35, vt36, vt37, vt38, vt39, vt40,
    vt41, vt42, vt43, vt44, vt45, vt46, vt47, vt48, vt49, vt50,
    vt51: real;

begin
    if QBrowse_Mitra_det2.QBEMode then
        begin
            QBrowse_Mitra_det2.ExecuteQBE;
            wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
            //disini
            vt1 := 0;  vt2 := 0;  vt3 := 0;  vt4 := 0;  vt5 := 0;
            vt6 := 0;  vt7 := 0;  vt8 := 0;  vt9 := 0;  vt10 := 0;
            vt11 := 0; vt12 := 0; vt13 := 0; vt14 := 0; vt15 := 0;
            vt16 := 0; vt17 := 0; vt18 := 0; vt19 := 0; vt20 := 0;
            vt21 := 0; vt22 := 0; vt23 := 0; vt24 := 0; vt25 := 0;
            vt26 := 0; vt27 := 0; vt28 := 0; vt29 := 0; vt30 := 0;
            vt31 := 0; vt32 := 0; vt33 := 0; vt34 := 0; vt35 := 0;
            vt36 := 0; vt37 := 0; vt38 := 0; vt39 := 0; vt40 := 0;
            vt41 := 0; vt42 := 0; vt43 := 0; vt44 := 0; vt45 := 0;
            vt46 := 0; vt47 := 0; vt48 := 0; vt49 := 0; vt50 := 0;
            vt51 := 0;

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
                    vt48 := vt48 + QBrowse_Mitra_det2LB.AsFloat;
                    vt49 := vt49 + QBrowse_Mitra_det2LK.AsFloat;
                    vt50 := vt50 + QBrowse_Mitra_det2KBR.AsFloat;

                    vt51 := vt51 + QBrowse_Mitra_det2KNT.AsFloat;

                    QBrowse_Mitra_det2.Next;
                end;
            wwDBGrid2.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);
            wwDBGrid2.ColumnByName('QTY_METER').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt45);

            wwDBGrid2.ColumnByName('QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt2);
            wwDBGrid2.ColumnByName('BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt3);
            wwDBGrid2.ColumnByName('QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt4);

            //wwDBGrid2.ColumnByName('M_QTY3').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.15));
            //wwDBGrid2.ColumnByName('M_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.15));
            //wwDBGrid2.ColumnByName('M_QTY2').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.15));

            wwDBGrid2.ColumnByName('P_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3/vt1+vt45)*100);
            wwDBGrid2.ColumnByName('P_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4/vt1+vt45)*100);

            //wwDBGrid2.ColumnByName('PM_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt2*2.15)/(vt1+vt45*2.15)*100);
            //wwDBGrid2.ColumnByName('PM_BGRADE').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt3*2.15)/(vt1+vt45*2.15)*100);
            //wwDBGrid2.ColumnByName('PM_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt4*2.15)/(vt1+vt45*2.15)*100);

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
            wwDBGrid2.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
            wwDBGrid2.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);
            wwDBGrid2.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt50/vt1+vt45)*100);

            wwDBGrid2.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt51/vt1+vt45)*100);

            //disini
        end
end;

procedure TInspectingMitraFrm.Button1Click(Sender: TObject);
begin
if QBrowse.Active= true then
  try
  QUnpost.Close;
  QUnpost.SetVariable('no_nota',wwDBGrid1xxxxx.Fields[0].AsString);
  QUnpost.Execute;
  ShowMessage('No Nota '+wwDBGrid1xxxxx.Fields[0].AsString+' Berhasil di UNPOST !');
  except
  on E : Exception do
  begin
  ShowMessage(E.Message);
  end;
end;
end;

procedure TInspectingMitraFrm.VTglAwal11Change(Sender: TObject);
begin
  VTglAkhir11.Date:=trunc(EndOfTheMonth(VTglAwal11.Date));
end;

procedure TInspectingMitraFrm.VTglAkhir11Change(Sender: TObject);
begin
 if VTglAwal11.Date>VTglAkhir11.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir11.Date:=VTglAwal11.Date;
  end;
end;

procedure TInspectingMitraFrm.RLoomClick(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid14.BringToFront;
            RPrint.BringToFront;
        end
    else
        begin
            wwDBGrid17.BringToFront;
            RLoom2.BringToFront;
        end;
end;

procedure TInspectingMitraFrm.BitBtn22Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
    if RLoom.ItemIndex = 0 then
        begin
            wwDBGrid14.BringToFront;

            QPerLoom.DisableControls;
            QPerLoom.Close;

            if RTgl8.ItemIndex = 0 then
                        QPerLoom.SetVariable('ptgl', 'a.tgl')
                    else
                        QPerLoom.SetVariable('ptgl', 'a.tgl_proses');

            QPerLoom.SetVariable('pawal',VTglAwal11.Date);
            QPerLoom.SetVariable('pakhir',VTglAkhir11.Date);
            QPerLoom.Open;
            QPerLoom_Tot.Close;

            if RTgl8.ItemIndex = 0 then
                        QPerLoom_Tot.SetVariable('ptgl', 'a.tgl')
                    else
                        QPerLoom_Tot.SetVariable('ptgl', 'a.tgl_proses');

            QPerLoom_Tot.SetVariable('pawal',VTglAwal11.Date);
            QPerLoom_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QPerLoom_Tot.Open;
            QPerLoom.EnableControls;

            wwDBGrid14.ColumnByName('QTY_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerLoom_TotQTY_PCS.AsFloat);
            wwDBGrid14.ColumnByName('QTY_METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerLoom_TotQTY_METER.AsFloat);

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
            wwDBGrid14.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKBR.AsFloat);

            wwDBGrid14.ColumnByName('SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotSBK.AsFloat);
            wwDBGrid14.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKNT.AsFloat);
            wwDBGrid14.ColumnByName('UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotUTS.AsFloat);
            wwDBGrid14.ColumnByName('KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKNB.AsFloat);
            wwDBGrid14.ColumnByName('AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotAFL.AsFloat);
            wwDBGrid14.ColumnByName('KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotKECOES_BS.AsFloat);

            wwDBGrid14.ColumnByName('BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_FLS.AsFloat);
            wwDBGrid14.ColumnByName('BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_FLP.AsFloat);
            wwDBGrid14.ColumnByName('BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_BTS.AsFloat);
            wwDBGrid14.ColumnByName('BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_BTB.AsFloat);
            wwDBGrid14.ColumnByName('BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotBS_TK.AsFloat);

            wwDBGrid14.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLK.AsFloat);
            wwDBGrid14.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotLB.AsFloat);
            wwDBGrid14.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_LK.AsFloat);
            wwDBGrid14.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QPerLoom_TotP_LB.AsFloat);
        end
    else
        begin
            wwDBGrid17.BringToFront;

            QLoom3.DisableControls;
            QLoom3.Close;

            if RTgl8.ItemIndex = 0 then
                        QLoom3.SetVariable('ptgl', 'a.tgl')
                    else
                        QLoom3.SetVariable('ptgl', 'a.tgl_proses');

            QLoom3.SetVariable('pawal',VTglAwal11.Date);
            QLoom3.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom3.Open;
            QLoom3_Tot.Close;

            if RTgl8.ItemIndex = 0 then
                        QLoom3_Tot.SetVariable('ptgl', 'a.tgl')
                    else
                        QLoom3_Tot.SetVariable('ptgl', 'a.tgl_proses');

            QLoom3_Tot.SetVariable('pawal',VTglAwal11.Date);
            QLoom3_Tot.SetVariable('pakhir',VTglAkhir11.Date);
            QLoom3_Tot.Open;
            QLoom3.EnableControls;

            wwDBGrid17.ColumnByName('QTY_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QLoom3_TotQTY_PCS.AsFloat);
            wwDBGrid17.ColumnByName('QTY_METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QLoom3_TotQTY_METER.AsFloat);

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
            wwDBGrid17.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KBR.AsFloat);

            wwDBGrid17.ColumnByName('P_SBK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_SBK.AsFloat);
            wwDBGrid17.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KNT.AsFloat);
            wwDBGrid17.ColumnByName('P_UTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_UTS.AsFloat);
            wwDBGrid17.ColumnByName('P_KNB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KNB.AsFloat);
            wwDBGrid17.ColumnByName('P_AFL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_AFL.AsFloat);
            wwDBGrid17.ColumnByName('P_KECOES_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_KECOES_BS.AsFloat);

            wwDBGrid17.ColumnByName('P_BS_FLS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_FLS.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_FLP').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_FLP.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_BTS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_BTS.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_BTB').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_BTB.AsFloat);
            wwDBGrid17.ColumnByName('P_BS_TK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_BS_TK.AsFloat);

            wwDBGrid17.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotLK.AsFloat);
            wwDBGrid17.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotLB.AsFloat);
            wwDBGrid17.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LK.AsFloat);
            wwDBGrid17.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QLoom3_TotP_LB.AsFloat);
        end; 
end;

procedure TInspectingMitraFrm.BitBtn20Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
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

// Loom Kp Intern
procedure TInspectingMitraFrm.PrintLoomKpIntern;
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
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalKECOES_BS, TotalKBR, TotalLB, TotalLK, TotalKNT: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS, TotalP_KBR, TotalP_LB, TotalP_LK, TotalP_KNT: Real;
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
    TotalKECOES_BS := 0; TotalKBR := 0; TotalLB := 0; TotalLK := 0; TotalKNT := 0;

    // Membuat bagian awal HTML
    HTMLContent.Add('<html><head><style>@page {size: A4 landscape; margin: 5mm;}');
    HTMLContent.Add('body {font-family: Arial, sans-serif; margin: 0; padding: 0;}');
    HTMLContent.Add('table {width: 100%; border-collapse: collapse; font-size: 11px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 2px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center; margin-top: 10px;}');
    HTMLContent.Add('.left-align {text-align: left; margin-bottom: 5px;}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Inspect Mitra (GD)</h3>');
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
    HTMLContent.Add('<th>Mitra</th>');        // Nama Loom
    HTMLContent.Add('<th>Loom</th>');
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
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MITRA').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MESIN_TENUN').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat * 100)) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
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
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('KNT').AsFloat) + '</td>');     // LUBANG

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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiInspectMitra.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

// Loom Kp PPC
procedure TInspectingMitraFrm.PrintLoomKpPPC;
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
  TotalBS_BTS, TotalBS_BTB, TotalBS_TK, TotalAFL, TotalLB, TotalKECOES_BS: Real;

  TotalP_LD, TotalP_LT, TotalP_LPT, TotalP_LRG, TotalP_WL, TotalP_FLS, TotalP_FLP, TotalP_NEPS, TotalP_PP, TotalP_WP: Real;
  TotalP_OJ, TotalP_CRT, TotalP_BTS, TotalP_BTB, TotalP_BO, TotalP_SC, TotalP_SLL, TotalP_CK, TotalP_CAJ, TotalP_KTR: Real;
  TotalP_PDK, TotalP_KP, TotalP_KECOES_BG, TotalP_SBK, TotalP_UTS, TotalP_KNB, TotalP_BS_FLS, TotalP_BS_FLP: Real;
  TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_LB, TotalP_KECOES_BS: Real;
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
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Inspect Mitra (GD)</h3>');
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
    HTMLContent.Add('<th>Mitra</th>');
    HTMLContent.Add('<th>Loom</th>');
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
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MITRA').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid14.DataSource.DataSet.FieldByName('MESIN_TENUN').AsString + '</td>');
      
      TotalProd := TotalProd + wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) + '</td>');

      TotalBk := TotalBk + wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
      // Menghitung dan menampilkan % BK
      if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
      begin
          TotalPBk := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat * 100)) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBGrade := TotalBGrade + wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
      // Menampilkan data BGrade
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BGRADE
      if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
      begin
          TotalPBg := (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
      end
      else
          HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

      TotalBs := TotalBs + wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat;
      HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

      // Menghitung dan menampilkan % BS
      if wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
      begin
          TotalPbs := (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
          HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid14.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid14.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
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
    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiInspectMitra.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

  finally
    HTMLContent.Free;
  end;
end;

// Persen Kp Intern
procedure TInspectingMitraFrm.PrintLoomInternKpPersen;
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
    TotalP_BS_BTS, TotalP_BS_BTB, TotalP_BS_TK, TotalP_AFL, TotalP_KECOES_BS, TotalP_KBR, TotalP_LK, TotalP_LB, TotalP_KNT: Real;

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
    HTMLContent.Add('<h3 style="text-align: center;">Rekapitulasi Produksi Inspect Mitra (GD)</h3>');
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
    HTMLContent.Add('<th>Mitra</th>');        // Nama Loom
    HTMLContent.Add('<th>Loom</th>');
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
    HTMLContent.Add('<th>% KBR</th>');

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
    HTMLContent.Add('<th>AFL LGS(CM)</th>');
    HTMLContent.Add('<th>AFL TDK LGS(KG)</th>');
    HTMLContent.Add('</tr>');


    wwDBGrid17.DataSource.DataSet.First;
    while not wwDBGrid17.DataSource.DataSet.Eof do
    begin
        HTMLContent.Add('<tr>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('MITRA').AsString + '</td>');
        HTMLContent.Add('<td>' + wwDBGrid17.DataSource.DataSet.FieldByName('MESIN_TENUN').AsString + '</td>');
        
        TotalProd := TotalProd + wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) + '</td>');

        TotalBk := TotalBk + wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat) + '</td>');
        // Menghitung dan menampilkan % BK
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPBk := (wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('QTY3').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBGrade := TotalBGrade + wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat;
        // Menampilkan data BGrade
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BGRADE
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPBg := (wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BGRADE').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBs := TotalBs + wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat) + '</td>');

        // Menghitung dan menampilkan % BS
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalPbs := (wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('QTY2').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');
        

        // Tambahkan data untuk kolom tambahan
        // Menghitung dan menampilkan % LD
                TotalLD := TotalLD + wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LD := (wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LD').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLT := TotalLT + wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LT := (wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLPT := TotalLPT + wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LPT := (wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LPT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLRG := TotalLRG + wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LRG := (wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LRG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWL := TotalWL + wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_WL := (wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('WL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // Menambahkan kode serupa untuk kolom lainnya
        TotalFLS := TotalFLS + wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_FLS := (wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalFLP := TotalFLP + wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_FLP := (wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalNEPS := TotalNEPS + wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_NEPS := (wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('NEPS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPP := TotalPP + wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_PP := (wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('PP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalWP := TotalWP + wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_WP := (wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('WP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalOJ := TotalOJ + wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_OJ := (wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('OJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCRT := TotalCRT + wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_CRT := (wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CRT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBTS := TotalBTS + wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BTS := (wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');        

        TotalBTB := TotalBTB + wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BTB := (wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBO := TotalBO + wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BO := (wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BO').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSC := TotalSC + wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_SC := (wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SC').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSLL := TotalSLL + wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_SLL := (wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SLL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCK := TotalCK + wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_CK := (wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalCAJ := TotalCAJ + wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_CAJ := (wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('CAJ').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKTR := TotalKTR + wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KTR := (wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KTR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalPDK := TotalPDK + wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_PDK := (wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('PDK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKP := TotalKP + wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KP := (wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKECOES_BG := TotalKECOES_BG + wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KECOES_BG := (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BG').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKBR := TotalKBR + wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KBR := (wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KBR').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalSBK := TotalSBK + wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_SBK := (wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('SBK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNT := TotalKNT + wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KNT := (wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KNT').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalUTS := TotalUTS + wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_UTS := (wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('UTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKNB := TotalKNB + wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KNB := (wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KNB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLS := TotalBS_FLS + wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat;        
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BS_FLS := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_FLP := TotalBS_FLP + wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat;       
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BS_FLP := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_FLP').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTS := TotalBS_BTS + wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BS_BTS := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_BTB := TotalBS_BTB + wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BS_BTB := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_BTB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalBS_TK := TotalBS_TK + wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_BS_TK := (wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('BS_TK').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalAFL := TotalAFL + wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_AFL := (wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('AFL').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalLB := TotalLB + wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LB := (wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        TotalKECOES_BS := TotalKECOES_BS + wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat;
        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_KECOES_BS := (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100;
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('KECOES_BS').AsFloat / wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat) * 100) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        TotalLK := TotalLK + wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat) + '</td>');

        TotalLB := TotalLB + wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat;
        HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat) + '</td>');

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LK := (wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat / 630);
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LK').AsFloat / 630)) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        if wwDBGrid17.DataSource.DataSet.FieldByName('QTY_PCS').AsFloat > 0 then
        begin
            TotalP_LB := (wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat / 630);
            HTMLContent.Add('<td>' + FormatFloat('0.0,0;(0.0,0);-', (wwDBGrid17.DataSource.DataSet.FieldByName('LB').AsFloat / 630)) + '</td>');
        end
        else
            HTMLContent.Add('<td>0.0,0;(0.0,0);-</td>');

        // ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
    HTMLContent.Add('<td><b>' + FormatFloat('0.0,0;(0.0,0);-', (TotalLB / TotalProd) * 100) + '</b></td>');
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

    FileName := ExtractFilePath(Application.ExeName) + 'RekapitulasiProduksiInspectMitra.html';
    HTMLContent.SaveToFile(FileName);
    WebBrowser1.Navigate('file://' + FileName);

    finally
    HTMLContent.Free;
  end;
end;

procedure TInspectingMitraFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TInspectingMitraFrm.BtnGrid14Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
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

    else
        begin
            wwDBGrid17.BringToFront;
            RLoom2.BringToFront;

            PrintLoomInternKpPersen;
                       
        end;

end;

procedure TInspectingMitraFrm.SpeedButton1Click(Sender: TObject);
begin
    if RLoom.ItemIndex = 0 then
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

procedure TInspectingMitraFrm.SpeedButton2Click(Sender: TObject);
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
                        vt1 := vt1 + QPerLoomQTY_PCS.AsFloat;

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
                        vt47 := vt47 + QPerLoomLB.AsFloat;
                        vt48 := vt48 + QPerLoomLK.AsFloat;
                        vt49 := vt49 + QPerLoomKBR.AsFloat;

                        vt50 := vt50 + QPerLoomP_LB.AsFloat;
                        vt51 := vt51 + QPerLoomP_LK.AsFloat;

                        vt52 := vt52 + QPerLoomKNT.AsFloat;

                        QPerLoom.Next;
                    end;

                wwDBGrid14.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

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
                
                wwDBGrid14.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
                wwDBGrid14.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid14.ColumnByName('KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt49);

                wwDBGrid14.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid14.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid14.ColumnByName('KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt52);

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
                        vt1 := vt1 + QLoom3QTY_PCS.AsFloat;

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
                        vt47 := vt47 + QLoom3LB.AsFloat;
                        vt48 := vt48 + QLoom3LK.AsFloat;
                        vt49 := vt49 + QLoom3KBR.AsFloat;

                        vt50 := vt50 + QLoom3P_LB.AsFloat;
                        vt51 := vt51 + QLoom3P_LK.AsFloat;

                        vt52 := vt52 + QLoom3KNT.AsFloat;

                        QLoom3.Next;
                    end;
                
                wwDBGrid17.ColumnByName('QTY_PCS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt1);

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

                wwDBGrid17.ColumnByName('LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt47);
                wwDBGrid17.ColumnByName('LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt48);
                wwDBGrid17.ColumnByName('P_KBR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt49/vt1)*100);

                wwDBGrid17.ColumnByName('P_LB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt50);
                wwDBGrid17.ColumnByName('P_LK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', vt51);

                wwDBGrid17.ColumnByName('P_KNT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', (vt52/vt1)*100);

            end
        end; 
end;

procedure TInspectingMitraFrm.DBText1Click(Sender: TObject);
begin
 InputBox (' Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

end.
