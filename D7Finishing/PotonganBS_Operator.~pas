unit PotonganBS_Operator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls;

type
  TPotonganBS_OperatorFrm = class(TForm)
    PanelLeft: TPanel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    TabSheet4: TTabSheet;
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
    QBrowse_Det: TOracleDataSet;
    dsQBrowse_Det: TwwDataSource;
    wwDBGrid2: TwwDBGrid;
    QBrowseTotal_Det: TOracleDataSet;
    QBrowseTotal_DetTOTAL: TFloatField;
    LabelBanner2: TLabel;
    QBSBK_TOT: TOracleDataSet;
    QBSBK_TOTTOTAL_BS: TFloatField;
    QBSBK_TOTTOTAL_BK: TFloatField;
    QBSBK_TOTTOTAL_PR: TFloatField;
    QBrowse_DetNIK: TStringField;
    QBrowse_DetOPR_TENUN: TStringField;
    QBrowse_DetPROSES: TStringField;
    QBrowse_DetTANGGAL: TDateTimeField;
    QBrowse_DetGRUP: TStringField;
    QBrowse_DetQTY: TFloatField;
    QBrowse_DetLD: TFloatField;
    QBrowse_DetLB: TFloatField;
    QBrowse_DetLT: TFloatField;
    QBrowse_DetLK: TFloatField;
    QBrowse_DetPL: TFloatField;
    QBrowse_DetLL: TFloatField;
    QBrowse_DetLPT: TFloatField;
    QBrowse_DetLRG: TFloatField;
    QBrowse_DetWL: TFloatField;
    QBrowse_DetCKK: TFloatField;
    QBrowse_DetOJ: TFloatField;
    QBrowse_DetCRT: TFloatField;
    QBrowse_DetCAJ: TFloatField;
    QBrowse_DetPD: TFloatField;
    QBrowse_DetPKP: TFloatField;
    QBrowse_DetNG: TFloatField;
    QBrowse_DetBTB: TFloatField;
    QBrowse_DetWP: TFloatField;
    QBrowse_DetSC: TFloatField;
    QBrowse_DetKP: TFloatField;
    QBrowse_DetBO: TFloatField;
    QBrowse_DetTCS: TFloatField;
    QBrowse_DetSLL: TFloatField;
    QBrowse_DetKS: TFloatField;
    QBrowse_DetANR: TFloatField;
    QBrowse_DetUTS: TFloatField;
    QBrowse_DetKBR: TFloatField;
    QBrowse_DetQTY2: TFloatField;
    QBrowse_DetQTY3: TFloatField;
    QBrowse_DetPR: TFloatField;
    QBrowse_DetUTB: TIntegerField;
    QBrowse_DetLBK: TIntegerField;
    QBrowse_DetCUP: TIntegerField;
    QBrowse_DetPEMOTONG_BS: TFloatField;
    TabSheet1: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    VTglAwal1: TwwDBDateTimePicker;
    VTglAkhir1: TwwDBDateTimePicker;
    Panel4: TPanel;
    vOperand1: TLabel;
    cbTanggal1: TCheckBox;
    BitBtn1: TBitBtn;
    ECari1: TEdit;
    cbOtomatis1: TCheckBox;
    dbcField1: TwwDBComboBox;
    BitBtn2: TBitBtn;
    LabelBanner1: TLabel;
    QBrowse_Opr: TOracleDataSet;
    dsQBrowse_Opr: TwwDataSource;
    QBrowseTotal_Opr: TOracleDataSet;
    QTOT_Opr: TOracleDataSet;
    QBrowse_OprNIK: TStringField;
    QBrowse_OprOPR_TENUN: TStringField;
    QBrowse_OprQTY: TFloatField;
    QBrowse_OprLD: TFloatField;
    QBrowse_OprLB: TFloatField;
    QBrowse_OprLT: TFloatField;
    QBrowse_OprLK: TFloatField;
    QBrowse_OprPL: TFloatField;
    QBrowse_OprLL: TFloatField;
    QBrowse_OprLPT: TFloatField;
    QBrowse_OprLRG: TFloatField;
    QBrowse_OprWL: TFloatField;
    QBrowse_OprCKK: TFloatField;
    QBrowse_OprOJ: TFloatField;
    QBrowse_OprCRT: TFloatField;
    QBrowse_OprCAJ: TFloatField;
    QBrowse_OprPD: TFloatField;
    QBrowse_OprPKP: TFloatField;
    QBrowse_OprNG: TFloatField;
    QBrowse_OprBTB: TFloatField;
    QBrowse_OprWP: TFloatField;
    QBrowse_OprSC: TFloatField;
    QBrowse_OprKP: TFloatField;
    QBrowse_OprBO: TFloatField;
    QBrowse_OprTCS: TFloatField;
    QBrowse_OprSLL: TFloatField;
    QBrowse_OprKS: TFloatField;
    QBrowse_OprANR: TFloatField;
    QBrowse_OprUTS: TFloatField;
    QBrowse_OprKBR: TFloatField;
    QBrowse_OprQTY2: TFloatField;
    QBrowse_OprQTY3: TFloatField;
    QBrowse_OprPR: TFloatField;
    QBrowseTotal_OprTOTAL: TFloatField;
    QTOT_OprTOTAL_BS: TFloatField;
    QTOT_OprTOTAL_BK: TFloatField;
    QTOT_OprTOTAL_PR: TFloatField;
    QBrowse_OprUTB: TFloatField;
    QBrowse_OprLBK: TFloatField;
    QBrowse_OprCUP: TFloatField;
    QBrowse_OprPEMOTONG_BS: TFloatField;
    TabSheet2: TTabSheet;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    VTglAkhir3: TwwDBDateTimePicker;
    Panel9: TPanel;
    vOperand3: TLabel;
    cbTanggal3: TCheckBox;
    BitBtn3: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BitBtn4: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    LabelBanner3: TLabel;
    QBrowse_Grup: TOracleDataSet;
    QBrowse_GrupPEMOTONG_BS: TFloatField;
    dsQBrowse_Grup: TwwDataSource;
    QBrowseTotal_Grup: TOracleDataSet;
    QTOT_Grup: TOracleDataSet;
    QBrowse_GrupGRUP: TStringField;
    QBrowse_GrupQTY: TFloatField;
    QBrowse_GrupLD: TFloatField;
    QBrowse_GrupLB: TFloatField;
    QBrowse_GrupLT: TFloatField;
    QBrowse_GrupLK: TFloatField;
    QBrowse_GrupPL: TFloatField;
    QBrowse_GrupLL: TFloatField;
    QBrowse_GrupLPT: TFloatField;
    QBrowse_GrupLRG: TFloatField;
    QBrowse_GrupWL: TFloatField;
    QBrowse_GrupCKK: TFloatField;
    QBrowse_GrupOJ: TFloatField;
    QBrowse_GrupCRT: TFloatField;
    QBrowse_GrupCAJ: TFloatField;
    QBrowse_GrupPD: TFloatField;
    QBrowse_GrupPKP: TFloatField;
    QBrowse_GrupNG: TFloatField;
    QBrowse_GrupBTB: TFloatField;
    QBrowse_GrupWP: TFloatField;
    QBrowse_GrupSC: TFloatField;
    QBrowse_GrupKP: TFloatField;
    QBrowse_GrupBO: TFloatField;
    QBrowse_GrupTCS: TFloatField;
    QBrowse_GrupSLL: TFloatField;
    QBrowse_GrupKS: TFloatField;
    QBrowse_GrupANR: TFloatField;
    QBrowse_GrupUTS: TFloatField;
    QBrowse_GrupKBR: TFloatField;
    QBrowse_GrupQTY2: TFloatField;
    QBrowse_GrupQTY3: TFloatField;
    QBrowse_GrupPR: TFloatField;
    QBrowse_GrupUTB: TFloatField;
    QBrowse_GrupLBK: TFloatField;
    QBrowse_GrupCUP: TFloatField;
    QBrowseTotal_GrupTOTAL: TFloatField;
    QTOT_GrupTOTAL_BS: TFloatField;
    QTOT_GrupTOTAL_BK: TFloatField;
    QTOT_GrupTOTAL_PR: TFloatField;
    QBrowse_DetLOKASI: TStringField;
    QBrowse_GrupLOKASI: TStringField;
    TabSheet3: TTabSheet;
    TabSheet5: TTabSheet;
    QBrowse_DetKONSTRUKSI: TStringField;
    QBrowse_Kons: TOracleDataSet;
    QBrowse_KonsPEMOTONG_BS: TFloatField;
    dsQBrowse_Kons: TwwDataSource;
    QBrowseTotal_Kons: TOracleDataSet;
    QTOT_Kons: TOracleDataSet;
    QBrowse_KonsLOKASI: TStringField;
    QBrowse_KonsKONSTRUKSI: TStringField;
    QBrowse_KonsQTY: TFloatField;
    QBrowse_KonsLD: TFloatField;
    QBrowse_KonsLB: TFloatField;
    QBrowse_KonsLT: TFloatField;
    QBrowse_KonsLK: TFloatField;
    QBrowse_KonsPL: TFloatField;
    QBrowse_KonsLL: TFloatField;
    QBrowse_KonsLPT: TFloatField;
    QBrowse_KonsLRG: TFloatField;
    QBrowse_KonsWL: TFloatField;
    QBrowse_KonsCKK: TFloatField;
    QBrowse_KonsOJ: TFloatField;
    QBrowse_KonsCRT: TFloatField;
    QBrowse_KonsCAJ: TFloatField;
    QBrowse_KonsPD: TFloatField;
    QBrowse_KonsPKP: TFloatField;
    QBrowse_KonsNG: TFloatField;
    QBrowse_KonsBTB: TFloatField;
    QBrowse_KonsWP: TFloatField;
    QBrowse_KonsSC: TFloatField;
    QBrowse_KonsKP: TFloatField;
    QBrowse_KonsBO: TFloatField;
    QBrowse_KonsTCS: TFloatField;
    QBrowse_KonsSLL: TFloatField;
    QBrowse_KonsKS: TFloatField;
    QBrowse_KonsANR: TFloatField;
    QBrowse_KonsUTS: TFloatField;
    QBrowse_KonsKBR: TFloatField;
    QBrowse_KonsQTY2: TFloatField;
    QBrowse_KonsQTY3: TFloatField;
    QBrowse_KonsPR: TFloatField;
    QBrowse_KonsUTB: TFloatField;
    QBrowse_KonsLBK: TFloatField;
    QBrowse_KonsCUP: TFloatField;
    QBrowseTotal_KonsTOTAL: TFloatField;
    QTOT_KonsTOTAL_BS: TFloatField;
    QTOT_KonsTOTAL_BK: TFloatField;
    QTOT_KonsTOTAL_PR: TFloatField;
    wwDBGrid4: TwwDBGrid;
    Panel10: TPanel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    VTglAwal4: TwwDBDateTimePicker;
    VTglAkhir4: TwwDBDateTimePicker;
    Panel11: TPanel;
    vOperand4: TLabel;
    cbTanggal4: TCheckBox;
    BitBtn5: TBitBtn;
    ECari4: TEdit;
    cbOtomatis4: TCheckBox;
    dbcField4: TwwDBComboBox;
    BitBtn7: TBitBtn;
    LabelBanner4: TLabel;
    QBrowse_Kons2: TOracleDataSet;
    QBrowse_Kons2PEMOTONG_BS: TFloatField;
    dsQBrowse_Kons2: TwwDataSource;
    QBrowseTotal_Kons2: TOracleDataSet;
    QTOT_Kons2: TOracleDataSet;
    LabelBanner5: TLabel;
    Panel12: TPanel;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel13: TPanel;
    vOperand5: TLabel;
    cbTanggal5: TCheckBox;
    BitBtn8: TBitBtn;
    ECari5: TEdit;
    cbOtomatis5: TCheckBox;
    dbcField5: TwwDBComboBox;
    BitBtn9: TBitBtn;
    wwDBGrid5: TwwDBGrid;
    QBrowse_Kons2KONSTRUKSI: TStringField;
    QBrowse_Kons2QTY: TFloatField;
    QBrowse_Kons2LD: TFloatField;
    QBrowse_Kons2LB: TFloatField;
    QBrowse_Kons2LT: TFloatField;
    QBrowse_Kons2LK: TFloatField;
    QBrowse_Kons2PL: TFloatField;
    QBrowse_Kons2LL: TFloatField;
    QBrowse_Kons2LPT: TFloatField;
    QBrowse_Kons2LRG: TFloatField;
    QBrowse_Kons2WL: TFloatField;
    QBrowse_Kons2CKK: TFloatField;
    QBrowse_Kons2OJ: TFloatField;
    QBrowse_Kons2CRT: TFloatField;
    QBrowse_Kons2CAJ: TFloatField;
    QBrowse_Kons2PD: TFloatField;
    QBrowse_Kons2PKP: TFloatField;
    QBrowse_Kons2NG: TFloatField;
    QBrowse_Kons2BTB: TFloatField;
    QBrowse_Kons2WP: TFloatField;
    QBrowse_Kons2SC: TFloatField;
    QBrowse_Kons2KP: TFloatField;
    QBrowse_Kons2BO: TFloatField;
    QBrowse_Kons2TCS: TFloatField;
    QBrowse_Kons2SLL: TFloatField;
    QBrowse_Kons2KS: TFloatField;
    QBrowse_Kons2ANR: TFloatField;
    QBrowse_Kons2UTS: TFloatField;
    QBrowse_Kons2KBR: TFloatField;
    QBrowse_Kons2QTY2: TFloatField;
    QBrowse_Kons2QTY3: TFloatField;
    QBrowse_Kons2PR: TFloatField;
    QBrowse_Kons2UTB: TFloatField;
    QBrowse_Kons2LBK: TFloatField;
    QBrowse_Kons2CUP: TFloatField;
    QBrowseTotal_Kons2TOTAL: TFloatField;
    QTOT_Kons2TOTAL_BS: TFloatField;
    QTOT_Kons2TOTAL_BK: TFloatField;
    QTOT_Kons2TOTAL_PR: TFloatField;
    TabSheet6: TTabSheet;
    QBrowse_Mesin: TOracleDataSet;
    QBrowse_MesinPEMOTONG_BS: TFloatField;
    dsQBrowse_Mesin: TwwDataSource;
    QBrowseTotal_Mesin: TOracleDataSet;
    QTOT_Mesin: TOracleDataSet;
    Panel14: TPanel;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    VTglAwal6: TwwDBDateTimePicker;
    VTglAkhir6: TwwDBDateTimePicker;
    Panel15: TPanel;
    vOperand6: TLabel;
    cbTanggal6: TCheckBox;
    BitBtn10: TBitBtn;
    ECari6: TEdit;
    cbOtomatis6: TCheckBox;
    dbcField6: TwwDBComboBox;
    BitBtn11: TBitBtn;
    wwDBGrid6: TwwDBGrid;
    LabelBanner6: TLabel;
    QBrowse_MesinLOKASI: TStringField;
    QBrowse_MesinPROSES: TStringField;
    QBrowse_MesinGRUP: TStringField;
    QBrowse_MesinQTY: TFloatField;
    QBrowse_MesinLD: TFloatField;
    QBrowse_MesinLB: TFloatField;
    QBrowse_MesinLT: TFloatField;
    QBrowse_MesinLK: TFloatField;
    QBrowse_MesinPL: TFloatField;
    QBrowse_MesinLL: TFloatField;
    QBrowse_MesinLPT: TFloatField;
    QBrowse_MesinLRG: TFloatField;
    QBrowse_MesinWL: TFloatField;
    QBrowse_MesinCKK: TFloatField;
    QBrowse_MesinOJ: TFloatField;
    QBrowse_MesinCRT: TFloatField;
    QBrowse_MesinCAJ: TFloatField;
    QBrowse_MesinPD: TFloatField;
    QBrowse_MesinPKP: TFloatField;
    QBrowse_MesinNG: TFloatField;
    QBrowse_MesinBTB: TFloatField;
    QBrowse_MesinWP: TFloatField;
    QBrowse_MesinSC: TFloatField;
    QBrowse_MesinKP: TFloatField;
    QBrowse_MesinBO: TFloatField;
    QBrowse_MesinTCS: TFloatField;
    QBrowse_MesinSLL: TFloatField;
    QBrowse_MesinKS: TFloatField;
    QBrowse_MesinANR: TFloatField;
    QBrowse_MesinUTS: TFloatField;
    QBrowse_MesinKBR: TFloatField;
    QBrowse_MesinQTY2: TFloatField;
    QBrowse_MesinQTY3: TFloatField;
    QBrowse_MesinPR: TFloatField;
    QBrowse_MesinUTB: TFloatField;
    QBrowse_MesinLBK: TFloatField;
    QBrowse_MesinCUP: TFloatField;
    QBrowseTotal_MesinTOTAL: TFloatField;
    QTOT_MesinTOTAL_BS: TFloatField;
    QTOT_MesinTOTAL_BK: TFloatField;
    QTOT_MesinTOTAL_PR: TFloatField;
    TabSheet7: TTabSheet;
    wwDBGrid7: TwwDBGrid;
    Panel16: TPanel;
    GroupBox7: TGroupBox;
    Label6: TLabel;
    VTglAwal7: TwwDBDateTimePicker;
    VTglAkhir7: TwwDBDateTimePicker;
    Panel17: TPanel;
    vOperand7: TLabel;
    cbTanggal7: TCheckBox;
    BitBtn12: TBitBtn;
    ECari7: TEdit;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    BitBtn13: TBitBtn;
    LabelBanner7: TLabel;
    QBrowse_Formasi: TOracleDataSet;
    QBrowse_FormasiPEMOTONG_BS: TFloatField;
    dsQBrowse_Formasi: TwwDataSource;
    QBrowseTotal_Formasi: TOracleDataSet;
    QTOT_Formasi: TOracleDataSet;
    QBrowse_FormasiFORMASI: TStringField;
    QBrowse_FormasiLOKASI: TStringField;
    QBrowse_FormasiGRUP: TStringField;
    QBrowse_FormasiPROSES: TStringField;
    QBrowse_FormasiQTY: TFloatField;
    QBrowse_FormasiLD: TFloatField;
    QBrowse_FormasiLB: TFloatField;
    QBrowse_FormasiLT: TFloatField;
    QBrowse_FormasiLK: TFloatField;
    QBrowse_FormasiPL: TFloatField;
    QBrowse_FormasiLL: TFloatField;
    QBrowse_FormasiLPT: TFloatField;
    QBrowse_FormasiLRG: TFloatField;
    QBrowse_FormasiWL: TFloatField;
    QBrowse_FormasiCKK: TFloatField;
    QBrowse_FormasiOJ: TFloatField;
    QBrowse_FormasiCRT: TFloatField;
    QBrowse_FormasiCAJ: TFloatField;
    QBrowse_FormasiPD: TFloatField;
    QBrowse_FormasiPKP: TFloatField;
    QBrowse_FormasiNG: TFloatField;
    QBrowse_FormasiBTB: TFloatField;
    QBrowse_FormasiWP: TFloatField;
    QBrowse_FormasiSC: TFloatField;
    QBrowse_FormasiKP: TFloatField;
    QBrowse_FormasiBO: TFloatField;
    QBrowse_FormasiTCS: TFloatField;
    QBrowse_FormasiSLL: TFloatField;
    QBrowse_FormasiKS: TFloatField;
    QBrowse_FormasiANR: TFloatField;
    QBrowse_FormasiUTS: TFloatField;
    QBrowse_FormasiKBR: TFloatField;
    QBrowse_FormasiQTY2: TFloatField;
    QBrowse_FormasiQTY3: TFloatField;
    QBrowse_FormasiPR: TFloatField;
    QBrowse_FormasiUTB: TFloatField;
    QBrowse_FormasiLBK: TFloatField;
    QBrowse_FormasiCUP: TFloatField;
    QBrowseTotal_FormasiTOTAL: TFloatField;
    QTOT_FormasiTOTAL_BS: TFloatField;
    QTOT_FormasiTOTAL_BK: TFloatField;
    QTOT_FormasiTOTAL_PR: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LookRekananEnter(Sender: TObject);
    procedure LookRekananClick(Sender: TObject);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure LookCorakEnter(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure VTglAwal2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure QBrowse_DetAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid5TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowse_DetCalcFields(DataSet: TDataSet);
    procedure VTglAwal1Change(Sender: TObject);
    procedure VTglAkhir1Change(Sender: TObject);
    procedure cbOtomatis1Click(Sender: TObject);
    procedure dbcField1Enter(Sender: TObject);
    procedure vOperand1Click(Sender: TObject);
    procedure cbTanggal1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QBrowse_OprAfterScroll(DataSet: TDataSet);
    procedure QBrowse_OprCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure VTglAwal3Change(Sender: TObject);
    procedure VTglAkhir3Change(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure vOperand3Click(Sender: TObject);
    procedure cbTanggal3Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure QBrowse_GrupAfterScroll(DataSet: TDataSet);
    procedure QBrowse_GrupCalcFields(DataSet: TDataSet);
    procedure VTglAwal4Change(Sender: TObject);
    procedure VTglAkhir4Change(Sender: TObject);
    procedure cbOtomatis4Click(Sender: TObject);
    procedure dbcField4Enter(Sender: TObject);
    procedure vOperand4Click(Sender: TObject);
    procedure cbTanggal4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure QBrowse_KonsAfterScroll(DataSet: TDataSet);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure cbOtomatis5Click(Sender: TObject);
    procedure dbcField5Enter(Sender: TObject);
    procedure vOperand5Click(Sender: TObject);
    procedure cbTanggal5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure QBrowse_Kons2AfterScroll(DataSet: TDataSet);
    procedure QBrowse_KonsCalcFields(DataSet: TDataSet);
    procedure QBrowse_Kons2CalcFields(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure VTglAwal6Change(Sender: TObject);
    procedure VTglAkhir6Change(Sender: TObject);
    procedure cbOtomatis6Click(Sender: TObject);
    procedure dbcField6Enter(Sender: TObject);
    procedure vOperand6Click(Sender: TObject);
    procedure cbTanggal6Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure QBrowse_MesinAfterScroll(DataSet: TDataSet);
    procedure QBrowse_MesinCalcFields(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure VTglAkhir7Change(Sender: TObject);
    procedure cbOtomatis7Click(Sender: TObject);
    procedure dbcField7Enter(Sender: TObject);
    procedure vOperand7Click(Sender: TObject);
    procedure cbTanggal7Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure QBrowse_FormasiAfterScroll(DataSet: TDataSet);
    procedure QBrowse_FormasiCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vorder,vfilter:string;
  public
    { Public declarations }
  end;

var
  PotonganBS_OperatorFrm: TPotonganBS_OperatorFrm;

implementation

uses DM, Math{, HasilTenun};

{$R *.dfm}

procedure TPotonganBS_OperatorFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  PotonganBS_OperatorFrm:=Nil;
end;

procedure TPotonganBS_OperatorFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TPotonganBS_OperatorFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TPotonganBS_OperatorFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TPotonganBS_OperatorFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TPotonganBS_OperatorFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TPotonganBS_OperatorFrm.BitBtn4Click(Sender: TObject);
begin
  if QBrowse_Grup.Active then
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

procedure TPotonganBS_OperatorFrm.FormShow(Sender: TObject);
begin
  VTglAwal1.Date:=Date;
  VTglAwal2.Date:=Date;
  VTglAwal3.Date:=Date;
  VTglAwal4.Date:=Date;
  VTglAwal5.Date:=Date;
  VTglAwal6.Date:=Date;
  VTglAwal7.Date:=Date;              
end;

procedure TPotonganBS_OperatorFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TPotonganBS_OperatorFrm.VTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=(VTglAwal2.Date);

end;

procedure TPotonganBS_OperatorFrm.vTglAkhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis2Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Det.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid2.Columns[i].FieldName);
end;

procedure TPotonganBS_OperatorFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal2Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.BitBtn6Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Det.Open;
  vpertama:=True;
  if cbTanggal2.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Det.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_Det.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL') then
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
    if QBrowse_Det.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by no_reg';

  end;
  QBrowse_Det.DisableControls;
  QBrowse_Det.Close;
  QBrowse_Det.SetVariable('myparam',vfilter+vorder);
  QBrowse_Det.Open;
  QBrowse_Det.EnableControls;

  QBrowseTotal_Det.DisableControls;
  QBrowseTotal_Det.Close;
  QBrowseTotal_Det.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Det.Open;
  QBrowseTotal_Det.EnableControls;

  QBSBK_TOT.DisableControls;
  QBSBK_TOT.Close;
  QBSBK_TOT.SetVariable('myparam',vfilter+vorder);
  QBSBK_TOT.Open;
  QBSBK_TOT.EnableControls;

  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_DetTOTAL.AsFloat);
  wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBSBK_TOTTOTAL_BS.AsFloat);
  wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBSBK_TOTTOTAL_BK.AsFloat);
  wwDBGrid2.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBSBK_TOTTOTAL_PR.AsFloat);

 { wwDBGrid2.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BK.AsFloat);
  wwDBGrid2.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BK.AsFloat);
  wwDBGrid2.ColumnByName('KODI_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS.AsFloat);
  wwDBGrid2.ColumnByName('PCS_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS.AsFloat);
  wwDBGrid2.ColumnByName('KODI_BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalKODI_BS_PARAH.AsFloat);
  wwDBGrid2.ColumnByName('PCS_BS_PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalPCS_BS_PARAH.AsFloat);
   }

end;

procedure TPotonganBS_OperatorFrm.BtnExport2Click(Sender: TObject);
begin
          if QBrowse_Det.Active then
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

procedure TPotonganBS_OperatorFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
{azmi}
  QBrowseTotal_Det.Close;
  QBrowseTotal_Det.Open;
//  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QBrowseTotal_DetTOTAL.AsFloat);
  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_DetTOTAL.AsFloat);
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_DetAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner2.Caption:='Record ke '+IntToStr(QBrowse_Det.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Det.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.wwDBGrid5TitleButtonClick(
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

procedure TPotonganBS_OperatorFrm.QBrowse_DetCalcFields(DataSet: TDataSet);
begin
QBrowse_DetPEMOTONG_BS.AsFloat:=
QBrowse_DetLD.AsFloat+
QBrowse_DetLB.AsFloat+
QBrowse_DetLT.AsFloat+
QBrowse_DetLK.AsFloat+
QBrowse_DetPL.AsFloat+
QBrowse_DetLL.AsFloat+
QBrowse_DetLPT.AsFloat+
QBrowse_DetLRG.AsFloat+
QBrowse_DetWL.AsFloat+
QBrowse_DetCKK.AsFloat+
QBrowse_DetOJ.AsFloat+
QBrowse_DetCRT.AsFloat+
QBrowse_DetCAJ.AsFloat+
QBrowse_DetPD.AsFloat+
QBrowse_DetPKP.AsFloat+
QBrowse_DetNG.AsFloat+
QBrowse_DetBTB.AsFloat+
QBrowse_DetWP.AsFloat+
QBrowse_DetSC.AsFloat+
QBrowse_DetKP.AsFloat+
QBrowse_DetBO.AsFloat+
QBrowse_DetTCS.AsFloat+
QBrowse_DetSLL.AsFloat+
QBrowse_DetKS.AsFloat+
QBrowse_DetANR.AsFloat+
QBrowse_DetUTS.AsFloat+
QBrowse_DetKBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.VTglAwal1Change(Sender: TObject);
begin
  vTglAkhir1.Date:=(VTglAwal1.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir1Change(Sender: TObject);
begin
  if VTglAwal1.Date>vTglAkhir1.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir1.Date:=VTglAwal1.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis1Click(Sender: TObject);
begin
  if cbOtomatis1.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari1.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.dbcField1Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Opr.Active) and (dbcField1.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField1.Items.Add(wwDBGrid1.Columns[i].FieldName);

end;

procedure TPotonganBS_OperatorFrm.vOperand1Click(Sender: TObject);
begin
  if vOperand1.Caption='LIKE' then
    vOperand1.Caption:='='
    else
      vOperand1.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal1Click(Sender: TObject);
begin
  if cbTanggal1.Checked then
  begin
    VTglAwal1.Enabled:=cbTanggal1.Checked;
    vTglAkhir1.Enabled:=cbTanggal1.Checked;
    VTglAwal1.SetFocus;
  end
  else
    ECari1.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Opr.Open;
  vpertama:=True;
  if cbTanggal1.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal1.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir1.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Opr.FieldCount>=1) then
  begin
    if dbcField1.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_Opr.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand1.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari1.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari1.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand1.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari1.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari1.Text+''''
        end;
      end;
    end
    else
      if vOperand1.Caption='LIKE' then
         vfilter:=vfilter+dbcField1.Text+' like ''%'+ECari1.Text+'%'''
         else
           vfilter:=vfilter+dbcField1.Text+' = '''+ECari1.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_Opr.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by NIK';

  end;
  QBrowse_Opr.DisableControls;
  QBrowse_Opr.Close;
  QBrowse_Opr.SetVariable('myparam',vfilter+vorder);
  QBrowse_Opr.Open;
  QBrowse_Opr.EnableControls;

  QBrowseTotal_Opr.DisableControls;
  QBrowseTotal_Opr.Close;
  QBrowseTotal_Opr.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Opr.Open;
  QBrowseTotal_Opr.EnableControls;

  QTOT_Opr.DisableControls;
  QTOT_Opr.Close;
  QTOT_Opr.SetVariable('myparam',vfilter+vorder);
  QTOT_Opr.Open;
  QTOT_Opr.EnableControls;

  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_OprTOTAL.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_OprTOTAL_BS.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_OprTOTAL_BK.AsFloat);
  wwDBGrid1.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_OprTOTAL_PR.AsFloat);

end;

procedure TPotonganBS_OperatorFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{azmi}
  QBrowseTotal_Opr.Close;
  QBrowseTotal_Opr.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_OprTOTAL.AsFloat);
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_OprAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner1.Caption:='Record ke '+IntToStr(QBrowse_Opr.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Opr.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_OprCalcFields(DataSet: TDataSet);
begin
QBrowse_OprPEMOTONG_BS.AsFloat:=
QBrowse_OprLD.AsFloat+
QBrowse_OprLB.AsFloat+
QBrowse_OprLT.AsFloat+
QBrowse_OprLK.AsFloat+
QBrowse_OprPL.AsFloat+
QBrowse_OprLL.AsFloat+
QBrowse_OprLPT.AsFloat+
QBrowse_OprLRG.AsFloat+
QBrowse_OprWL.AsFloat+
QBrowse_OprCKK.AsFloat+
QBrowse_OprOJ.AsFloat+
QBrowse_OprCRT.AsFloat+
QBrowse_OprCAJ.AsFloat+
QBrowse_OprPD.AsFloat+
QBrowse_OprPKP.AsFloat+
QBrowse_OprNG.AsFloat+
QBrowse_OprBTB.AsFloat+
QBrowse_OprWP.AsFloat+
QBrowse_OprSC.AsFloat+
QBrowse_OprKP.AsFloat+
QBrowse_OprBO.AsFloat+
QBrowse_OprTCS.AsFloat+
QBrowse_OprSLL.AsFloat+
QBrowse_OprKS.AsFloat+
QBrowse_OprANR.AsFloat+
QBrowse_OprUTS.AsFloat+
QBrowse_OprKBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.BitBtn2Click(Sender: TObject);
begin
  if QBrowse_Opr.Active then
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

procedure TPotonganBS_OperatorFrm.wwDBGrid2TitleButtonClick(
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

procedure TPotonganBS_OperatorFrm.VTglAwal3Change(Sender: TObject);
begin
  vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir3Change(Sender: TObject);
begin
  if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis3Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_grup.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid3.FieldCount-1 do
    if UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL' then
      dbcField3.Items.Add(wwDBGrid3.Columns[i].FieldName);
end;

procedure TPotonganBS_OperatorFrm.vOperand3Click(Sender: TObject);
begin
  if vOperand3.Caption='LIKE' then
    vOperand3.Caption:='='
    else
      vOperand3.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal3Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Grup.Open;
  vpertama:=True;
  if cbTanggal3.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal3.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir3.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Grup.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid3.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_Grup.FieldByName(wwDBGrid3.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid3.Columns[i].FieldName)<>'TANGGAL') then
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
      if vOperand3.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_Grup.Active then
      vorder:=' order by '+wwDBGrid3.Columns[0].FieldName
      else
        vorder:=' order by GRUP';

  end;
  QBrowse_Grup.DisableControls;
  QBrowse_Grup.Close;
  QBrowse_Grup.SetVariable('myparam',vfilter+vorder);
  QBrowse_Grup.Open;
  QBrowse_Grup.EnableControls;

  QBrowseTotal_Grup.DisableControls;
  QBrowseTotal_Grup.Close;
  QBrowseTotal_Grup.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Grup.Open;
  QBrowseTotal_Grup.EnableControls;

  QTOT_Grup.DisableControls;
  QTOT_Grup.Close;
  QTOT_Grup.SetVariable('myparam',vfilter+vorder);
  QTOT_Grup.Open;
  QTOT_Grup.EnableControls;

  wwDBGrid3.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_GrupTOTAL.AsFloat);
  wwDBGrid3.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_GrupTOTAL_BS.AsFloat);
  wwDBGrid3.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_GrupTOTAL_BK.AsFloat);
  wwDBGrid3.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_GrupTOTAL_PR.AsFloat);
end;

procedure TPotonganBS_OperatorFrm.QBrowse_GrupAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner3.Caption:='Record ke '+IntToStr(QBrowse_Grup.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Grup.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_GrupCalcFields(
  DataSet: TDataSet);
begin
QBrowse_GrupPEMOTONG_BS.AsFloat:=
QBrowse_GrupLD.AsFloat+
QBrowse_GrupLB.AsFloat+
QBrowse_GrupLT.AsFloat+
QBrowse_GrupLK.AsFloat+
QBrowse_GrupPL.AsFloat+
QBrowse_GrupLL.AsFloat+
QBrowse_GrupLPT.AsFloat+
QBrowse_GrupLRG.AsFloat+
QBrowse_GrupWL.AsFloat+
QBrowse_GrupCKK.AsFloat+
QBrowse_GrupOJ.AsFloat+
QBrowse_GrupCRT.AsFloat+
QBrowse_GrupCAJ.AsFloat+
QBrowse_GrupPD.AsFloat+
QBrowse_GrupPKP.AsFloat+
QBrowse_GrupNG.AsFloat+
QBrowse_GrupBTB.AsFloat+
QBrowse_GrupWP.AsFloat+
QBrowse_GrupSC.AsFloat+
QBrowse_GrupKP.AsFloat+
QBrowse_GrupBO.AsFloat+
QBrowse_GrupTCS.AsFloat+
QBrowse_GrupSLL.AsFloat+
QBrowse_GrupKS.AsFloat+
QBrowse_GrupANR.AsFloat+
QBrowse_GrupUTS.AsFloat+
QBrowse_GrupKBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.VTglAwal4Change(Sender: TObject);
begin
  vTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir4Change(Sender: TObject);
begin
  if VTglAwal4.Date>vTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis4Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Kons.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid4.FieldCount-1 do
    if UpperCase(wwDBGrid4.Columns[i].FieldName)<>'TANGGAL' then
      dbcField4.Items.Add(wwDBGrid4.Columns[i].FieldName);

end;

procedure TPotonganBS_OperatorFrm.vOperand4Click(Sender: TObject);
begin
  if vOperand4.Caption='LIKE' then
    vOperand4.Caption:='='
    else
      vOperand4.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal4Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Kons.Open;
  vpertama:=True;
  if cbTanggal4.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal4.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir4.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Kons.FieldCount>=1) then
  begin
    if dbcField4.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid4.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse_Kons.FieldByName(wwDBGrid4.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid4.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand4.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid4.Columns[i].FieldName+' = '''+ECari4.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand4.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid4.Columns[i].FieldName+' like ''%'+ECari4.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid4.Columns[i].FieldName+' = '''+ECari4.Text+''''
        end;
      end;
    end
    else
      if vOperand4.Caption='LIKE' then
         vfilter:=vfilter+dbcField4.Text+' like ''%'+ECari4.Text+'%'''
         else
           vfilter:=vfilter+dbcField4.Text+' = '''+ECari4.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_Kons.Active then
      vorder:=' order by '+wwDBGrid4.Columns[0].FieldName
      else
        vorder:=' order by KONSTRUKSI';

  end;
  QBrowse_Kons.DisableControls;
  QBrowse_Kons.Close;
  QBrowse_Kons.SetVariable('myparam',vfilter+vorder);
  QBrowse_Kons.Open;
  QBrowse_Kons.EnableControls;

  QBrowseTotal_Kons.DisableControls;
  QBrowseTotal_Kons.Close;
  QBrowseTotal_Kons.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Kons.Open;
  QBrowseTotal_Kons.EnableControls;

  QTOT_Kons.DisableControls;
  QTOT_Kons.Close;
  QTOT_Kons.SetVariable('myparam',vfilter+vorder);
  QTOT_Kons.Open;
  QTOT_Kons.EnableControls;

  wwDBGrid4.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_KonsTOTAL.AsFloat);
  wwDBGrid4.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_KonsTOTAL_BS.AsFloat);
  wwDBGrid4.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_KonsTOTAL_BK.AsFloat);
  wwDBGrid4.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_KonsTOTAL_PR.AsFloat);
end;

procedure TPotonganBS_OperatorFrm.QBrowse_KonsAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner4.Caption:='Record ke '+IntToStr(QBrowse_Kons.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Kons.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.VTglAwal5Change(Sender: TObject);
begin
  vTglAkhir5.Date:=(VTglAwal5.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir5Change(Sender: TObject);
begin
  if VTglAwal5.Date>vTglAkhir5.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir5.Date:=VTglAwal5.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis5Click(Sender: TObject);
begin
  if cbOtomatis5.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid5.Options:=wwDBGrid5.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid5.Options:=wwDBGrid5.Options-[dgAlwaysShowSelection];
  ECari5.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.dbcField5Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Kons2.Active) and (dbcField5.Items.Count=1) then
  for i:=0 to wwDBGrid5.FieldCount-1 do
    if UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TANGGAL' then
      dbcField5.Items.Add(wwDBGrid5.Columns[i].FieldName);

end;

procedure TPotonganBS_OperatorFrm.vOperand5Click(Sender: TObject);
begin
  if vOperand5.Caption='LIKE' then
    vOperand5.Caption:='='
    else
      vOperand5.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal5Click(Sender: TObject);
begin
  if cbTanggal5.Checked then
  begin
    VTglAwal5.Enabled:=cbTanggal5.Checked;
    vTglAkhir5.Enabled:=cbTanggal5.Checked;
    VTglAwal5.SetFocus;
  end
  else
    ECari5.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.BitBtn8Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Kons2.Open;
  vpertama:=True;
  if cbTanggal5.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal5.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir5.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Kons2.FieldCount>=1) then
  begin
    if dbcField5.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid5.Selected.Count-1 do
      begin
        if (QBrowse_Kons2.FieldByName(wwDBGrid5.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid5.Columns[i].FieldName)<>'TANGGAL') then
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
    if QBrowse_Kons2.Active then
      vorder:=' order by '+wwDBGrid5.Columns[0].FieldName
      else
        vorder:=' order by KONSTRUKSI';

  end;
  QBrowse_Kons2.DisableControls;
  QBrowse_Kons2.Close;
  QBrowse_Kons2.SetVariable('myparam',vfilter+vorder);
  QBrowse_Kons2.Open;
  QBrowse_Kons2.EnableControls;

  QBrowseTotal_Kons2.DisableControls;
  QBrowseTotal_Kons2.Close;
  QBrowseTotal_Kons2.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Kons2.Open;
  QBrowseTotal_Kons2.EnableControls;

  QTOT_Kons2.DisableControls;
  QTOT_Kons2.Close;
  QTOT_Kons2.SetVariable('myparam',vfilter+vorder);
  QTOT_Kons2.Open;
  QTOT_Kons2.EnableControls;

  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_Kons2TOTAL.AsFloat);
  wwDBGrid5.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_Kons2TOTAL_BS.AsFloat);
  wwDBGrid5.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_Kons2TOTAL_BK.AsFloat);
  wwDBGrid5.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_Kons2TOTAL_PR.AsFloat);


end;

procedure TPotonganBS_OperatorFrm.QBrowse_Kons2AfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner5.Caption:='Record ke '+IntToStr(QBrowse_Kons2.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Kons2.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_KonsCalcFields(
  DataSet: TDataSet);
begin
QBrowse_KonsPEMOTONG_BS.AsFloat:=
QBrowse_KonsLD.AsFloat+
QBrowse_KonsLB.AsFloat+
QBrowse_KonsLT.AsFloat+
QBrowse_KonsLK.AsFloat+
QBrowse_KonsPL.AsFloat+
QBrowse_KonsLL.AsFloat+
QBrowse_KonsLPT.AsFloat+
QBrowse_KonsLRG.AsFloat+
QBrowse_KonsWL.AsFloat+
QBrowse_KonsCKK.AsFloat+
QBrowse_KonsOJ.AsFloat+
QBrowse_KonsCRT.AsFloat+
QBrowse_KonsCAJ.AsFloat+
QBrowse_KonsPD.AsFloat+
QBrowse_KonsPKP.AsFloat+
QBrowse_KonsNG.AsFloat+
QBrowse_KonsBTB.AsFloat+
QBrowse_KonsWP.AsFloat+
QBrowse_KonsSC.AsFloat+
QBrowse_KonsKP.AsFloat+
QBrowse_KonsBO.AsFloat+
QBrowse_KonsTCS.AsFloat+
QBrowse_KonsSLL.AsFloat+
QBrowse_KonsKS.AsFloat+
QBrowse_KonsANR.AsFloat+
QBrowse_KonsUTS.AsFloat+
QBrowse_KonsKBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.QBrowse_Kons2CalcFields(
  DataSet: TDataSet);
begin
QBrowse_Kons2PEMOTONG_BS.AsFloat:=
QBrowse_Kons2LD.AsFloat+
QBrowse_Kons2LB.AsFloat+
QBrowse_Kons2LT.AsFloat+
QBrowse_Kons2LK.AsFloat+
QBrowse_Kons2PL.AsFloat+
QBrowse_Kons2LL.AsFloat+
QBrowse_Kons2LPT.AsFloat+
QBrowse_Kons2LRG.AsFloat+
QBrowse_Kons2WL.AsFloat+
QBrowse_Kons2CKK.AsFloat+
QBrowse_Kons2OJ.AsFloat+
QBrowse_Kons2CRT.AsFloat+
QBrowse_Kons2CAJ.AsFloat+
QBrowse_Kons2PD.AsFloat+
QBrowse_Kons2PKP.AsFloat+
QBrowse_Kons2NG.AsFloat+
QBrowse_Kons2BTB.AsFloat+
QBrowse_Kons2WP.AsFloat+
QBrowse_Kons2SC.AsFloat+
QBrowse_Kons2KP.AsFloat+
QBrowse_Kons2BO.AsFloat+
QBrowse_Kons2TCS.AsFloat+
QBrowse_Kons2SLL.AsFloat+
QBrowse_Kons2KS.AsFloat+
QBrowse_Kons2ANR.AsFloat+
QBrowse_Kons2UTS.AsFloat+
QBrowse_Kons2KBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.BitBtn7Click(Sender: TObject);
begin
  if QBrowse_Kons.Active then
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

procedure TPotonganBS_OperatorFrm.BitBtn9Click(Sender: TObject);
begin
  if QBrowse_Kons2.Active then
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

procedure TPotonganBS_OperatorFrm.VTglAwal6Change(Sender: TObject);
begin
  vTglAkhir6.Date:=(VTglAwal6.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir6Change(Sender: TObject);
begin
  if VTglAwal6.Date>vTglAkhir6.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir6.Date:=VTglAwal6.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis6Click(Sender: TObject);
begin
  if cbOtomatis6.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid6.Options:=wwDBGrid6.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid6.Options:=wwDBGrid6.Options-[dgAlwaysShowSelection];
  ECari6.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.dbcField6Enter(Sender: TObject);

var
  i : Word;
begin
  if (QBrowse_Mesin.Active) and (dbcField6.Items.Count=1) then
  for i:=0 to wwDBGrid6.FieldCount-1 do
    if UpperCase(wwDBGrid6.Columns[i].FieldName)<>'TANGGAL' then
      dbcField6.Items.Add(wwDBGrid6.Columns[i].FieldName);
end;

procedure TPotonganBS_OperatorFrm.vOperand6Click(Sender: TObject);
begin
  if vOperand6.Caption='LIKE' then
    vOperand6.Caption:='='
    else
      vOperand6.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal6Click(Sender: TObject);
begin
  if cbTanggal6.Checked then
  begin
    VTglAwal6.Enabled:=cbTanggal6.Checked;
    vTglAkhir6.Enabled:=cbTanggal6.Checked;
    VTglAwal6.SetFocus;
  end
  else
    ECari6.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.BitBtn10Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Mesin.Open;
  vpertama:=True;
  if cbTanggal6.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal6.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir6.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Mesin.FieldCount>=1) then
  begin
    if dbcField6.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid6.Selected.Count-1 do
      begin
        if (QBrowse_Mesin.FieldByName(wwDBGrid6.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid6.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand6.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid6.Columns[i].FieldName+' like ''%'+ECari6.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid6.Columns[i].FieldName+' = '''+ECari6.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand6.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid6.Columns[i].FieldName+' like ''%'+ECari6.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid6.Columns[i].FieldName+' = '''+ECari6.Text+''''
        end;
      end;
    end
    else
      if vOperand6.Caption='LIKE' then
         vfilter:=vfilter+dbcField6.Text+' like ''%'+ECari6.Text+'%'''
         else
           vfilter:=vfilter+dbcField6.Text+' = '''+ECari6.Text+'''';
    vfilter:=vfilter+')';
    if QBrowse_Mesin.Active then
      vorder:=' order by '+wwDBGrid6.Columns[0].FieldName
      else
        vorder:=' order by LOKASI';

  end;
  QBrowse_Mesin.DisableControls;
  QBrowse_Mesin.Close;
  QBrowse_Mesin.SetVariable('myparam',vfilter+vorder);
  QBrowse_Mesin.Open;
  QBrowse_Mesin.EnableControls;

  QBrowseTotal_Mesin.DisableControls;
  QBrowseTotal_Mesin.Close;
  QBrowseTotal_Mesin.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Mesin.Open;
  QBrowseTotal_Mesin.EnableControls;

  QTOT_Mesin.DisableControls;
  QTOT_Mesin.Close;
  QTOT_Mesin.SetVariable('myparam',vfilter+vorder);
  QTOT_Mesin.Open;
  QTOT_Mesin.EnableControls;

  wwDBGrid6.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_MesinTOTAL.AsFloat);
  wwDBGrid6.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_MesinTOTAL_BS.AsFloat);
  wwDBGrid6.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_MesinTOTAL_BK.AsFloat);
  wwDBGrid6.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_MesinTOTAL_PR.AsFloat);
end;

procedure TPotonganBS_OperatorFrm.QBrowse_MesinAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner6.Caption:='Record ke '+IntToStr(QBrowse_Mesin.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Mesin.RecordCount)+' Records';
{azmi}

end;

procedure TPotonganBS_OperatorFrm.QBrowse_MesinCalcFields(
  DataSet: TDataSet);
begin
QBrowse_MesinPEMOTONG_BS.AsFloat:=
QBrowse_MesinLD.AsFloat+
QBrowse_MesinLB.AsFloat+
QBrowse_MesinLT.AsFloat+
QBrowse_MesinLK.AsFloat+
QBrowse_MesinPL.AsFloat+
QBrowse_MesinLL.AsFloat+
QBrowse_MesinLPT.AsFloat+
QBrowse_MesinLRG.AsFloat+
QBrowse_MesinWL.AsFloat+
QBrowse_MesinCKK.AsFloat+
QBrowse_MesinOJ.AsFloat+
QBrowse_MesinCRT.AsFloat+
QBrowse_MesinCAJ.AsFloat+
QBrowse_MesinPD.AsFloat+
QBrowse_MesinPKP.AsFloat+
QBrowse_MesinNG.AsFloat+
QBrowse_MesinBTB.AsFloat+
QBrowse_MesinWP.AsFloat+
QBrowse_MesinSC.AsFloat+
QBrowse_MesinKP.AsFloat+
QBrowse_MesinBO.AsFloat+
QBrowse_MesinTCS.AsFloat+
QBrowse_MesinSLL.AsFloat+
QBrowse_MesinKS.AsFloat+
QBrowse_MesinANR.AsFloat+
QBrowse_MesinUTS.AsFloat+
QBrowse_MesinKBR.AsFloat;
end;

procedure TPotonganBS_OperatorFrm.BitBtn11Click(Sender: TObject);
begin
  if QBrowse_Mesin.Active then
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

procedure TPotonganBS_OperatorFrm.VTglAwal7Change(Sender: TObject);
begin
  vTglAkhir7.Date:=(VTglAwal7.Date);
end;

procedure TPotonganBS_OperatorFrm.VTglAkhir7Change(Sender: TObject);
begin
  if VTglAwal7.Date>vTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TPotonganBS_OperatorFrm.cbOtomatis7Click(Sender: TObject);
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

procedure TPotonganBS_OperatorFrm.dbcField7Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse_Formasi.Active) and (dbcField7.Items.Count=1) then
  for i:=0 to wwDBGrid7.FieldCount-1 do
    if UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL' then
      dbcField7.Items.Add(wwDBGrid7.Columns[i].FieldName);
end;

procedure TPotonganBS_OperatorFrm.vOperand7Click(Sender: TObject);
begin
  if vOperand7.Caption='LIKE' then
    vOperand7.Caption:='='
    else
      vOperand7.Caption:='LIKE';
end;

procedure TPotonganBS_OperatorFrm.cbTanggal7Click(Sender: TObject);
begin
  if cbTanggal7.Checked then
  begin
    VTglAwal7.Enabled:=cbTanggal7.Checked;
    vTglAkhir7.Enabled:=cbTanggal7.Checked;
    VTglAwal7.SetFocus;
  end
  else
    ECari7.SetFocus;
end;

procedure TPotonganBS_OperatorFrm.BitBtn12Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QBrowse_Formasi.Open;
  vpertama:=True;
  if cbTanggal7.Checked then
    vfilter:=' where (TANGGAL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal7.Date)+''',''dd/mm/yyyy'') and TANGGAL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir7.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse_Formasi.FieldCount>=1) then
  begin
    if dbcField7.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid7.Selected.Count-1 do
      begin
        if (QBrowse_Formasi.FieldByName(wwDBGrid7.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid7.Columns[i].FieldName)<>'TANGGAL') then
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
    if QBrowse_Formasi.Active then
      vorder:=' order by '+wwDBGrid7.Columns[0].FieldName
      else
        vorder:=' order by FORMASI';

  end;
  QBrowse_Formasi.DisableControls;
  QBrowse_Formasi.Close;
  QBrowse_Formasi.SetVariable('myparam',vfilter+vorder);
  QBrowse_Formasi.Open;
  QBrowse_Formasi.EnableControls;

  QBrowseTotal_Formasi.DisableControls;
  QBrowseTotal_Formasi.Close;
  QBrowseTotal_Formasi.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal_Formasi.Open;
  QBrowseTotal_Formasi.EnableControls;

  QTOT_Formasi.DisableControls;
  QTOT_Formasi.Close;
  QTOT_Formasi.SetVariable('myparam',vfilter+vorder);
  QTOT_Formasi.Open;
  QTOT_Formasi.EnableControls;

  wwDBGrid7.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotal_FormasiTOTAL.AsFloat);
  wwDBGrid7.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_FormasiTOTAL_BS.AsFloat);
  wwDBGrid7.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_FormasiTOTAL_BK.AsFloat);
  wwDBGrid7.ColumnByName('PR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTOT_FormasiTOTAL_PR.AsFloat);
end;

procedure TPotonganBS_OperatorFrm.QBrowse_FormasiAfterScroll(
  DataSet: TDataSet);
begin
{azmi}
    LabelBanner7.Caption:='Record ke '+IntToStr(QBrowse_Formasi.RecNo)+' dari '+FormatFloat('#,#',QBrowse_Formasi.RecordCount)+' Records';
{azmi}
end;

procedure TPotonganBS_OperatorFrm.QBrowse_FormasiCalcFields(
  DataSet: TDataSet);
begin
QBrowse_FormasiPEMOTONG_BS.AsFloat:=
QBrowse_FormasiLD.AsFloat+
QBrowse_FormasiLB.AsFloat+
QBrowse_FormasiLT.AsFloat+
QBrowse_FormasiLK.AsFloat+
QBrowse_FormasiPL.AsFloat+
QBrowse_FormasiLL.AsFloat+
QBrowse_FormasiLPT.AsFloat+
QBrowse_FormasiLRG.AsFloat+
QBrowse_FormasiWL.AsFloat+
QBrowse_FormasiCKK.AsFloat+
QBrowse_FormasiOJ.AsFloat+
QBrowse_FormasiCRT.AsFloat+
QBrowse_FormasiCAJ.AsFloat+
QBrowse_FormasiPD.AsFloat+
QBrowse_FormasiPKP.AsFloat+
QBrowse_FormasiNG.AsFloat+
QBrowse_FormasiBTB.AsFloat+
QBrowse_FormasiWP.AsFloat+
QBrowse_FormasiSC.AsFloat+
QBrowse_FormasiKP.AsFloat+
QBrowse_FormasiBO.AsFloat+
QBrowse_FormasiTCS.AsFloat+
QBrowse_FormasiSLL.AsFloat+
QBrowse_FormasiKS.AsFloat+
QBrowse_FormasiANR.AsFloat+
QBrowse_FormasiUTS.AsFloat+
QBrowse_FormasiKBR.AsFloat;
end;

end.
