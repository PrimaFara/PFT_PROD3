unit WOMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDCustomButtonGroup, LMDCustomRadioGroup, LMDRadioGroup, OleCtrls,
  SHDocVw;

type
  TWOMitraFrm = class(TForm)
    PanelCenter: TPanel;
    PanelHeader: TPanel;
    PanelFooter: TPanel;
    PanelTop: TPanel;
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
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    BitBtn2: TBitBtn;
    wwCheckBox1: TwwCheckBox;
    wwDBNavigator1Button1: TwwNavButton;
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
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    cbPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
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
    LabelBanner: TLabel;
    Label11: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    ListView1: TListView;
    Label1: TLabel;
    DBText7: TDBText;
    LookMitra: TwwDBLookupComboDlg;
    Label6: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label10: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
    QMasterNO_REG: TFloatField;
    QMasterNO_SPB: TStringField;
    QMasterKD_MITRA: TStringField;
    QMasterNAMA_MITRA: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QMasterTANGGAL: TDateTimeField;
    QMasterISPOST: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QMasterKETERANGAN: TStringField;
    QInsertDetail: TOracleQuery;
    QDetailNO_REG_DET: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNO_URUT: TFloatField;
    QDetailNO_MESIN: TStringField;
    QDetailNO_BEAM: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailPOTONG: TFloatField;
    QDetailWARPING: TStringField;
    QDetailKETERANGAN: TStringField;
    QBrowseTotalPOTONG: TFloatField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglakhir2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BtnExport2: TBitBtn;
    BitBtn6: TBitBtn;
    Label20: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    vTglAwal3: TwwDBDateTimePicker;
    vTglAkhir3: TwwDBDateTimePicker;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    BtnExport3: TBitBtn;
    BitBtn8: TBitBtn;
    Label14: TLabel;
    QPerCorak_Tot: TOracleDataSet;
    DsPerCorak: TwwDataSource;
    QPerCorak: TOracleDataSet;
    QPerCorakCORAK: TStringField;
    QPerCorakPOTONG: TFloatField;
    QPerCorak_TotPOTONG: TFloatField;
    QPerMitra: TOracleDataSet;
    QPerMitra_Tot: TOracleDataSet;
    DsPerMitra: TwwDataSource;
    QuickRep3: TQuickRep;
    QRBand7: TQRBand;
    Label15: TLabel;
    QRLabel32: TQRLabel;
    QRImage1: TQRImage;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRBand8: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel43: TQRLabel;
    QRShape1: TQRShape;
    QRGroup3: TQRGroup;
    QRBand9: TQRBand;
    QRDBText36: TQRDBText;
    QRSysData4: TQRSysData;
    QRDBText37: TQRDBText;
    QRBand10: TQRBand;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRBand11: TQRBand;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRShape18: TQRShape;
    QRShape5: TQRShape;
    QRDBText44: TQRDBText;
    QRShape2: TQRShape;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    Label12: TLabel;
    QRLabel11: TQRLabel;
    QRImage2: TQRImage;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand3: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    QRDBText21: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText22: TQRDBText;
    QRBand5: TQRBand;
    QRDBText23: TQRDBText;
    QRBand6: TQRBand;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRShape9: TQRShape;
    QDeleteDetail: TOracleQuery;
    TabSheet5: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    cbHarga: TCheckBox;
    Panel12: TPanel;
    Label25: TLabel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    Edit1: TEdit;
    wwCheckBox2: TwwCheckBox;
    Panel13: TPanel;
    Label27: TLabel;
    DBText4: TDBText;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label33: TLabel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBComboBox5: TwwDBComboBox;
    wwDBComboBox6: TwwDBComboBox;
    wwDBEdit3: TwwDBEdit;
    QTotal: TOracleDataSet;
    QTotalPOTONG: TFloatField;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    Label13: TLabel;
    ECari2: TEdit;
    cbTanggal2: TCheckBox;
    BitBtn7: TBitBtn;
    QProc_PerMitra: TOracleQuery;
    QPerMitra_TotQTY_MSN: TFloatField;
    QPerMitra_TotPOTONG: TFloatField;
    QPerMitraNAMA_MITRA: TStringField;
    QPerMitraKONSTRUKSI: TStringField;
    QPerMitraQTY_MSN: TFloatField;
    QPerMitraPOTONG: TFloatField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    QMasterNO_NOTA: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    TabSheet6: TTabSheet;
    QPer_Beam: TOracleDataSet;
    QPer_Beam_Tot: TOracleDataSet;
    QDetailKOREKSI: TFloatField;
    QDetailQTY_AKHIR: TFloatField;
    DBText10: TDBText;
    Panel9: TPanel;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    VTglAwal4: TwwDBDateTimePicker;
    VTglAkhir4: TwwDBDateTimePicker;
    Panel14: TPanel;
    wwDBGrid4: TwwDBGrid;
    QuickRep4: TQuickRep;
    QRBand12: TQRBand;
    Label17: TLabel;
    QRLabel19: TQRLabel;
    QRImage3: TQRImage;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand13: TQRBand;
    QRLabel24: TQRLabel;
    QRShape3: TQRShape;
    QRGroup4: TQRGroup;
    QRBand14: TQRBand;
    QRDBText24: TQRDBText;
    QRSysData5: TQRSysData;
    QRDBText26: TQRDBText;
    QRBand15: TQRBand;
    QRDBText28: TQRDBText;
    QRBand16: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape4: TQRShape;
    Label19: TLabel;
    dsQPer_Beam: TwwDataSource;
    QPer_BeamNAMA_MITRA: TStringField;
    QPer_BeamNO_BEAM: TStringField;
    QPer_BeamPOTONG: TFloatField;
    QPer_Beam_TotPOTONG: TFloatField;
    BitBtn14: TBitBtn;
    QProc_PerBeam: TOracleQuery;
    BitBtn5: TBitBtn;
    Label21: TLabel;
    BitBtn11: TBitBtn;
    BtnExport4: TBitBtn;
    BitBtn13: TBitBtn;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    ECari3: TEdit;
    cbTanggal3: TCheckBox;
    QRLabel23: TQRLabel;
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
    QRDBText6: TQRDBText;
    QRLabel16: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRSysData2: TQRSysData;
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
    QRLabel25: TQRLabel;
    QRDBText31: TQRDBText;
    Label22: TLabel;
    Label23: TLabel;
    QRLabel26: TQRLabel;
    QRImage4: TQRImage;
    QRLabel27: TQRLabel;
    QDetailNO_RESEP: TStringField;
    TabSheet7: TTabSheet;
    Panel15: TPanel;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel16: TPanel;
    vOperand5: TLabel;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    cbOtomatis5: TCheckBox;
    dbcField5: TwwDBComboBox;
    ECari5: TEdit;
    cbTanggal5: TCheckBox;
    QuickRep5: TQuickRep;
    QRBand17: TQRBand;
    Label34: TLabel;
    QRLabel1: TQRLabel;
    QRImage5: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand18: TQRBand;
    QRLabel28: TQRLabel;
    QRShape7: TQRShape;
    QRLabel29: TQRLabel;
    QRGroup5: TQRGroup;
    QRBand19: TQRBand;
    QRDBText7: TQRDBText;
    QRSysData6: TQRSysData;
    QRDBText10: TQRDBText;
    QRBand20: TQRBand;
    QRBand21: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRShape8: TQRShape;
    Label35: TLabel;
    wwDBGrid5: TwwDBGrid;
    QSisaWO: TOracleDataSet;
    dsQSisaWO: TwwDataSource;
    QSisaWOKD_MITRA: TStringField;
    QSisaWONAMA_MITRA: TStringField;
    QSisaWOTANGGAL: TDateTimeField;
    QSisaWONO_RESEP: TStringField;
    QSisaWONO_BEAM: TStringField;
    QSisaWONO_SERI_BEAM: TStringField;
    QSisaWOKONSTRUKSI: TStringField;
    QSisaWOCORAK: TStringField;
    QSisaWOLOKASI_TUJUAN: TStringField;
    QSisaWONO_MESIN: TStringField;
    QSisaWOJML_POTONG: TFloatField;
    QSisaWOQTY: TFloatField;
    QSisaWOSISA_PTG_BEAM: TFloatField;
    QSisaTOTWO: TOracleDataSet;
    QAmbilResep: TOracleDataSet;
    QAmbilResepNO_NOTA: TStringField;
    QAmbilResepNO_SERI_BEAM: TStringField;
    QAmbilResepNO_BEAM: TStringField;
    QAmbilResepCORAK: TStringField;
    QAmbilResepKONSTRUKSI: TStringField;
    QAmbilResepID_RAB: TFloatField;
    QAmbilResepNO_RESEP: TStringField;
    QAmbilResepTANGGAL: TDateTimeField;
    TabSheet8: TTabSheet;
    Panel17: TPanel;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    VTglAwal6: TwwDBDateTimePicker;
    VTglAkhir6: TwwDBDateTimePicker;
    Panel18: TPanel;
    BitBtn12: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    wwDBGrid6: TwwDBGrid;
    QuickRep6: TQuickRep;
    QRBand22: TQRBand;
    Label36: TLabel;
    QRLabel30: TQRLabel;
    QRImage6: TQRImage;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand23: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape10: TQRShape;
    QRGroup6: TQRGroup;
    QRBand24: TQRBand;
    QRDBText35: TQRDBText;
    QRSysData7: TQRSysData;
    QRDBText43: TQRDBText;
    QRBand25: TQRBand;
    QRDBText45: TQRDBText;
    QRBand26: TQRBand;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRShape11: TQRShape;
    Label37: TLabel;
    QPerResep: TOracleDataSet;
    DsQPerResep: TwwDataSource;
    QPerResep_Tot: TOracleDataSet;
    QPerResep_TotPOTONG: TFloatField;
    QRLabel38: TQRLabel;
    QBrowseTotalQTY_AKHIR: TFloatField;
    QBrowseTotalKOREKSI: TFloatField;
    QAmbilResepKP: TStringField;
    TabSheet9: TTabSheet;
    wwDBGrid7: TwwDBGrid;
    Panel19: TPanel;
    GroupBox7: TGroupBox;
    Label38: TLabel;
    VTglAwal7: TwwDBDateTimePicker;
    VTglAkhir7: TwwDBDateTimePicker;
    Panel20: TPanel;
    vOperand7: TLabel;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    ECari7: TEdit;
    cbTanggal7: TCheckBox;
    Label41: TLabel;
    QSisaWO_det: TOracleDataSet;
    dSQSisaWO_det: TwwDataSource;
    QSisaWOTGL_TERIMA: TDateTimeField;
    rgTanggal: TLMDRadioGroup;
    QSisaWO_det_Tot: TOracleDataSet;
    QSisaWO_det_TotTOT_QTY: TFloatField;
    QSisaWO_det_TotTOT_WO: TFloatField;
    QSisaWO_det_TotTOT_SISA: TFloatField;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRLabel50: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRExpr6: TQRExpr;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape27: TQRShape;
    QProc_Sisa: TOracleQuery;
    QuickRep7: TQuickRep;
    QRBand27: TQRBand;
    Label39: TLabel;
    QRLabel42: TQRLabel;
    QRImage7: TQRImage;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRBand28: TQRBand;
    QRLabel47: TQRLabel;
    QRShape12: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape13: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRGroup7: TQRGroup;
    QRBand29: TQRBand;
    QRDBText32: TQRDBText;
    QRSysData8: TQRSysData;
    QRDBText48: TQRDBText;
    QRBand30: TQRBand;
    QRLabel61: TQRLabel;
    QRBand31: TQRBand;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRShape32: TQRShape;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRLabel64: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRDBText63: TQRDBText;
    QSisaTOTWOTOT_WO: TFloatField;
    QPerResepNO_RESEP: TStringField;
    QPerResepPOTONG: TFloatField;
    QRLabel51: TQRLabel;
    QRDBText53: TQRDBText;
    TabSheet10: TTabSheet;
    Panel21: TPanel;
    GroupBox8: TGroupBox;
    Label40: TLabel;
    VTglAwal8: TwwDBDateTimePicker;
    VTglAkhir8: TwwDBDateTimePicker;
    Panel22: TPanel;
    vOperand8: TLabel;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    cbOtomatis8: TCheckBox;
    dbcField8: TwwDBComboBox;
    ECari8: TEdit;
    cbTanggal8: TCheckBox;
    Label43: TLabel;
    wwDBGrid8: TwwDBGrid;
    QSisaWO_detNO_RESEP: TStringField;
    QSisaWO_detKD_MITRA: TStringField;
    QSisaWO_detNAMA_MITRA: TStringField;
    QSisaWO_detTANGGAL: TDateTimeField;
    QSisaWO_detTGL_TERIMA: TDateTimeField;
    QSisaWO_detNO_BEAM: TStringField;
    QSisaWO_detNO_SERI_BEAM: TStringField;
    QSisaWO_detKONSTRUKSI: TStringField;
    QSisaWO_detCORAK: TStringField;
    QSisaWO_detLOKASI_TUJUAN: TStringField;
    QSisaWO_detNO_MESIN: TStringField;
    QSisaWO_detJML_POTONG: TFloatField;
    QSisaWO_detQTY: TFloatField;
    QSisaWO_detSISA_PTG_BEAM: TFloatField;
    QSisaWO_detQTY_SISA_LL: TFloatField;
    QSisaWO_det2: TOracleDataSet;
    QSisaWO_det2NO_RESEP: TStringField;
    QSisaWO_det2KD_MITRA: TStringField;
    QSisaWO_det2NAMA_MITRA: TStringField;
    QSisaWO_det2NO_BEAM: TStringField;
    QSisaWO_det2NO_SERI_BEAM: TStringField;
    QSisaWO_det2KONSTRUKSI: TStringField;
    QSisaWO_det2CORAK: TStringField;
    QSisaWO_det2JML_POTONG: TFloatField;
    QSisaWO_det2QTY: TFloatField;
    QSisaWO_det2SISA_PTG_BEAM: TFloatField;
    dSQSisaWO_det2: TwwDataSource;
    QProc_Sisa2: TOracleQuery;
    QSisaWO_det2TGL_TERIMA: TDateTimeField;
    QSisaWO_det2LOKASI_TUJUAN: TStringField;
    QSisaWO_det2PROSES_TUJUAN: TStringField;
    QambilKP: TOracleDataSet;
    QambilKPNO_DESAIN: TFloatField;
    QambilKPISPOST: TStringField;
    QambilKPNO_NOTA: TStringField;
    QambilKPTGL: TDateTimeField;
    QambilKPNO_ORDER: TStringField;
    QambilKPTGL_ORDER: TDateTimeField;
    QambilKPKD_KONSTRUKSI: TStringField;
    QambilKPKD_CORAK: TStringField;
    QambilKPKETERANGAN: TStringField;
    QambilKPJML_POTONG: TFloatField;
    QambilKPJML_KODI: TFloatField;
    QambilKPRLUSI: TFloatField;
    QambilKPRPAKAN: TFloatField;
    QambilKPNLUSI_ORG: TFloatField;
    QambilKPNTEPI: TFloatField;
    QambilKPNKUKU: TFloatField;
    QambilKPNLUSI: TFloatField;
    QambilKPNPAKAN: TFloatField;
    QambilKPDIM_LUSI: TFloatField;
    QambilKPDIM_PAKAN: TFloatField;
    QambilKPDIM_P: TFloatField;
    QambilKPDIM_L: TFloatField;
    QambilKPNKOTAK1: TFloatField;
    QambilKPNKOTAK2: TFloatField;
    QambilKPNSISIR: TFloatField;
    QambilKPNPICK: TFloatField;
    QambilKPVERSI: TStringField;
    QambilKPTGL_INSERT: TDateTimeField;
    QambilKPOPR_INSERT: TStringField;
    QambilKPGAMBAR: TStringField;
    QambilKPKONSTRUKSI: TStringField;
    QambilKPCORAK: TStringField;
    QambilKPTOLERANSI_WASTE: TFloatField;
    QambilKPSUSUT_LUSI: TFloatField;
    QambilKPSUSUT_PAKAN: TFloatField;
    QambilKPPROPORSI: TFloatField;
    QambilKPTGL1_RENC_PROD: TDateTimeField;
    QambilKPTGL2_RENC_PROD: TDateTimeField;
    QambilKPKP: TStringField;
    QambilKPJMLC: TFloatField;
    QambilKPNPAKAN2: TFloatField;
    QambilKPNSPRING: TFloatField;
    QambilKPNPAKAN3: TFloatField;
    QDetailMETER: TFloatField;
    QPerMitraMETER: TFloatField;
    QTotalMETER: TFloatField;
    QPerMitra_TotMETER: TFloatField;
    QBrowseTotalMETER: TFloatField;
    QTotalKOREKSI: TFloatField;
    QTotalQTY_AKHIR: TFloatField;
    QDetailMETER_AKHIR: TFloatField;
    QBrowseTotalMETER_AKHIR: TFloatField;
    QBrowseNO_REG: TFloatField;
    QBrowseNO_REG_DET: TFloatField;
    QBrowseNO_NOTA: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseNO_SPB: TStringField;
    QBrowseNO_URUT: TFloatField;
    QBrowseKD_MITRA: TStringField;
    QBrowseNAMA_MITRA: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseTANGGAL: TDateTimeField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseNO_BEAM: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseRES: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseCORAK: TStringField;
    QBrowsePOTONG: TFloatField;
    QBrowseMETER: TFloatField;
    QBrowseKOREKSI: TFloatField;
    QBrowseQTY_AKHIR: TFloatField;
    QBrowseMETER_AKHIR: TFloatField;
    QBrowseWARPING: TStringField;
    QBrowseKET_DETAIL: TStringField;
    QTotalMETER_AKHIR: TFloatField;
    QDetailJENIS: TStringField;
    VPotong: TCheckBox;
    QLook_KP: TOracleDataSet;
    Look_KP: TwwDBLookupComboDlg;
    QLook_KPKD_PRODUKSI: TStringField;
    QLook_KPKD_KONSTRUKSI: TStringField;
    QLook_KPSUB_KELOMPOK: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QPerMitraKD_PRODUKSI: TStringField;
    WebBrowser1: TWebBrowser;
    FNo_Urut_LPB: TOracleDataSet;
    FNo_Urut_LPBNO_LPB: TStringField;
    QPerMitraNOTA_PRINT: TStringField;
    QMasterNOTA_PRINT: TStringField;
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
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
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
    procedure Button1Click(Sender: TObject);
    procedure LookMitraEnter(Sender: TObject);
    procedure LookMitraCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure ListView1Click(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure QMasterBeforeDelete(DataSet: TDataSet);
    procedure QMasterBeforeEdit(DataSet: TDataSet);
    procedure QDetailBeforeDelete(DataSet: TDataSet);
    procedure wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure vTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure wwDBGrid3UpdateFooter(Sender: TObject);
    procedure wwDBGrid3Enter(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure wwDBGrid2Enter(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QDetailKOREKSIChange(Sender: TField);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure VTglAkhir4Change(Sender: TObject);
    procedure VTglAwal4Change(Sender: TObject);
    procedure wwNavButton5Click(Sender: TObject);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure dbcField5Enter(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure cbTanggal5Click(Sender: TObject);
    procedure VTglAwal6Change(Sender: TObject);
    procedure VTglAkhir6Change(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure VTglAkhir7Change(Sender: TObject);
    procedure cbOtomatis7Click(Sender: TObject);
    procedure dbcField7Enter(Sender: TObject);
    procedure vOperand7Click(Sender: TObject);
    procedure cbTanggal7Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure QRBand17BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure wwDBGrid5UpdateFooter(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure VTglAwal8Change(Sender: TObject);
    procedure VTglAkhir8Change(Sender: TObject);
    procedure dbcField8Enter(Sender: TObject);
    procedure cbOtomatis8Click(Sender: TObject);
    procedure cbTanggal8Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure Look_KPEnter(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
    procedure baca_tab(SheetIndex:integer);
  end;

var
  WOMitraFrm: TWOMitraFrm;

implementation

uses DM, Math, FinishOpening, FinishShearing, TerimaDrInspecting, ComObj;

{$R *.dfm}

function ListViewConfHTML(Listview:TListview; output:TFileName; center: Boolean) : Boolean;
begin

end;


procedure TWOMitraFrm.baca_tab(SheetIndex:integer);
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


procedure TWOMitraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  WOMitraFrm:=Nil;
end;

procedure TWOMitraFrm.FormResize(Sender: TObject);
begin
//  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TWOMitraFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TWOMitraFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','911');
 QTransaksi.Open;
 WOMitraFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TWOMitraFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TWOMitraFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TWOMitraFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode','911');
      FNo_Urut.SetVariable('ptgl',QMasterTANGGAL.AsDateTime);
      FNo_Urut.Open;
      FNo_Urut_LPB.Close;
      FNo_Urut_LPB.SetVariable('pkode','911');
      FNo_Urut_LPB.SetVariable('ptgl',QMasterTANGGAL.AsDateTime);
      FNo_Urut_LPB.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
      QMasterNOTA_PRINT.AsString:=FNo_Urut_LPBNO_LPB.AsString; // NO URUT LPB PRINT
      QDetail.Close;
      QDetail.Open;
  QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
  end;
{if (QMasterISPOST.AsString='1') then
 begin
 QDetail.Close;
 QDetail.Open;
  QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
 end;}
end;

procedure TWOMitraFrm.QMasterBeforeEdit(DataSet: TDataSet);
begin
   if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TWOMitraFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit2.Text+'%');
     QMaster.Open;
  end;
end;

procedure TWOMitraFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TWOMitraFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
//QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
//QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
//QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
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

procedure TWOMitraFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TWOMitraFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TWOMitraFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTANGGAL.AsDateTime);
end;

procedure TWOMitraFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
//QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
 QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TWOMitraFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TWOMitraFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TWOMitraFrm.cbOtomatisClick(Sender: TObject);
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

procedure TWOMitraFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TWOMitraFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TWOMitraFrm.cbTanggalClick(Sender: TObject);
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

procedure TWOMitraFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  QBrowse.Open;
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
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
        vorder:=' order by no_spb';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalMETER.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);  ',QBrowseTotalQTY_AKHIR.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('KOREKSI').FooterValue:=FormatFloat('0.0,0;(0.0,0);   ',QBrowseTotalKOREKSI.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('METER_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalMETER_AKHIR.AsFloat);

end;

procedure TWOMitraFrm.BtnExportClick(Sender: TObject);
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

procedure TWOMitraFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TWOMitraFrm.TabSheet2Show(Sender: TObject);
begin
if vTab='Bro' then
   vTab:='In'
else
 begin
  vfilter:=' where (Tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and Tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse.Open;
   BitBtn3.Click;
  end;
end;

procedure TWOMitraFrm.TabSheet1Show(Sender: TObject);
begin
  if QBrowse.Active then
  begin
        QMaster.Close;
        vTab:='Bro';
        QMaster.SQL.Text:='select a.*, a.rowid from ipisma_db5.hasil_tenun_mitra a where no_spb like :no_spb and kd_transaksi =:kd_transaksi';
        QMaster.SetVariable('no_spb',QBrowseNO_SPB.AsString);
        QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
        QMaster.Open;
        //wwDBGrid1UpdateFooter(nil);
  end;
end;

procedure TWOMitraFrm.FormShow(Sender: TObject);
begin
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

  vTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal3.Date:=Trunc(date());

  vTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir3.Date:=Trunc(date());

  VTglAwal4.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal4.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal4.Date:=Trunc(date());

  VTglAkhir4.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir4.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir4.Date:=Trunc(date());

  VTglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal5.Date:=Trunc(date());

  VTglAkhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir5.Date:=Trunc(date());

  VTglAwal6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal6.Date:=Trunc(date());

  VTglAkhir6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir6.Date:=Trunc(date());

    VTglAwal7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal7.Date:=Trunc(date());

  VTglAkhir7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir7.Date:=Trunc(date());

end;

procedure TWOMitraFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TWOMitraFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TWOMitraFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    //QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    //QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TWOMitraFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    //QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TWOMitraFrm.LookKonstruksiEnter(Sender: TObject);
begin
  //DMFrm.QKonstruksi_finish.Open;
end;

procedure TWOMitraFrm.LookCorakEnter(Sender: TObject);
begin
  //DMFrm.QCorak.Open;
end;

procedure TWOMitraFrm.LookKonstruksiClick(Sender: TObject);
begin
   //DMFrm.QKonstruksi_finish.Open;
end;

procedure TWOMitraFrm.LookCorakClick(Sender: TObject);
begin
   //DMFrm.QCorak.Open;
end;

procedure TWOMitraFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
//QMasterSTATUS.AsString:='IN';
end;

procedure TWOMitraFrm.Button1Click(Sender: TObject);
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

procedure TWOMitraFrm.LookMitraEnter(Sender: TObject);
Begin
  DMFrm.QLookMitra.Open;
end;

procedure TWOMitraFrm.LookMitraCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
QMasterKD_MITRA.AsString:=DMFrm.QLookMitraKD_MITRA.AsString;
QMasterNAMA_MITRA.AsString:=DMFrm.QLookMitraNAMA_MITRA.AsString;
DBText7.Caption := DMFrm.QLookMitraNAMA_MITRA.AsString;
end;

procedure TWOMitraFrm.ListView1Click(Sender: TObject);
begin
ShowMessage('List Item index = '+IntToStr(ListView1.ItemIndex));
end;

procedure TWOMitraFrm.wwDBNavigator1PostClick(Sender: TObject);
Var i:Integer;
Reg,NO,MESIN,BEAM,KONS,RESEP,CORAK,QTY,SAT,KET,MSN,RES,KP,JNS:string;
begin
 if ListView1.Items.Count=0 then
  begin
    ShowMessage('Data Masih Kosong...');
    Exit;
  end;
  for i:=0 to Listview1.Items.Count-1 do
  begin
   NO:=''''+Listview1.Items[i].Caption+'''';
   MESIN:=''''+Listview1.Items[i].SubItems[0]+'''';
   BEAM:=''''+Listview1.Items[i].SubItems[1]+'''';
   KONS:=''''+Listview1.Items[i].SubItems[2]+'''';
   RESEP:=''''+Listview1.Items[i].SubItems[3]+'''';
   CORAK:=''''+Listview1.Items[i].SubItems[4]+'''';
   QTY:=''''+Listview1.Items[i].SubItems[5]+'''';
   SAT:=''''+Listview1.Items[i].SubItems[6]+'''';
   KET:=''''+Listview1.Items[i].SubItems[7]+'''';
   JNS:=''''+Listview1.Items[i].SubItems[8]+'''';
   MSN:=''''+'SHUTTLE PLAIN'+'''';
   //ShowMessage(Listview1.Items[i].SubItems[1]);
   QAmbilResep.Close;
  // QAmbilResep.SetVariable('beam',Listview1.Items[i].SubItems[1]);

   QAmbilResep.SetVariable('konstruksi',''+Listview1.Items[i].SubItems[2]+'%');
   QAmbilResep.SetVariable('RESEP',Listview1.Items[i].SubItems[3]+'%');
   QAmbilResep.SetVariable('mitra',DBText7.Caption);
   QAmbilResep.Open;
   RES:=''''+QAmbilResepNO_RESEP.AsString+'''';
   QAmbilkp.Close;
   QAmbilkp.SetVariable('RESEP',Listview1.Items[i].SubItems[3]+'%');
   QAmbilkp.Open;
   KP:=''''+QAmbilkpKP.AsString+'''';

  //ShowMessage(RES);        //start ayp 01082022

  if ((QMasterKD_MITRA.AsString = 'M015') AND (Listview1.Items[i].SubItems[8] = 'Sarung Dewasa'))
  OR ((QMasterKD_MITRA.AsString = 'M011') AND (Listview1.Items[i].SubItems[8] = 'Sarung Dewasa'))
  OR ((QMasterKD_MITRA.AsString = 'M019') AND (Listview1.Items[i].SubItems[8] = 'Sarung Dewasa'))
  OR ((QMasterKD_MITRA.AsString = 'M021') AND (Listview1.Items[i].SubItems[8] = 'Sarung Dewasa')) THEN
  BEGIN
  QDetail.Close;
  Reg:=''''+QMasterNO_REG.AsString+'''';
  QDetail.Open;
  QInsertDetail.Close;
  QInsertDetail.SQL.Clear;
  QInsertDetail.SQL.Add('begin') ;
  QInsertDetail.SQL.Add('insert into ipisma_db5.hasil_tenun_mitra_det (no_reg,no_urut,no_mesin,no_beam,konstruksi,no_resep,corak,potong,meter,warping,keterangan,mesin,qty_akhir,meter_akhir,res,kd_produksi,jenis) values ('+Reg+','+NO+','+MESIN+','+BEAM+','+Trim(KONS)+','+RESEP+','+Trim(CORAK)+','+QTY+'/2.15,'+QTY+','+SAT+','+KET+','+MSN+','+QTY+'/2.15,'+QTY+','+RES+','+KP+','+JNS+');');
  QInsertDetail.SQL.Add('commit;') ;
  QInsertDetail.SQL.Add('end;') ;
  //ShowMessage(QInsertDetail.SQL.Text);
  QInsertDetail.Execute;
  end
  else
  if ((QMasterKD_MITRA.AsString = 'M015') AND (Listview1.Items[i].SubItems[8] = 'Sarung Anak'))
  OR ((QMasterKD_MITRA.AsString = 'M011') AND (Listview1.Items[i].SubItems[8] = 'Sarung Anak'))
  OR ((QMasterKD_MITRA.AsString = 'M019') AND (Listview1.Items[i].SubItems[8] = 'Sarung Anak'))
  OR ((QMasterKD_MITRA.AsString = 'M021') AND (Listview1.Items[i].SubItems[8] = 'Sarung Anak')) THEN
  BEGIN
  QDetail.Close;
  Reg:=''''+QMasterNO_REG.AsString+'''';
  QDetail.Open;
  QInsertDetail.Close;
  QInsertDetail.SQL.Clear;
  QInsertDetail.SQL.Add('begin') ;
  QInsertDetail.SQL.Add('insert into ipisma_db5.hasil_tenun_mitra_det (no_reg,no_urut,no_mesin,no_beam,konstruksi,no_resep,corak,potong,meter,warping,keterangan,mesin,qty_akhir,meter_akhir,res,kd_produksi,jenis) values ('+Reg+','+NO+','+MESIN+','+BEAM+','+Trim(KONS)+','+RESEP+','+Trim(CORAK)+','+QTY+'/1.85,'+QTY+','+SAT+','+KET+','+MSN+','+QTY+'/1.85,'+QTY+','+RES+','+KP+','+JNS+');');
  QInsertDetail.SQL.Add('commit;') ;
  QInsertDetail.SQL.Add('end;') ;
  //ShowMessage(QInsertDetail.SQL.Text);
  QInsertDetail.Execute;
  end
  else
  if not (QMasterKD_MITRA.AsString = 'M015') OR (QMasterKD_MITRA.AsString = 'M011') OR (QMasterKD_MITRA.AsString = 'M019') OR (QMasterKD_MITRA.AsString = 'M021') THEN
  begin
  QDetail.Close;
  Reg:=''''+QMasterNO_REG.AsString+'''';
  QDetail.Open;
  QInsertDetail.Close;
  QInsertDetail.SQL.Clear;
  QInsertDetail.SQL.Add('begin') ;
  QInsertDetail.SQL.Add('insert into ipisma_db5.hasil_tenun_mitra_det (no_reg,no_urut,no_mesin,no_beam,konstruksi,no_resep,corak,potong,warping,keterangan,mesin,qty_akhir,res,kd_produksi,jenis) values ('+Reg+','+NO+','+MESIN+','+BEAM+','+Trim(KONS)+','+RESEP+','+Trim(CORAK)+','+QTY+','+SAT+','+KET+','+MSN+','+QTY+','+RES+','+KP+','+JNS+');');
  QInsertDetail.SQL.Add('commit;') ;
  QInsertDetail.SQL.Add('end;') ;
  //ShowMessage(QInsertDetail.SQL.Text);
  QInsertDetail.Execute;
  end;
 end;
 MessageDlg('Data Sudah Disimpan',mtInformation,[mbOK],0);

 //Listview1.Clear;  //end ayp 01082022
 
end;

procedure TWOMitraFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
   if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TWOMitraFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TWOMitraFrm.QDetailBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TWOMitraFrm.wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
begin
QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);  ',QBrowseTotalPOTONG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);  ',QBrowseTotalMETER.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('METER_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);  ',QBrowseTotalMETER_AKHIR.AsFloat);
end;

procedure TWOMitraFrm.wwDBNavigator1InsertClick(Sender: TObject);
begin
ListView1.Clear;
Edit2.Clear;
end;

procedure TWOMitraFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TWOMitraFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TWOMitraFrm.BitBtn5Click(Sender: TObject);
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
  QPerCorak.Close;
  QPerCorak_Tot.Close;
abort;
end
else
 QPerCorak.DisableControls;
  QPerCorak.Close;
  QPerCorak.SetVariable('pawal',VTglAwal2.Date);
  QPerCorak.SetVariable('pakhir',VTglakhir2.Date);
  QPerCorak.Open;

  QPerCorak_Tot.Close;
  QPerCorak_Tot.SetVariable('pawal',VTglAwal2.Date);
  QPerCorak_Tot.SetVariable('pakhir',VTglakhir2.Date);
  QPerCorak_Tot.Open;

  QPerCorak.EnableControls;
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerCorak_TotPOTONG.AsFloat);

end;

procedure TWOMitraFrm.BtnExport2Click(Sender: TObject);
begin
if QPerCorak.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet4.Caption;
             wwDBGrid2.ExportOptions.TitleName:=TabSheet4.Caption;
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

procedure TWOMitraFrm.TabSheet4Show(Sender: TObject);
begin
QPerCorak.Open;
end;

procedure TWOMitraFrm.vTglAwal3Change(Sender: TObject);
begin
 vTglAkhir3.Date:=(vTglAwal3.Date);
end;

procedure TWOMitraFrm.vTglAkhir3Change(Sender: TObject);
begin
 if vTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=vTglAwal3.Date;
  end;
end;

procedure TWOMitraFrm.BitBtn4Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  wwDBGrid1.BringToFront;
  vpertama:=True;
    vfilter:=' where (';
  if (QPerMitra.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QPerMitra.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'tanggal') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari2.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari2.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari2.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField2.Text+' like ''%'+ECari2.Text+'%'''
         else
           vfilter:=vfilter+dbcField2.Text+' = '''+ECari2.Text+'''';
    vfilter:=vfilter+')';
    if QPerMitra.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by mitra';

  end;

  QPerMitra.DisableControls;
  QPerMitra.Close;
  QPerMitra.SetVariable('myparam',vfilter+vorder);
  QPerMitra.Open;
  QPerMitra_Tot.Close;
  QPerMitra_Tot.SetVariable('myparam',vfilter);
  QPerMitra_Tot.Open;
  QPerMitra.EnableControls;
  wwDBGrid1.ColumnByName('QTY_MSN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotQTY_MSN.AsFloat);
  wwDBGrid1.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QPerMitra_TotPOTONG.AsFloat);

{ QPerMitra.DisableControls;
  QPerMitra.Close;
  QPerMitra.SetVariable('pawal',vTglAwal3.Date);
  QPerMitra.SetVariable('pakhir',vTglAkhir3.Date);
  QPerMitra.Open;

  QPerMitra_Tot.Close;
  QPerMitra_Tot.SetVariable('pawal',vTglAwal3.Date);
  QPerMitra_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerMitra_Tot.Open;

  QPerMitra.EnableControls;
  wwDBGrid1.ColumnByName('JML_MESIN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerMitra_TotJML_MESIN.AsFloat);
  wwDBGrid1.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerMitra_TotPOTONG.AsFloat);
}
  end;

procedure TWOMitraFrm.BtnExport3Click(Sender: TObject);
begin
if QPerMitra.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet3.Caption;
             wwDBGrid1.ExportOptions.TitleName:=TabSheet3.Caption;
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

procedure TWOMitraFrm.BitBtn17Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep5.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TWOMitraFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TWOMitraFrm.wwDBNavigator1DeleteClick(Sender: TObject);
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
  QDeleteDetail.SQL.Add('delete from ipisma_db5.hasil_tenun_mitra_det where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;

procedure TWOMitraFrm.TabSheet5Show(Sender: TObject);
begin
 if QBrowse.Active then
  begin
         QMaster.Close;
         vTab:='Bro';
         QMaster.SQL.Text:='select a.*, a.rowid from ipisma_db5.hasil_tenun_mitra a where no_spb like :no_spb and kd_transaksi =:kd_transaksi';
         QMaster.SetVariable('no_spb',QBrowseNO_SPB.AsString);
         QMaster.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsString);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid3UpdateFooter(nil);
  end;
end;

procedure TWOMitraFrm.wwDBGrid3UpdateFooter(Sender: TObject);
begin
 QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid3.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#',QTotalPOTONG.AsFloat);
  wwDBGrid3.ColumnByName('METER').FooterValue:=FormatFloat('#.#,#',QTotalMETER.AsFloat);
  wwDBGrid3.ColumnByName('KOREKSI').FooterValue:=FormatFloat('#.#,#',QTotalKOREKSI.AsFloat);
  wwDBGrid3.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('#.#,#',QTotalQTY_AKHIR.AsFloat);
  wwDBGrid3.ColumnByName('METER_AKHIR').FooterValue:=FormatFloat('#.#,#',QTotalMETER_AKHIR.AsFloat);
end;

procedure TWOMitraFrm.wwDBGrid3Enter(Sender: TObject);
begin
 If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TWOMitraFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid1.Columns[i].FieldName);


end;

procedure TWOMitraFrm.wwDBGrid2Enter(Sender: TObject);
begin
 If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TWOMitraFrm.cbOtomatis2Click(Sender: TObject);
begin
if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;

procedure TWOMitraFrm.cbTanggal2Click(Sender: TObject);
begin
 if cbTanggal2.Checked then
  begin
    vTglAwal3.Enabled:=cbTanggal2.Checked;
    vTglAkhir3.Enabled:=cbTanggal2.Checked;
    vTglAwal3.SetFocus;
  end
  else
    ECari2.SetFocus;
end;

procedure TWOMitraFrm.BitBtn7Click(Sender: TObject);
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
 wwDBGrid1.BringToFront;
 QPerMitra.Close;
 QProc_PerMitra.Close;
 QPerMitra_Tot.Close;
abort;
end
else
  wwDBGrid1.BringToFront;
  QPerMitra.DisableControls;
  QPerMitra.Close;
  QProc_PerMitra.Close;
  QProc_PerMitra.SetVariable('pawal',vTglAwal3.Date);
  QProc_PerMitra.SetVariable('pakhir',vTglAkhir3.Date);
  QProc_PerMitra.Execute;
  QPerMitra.Open;
  QPerMitra_Tot.Close;
  QPerMitra_Tot.Open;
  QPerMitra.EnableControls;
  QPerMitra.Refresh;

  wwDBGrid1.ColumnByName('QTY_MSN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotQTY_MSN.AsFloat);
  wwDBGrid1.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotPOTONG.AsFloat);
  wwDBGrid1.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotMETER.AsFloat);
end;

procedure TWOMitraFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
QPerMitra_Tot.Close;
QPerMitra_Tot.Open;
wwDBGrid1.ColumnByName('QTY_MSN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotQTY_MSN.AsFloat);
wwDBGrid1.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotPOTONG.AsFloat);
wwDBGrid1.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerMitra_TotMETER.AsFloat);
end;

procedure TWOMitraFrm.QDetailKOREKSIChange(Sender: TField);
begin
  if VPotong.Checked = true then
  begin
    QDetailQTY_AKHIR.AsFloat := QDetailPOTONG.AsFloat + QDetailKOREKSI.AsFloat;
  end
  else if VPotong.Checked = false then
  begin
    if QDetailJENIS.AsString = 'Sarung Dewasa' then
    begin
      // QDetailQTY_AKHIR.AsFloat := (QDetailMETER_AKHIR.AsFloat + QDetailKOREKSI.AsFloat) / 2.15;
      QDetailQTY_AKHIR.AsFloat := QDetailMETER_AKHIR.AsFloat / 2.15;
      QDetailPOTONG.AsFloat := QDetailMETER.AsFloat / 2.15;
      QDetailMETER_AKHIR.AsFloat := QDetailMETER.AsFloat + QDetailKOREKSI.AsFloat;
    end
    else if QDetailJENIS.AsString = 'Sarung Anak' then
    begin
      // QDetailQTY_AKHIR.AsFloat := (QDetailMETER_AKHIR.AsFloat + QDetailKOREKSI.AsFloat) / 1.85;
      QDetailQTY_AKHIR.AsFloat := QDetailMETER_AKHIR.AsFloat / 1.85;
      QDetailPOTONG.AsFloat := QDetailMETER.AsFloat / 1.85;
      QDetailMETER_AKHIR.AsFloat := QDetailMETER.AsFloat + QDetailKOREKSI.AsFloat;
    end;
  end;
end;


procedure TWOMitraFrm.BitBtn11Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vrgTanggal : String;
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
QSisaWO.Open;
QSisaTOTWO.Close;
abort;
end
else
  QSisaWO.Open;
  vpertama:=True;
  if cbTanggal5.Checked then
   begin
    case rgTanggal.ItemIndex of
    0 : vrgTanggal:='TANGGAL';
    1 : vrgTanggal:='TGL_TERIMA';
    end;
    vfilter:=' where ('+vrgTanggal+'>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal5.Date)+''',''dd/mm/yyyy'') and '+vrgTanggal+'<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir5.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and (';
  end
  {vfilter:=' where (tgl_terima>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal5.Date)+''',''dd/mm/yyyy'') and tgl_terima<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir5.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and (' }
  else
    vfilter:=' where (';
  if (QSisaWO.FieldCount>=1) then
  begin
    if dbcField5.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid5.Selected.Count-1 do
      begin
        if (QSisaWO.FieldByName(wwDBGrid5.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'tanggal') then
        begin
          if vpertama then
            begin
              if vOperand5.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari5.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid5.Columns[i].FieldName+' = '''+ECari5.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand5.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' like ''%'+ECari5.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid5.Columns[i].FieldName+' = '''+ECari5.Text+''''
        end;
      end;
    end
    else
      if vOperand5.Caption='LIKE' then
         vfilter:=vfilter+dbcField5.Text+' like ''%'+ECari5.Text+'%'''
         else
           vfilter:=vfilter+dbcField5.Text+' = '''+ECari5.Text+'''';
    vfilter:=vfilter+')';
    if QSisaWO.Active then
      vorder:=' order by '+wwDBGrid5.Columns[0].FieldName
      else
        vorder:=' order by kd_mitra';

  end;

  QSisaWO.DisableControls;
  QSisaWO.Close;
  QSisaWO.SetVariable('myparam',vfilter+vorder);
  QSisaWO.Open;
  QSisaWO.EnableControls;

  QSisaTOTWO.Close;
  QSisaTOTWO.SetVariable('myparam',vfilter);
  QSisaTOTWO.Open;
  QSisaTOTWO.EnableControls;

  //wwDBGrid5.ColumnByName('JML_POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaTOTWOTOT_QTY.AsFloat);
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QSisaTOTWOTOT_WO.AsFloat);
 // wwDBGrid5.ColumnByName('SISA_ptg_beam').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaTOTWOTOT_SISA.AsFloat);
end;

procedure TWOMitraFrm.BitBtn14Click(Sender: TObject);
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
QPer_Beam.Close;
QProc_PerBeam.Close;
QPer_Beam_Tot.Close;
abort;
end
else
  QPer_Beam.DisableControls;
  QPer_Beam.Close;
  QProc_PerBeam.Close;
  QProc_PerBeam.SetVariable('pawal',VTglAwal4.Date);
  QProc_PerBeam.SetVariable('pakhir',VTglAkhir4.Date);
  QProc_PerBeam.Execute;
  QPer_Beam.Open;
  QPer_Beam_Tot.Close;
  QPer_Beam_Tot.Open;
  QPer_Beam.EnableControls;
  QPer_Beam.Refresh;

  wwDBGrid4.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPer_Beam_TotPOTONG.AsFloat);
end;

procedure TWOMitraFrm.VTglAkhir4Change(Sender: TObject);
begin
  if VTglAwal4.Date>VTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TWOMitraFrm.VTglAwal4Change(Sender: TObject);
begin
 VTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TWOMitraFrm.wwNavButton5Click(Sender: TObject);
Var
Reg:String;
begin
QDetail.Close;
  Reg:=QMasterNO_REG.AsString;
QDetail.Open;
//QDetail.SQL.Text('delete from ')
  QDeleteDetail.Close;
  QDeleteDetail.SQL.Clear;
  QDeleteDetail.SQL.Add('begin') ;
  QDeleteDetail.SQL.Add('delete from ipisma_db5.hasil_tenun_mitra_det where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;

procedure TWOMitraFrm.VTglAwal5Change(Sender: TObject);
begin
 VTglAkhir5.Date:=(VTglAwal5.Date);
end;

procedure TWOMitraFrm.VTglAkhir5Change(Sender: TObject);
begin
  if VTglAwal5.Date>VTglAkhir5.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir5.Date:=VTglAwal5.Date;
  end;
end;

procedure TWOMitraFrm.dbcField5Enter(Sender: TObject);
var
  i : Word;
begin
  if (QSisaWO.Active) and (dbcField5.Items.Count=1) then
  for i:=0 to wwDBGrid5.FieldCount-1 do
    if UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TANGGAL' then
      dbcField5.Items.Add(wwDBGrid5.Columns[i].FieldName);
end;

procedure TWOMitraFrm.BitBtn16Click(Sender: TObject);
begin
if QSisaWO.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet7.Caption;
             wwDBGrid5.ExportOptions.TitleName:=TabSheet7.Caption;
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

procedure TWOMitraFrm.BitBtn19Click(Sender: TObject);
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
QPerResep.Close;
QPerResep_Tot.Close;
abort;
end
else
  QPerResep.DisableControls;
  QPerResep.Close;
  QPerResep.SetVariable('pawal',VTglAwal6.Date);
  QPerResep.SetVariable('pakhir',VTglAkhir6.Date);
  QPerResep.Open;

  QPerResep_Tot.Close;
  QPerResep_Tot.SetVariable('pawal',VTglAwal6.Date);
  QPerResep_Tot.SetVariable('pakhir',VTglAkhir6.Date);
  QPerResep_Tot.Open;

  QPerResep.EnableControls;
  wwDBGrid6.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerResep_TotPOTONG.AsFloat);

end;

procedure TWOMitraFrm.BitBtn12Click(Sender: TObject);
begin
if QPerResep.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet8.Caption;
             wwDBGrid6.ExportOptions.TitleName:=TabSheet8.Caption;
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

procedure TWOMitraFrm.TabSheet3Show(Sender: TObject);
begin
QPerMitra.Open;
QPerMitra_Tot.Open;
end;

procedure TWOMitraFrm.TabSheet6Show(Sender: TObject);
begin
QPer_Beam.Open;
QPer_Beam_Tot.Open;
end;

procedure TWOMitraFrm.TabSheet8Show(Sender: TObject);
begin
QPerResep.Open;
QPerResep_Tot.Open;
end;

procedure TWOMitraFrm.cbTanggal5Click(Sender: TObject);
begin
if cbTanggal5.Checked then
  begin
    vTglAwal5.Enabled:=cbTanggal2.Checked;
    VTglAkhir5.Enabled:=cbTanggal2.Checked;
    VTglAwal5.SetFocus;
  end
  else
    ECari5.SetFocus;
end;

procedure TWOMitraFrm.VTglAwal6Change(Sender: TObject);
begin
 VTglAkhir6.Date:=(VTglAwal6.Date);
end;

procedure TWOMitraFrm.VTglAkhir6Change(Sender: TObject);
begin
  if VTglAwal6.Date>VTglAkhir6.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir6.Date:=VTglAwal6.Date;
  end;
end;

procedure TWOMitraFrm.VTglAwal7Change(Sender: TObject);
begin
 VTglAkhir7.Date:=(VTglAwal7.Date);
end;

procedure TWOMitraFrm.VTglAkhir7Change(Sender: TObject);
begin
  if VTglAwal7.Date>VTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TWOMitraFrm.cbOtomatis7Click(Sender: TObject);
begin
if cbOtomatis7.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid7.Options:=wwDBGrid7.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid7.Options:=wwDBGrid7.Options-[dgAlwaysShowSelection];
  ECari7.SetFocus;
end;

procedure TWOMitraFrm.dbcField7Enter(Sender: TObject);
var
  i : Word;
begin
  if (QSisaWO_det.Active) and (dbcField7.Items.Count=1) then
  for i:=0 to wwDBGrid7.FieldCount-1 do
    if UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL' then
      dbcField7.Items.Add(wwDBGrid7.Columns[i].FieldName);
end;

procedure TWOMitraFrm.vOperand7Click(Sender: TObject);
begin
  if vOperand7.Caption='LIKE' then
    vOperand7.Caption:='='
    else
      vOperand7.Caption:='LIKE';
end;

procedure TWOMitraFrm.cbTanggal7Click(Sender: TObject);
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

procedure TWOMitraFrm.BitBtn20Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
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
  QSisaWO_det.Close;
  QProc_Sisa.Close;
abort;
end
else
  QSisaWO_det.Close;
  QProc_Sisa.Close;
  QProc_Sisa.SetVariable('pawal',VTglAwal7.Date);
  QProc_Sisa.SetVariable('pakhir',VTglAkhir7.Date);
  QProc_Sisa.Execute;

  QSisaWO_det.Open;
  vpertama:=True;
  if cbTanggal7.Checked then
  vfilter:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal7.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir7.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QSisaWO_det.FieldCount>=1) then
  begin
    if dbcField7.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid7.Selected.Count-1 do
      begin
        if (QSisaWO_det.FieldByName(wwDBGrid7.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid7.Columns[i].FieldName)<>'tanggal') then
        begin
          if vpertama then
            begin
              if vOperand7.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand7.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid7.Columns[i].FieldName+' like ''%'+ECari7.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid7.Columns[i].FieldName+' = '''+ECari7.Text+''''
        end;
      end;
    end
    else
      if vOperand7.Caption='LIKE' then
         vfilter:=vfilter+dbcField7.Text+' like ''%'+ECari7.Text+'%'''
         else
           vfilter:=vfilter+dbcField7.Text+' = '''+ECari7.Text+'''';
    vfilter:=vfilter+')';
    if QSisaWO_det.Active then
      vorder:=' order by '+wwDBGrid7.Columns[0].FieldName
      else
        vorder:=' order by tgl_terima';

  end;

  QSisaWO_det.DisableControls;
  QSisaWO_det.Close;
  QSisaWO_det.SetVariable('myparam',vfilter);
  QSisaWO_det.Open;


 { QSisaWO_det_Tot.Close;
  QSisaWO_det_Tot.SetVariable('myparam',vfilter);
  QSisaWO_det_Tot.Open;  }
  QSisaWO_det.EnableControls;

  {wwDBGrid5.ColumnByName('STOK_AWAL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaWO_det_TotTOT_QTY.AsFloat);
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaWO_det_TotTOT_WO.AsFloat);
  wwDBGrid5.ColumnByName('STOK_AKHIR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaWO_det_TotTOT_SISA.AsFloat);
       }

end;

procedure TWOMitraFrm.QRBand17BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel53.Caption:='(Tanggal Mutasi : '+VTglAwal5.Text+')';
end;

procedure TWOMitraFrm.QRBand27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel46.Caption:='(Tanggal Mutasi : '+VTglAwal7.Text+')';
end;

procedure TWOMitraFrm.BitBtn22Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep7.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TWOMitraFrm.BitBtn21Click(Sender: TObject);
begin
if QSisaWO_det.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet9.Caption;
             wwDBGrid5.ExportOptions.TitleName:=TabSheet9.Caption;
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

procedure TWOMitraFrm.wwDBGrid5UpdateFooter(Sender: TObject);
begin
  QSisaWO.DisableControls;
  QSisaWO.Close;
  QSisaWO.SetVariable('myparam',vfilter+vorder);
  QSisaWO.Open;
  QSisaWO.EnableControls;

  QSisaTOTWO.Close;
  QSisaTOTWO.SetVariable('myparam',vfilter);
  QSisaTOTWO.Open;
  QSisaTOTWO.EnableControls;

  //wwDBGrid5.ColumnByName('JML_POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaTOTWOTOT_QTY.AsFloat);
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QSisaTOTWOTOT_WO.AsFloat);
 // wwDBGrid5.ColumnByName('SISA_ptg_beam').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QSisaTOTWOTOT_SISA.AsFloat);

end;

procedure TWOMitraFrm.BitBtn13Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep4.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TWOMitraFrm.BitBtn18Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep6.Preview
 // else
   //  QuickRep2.Print;
end;

procedure GenerateAndDisplayHTML(Grid: TwwDBGrid; DataSet: TOracleDataSet; WebBrowser: TWebBrowser);
begin

end;

procedure TWOMitraFrm.VTglAwal8Change(Sender: TObject);
begin
//VTglAkhir8.Date:=(VTglAwal8.Date);
VTglAkhir8.Date:=trunc(EndOfTheMonth(VTglAwal8.Date));
end;

procedure TWOMitraFrm.VTglAkhir8Change(Sender: TObject);
begin
if VTglAwal8.Date>VTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir8.Date:=VTglAwal8.Date;
  end;
end;

procedure TWOMitraFrm.dbcField8Enter(Sender: TObject);
var
  i : Word;
begin
  if (QSisaWO_det2.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid8.FieldCount-1 do
    if UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TANGGAL' then
      dbcField8.Items.Add(wwDBGrid8.Columns[i].FieldName);
end;

procedure TWOMitraFrm.cbOtomatis8Click(Sender: TObject);
begin
if cbOtomatis8.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid8.Options:=wwDBGrid8.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid8.Options:=wwDBGrid8.Options-[dgAlwaysShowSelection];
  ECari8.SetFocus;
end;

procedure TWOMitraFrm.cbTanggal8Click(Sender: TObject);
begin
if cbTanggal8.Checked then
  begin
    VTglAwal8.Enabled:=cbTanggal8.Checked;
    VTglAkhir8.Enabled:=cbTanggal8.Checked;
    VTglAwal8.SetFocus;
  end
  else
    ECari8.SetFocus;
end;

procedure TWOMitraFrm.BitBtn23Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
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
  QSisaWO_det2.Close;
  QProc_Sisa2.Close;
abort;
end
else
  QSisaWO_det2.Close;
  QProc_Sisa2.Close;
  QProc_Sisa2.SetVariable('pawal',VTglAwal8.Date);
  QProc_Sisa2.SetVariable('pakhir',VTglAkhir8.Date);
  QProc_Sisa2.Execute;

  QSisaWO_det2.Open;
  vpertama:=True;
  if cbTanggal8.Checked then
  vfilter:=' where (tgl_terima >= to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal8.Date)+''',''dd/mm/yyyy'') and tgl_terima <= (to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir8.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QSisaWO_det2.FieldCount>=1) then
  begin
    if dbcField8.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid8.Selected.Count-1 do
      begin
        if (QSisaWO_det2.FieldByName(wwDBGrid8.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid8.Columns[i].FieldName)<>'tgl_terima') then
        begin
          if vpertama then
            begin
              if vOperand8.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari8.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' = '''+ECari8.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand8.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari8.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' = '''+ECari8.Text+''''
        end;
      end;
    end
    else
      if vOperand8.Caption='LIKE' then
         vfilter:=vfilter+dbcField8.Text+' like ''%'+ECari8.Text+'%'''
         else
           vfilter:=vfilter+dbcField8.Text+' = '''+ECari8.Text+'''';
    vfilter:=vfilter+')';
    if QSisaWO_det2.Active then
      vorder:=' order by '+wwDBGrid8.Columns[0].FieldName
      else
        vorder:=' order by nama_mitra';

  end;

  QSisaWO_det2.DisableControls;
  QSisaWO_det2.Close;
  QSisaWO_det2.SetVariable('myparam',vfilter+vorder);
  QSisaWO_det2.Open;


 { QSisaWO_det_Tot.Close;
  QSisaWO_det_Tot.SetVariable('myparam',vfilter);
  QSisaWO_det_Tot.Open;  }
  QSisaWO_det2.EnableControls;

end;

procedure TWOMitraFrm.BitBtn24Click(Sender: TObject);
begin
if QSisaWO_det2.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet10.Caption;
             wwDBGrid5.ExportOptions.TitleName:=TabSheet10.Caption;
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

procedure TWOMitraFrm.Look_KPEnter(Sender: TObject);
begin
  QLook_KP.Open;
end;

procedure TWOMitraFrm.Look_KPCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  QDetailKD_PRODUKSI.AsString:=QLook_KPKD_PRODUKSI.AsString;
  QDetailKONSTRUKSI.AsString:=QLook_KPSUB_KELOMPOK.AsString;
end;

procedure TWOMitraFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
   WebBrowser1.OleObject.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, Unassigned, Unassigned);
end;

procedure TWOMitraFrm.BitBtn8Click(Sender: TObject);
var
  HTMLFile: TStringList;
  FilePath: string;
  HTMLContent: string;
  TotalPotong: Real; // Variabel untuk menyimpan total kolom POTONG
  PotongValue: Double;
  NamaMitra: string;
begin
  WebBrowser1.BringToFront;
  FilePath := ExtractFilePath(Application.ExeName) + 'Laporan LPB Mitra.html';
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
    '        body { font-family: Arial, sans-serif; font-size: 12px; }' + 
    '        .container { width: 100%; max-width: 210mm; padding: 5px; margin: 5px; border: 1px solid #000; }' +
    '        .header { width: 100%; text-align: left; margin-bottom: 10px; }' +
    '        .header-table { width: 100%; border-collapse: collapse; }' + 
    '        .header-table td { padding: 4px; vertical-align: top; }' + 
    '        .logo { font-size: 18px; font-weight: bold; text-align: center; width: 30%; }' + 
    '        .title { font-size: 14px; font-weight: bold; text-align: center; }' +
    '        .label { font-weight: bold; width: 20%; }' + 
    '        .received-from { font-weight: bold; margin-top: 10px; }' + 
    '        .order-table { margin-top: 5px; width: 80%; border-collapse: collapse; }' + 
    '        .order-table td { font-size: 12px; padding: 2px 5px; }' + 
    '        .table { width: 100%; border-collapse: collapse; margin-top: 10px; }' + 
    '        .table th, .table td { border: 1px solid #000; padding: 2px; text-align: center; }' + 
    '        .table th { background-color: #f0f0f0; }' + 
    '        .footer { margin-top: 5px; text-align: center; }' +
    '        @media print { body { margin: 0; padding: 0; } .container { border: none; } }' + 
    '        .footer-table { width: 100%; margin-top: 5px; border-collapse: collapse; }' +
    '        .footer-table td { padding: 5px; border: none; font-weight: bold; }' + 
    '        .table tr:last-child td { border-bottom: 1px solid black; }' + 
    '    </style>' +
    '</head>' +
    '<body>' +

    '<div class="container">' +
    '    <div class="header">' +
    '        <table class="header-table">' +
    '            <tr>' +
    '                <td rowspan="2" class="logo">PT. PRIMAFARA TEXTILE</td>' +
    '            </tr>' +
    '            <tr>' +
    '                <td class="title" colspan="3"><strong>FORMULIR LAPORAN PENERIMAAN BARANG</strong></td>' +
    '            </tr>' +
    '            <tr>' +
    '                <td class="label" align="center">Sapugarut - Pekalongan</td>' +
    '                <td class="label" align="center">Nomor : ' + wwDBGrid1.DataSource.DataSet.FieldByName('NOTA_PRINT').AsString + '</td>' +
    '                <td class="label" align="center">Tanggal : ' + FormatDateTime('dd mmmm yyyy', vTglAwal3.Date) + '</td>' +
    '            </tr>' +
    '        </table>' +
            
    '        <p class="received-from">' +
    '            <table class="order-table" align="left">' +
    '                <tr>' +
    '                    <td>Diterima dari : <u><strong>' + wwDBGrid1.DataSource.DataSet.FieldByName('NAMA_MITRA').AsString + '</u></strong></td>' +
    '                    <td><input type="radio"> Order Pembelian</td>' + 
    '                    <td><input type="radio"> Order Maklon</td>' +
    '                    <td></td>' +
    '                    <td>No. F</td>' +
    '                    <td> : </td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td></td>' +
    '                    <td><input type="radio"> Retur</td>' +
    '                    <td><input type="radio"> Hasil Maklon</td>' +
    '                    <td></td>' +
    '                    <td>No. SJ/DO</td>' +
    '                    <td> : </td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td></td>' +
    '                    <td></td>' +
    '                    <td></td>' +
    '                    <td></td>' +
    '                    <td>No. P/L</td>' +
    '                    <td> : </td>' +
    '                </tr>' +
    '            </table>' +
    '        </p>' +    
    '    </div>' +    

    '    <table class="table">' +
    '        <tr>' +
    '            <th>Nama Barang</th>' +
    '            <th>Kode Barang</th>' +
    '            <th>Unit</th>' +
    '            <th>Satuan</th>' +
    '            <th>Harga</th>' +
    '            <th>Jumlah Harga</th>' +
    '            <th style="border: 0px"></th>' +
    '        </tr>';

    TotalPotong := 0; // Inisialisasi total kolom POTONG
    wwDBGrid1.DataSource.DataSet.First;
    while not wwDBGrid1.DataSource.DataSet.Eof do
    begin
      PotongValue := wwDBGrid1.DataSource.DataSet.FieldByName('POTONG').AsFloat;
      NamaMitra := wwDBGrid1.DataSource.DataSet.FieldByName('NAMA_MITRA').AsString;

      HTMLContent := HTMLContent +
      '        <tr>' +
      '            <td>' + wwDBGrid1.DataSource.DataSet.FieldByName('KONSTRUKSI').AsString + '</td>' +
      '            <td>' + wwDBGrid1.DataSource.DataSet.FieldByName('KD_PRODUKSI').AsString + '</td>';

      if NamaMitra = 'PAJITEX' then
        HTMLContent := HTMLContent +
          '            <td>' + FormatFloat('0.0,0;(0.0,0)', PotongValue * 2.15) + '</td>' +
          '            <td>METER</td>'
      else
        HTMLContent := HTMLContent +
          '            <td>' + FormatFloat('0.0,0;(0.0,0)', PotongValue) + '</td>' +
          '            <td>PCS</td>';


      HTMLContent := HTMLContent +
      '            <td></td>' +
      '            <td></td>' +
      '            <td style="border: 0px"></td>' +
      '        </tr>';

      // Menambahkan nilai kolom POTONG ke total
      if NamaMitra = 'PAJITEX' then
        TotalPotong := TotalPotong + (PotongValue * 2.15)
      else
        TotalPotong := TotalPotong + PotongValue;

      wwDBGrid1.DataSource.DataSet.Next;
    end;

    HTMLContent := HTMLContent +
    '        <tr>' +
    '            <td colspan="2" style="border: 1px solid black;"><strong>Jumlah</strong></td>' +
    '            <td style="border: 1px solid black;">' + FormatFloat('0.0,0;(0.0,0)', TotalPotong) + '</td>' +
    '            <td style="border: 1px solid black;"></td>' +
    '            <td style="border: 1px solid black;"></td>' +
    '            <td style="border: 1px solid black;"></td>' +
    '            <td style="border: 0px"></td>' +
    '        </tr>' +        
    '    </table>' +

    '    <div class="footer">' +
    '        <table class="footer-table">' +
    '            <tr>' +
    '                <td align="center">Penerima</td>' +
    '                <td align="center">Pemakai</td>' +
    '                <td align="center">Menyetujui</td>' +
    '                <td align="center">Mengetahui</td>' +
    '            </tr>' +
    '            <tr>' +
    '                <td style="height: 30px;"></td>' +
    '                <td></td>' +
    '                <td></td>' +
    '                <td></td>' +
    '            </tr>' +
    '            <tr>' +
    '                <td align="center">Adm Inspect</td>' +
    '                <td align="center">SH QC</td>' +
    '                <td align="center">Kemitraan</td>' +
    '                <td align="center">Warehouse</td>' +
    '            </tr>' +
    '        </table>' +        
    '        <p style="text-align: center;"><small>Catatan: Kolom harga diisi oleh bagian Adm. Pengadaan</small></p>' +
    '    </div>' +    
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

end.
