unit InfoWIPFinishing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle;

type
  TInfoWIPFinishingFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    QHasil: TOracleDataSet;
    dsQHasil: TwwDataSource;
    QHasil_Total: TOracleDataSet;
    Label11: TLabel;
    PageControl1: TPageControl;
    Label1: TLabel;
    QProcHasil: TOracleQuery;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglakhir2: TwwDBDateTimePicker;
    Panel6: TPanel;
    Label19: TLabel;
    BitBtn5: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BtnExport2: TBitBtn;
    BitBtn6: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    Label20: TLabel;
    QHasil_TotalSHEARING: TFloatField;
    QHasil_TotalBAKAR: TFloatField;
    QHasil_TotalDESIZING: TFloatField;
    QHasil_TotalWASHING: TFloatField;
    QHasil_TotalSTENTER: TFloatField;
    QHasil_TotalCALENDER: TFloatField;
    QBrowse: TOracleDataSet;
    QBrowseTotal: TOracleDataSet;
    QProcWIP_Det: TOracleQuery;
    DsQBrowse: TwwDataSource;
    QHasil_TotalFOLDING: TFloatField;
    TabSheet3: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    VTglAkhir3: TwwDBDateTimePicker;
    Panel8: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BtnExport3: TBitBtn;
    BitBtn7: TBitBtn;
    Label7: TLabel;
    QHasil_Shift_Tot: TOracleDataSet;
    QProc_Hasil_Shift: TOracleQuery;
    QHasil_Shift: TOracleDataSet;
    dsQHasil_Shift: TwwDataSource;
    BitBtn4: TBitBtn;
    BitBtn9: TBitBtn;
    QuickRep2: TQuickRep;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBText7: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QHasil_ShiftFOLDING: TFloatField;
    QHasil_ShiftSHEARING: TFloatField;
    QHasil_ShiftBAKAR: TFloatField;
    QHasil_ShiftDESIZING: TFloatField;
    QHasil_ShiftWASHING: TFloatField;
    QHasil_ShiftSTENTER: TFloatField;
    QHasil_ShiftCALENDER: TFloatField;
    QHasil_ShiftTGL: TDateTimeField;
    QHasil_Shift_TotFOLDING: TFloatField;
    QHasil_Shift_TotSHEARING: TFloatField;
    QHasil_Shift_TotBAKAR: TFloatField;
    QHasil_Shift_TotDESIZING: TFloatField;
    QHasil_Shift_TotWASHING: TFloatField;
    QHasil_Shift_TotSTENTER: TFloatField;
    QHasil_Shift_TotCALENDER: TFloatField;
    QRImage1: TQRImage;
    QRLabel11: TQRLabel;
    QRLabel35: TQRLabel;
    QHasil_ShiftSHIFT: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY_AWAL: TFloatField;
    QBrowseIN_OPENING: TFloatField;
    QBrowseOUT_OPENING: TFloatField;
    QBrowseWIP1: TFloatField;
    QBrowseIN_SHEARING: TFloatField;
    QBrowseOUT_SHEARING: TFloatField;
    QBrowseWIP2: TFloatField;
    QBrowseIN_BAKAR: TFloatField;
    QBrowseOUT_BAKAR: TFloatField;
    QBrowseWIP3: TFloatField;
    QBrowseIN_DESIZING: TFloatField;
    QBrowseOUT_DESIZING: TFloatField;
    QBrowseWIP4: TFloatField;
    QBrowseIN_WASHING: TFloatField;
    QBrowseOUT_WASHING: TFloatField;
    QBrowseWIP5: TFloatField;
    QBrowseIN_STENTER: TFloatField;
    QBrowseOUT_STENTER: TFloatField;
    QBrowseWIP6: TFloatField;
    QBrowseIN_CALENDER: TFloatField;
    QBrowseOUT_CALENDER: TFloatField;
    QBrowseWIP7: TFloatField;
    QBrowseQTY_AKHIR: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseTotalAWAL: TFloatField;
    QBrowseTotalIN_OPENING: TFloatField;
    QBrowseTotalOUT_OPENING: TFloatField;
    QBrowseTotalWIP1: TFloatField;
    QBrowseTotalIN_SHEARING: TFloatField;
    QBrowseTotalOUT_SHEARING: TFloatField;
    QBrowseTotalWIP2: TFloatField;
    QBrowseTotalIN_BAKAR: TFloatField;
    QBrowseTotalOUT_BAKAR: TFloatField;
    QBrowseTotalWIP3: TFloatField;
    QBrowseTotalIN_DESIZING: TFloatField;
    QBrowseTotalOUT_DESIZING: TFloatField;
    QBrowseTotalWIP4: TFloatField;
    QBrowseTotalIN_WASHING: TFloatField;
    QBrowseTotalOUT_WASHING: TFloatField;
    QBrowseTotalWIP5: TFloatField;
    QBrowseTotalIN_STENTER: TFloatField;
    QBrowseTotalOUT_STENTER: TFloatField;
    QBrowseTotalWIP6: TFloatField;
    QBrowseTotalIN_CALENDER: TFloatField;
    QBrowseTotalOUT_CALENDER: TFloatField;
    QBrowseTotalWIP7: TFloatField;
    QBrowseTotalAKHIR: TFloatField;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRLabel36: TQRLabel;
    QRExpr18: TQRExpr;
    QRDBText21: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRBand6: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRBand7: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape40: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRImage3: TQRImage;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRBand8: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QPosisi_Stok: TOracleDataSet;
    QPosisi_Stok_Tot: TOracleDataSet;
    DsQPosisi_Stok: TwwDataSource;
    QProcStok: TOracleQuery;
    QPosisi_StokKONSTRUKSI: TStringField;
    QPosisi_StokQTY_AWAL: TFloatField;
    QPosisi_StokOPENING: TFloatField;
    QPosisi_StokSHEARING: TFloatField;
    QPosisi_StokBAKAR: TFloatField;
    QPosisi_StokDESIZING: TFloatField;
    QPosisi_StokWASHING: TFloatField;
    QPosisi_StokSTENTER: TFloatField;
    QPosisi_StokCALENDER: TFloatField;
    QPosisi_StokQTY_AKHIR: TFloatField;
    QPosisi_Stok_TotAWAL: TFloatField;
    QPosisi_Stok_TotOPENING: TFloatField;
    QPosisi_Stok_TotSHEARING: TFloatField;
    QPosisi_Stok_TotBAKAR: TFloatField;
    QPosisi_Stok_TotDESIZING: TFloatField;
    QPosisi_Stok_TotWASHING: TFloatField;
    QPosisi_Stok_TotSTENTER: TFloatField;
    QPosisi_Stok_TotCALENDER: TFloatField;
    QPosisi_Stok_TotAKHIR: TFloatField;
    TabSheet4: TTabSheet;
    wwDBGrid4: TwwDBGrid;
    Panel11: TPanel;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    vTglAwal5: TwwDBDateTimePicker;
    vTglAkhir5: TwwDBDateTimePicker;
    BitBtn14: TBitBtn;
    Panel12: TPanel;
    Label10: TLabel;
    BitBtn15: TBitBtn;
    ECari5: TEdit;
    cbOtomatis5: TCheckBox;
    dbcField5: TwwDBComboBox;
    BtnExport5: TBitBtn;
    BitBtn17: TBitBtn;
    QuickRep5: TQuickRep;
    QRBand13: TQRBand;
    QRLabel74: TQRLabel;
    QRExpr33: TQRExpr;
    QRDBText42: TQRDBText;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRBand14: TQRBand;
    QRDBText43: TQRDBText;
    QRExpr40: TQRExpr;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRBand15: TQRBand;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRShape70: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRImage5: TQRImage;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRBand16: TQRBand;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    Label12: TLabel;
    QProcHasilBalen: TOracleQuery;
    QHasil_BL: TOracleDataSet;
    dsQHasil_BL: TwwDataSource;
    QHasil_BL_Tot: TOracleDataSet;
    QHasil_BL_TotFOLDING: TFloatField;
    QHasil_BL_TotSHEARING: TFloatField;
    QHasil_BL_TotBAKAR: TFloatField;
    QHasil_BL_TotDESIZING: TFloatField;
    QHasil_BL_TotWASHING: TFloatField;
    QHasil_BL_TotSTENTER: TFloatField;
    QHasil_BL_TotCALENDER: TFloatField;
    QHasil_BLKD_KONSTRUKSI: TStringField;
    QHasil_BLKONSTRUKSI: TStringField;
    QHasil_BLFOLDING: TFloatField;
    QHasil_BLSHEARING: TFloatField;
    QHasil_BLBAKAR: TFloatField;
    QHasil_BLDESIZING: TFloatField;
    QHasil_BLWASHING: TFloatField;
    QHasil_BLSTENTER: TFloatField;
    QHasil_BLCALENDER: TFloatField;
    QHasil_BLTGL: TDateTimeField;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    TabSheet7: TTabSheet;
    Panel13: TPanel;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    vTglAwal6: TwwDBDateTimePicker;
    vTglAkhir6: TwwDBDateTimePicker;
    BitBtn16: TBitBtn;
    Panel14: TPanel;
    Label14: TLabel;
    BitBtn18: TBitBtn;
    ECari6: TEdit;
    cbOtomatis6: TCheckBox;
    dbcField6: TwwDBComboBox;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    wwDBGrid5: TwwDBGrid;
    QuickRep6: TQuickRep;
    QRBand17: TQRBand;
    QRLabel94: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRBand18: TQRBand;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText56: TQRDBText;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRDBText60: TQRDBText;
    QRBand19: TQRBand;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRShape85: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRImage6: TQRImage;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRBand20: TQRBand;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    Label15: TLabel;
    QHasil_Shift_Det: TOracleDataSet;
    dsQHasil_Shift_Det: TwwDataSource;
    QHasil_Shift_DetSHIFT: TStringField;
    QHasil_Shift_DetFOLDING1: TFloatField;
    QHasil_Shift_DetFOLDING1_AJL: TFloatField;
    QHasil_Shift_DetFOLDING1_BL: TFloatField;
    QHasil_Shift_DetSHEARING1: TFloatField;
    QHasil_Shift_DetSHEARING1_BL: TFloatField;
    QHasil_Shift_DetSHEARING2: TFloatField;
    QHasil_Shift_DetSHEARING2_BL: TFloatField;
    QHasil_Shift_DetBAKAR1: TFloatField;
    QHasil_Shift_DetBAKAR1_BL: TFloatField;
    QHasil_Shift_DetBAKAR2: TFloatField;
    QHasil_Shift_DetBAKAR2_BL: TFloatField;
    QHasil_Shift_DetDESIZING1: TFloatField;
    QHasil_Shift_DetDESIZING1_BL: TFloatField;
    QHasil_Shift_DetDESIZING2: TFloatField;
    QHasil_Shift_DetDESIZING2_BL: TFloatField;
    QHasil_Shift_DetWASHING1: TFloatField;
    QHasil_Shift_DetWASHING1_BL: TFloatField;
    QHasil_Shift_DetWASHING2: TFloatField;
    QHasil_Shift_DetWASHING2_BL: TFloatField;
    QHasil_Shift_DetSTENTER1: TFloatField;
    QHasil_Shift_DetSTENTER1_BL: TFloatField;
    QHasil_Shift_DetSTENTER2: TFloatField;
    QHasil_Shift_DetSTENTER2_BL: TFloatField;
    QHasil_Shift_DetSTENTER3: TFloatField;
    QHasil_Shift_DetSTENTER3_BL: TFloatField;
    QHasil_Shift_DetSTENTER3_PG: TFloatField;
    QHasil_Shift_DetCALENDER1: TFloatField;
    QHasil_Shift_DetCALENDER1_BL: TFloatField;
    QProc_Hasil_Shift_Det: TOracleQuery;
    QHasil_Shift_DetREINSPECT: TFloatField;
    QHasil_Shift_DetREINSPECT_BL: TFloatField;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRShape86: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRLabel138: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRLabel151: TQRLabel;
    QRShape131: TQRShape;
    QRLabel153: TQRLabel;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRLabel118: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRLabel152: TQRLabel;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QHasil_shift_det_tot: TOracleDataSet;
    QHasil_shift_det_totFOLDING1: TFloatField;
    QHasil_shift_det_totFOLDING1_AJL: TFloatField;
    QHasil_shift_det_totFOLDING1_BL: TFloatField;
    QHasil_shift_det_totSHEARING1: TFloatField;
    QHasil_shift_det_totSHEARING1_BL: TFloatField;
    QHasil_shift_det_totSHEARING2: TFloatField;
    QHasil_shift_det_totSHEARING2_BL: TFloatField;
    QHasil_shift_det_totBAKAR1: TFloatField;
    QHasil_shift_det_totBAKAR1_BL: TFloatField;
    QHasil_shift_det_totBAKAR2: TFloatField;
    QHasil_shift_det_totBAKAR2_BL: TFloatField;
    QHasil_shift_det_totDESIZING1: TFloatField;
    QHasil_shift_det_totDESIZING1_BL: TFloatField;
    QHasil_shift_det_totDESIZING2: TFloatField;
    QHasil_shift_det_totDESIZING2_BL: TFloatField;
    QHasil_shift_det_totWASHING1: TFloatField;
    QHasil_shift_det_totWASHING1_BL: TFloatField;
    QHasil_shift_det_totWASHING2: TFloatField;
    QHasil_shift_det_totWASHING2_BL: TFloatField;
    QHasil_shift_det_totSTENTER1: TFloatField;
    QHasil_shift_det_totSTENTER1_BL: TFloatField;
    QHasil_shift_det_totSTENTER2: TFloatField;
    QHasil_shift_det_totSTENTER2_BL: TFloatField;
    QHasil_shift_det_totSTENTER3: TFloatField;
    QHasil_shift_det_totSTENTER3_BL: TFloatField;
    QHasil_shift_det_totSTENTER3_PG: TFloatField;
    QHasil_shift_det_totCALENDER1: TFloatField;
    QHasil_shift_det_totCALENDER1_BL: TFloatField;
    QHasil_shift_det_totREINSPECT: TFloatField;
    QHasil_shift_det_totREINSPECT_BL: TFloatField;
    QRDBText55: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape138: TQRShape;
    QRDBText59: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRShape82: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRDBText82: TQRDBText;
    QRShape158: TQRShape;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QHasil_Shift_DetWASHING3: TFloatField;
    QHasil_Shift_DetWASHING3_BL: TFloatField;
    QHasil_shift_det_totWASHING3: TFloatField;
    QHasil_shift_det_totWASHING3_BL: TFloatField;
    QRLabel154: TQRLabel;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRDBText96: TQRDBText;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QHasil_Shift_DetSTENTER1_PG: TFloatField;
    QHasil_Shift_DetSTENTER2_PG: TFloatField;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QHasil_shift_det_totSTENTER1_PG: TFloatField;
    QHasil_shift_det_totSTENTER2_PG: TFloatField;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRShape191: TQRShape;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRDBText127: TQRDBText;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRShape194: TQRShape;
    QRShape195: TQRShape;
    QRShape196: TQRShape;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRLabel174: TQRLabel;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRShape201: TQRShape;
    QRShape202: TQRShape;
    QRShape203: TQRShape;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRShape211: TQRShape;
    QRShape213: TQRShape;
    QRShape214: TQRShape;
    QRShape215: TQRShape;
    QRShape216: TQRShape;
    QRShape212: TQRShape;
    QRShape217: TQRShape;
    QRShape218: TQRShape;
    QRShape219: TQRShape;
    QRShape220: TQRShape;
    QRShape221: TQRShape;
    QRShape222: TQRShape;
    QHasil_TotalFOLDING_BL: TFloatField;
    QHasil_TotalSHEARING_BL: TFloatField;
    QHasil_TotalBAKAR_BL: TFloatField;
    QHasil_TotalDESIZING_BL: TFloatField;
    QHasil_TotalWASHING_BL: TFloatField;
    QHasil_TotalSTENTER_BL: TFloatField;
    QHasil_TotalSTENTER_PG: TFloatField;
    QHasil_TotalCALENDER_BL: TFloatField;
    ColumnHeaderBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape2: TQRShape;
    QRShape171: TQRShape;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRShape173: TQRShape;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRLabel166: TQRLabel;
    QRShape1: TQRShape;
    QRLabel13: TQRLabel;
    QRShape172: TQRShape;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRShape179: TQRShape;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRLabel173: TQRLabel;
    QRShape3: TQRShape;
    QRShape95: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QWIP: TOracleDataSet;
    dsQWIP: TwwDataSource;
    QWIPKONSTRUKSI: TStringField;
    QWIPQTY_AWAL: TFloatField;
    QWIPMASUK: TFloatField;
    QWIPKELUAR: TFloatField;
    QWIPQTY_AKHIR: TFloatField;
    QProcWIP: TOracleQuery;
    QWIP_Tot: TOracleDataSet;
    QWIP_TotQTY_AWAL: TFloatField;
    QWIP_TotMASUK: TFloatField;
    QWIP_TotKELUAR: TFloatField;
    QWIP_TotQTY_AKHIR: TFloatField;
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
    QTransaksiDOC_ISO: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
    QTransaksiSINOPSIS: TBlobField;
    QTransaksiDOC_ISO2: TStringField;
    dsQTransaksi: TwwDataSource;
    QTransaksiDOC_ISO3: TStringField;
    QWIPKD_PRODUKSI: TStringField;
    QWIPMKOREKSI: TFloatField;
    QWIPKKOREKSI: TFloatField;
    QWIP_TotMKOREKSI: TFloatField;
    QWIP_TotKKOREKSI: TFloatField;
    QHasilKODE_PRODUKSI: TStringField;
    QHasilKD_KONSTRUKSI: TStringField;
    QHasilKONSTRUKSI: TStringField;
    QHasilFOLDING: TFloatField;
    QHasilFOLDING_M: TFloatField;
    QHasilFOLDING_BL: TFloatField;
    QHasilFOLDING_BL_M: TFloatField;
    QHasilSHEARING: TFloatField;
    QHasilSHEARING_M: TFloatField;
    QHasilSHEARING_BL: TFloatField;
    QHasilSHEARING_BL_M: TFloatField;
    QHasilBAKAR: TFloatField;
    QHasilBAKAR_M: TFloatField;
    QHasilBAKAR_BL: TFloatField;
    QHasilBAKAR_BL_M: TFloatField;
    QHasilDESIZING: TFloatField;
    QHasilDESIZING_M: TFloatField;
    QHasilDESIZING_BL: TFloatField;
    QHasilDESIZING_BL_M: TFloatField;
    QHasilWASHING: TFloatField;
    QHasilWASHING_M: TFloatField;
    QHasilWASHING_BL: TFloatField;
    QHasilWASHING_BL_M: TFloatField;
    QHasilSTENTER: TFloatField;
    QHasilSTENTER_M: TFloatField;
    QHasilSTENTER_BL: TFloatField;
    QHasilSTENTER_BL_M: TFloatField;
    QHasilSTENTER_PG: TFloatField;
    QHasilSTENTER_PG_M: TFloatField;
    QHasilCALENDER: TFloatField;
    QHasilCALENDER_M: TFloatField;
    QHasilCALENDER_BL: TFloatField;
    QHasilCALENDER_BL_M: TFloatField;
    QHasilTGL: TDateTimeField;
    QWIPMRETUR: TFloatField;
    QWIPKRETUR: TFloatField;
    QWIP_TotMRETUR: TFloatField;
    QWIP_TotKRETUR: TFloatField;
    QWIPMLAIN: TFloatField;
    QWIPKLAIN: TFloatField;
    QWIP_TotMLAIN: TFloatField;
    QWIP_TotKLAIN: TFloatField;
    QHasil_TotalFOLDING_M: TFloatField;
    QHasil_TotalFOLDING_BL_M: TFloatField;
    QHasil_TotalSHEARING_M: TFloatField;
    QHasil_TotalSHEARING_BL_M: TFloatField;
    QHasil_TotalBAKAR_M: TFloatField;
    QHasil_TotalBAKAR_BL_M: TFloatField;
    QHasil_TotalDESIZING_M: TFloatField;
    QHasil_TotalDESIZING_BL_M: TFloatField;
    QHasil_TotalWASHING_M: TFloatField;
    QHasil_TotalWASHING_BL_M: TFloatField;
    QHasil_TotalSTENTER_M: TFloatField;
    QHasil_TotalSTENTER_BL_M: TFloatField;
    QHasil_TotalSTENTER_PG_M: TFloatField;
    QHasil_TotalCALENDER_M: TFloatField;
    QHasil_TotalCALENDER_BL_M: TFloatField;
    QHasilSTENTER_PRE: TFloatField;
    QHasilSTENTER_PRE_M: TFloatField;
    QHasil_TotalSTENTER_PRE: TFloatField;
    QHasil_TotalSTENTER_PRE_M: TFloatField;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    VTglAwal7: TwwDBDateTimePicker;
    VTglakhir7: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    dsQHasil_Mesen: TwwDataSource;
    QHasil_Mesen: TOracleDataSet;
    wwDBGrid7: TwwDBGrid;
    QHasil_MesenKD_PRODUKSI: TStringField;
    QHasil_MesenKONSTRUKSI: TStringField;
    QHasil_MesenWSG1_KD: TFloatField;
    QHasil_MesenWSG1_MTR: TFloatField;
    QHasil_MesenWSG2_KD: TFloatField;
    QHasil_MesenWSG2_MTR: TFloatField;
    QHasil_MesenWSG3_KD: TFloatField;
    QHasil_MesenWSG3_MTR: TFloatField;
    QHasil_Mesen_Tot: TOracleDataSet;
    QHasil_Mesen_TotWSG1_KD: TFloatField;
    QHasil_Mesen_TotWSG1_MTR: TFloatField;
    QHasil_Mesen_TotWSG2_KD: TFloatField;
    QHasil_Mesen_TotWSG2_MTR: TFloatField;
    QHasil_Mesen_TotWSG3_KD: TFloatField;
    QHasil_Mesen_TotWSG3_MTR: TFloatField;
    QHasilBAKAR_GREY: TFloatField;
    QHasilBAKAR_GREY_M: TFloatField;
    QHasilBAKAR_GREY_BL: TFloatField;
    QHasilBAKAR_GREY_BL_M: TFloatField;
    QHasil_TotalBAKAR_GREY: TFloatField;
    QHasil_TotalBAKAR_GREY_M: TFloatField;
    QHasil_TotalBAKAR_GREY_BL: TFloatField;
    QHasil_TotalBAKAR_GREY_BL_M: TFloatField;
    QHasil_ShiftM_FOLDING: TFloatField;
    QHasil_ShiftM_SHEARING: TFloatField;
    QHasil_ShiftM_BAKAR: TFloatField;
    QHasil_ShiftM_DESIZING: TFloatField;
    QHasil_ShiftM_WASHING: TFloatField;
    QHasil_ShiftM_STENTER: TFloatField;
    QHasil_ShiftM_CALENDER: TFloatField;
    QHasil_Shift_TotM_FOLDING: TFloatField;
    QHasil_Shift_TotM_SHEARING: TFloatField;
    QHasil_Shift_TotM_BAKAR: TFloatField;
    QHasil_Shift_TotM_DESIZING: TFloatField;
    QHasil_Shift_TotM_WASHING: TFloatField;
    QHasil_Shift_TotM_STENTER: TFloatField;
    QHasil_Shift_TotM_CALENDER: TFloatField;
    QHasilWASHING_PRE: TFloatField;
    QHasilWASHING_PRE_M: TFloatField;
    QHasilWASHING_DES: TFloatField;
    QHasilWASHING_DES_M: TFloatField;
    QHasil_TotalWASHING_PRE: TFloatField;
    QHasil_TotalWASHING_PRE_M: TFloatField;
    QHasil_TotalWASHING_DES: TFloatField;
    QHasil_TotalWASHING_DES_M: TFloatField;
    dsQMesen_Stenter: TwwDataSource;
    QMesen_Stenter: TOracleDataSet;
    QMesen_Stenter_Tot: TOracleDataSet;
    TabSheet5: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    Panel9: TPanel;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    VTglAwal8: TwwDBDateTimePicker;
    VTglakhir8: TwwDBDateTimePicker;
    BitBtn3: TBitBtn;
    Panel10: TPanel;
    BitBtn11: TBitBtn;
    QMesen_StenterKD_PRODUKSI: TStringField;
    QMesen_StenterKONSTRUKSI: TStringField;
    QMesen_StenterSTR1_KD: TFloatField;
    QMesen_StenterSTR1_MTR: TFloatField;
    QMesen_StenterSTR2_KD: TFloatField;
    QMesen_StenterSTR2_MTR: TFloatField;
    QMesen_StenterSTR3_KD: TFloatField;
    QMesen_StenterSTR3_MTR: TFloatField;
    QMesen_Stenter_TotSTR1_KD: TFloatField;
    QMesen_Stenter_TotSTR1_MTR: TFloatField;
    QMesen_Stenter_TotSTR2_KD: TFloatField;
    QMesen_Stenter_TotSTR2_MTR: TFloatField;
    QMesen_Stenter_TotSTR3_KD: TFloatField;
    QMesen_Stenter_TotSTR3_MTR: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QHasilAfterScroll(DataSet: TDataSet);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure VTglAkhir3Change(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
   // procedure BitBtn9Click(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure BtnExport5Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnExport3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure dbcField6Enter(Sender: TObject);
    procedure vTglAwal6Change(Sender: TObject);
    procedure vTglAkhir6Change(Sender: TObject);
    procedure vTglAwal5Change(Sender: TObject);
    procedure vTglAkhir5Change(Sender: TObject);
    procedure dbcField5Enter(Sender: TObject);
    procedure cbOtomatis5Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure QRBand19BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn9Click(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure VTglakhir7Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure VTglAwal8Change(Sender: TObject);
    procedure VTglakhir8Change(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  InfoWIPFinishingFrm: TInfoWIPFinishingFrm;

implementation

uses DM, Math, FinishOpening;

{$R *.dfm}

procedure TInfoWIPFinishingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InfoWIPFinishingFrm:=Nil;
end;

procedure TInfoWIPFinishingFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','89A');
 QTransaksi.Open;
//InfoWIPFinishingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;


end;

procedure TInfoWIPFinishingFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TInfoWIPFinishingFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  //FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  //FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TInfoWIPFinishingFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  //QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TInfoWIPFinishingFrm.TabSheet2Show(Sender: TObject);
begin
         QBrowse.Close;
         QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         QBrowseTotal.Close;
         QBrowseTotal.SetVariable('myparam',vfilter);
         QBrowseTotal.Open;
         QHasil.Close;
         QHasil.SetVariable('myparam',vfilter);
         QHasil.Open;
         QHasil_Shift.Close;
         QHasil_Shift.SetVariable('myparam',vfilter);
         QHasil_Shift.Open;
         {QPosisi_Stok.Close;
         QPosisi_Stok.SetVariable('myparam',vfilter);
         QPosisi_Stok.Open;}
end;

procedure TInfoWIPFinishingFrm.FormShow(Sender: TObject);
begin

  vTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());
           
  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal3.Date:=Trunc(date());

  VTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir3.Date:=Trunc(date());

  vTglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal5.Date:=Trunc(date());

  vTglAkhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir5.Date:=Trunc(date());

  vTglAwal6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal6.Date:=Trunc(date());

  vTglAkhir6.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir6.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir6.Date:=Trunc(date());

  {QBrowse.Open;
  QHasil.Open;  
  QHasil_Shift.Open;
  QHasil_Shift_Det.Open;  }

end;

procedure TInfoWIPFinishingFrm.QHasilAfterScroll(DataSet: TDataSet);
begin
{azmi}
    //LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TInfoWIPFinishingFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then

end;

procedure TInfoWIPFinishingFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then

end;

procedure TInfoWIPFinishingFrm.VTglAwal2Change(Sender: TObject);
begin
  VTglAkhir2.Date:=trunc(EndOfTheMonth(VTglAwal2.Date));
end;

procedure TInfoWIPFinishingFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TInfoWIPFinishingFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QHasil.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'tgl' then
      dbcField2.Items.Add(wwDBGrid2.Columns[i].FieldName);


end;

procedure TInfoWIPFinishingFrm.TabSheet1Show(Sender: TObject);
begin
         //QBrowse.Close;
        // QBrowse.SetVariable('myparam',vfilter);
         //QBrowse.Open;
       {  QPosisi_Stok.Open;
         QHasil_Shift.Open;
         QHasil_BL.Open;   }
         

end;

procedure TInfoWIPFinishingFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
QProcHasil.Close;
  QProcHasil.SetVariable('pawal',VTglAwal2.Date);
  QProcHasil.SetVariable('pakhir',vTglAkhir2.Date);
  QProcHasil.Execute;
  QHasil.DisableControls;
  QHasil.Close;
  QHasil.SetVariable('myparam',vfilter+vorder);
  QHasil.Open;
  QHasil_Total.Close;
  QHasil_Total.SetVariable('myparam',vfilter);
  QHasil_Total.Open;
  QHasil.EnableControls;

  wwDBGrid2.ColumnByName('FOLDING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_M.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_BL.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_M.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_BL.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_BL.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_BL.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_M.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_BL.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_BL.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_BL_M.AsFloat);


  wwDBGrid2.ColumnByName('WASHING_PRE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_PRE.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_PRE_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_PRE_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_DES').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_DES.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_DES_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_DES_M.AsFloat);


  wwDBGrid2.ColumnByName('STENTER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_BL.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PG.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PG_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PG_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PRE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PRE.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PRE_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PRE_M.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_M.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_BL.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_BL_M.AsFloat);

end;

procedure TInfoWIPFinishingFrm.VTglAwal3Change(Sender: TObject);
begin
VTglAkhir3.Date:=trunc(EndOfTheMonth(VTglAwal3.Date));
end;

procedure TInfoWIPFinishingFrm.VTglAkhir3Change(Sender: TObject);
begin
  if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TInfoWIPFinishingFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
  if (QHasil_Shift.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'tgl' then
      dbcField3.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TInfoWIPFinishingFrm.cbOtomatis3Click(Sender: TObject);
begin
  if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TInfoWIPFinishingFrm.TabSheet3Show(Sender: TObject);
begin
        { QBrowse.Open;
         QHasil.Open;
         QHasil_Shift.Open; }
end;

procedure TInfoWIPFinishingFrm.BitBtn4Click(Sender: TObject);
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
  QHasil_Shift.Close;
  QProc_Hasil_Shift.Close;
  QHasil_Shift_Tot.Close;

abort;
end
else
  QHasil_Shift.DisableControls;
  QHasil_Shift.Close;
  QProc_Hasil_Shift.Close;
  QProc_Hasil_Shift.SetVariable('pawal',VTglAwal3.Date);
  QProc_Hasil_Shift.SetVariable('pakhir',VTglAkhir3.Date);
  QProc_Hasil_Shift.Execute;

  QHasil_Shift.SetVariable('myparam',vfilter+vorder);
  QHasil_Shift.Open;
  QHasil_Shift_Tot.Close;
  QHasil_Shift_Tot.SetVariable('myparam',vfilter);
  QHasil_Shift_Tot.Open;
  QHasil_Shift.EnableControls;

  wwDBGrid1.ColumnByName('FOLDING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotFOLDING.AsFloat);

  wwDBGrid1.ColumnByName('SHEARING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotSHEARING.AsFloat);

  wwDBGrid1.ColumnByName('BAKAR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotBAKAR.AsFloat);

  wwDBGrid1.ColumnByName('DESIZING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotDESIZING.AsFloat);

  wwDBGrid1.ColumnByName('WASHING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotWASHING.AsFloat);

  wwDBGrid1.ColumnByName('STENTER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotSTENTER.AsFloat);

  wwDBGrid1.ColumnByName('CALENDER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotCALENDER.AsFloat);

  wwDBGrid1.ColumnByName('M_FOLDING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_FOLDING.AsFloat);

  wwDBGrid1.ColumnByName('M_SHEARING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_SHEARING.AsFloat);

  wwDBGrid1.ColumnByName('M_BAKAR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_BAKAR.AsFloat);

  wwDBGrid1.ColumnByName('M_DESIZING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_DESIZING.AsFloat);

  wwDBGrid1.ColumnByName('M_WASHING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_WASHING.AsFloat);

  wwDBGrid1.ColumnByName('M_STENTER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_STENTER.AsFloat);

  wwDBGrid1.ColumnByName('M_CALENDER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Shift_TotM_CALENDER.AsFloat);

end;

procedure TInfoWIPFinishingFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var vambilbln, bulan : String;

  begin
 vambilbln := DateToStr(EndOfTheMonth(VTglAwal2.Date));
  bulan:=(FormatDateTime('DD',StrToDate(vambilbln)));

    if VTglAwal2.Date = VTglakhir2.Date then
    begin
      QRLabel8.Caption:= 'LAPORAN PRODUKSI HARIAN FINISHING';
      QRLabel23.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
      QRLabel93.Caption:= QTransaksiDOC_ISO.Text;
    end
      else if (FormatDateTime('DD MMMM',VTglAwal2.Date)= '01 Januari') and (FormatDateTime('DD MMMM',VTglakhir2.Date)= '31 Desember') then
      begin
        QRLabel8.Caption:= 'LAPORAN PRODUKSI TAHUNAN FINISHING';
        QRLabel23.Caption:='TAHUN  '+FormatDateTime('YYYY',VTglAwal2.Date);
        QRLabel93.Caption:= QTransaksiDOC_ISO3.Text;
      end
       // else if (VTglakhir2.Date= EndOfTheMonth(VTglAwal2.Date)) then
        else if (FormatDateTime('DD',VTglAwal2.Date)= '01') and (FormatDateTime('DD',VTglakhir2.Date)= bulan) then
        begin
          QRLabel8.Caption:= 'LAPORAN PRODUKSI BULANAN FINISHING';
          QRLabel23.Caption:='BULAN  '+FormatDateTime('MMMM YYYY',VTglakhir2.Date);
          QRLabel93.Caption:= QTransaksiDOC_ISO3.Text;
        end
        else
        begin
          QRLabel8.Caption:= 'LAPORAN PRODUKSI FINISHING';
          QRLabel23.Caption:='Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+'';
          //QRLabel93.Caption:= QTransaksiDOC_ISO3.Text;
        end

end;
procedure TInfoWIPFinishingFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 // QRLabel12.Caption:='(Per : '+VTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TInfoWIPFinishingFrm.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel45.Caption:='(Per : '+VTglAwal3.Text+' s/d '+VTglAkhir3.Text+')';
end;

procedure TInfoWIPFinishingFrm.TabSheet6Show(Sender: TObject);
begin
         {QBrowse.Close;
         QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         QBrowseTotal.Close;
         QBrowseTotal.SetVariable('myparam',vfilter);
         QBrowseTotal.Open;  }

end;

procedure TInfoWIPFinishingFrm.TabSheet5Show(Sender: TObject);
begin
         {QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         QBrowseTotal.Close;
         QBrowseTotal.SetVariable('myparam',vfilter);
         QBrowseTotal.Open; }
         {QHasil.Close;
         QHasil.SetVariable('myparam',vfilter);
         QHasil.Open;
         QHasil_Shift.Close;
         QHasil.SetVariable('myparam',vfilter);
         QHasil_Shift.Open;  }
         {QPosisi_Stok.Close;
         QHasil.SetVariable('myparam',vfilter);
         QPosisi_Stok.Open;  }
end;

procedure TInfoWIPFinishingFrm.BtnExport2Click(Sender: TObject);
begin
 if QHasil.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet1.Caption;
             wwDBGrid2.ExportOptions.TitleName:=TabSheet1.Caption;
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

procedure TInfoWIPFinishingFrm.BitBtn14Click(Sender: TObject);
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
  QHasil_BL.Close;
  QProcHasilBalen.Close;
  QHasil_BL_Tot.Close;
abort;
end
else
  QHasil_BL.DisableControls;
  QHasil_BL.Close;
  QProcHasilBalen.Close;
  QProcHasilBalen.SetVariable('pawal',vTglAwal5.Date);
  QProcHasilBalen.SetVariable('pakhir',vTglAkhir5.Date);
  QProcHasilBalen.Execute;


  QHasil_BL.SetVariable('myparam',vfilter+vorder);
  QHasil_BL.Open;
  QHasil_BL_Tot.Close;
  QHasil_BL_Tot.SetVariable('myparam',vfilter);
  QHasil_BL_Tot.Open;
  QHasil_BL.EnableControls;

  wwDBGrid4.ColumnByName('FOLDING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotFOLDING.AsFloat);

  wwDBGrid4.ColumnByName('SHEARING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotSHEARING.AsFloat);

  wwDBGrid4.ColumnByName('BAKAR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotBAKAR.AsFloat);

  wwDBGrid4.ColumnByName('DESIZING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotDESIZING.AsFloat);

  wwDBGrid4.ColumnByName('WASHING').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotWASHING.AsFloat);

  wwDBGrid4.ColumnByName('STENTER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotSTENTER.AsFloat);

  wwDBGrid4.ColumnByName('CALENDER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_BL_TotCALENDER.AsFloat);


end;

procedure TInfoWIPFinishingFrm.TabSheet4Show(Sender: TObject);
begin
//QHasil_BL.Open;
//QHasil_BL_Tot.Open;
end;

procedure TInfoWIPFinishingFrm.BtnExport5Click(Sender: TObject);
begin
if QHasil_BL.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' Finishing';
             wwDBGrid4.ExportOptions.TitleName:=''+TabSheet4.Caption+' Finishing';
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

procedure TInfoWIPFinishingFrm.BitBtn17Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep5.Preview
   //else
     //QuickRep1.Print;
end;

procedure TInfoWIPFinishingFrm.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel81.Caption:='(Per : '+vTglAwal5.Text+' s/d '+vTglAwal5.Text+')';
end;

procedure TInfoWIPFinishingFrm.BtnExport3Click(Sender: TObject);
begin
  if QHasil_Shift.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet3.Caption+' Finishing';
             wwDBGrid1.ExportOptions.TitleName:=''+TabSheet3.Caption+' Finishing';
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

procedure TInfoWIPFinishingFrm.BitBtn7Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep6.Preview
   //else
     //QuickRep1.Print;
end;

procedure TInfoWIPFinishingFrm.BitBtn16Click(Sender: TObject);
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
  QHasil_Shift_Det.Close;
  QProc_Hasil_Shift_Det.Close;
  QHasil_shift_det_tot.Close;
abort;
end
else

  QHasil_Shift_Det.DisableControls;
  QHasil_Shift_Det.Close;
  QProc_Hasil_Shift_Det.Close;
  QProc_Hasil_Shift_Det.SetVariable('pawal',vTglAwal6.Date);
  QProc_Hasil_Shift_Det.SetVariable('pakhir',vTglAkhir6.Date);
  QProc_Hasil_Shift_Det.Execute;


  QHasil_Shift_Det.SetVariable('myparam',vfilter+vorder);
  QHasil_Shift_Det.Open;
  QHasil_shift_det_tot.Close;
  QHasil_shift_det_tot.SetVariable('myparam',vfilter);
  QHasil_shift_det_tot.Open;
  QHasil_Shift_Det.EnableControls;

  wwDBGrid5.ColumnByName('FOLDING1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totFOLDING1.AsFloat);

  wwDBGrid5.ColumnByName('FOLDING1_AJL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totFOLDING1_AJL.AsFloat);

  wwDBGrid5.ColumnByName('FOLDING1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totFOLDING1_BL.AsFloat);

  wwDBGrid5.ColumnByName('SHEARING1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSHEARING1.AsFloat);

  wwDBGrid5.ColumnByName('SHEARING1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSHEARING1_BL.AsFloat);

  wwDBGrid5.ColumnByName('SHEARING2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSHEARING2.AsFloat);

  wwDBGrid5.ColumnByName('SHEARING2_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSHEARING2_BL.AsFloat);

  wwDBGrid5.ColumnByName('BAKAR1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totBAKAR1.AsFloat);

  wwDBGrid5.ColumnByName('BAKAR1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totBAKAR1_BL.AsFloat);

  wwDBGrid5.ColumnByName('BAKAR2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totBAKAR2.AsFloat);

  wwDBGrid5.ColumnByName('BAKAR2_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totBAKAR2_BL.AsFloat);

  wwDBGrid5.ColumnByName('DESIZING1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totDESIZING1.AsFloat);

  wwDBGrid5.ColumnByName('DESIZING1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totDESIZING1_BL.AsFloat);

  wwDBGrid5.ColumnByName('DESIZING2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totDESIZING2.AsFloat);

  wwDBGrid5.ColumnByName('DESIZING2_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totDESIZING2_BL.AsFloat);

  wwDBGrid5.ColumnByName('WASHING1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING1.AsFloat);

  wwDBGrid5.ColumnByName('WASHING1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING1_BL.AsFloat);

  wwDBGrid5.ColumnByName('WASHING2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING2.AsFloat);

  wwDBGrid5.ColumnByName('WASHING2_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING2_BL.AsFloat);

  wwDBGrid5.ColumnByName('WASHING3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING3.AsFloat);

  wwDBGrid5.ColumnByName('WASHING3_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totWASHING3_BL.AsFloat);


  wwDBGrid5.ColumnByName('STENTER1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER1.AsFloat);

  wwDBGrid5.ColumnByName('STENTER1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER1_BL.AsFloat);

  wwDBGrid5.ColumnByName('STENTER2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER2.AsFloat);

  wwDBGrid5.ColumnByName('STENTER2_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER2_BL.AsFloat);

  wwDBGrid5.ColumnByName('STENTER3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER3.AsFloat);

  wwDBGrid5.ColumnByName('STENTER3_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QHasil_shift_det_totSTENTER3_BL.AsFloat);

  wwDBGrid5.ColumnByName('STENTER3_PG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totSTENTER3_PG.AsFloat);

  wwDBGrid5.ColumnByName('CALENDER1').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QHasil_shift_det_totCALENDER1.AsFloat);

  wwDBGrid5.ColumnByName('CALENDER1_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totCALENDER1_BL.AsFloat);

  wwDBGrid5.ColumnByName('REINSPECT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totREINSPECT.AsFloat);

  wwDBGrid5.ColumnByName('REINSPECT_BL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_shift_det_totREINSPECT_BL.AsFloat);



end;

procedure TInfoWIPFinishingFrm.dbcField6Enter(Sender: TObject);
var
  i : Word;
begin
  if (QHasil_Shift_Det.Active) and (dbcField6.Items.Count=1) then
  for i:=0 to wwDBGrid5.FieldCount-1 do
    if UpperCase(wwDBGrid5.Columns[i].FieldName)<>'shift' then
      dbcField5.Items.Add(wwDBGrid5.Columns[i].FieldName);

end;

procedure TInfoWIPFinishingFrm.vTglAwal6Change(Sender: TObject);
begin
  vTglAkhir6.Date:=trunc(EndOfTheMonth(vTglAwal6.Date));
end;

procedure TInfoWIPFinishingFrm.vTglAkhir6Change(Sender: TObject);
begin
  if VTglAwal6.Date>vTglAkhir6.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir6.Date:=VTglAwal6.Date;
  end;
end;

procedure TInfoWIPFinishingFrm.vTglAwal5Change(Sender: TObject);
begin
  vTglAkhir5.Date:=trunc(EndOfTheMonth(vTglAwal5.Date));
end;

procedure TInfoWIPFinishingFrm.vTglAkhir5Change(Sender: TObject);
begin
  if vTglAwal6.Date>vTglAkhir6.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir6.Date:=VTglAwal6.Date;
  end;
end;

procedure TInfoWIPFinishingFrm.dbcField5Enter(Sender: TObject);
var
  i : Word;
begin
  if (QHasil_BL.Active) and (dbcField5.Items.Count=1) then
  for i:=0 to wwDBGrid4.FieldCount-1 do
    if UpperCase(wwDBGrid4.Columns[i].FieldName)<>'tgl' then
      dbcField5.Items.Add(wwDBGrid4.Columns[i].FieldName);

end;

procedure TInfoWIPFinishingFrm.cbOtomatis5Click(Sender: TObject);
begin
  if cbOtomatis5.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid4.Options:=wwDBGrid4.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid4.Options:=wwDBGrid4.Options-[dgAlwaysShowSelection];
  ECari5.SetFocus;
end;

procedure TInfoWIPFinishingFrm.BitBtn19Click(Sender: TObject);
begin
  if QHasil_Shift_Det.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet7.Caption+' Finishing';
             wwDBGrid5.ExportOptions.TitleName:=''+TabSheet7.Caption+' Finishing';
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

procedure TInfoWIPFinishingFrm.QRBand19BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel101.Caption:='(Per : '+vTglAwal6.Text+' s/d '+VTglAkhir6.Text+')';
end;

procedure TInfoWIPFinishingFrm.BitBtn9Click(Sender: TObject);
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
QHasil.Close;
QHasil_Total.Close;
QProcHasil.Close;
abort;
end
else
 { QBrowse.Open;}
  //QHasil.DisableControls;

  QHasil.Close;
  QProcHasil.Close;
  QProcHasil.SetVariable('pawal',VTglAwal2.Date);
  QProcHasil.SetVariable('pakhir',VTglakhir2.Date);
  QProcHasil.Execute;

  QHasil.SetVariable('myparam',vfilter+vorder);
  QHasil.Open;
  QHasil_Total.Close;
  QHasil_Total.SetVariable('myparam',vfilter);
  QHasil_Total.Open;
  //QHasil.EnableControls;

  wwDBGrid2.ColumnByName('FOLDING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_M.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_BL.AsFloat);

  wwDBGrid2.ColumnByName('FOLDING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_M.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_BL.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_BL.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_M.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_BL.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR_GREY_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR_GREY_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_M.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_BL.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_BL.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_BL_M.AsFloat);


  wwDBGrid2.ColumnByName('WASHING_PRE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_PRE.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_PRE_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_PRE_M.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_DES').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_DES.AsFloat);

  wwDBGrid2.ColumnByName('WASHING_DES_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING_DES_M.AsFloat);


  wwDBGrid2.ColumnByName('STENTER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_BL.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_BL_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PG.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PG_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PG_M.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PRE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PRE.AsFloat);

  wwDBGrid2.ColumnByName('STENTER_PRE_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER_PRE_M.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_M.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_BL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_BL.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER_BL_M').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER_BL_M.AsFloat);

end;

procedure TInfoWIPFinishingFrm.VTglAwal7Change(Sender: TObject);
begin
VTglAkhir7.Date:=trunc(EndOfTheMonth(VTglAwal7.Date));
end;

procedure TInfoWIPFinishingFrm.VTglakhir7Change(Sender: TObject);
begin
if VTglAwal7.Date>vTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TInfoWIPFinishingFrm.BitBtn1Click(Sender: TObject);
begin
QHasil_Mesen.DisableControls;
QHasil_Mesen.Close;
QHasil_Mesen.SetVariable('pawal',VTglAwal7.Date);
QHasil_Mesen.SetVariable('pakhir',VTglakhir7.Date);
QHasil_Mesen.Open;
QHasil_Mesen.EnableControls;

QHasil_Mesen_Tot.Close;
QHasil_Mesen_Tot.SetVariable('pawal',VTglAwal7.Date);
QHasil_Mesen_Tot.SetVariable('pakhir',VTglakhir7.Date);
QHasil_Mesen_Tot.Open;

wwDBGrid7.ColumnByName('WSG1_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG1_KD.AsFloat);
wwDBGrid7.ColumnByName('WSG1_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG1_MTR.AsFloat);
wwDBGrid7.ColumnByName('WSG2_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG2_KD.AsFloat);
wwDBGrid7.ColumnByName('WSG2_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG2_MTR.AsFloat);
wwDBGrid7.ColumnByName('WSG3_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG3_KD.AsFloat);
wwDBGrid7.ColumnByName('WSG3_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QHasil_Mesen_TotWSG3_MTR.AsFloat);

end;

procedure TInfoWIPFinishingFrm.BitBtn8Click(Sender: TObject);
begin
if QHasil_Mesen.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet2.Caption;
             wwDBGrid7.ExportOptions.TitleName:=TabSheet2.Caption;
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

procedure TInfoWIPFinishingFrm.BitBtn3Click(Sender: TObject);
begin
QMesen_Stenter.DisableControls;
QMesen_Stenter.Close;
QMesen_Stenter.SetVariable('pawal',VTglAwal8.Date);
QMesen_Stenter.SetVariable('pakhir',VTglakhir8.Date);
QMesen_Stenter.Open;
QMesen_Stenter.EnableControls;

QMesen_Stenter_Tot.Close;
QMesen_Stenter_Tot.SetVariable('pawal',VTglAwal8.Date);
QMesen_Stenter_Tot.SetVariable('pakhir',VTglakhir8.Date);
QMesen_Stenter_Tot.Open;

wwDBGrid3.ColumnByName('STR1_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR1_KD.AsFloat);
wwDBGrid3.ColumnByName('STR1_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR1_MTR.AsFloat);
wwDBGrid3.ColumnByName('STR2_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR2_KD.AsFloat);
wwDBGrid3.ColumnByName('STR2_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR2_MTR.AsFloat);
wwDBGrid3.ColumnByName('STR3_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR3_KD.AsFloat);
wwDBGrid3.ColumnByName('STR3_MTR').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QMesen_Stenter_TotSTR3_MTR.AsFloat);
end;

procedure TInfoWIPFinishingFrm.BitBtn11Click(Sender: TObject);
begin
if QMesen_Stenter.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet5.Caption;
             wwDBGrid3.ExportOptions.TitleName:=TabSheet5.Caption;
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

procedure TInfoWIPFinishingFrm.VTglAwal8Change(Sender: TObject);
begin
VTglAkhir8.Date:=trunc(EndOfTheMonth(VTglAwal8.Date));
end;

procedure TInfoWIPFinishingFrm.VTglakhir8Change(Sender: TObject);
begin
if VTglAwal8.Date>VTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir8.Date:=VTglAwal8.Date;
  end;
end;

end.
