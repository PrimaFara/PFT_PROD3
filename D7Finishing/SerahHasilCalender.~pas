unit SerahHasilCalender;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle;

type
  TSerahHasilCalenderFrm = class(TForm)
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
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseTotal: TOracleDataSet;
    QTotal: TOracleDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    LookGrup: TwwDBComboBox;
    wwDBEdit1: TwwDBEdit;
    Label10: TLabel;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_ORDER: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterPEMESAN: TStringField;
    QMasterMESIN: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterISPOST: TStringField;
    QMasterSTATUS: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterNO_REFF: TStringField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailQTY_GULUNG: TFloatField;
    QDetailQTY_POTONG: TFloatField;
    QDetailQTY_COUNTER: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailMESIN: TStringField;
    QDetailGRUP: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailPEMESAN: TStringField;
    QDetailKD_SUB_LOKASI: TStringField;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_ORDER: TStringField;
    QBrowseNO_REFF: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowsePEMESAN: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseNO_REG_DETAIL: TFloatField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseGROUP_DET: TStringField;
    QDetailKD_SUB_LOKASI2: TStringField;
    LookAmbil: TwwDBLookupComboDlg;
    QAmbil: TOracleDataSet;
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
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QDetailQTY_COUNTER2: TFloatField;
    QBrowseQTY_COUNTER2: TFloatField;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglakhir2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BtnExport2: TBitBtn;
    BitBtn6: TBitBtn;
    Label20: TLabel;
    QPerKonstruksi_Tot: TOracleDataSet;
    QPerKonstruksi_TotGULUNG: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiGULUNG: TFloatField;
    QPerKonstruksiPOTONG: TFloatField;
    DsPerKonstruksi: TwwDataSource;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_RESEP: TStringField;
    QBrowseMESIN_TENUN: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseSATUAN: TStringField;
    QDetailSATUAN: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QDetailKD_TRANSAKSI: TStringField;
    QDetailNO_DESAIN: TStringField;
    QDetailNO_PO: TStringField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape7: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape19: TQRShape;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText21: TQRDBText;
    QRBand5: TQRBand;
    QRDBText23: TQRDBText;
    QRShape12: TQRShape;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRShape10: TQRShape;
    QRShape3: TQRShape;
    QPerKonstruksiKODI: TFloatField;
    QPerKonstruksi_TotKODI: TFloatField;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QDetailQTY_RE: TFloatField;
    QDetailQTY_SELISIH: TFloatField;
    QBrowseQTY_RE: TFloatField;
    QBrowseQTY_SELISIH: TFloatField;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
    QTotalQTY_RE: TFloatField;
    QTotalQTY_SELISIH: TFloatField;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalPOTONG: TFloatField;
    QBrowseTotalQTY_RE: TFloatField;
    QBrowseTotalQTY_SELISIH: TFloatField;
    TabSheet4: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    Label11: TLabel;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    VTglakhir3: TwwDBDateTimePicker;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    BtnExport3: TBitBtn;
    BitBtn8: TBitBtn;
    DsPerKode_Prod: TwwDataSource;
    QPerKode_Prod: TOracleDataSet;
    QPerKode_ProdKD_PRODUKSI: TStringField;
    QPerKode_ProdGULUNG: TFloatField;
    QPerKode_ProdPOTONG: TFloatField;
    QPerKode_ProdKODI: TFloatField;
    QPerKode_Prod_Tot: TOracleDataSet;
    QPerKode_Prod_TotGULUNG: TFloatField;
    QPerKode_Prod_TotPOTONG: TFloatField;
    QPerKode_Prod_TotKODI: TFloatField;
    Look_KP: TwwDBLookupComboDlg;
    wwDBComboBox1: TwwDBLookupComboDlg;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QLookKP: TOracleDataSet;
    QLookKPKD_PRODUKSI: TStringField;
    QLookKPSTOK: TFloatField;
    QLookKPKD_KONSTRUKSI: TStringField;
    QLookKPKONSTRUKSI: TStringField;
    Button1: TButton;
    QUnpost: TOracleQuery;
    QAmbilNO_NOTA: TStringField;
    QAmbilNO_REG: TFloatField;
    QAmbilTGL: TDateTimeField;
    QAmbilNO_ORDER: TStringField;
    QAmbilNO_REFF: TStringField;
    QAmbilKETERANGAN: TStringField;
    QAmbilPEMESAN: TStringField;
    QAmbilGRUP: TStringField;
    QAmbilSHIFT: TStringField;
    QAmbilKERETA: TStringField;
    QAmbilKD_TRANSAKSI: TStringField;
    QAmbilISPOST: TStringField;
    QAmbilSTATUS: TStringField;
    QAmbilTGL_INSERT: TDateTimeField;
    QAmbilOPR_INSERT: TStringField;
    QAmbilMUTU: TStringField;
    QAmbilNO_REG_DETAIL: TFloatField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilKONSTRUKSI: TStringField;
    QAmbilMESIN: TStringField;
    QAmbilJENIS: TStringField;
    QAmbilTUJUAN: TStringField;
    QAmbilKD_CORAK: TStringField;
    QAmbilCORAK: TStringField;
    QAmbilNO_RESEP: TStringField;
    QAmbilQTY_GULUNG: TFloatField;
    QAmbilQTY_POTONG: TFloatField;
    QAmbilQTY_COUNTER: TFloatField;
    QAmbilQTY_KONVERSI: TFloatField;
    QAmbilKET_DETAIL: TStringField;
    QAmbilTGL_INSPECT: TDateTimeField;
    QAmbilGROUP_DET: TStringField;
    QAmbilKD_PRODUKSI: TStringField;
    QAmbilMESIN_DET: TStringField;
    QAmbilMESIN_TENUN_DET: TStringField;
    QAmbilSATUAN: TStringField;
    Label13: TLabel;
    ECari_Order: TEdit;
    BitBtn4: TBitBtn;
    QAmbilData: TOracleQuery;
    Label14: TLabel;
    wwDBEdit2: TwwDBEdit;
    QDetailNO_REFF: TStringField;
    VRep: TCheckBox;
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
    procedure LookKonClick(Sender: TObject);
    procedure LookKonEnter(Sender: TObject);
    procedure LookKonCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
    procedure LookAmbilEnter(Sender: TObject);
    procedure LookAmbilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDetailQTY_REChange(Sender: TField);
    procedure VTglAwal3Change(Sender: TObject);
    procedure VTglakhir3Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPEnter(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailBeforeInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  SerahHasilCalenderFrm: TSerahHasilCalenderFrm;

implementation

uses DM, Math, FinishOpening;

{$R *.dfm}

procedure TSerahHasilCalenderFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  SerahHasilCalenderFrm:=Nil;
end;

procedure TSerahHasilCalenderFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TSerahHasilCalenderFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahHasilCalenderFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','908');
 QTransaksi.Open;
 SerahHasilCalenderFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TSerahHasilCalenderFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TSerahHasilCalenderFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TSerahHasilCalenderFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TSerahHasilCalenderFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;
end;

procedure TSerahHasilCalenderFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TSerahHasilCalenderFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TSerahHasilCalenderFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QDetailNO_REG.AsString:=QMasterNO_REG.AsString;
QDetailKD_SUB_LOKASI.AsString:='77-10000';
QDetailKD_SUB_LOKASI2.AsString:='78-00000';

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TSerahHasilCalenderFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TSerahHasilCalenderFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TSerahHasilCalenderFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TSerahHasilCalenderFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TSerahHasilCalenderFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TSerahHasilCalenderFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TSerahHasilCalenderFrm.cbOtomatisClick(Sender: TObject);
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

procedure TSerahHasilCalenderFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TSerahHasilCalenderFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSerahHasilCalenderFrm.cbTanggalClick(Sender: TObject);
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

procedure TSerahHasilCalenderFrm.BitBtn3Click(Sender: TObject);
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
        vorder:=' order by no_nota, no_order';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('kd_transaksi','908');
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('kd_transaksi','908');
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalGULUNG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_RE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY_RE.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_SELISIH').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY_SELISIH.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPARAH.AsFloat);

end;

procedure TSerahHasilCalenderFrm.BtnExportClick(Sender: TObject);
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

procedure TSerahHasilCalenderFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TSerahHasilCalenderFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);

         VRep.Checked := false;
end;

procedure TSerahHasilCalenderFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY_RE').FooterValue:=FormatFloat('#.#,#',QTotalQTY_RE.AsFloat);
  //wwDBGrid1.ColumnByName('QTY_SELISIH').FooterValue:=FormatFloat('#.#,#',QTotalQTY_SELISIH.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahHasilCalenderFrm.FormShow(Sender: TObject);
begin

  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal2.Date:=Trunc(date());

  VTglakhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglakhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglakhir2.Date:=Trunc(date());

end;

procedure TSerahHasilCalenderFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TSerahHasilCalenderFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahHasilCalenderFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    //QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    //QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TSerahHasilCalenderFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahHasilCalenderFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahHasilCalenderFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TSerahHasilCalenderFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahHasilCalenderFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TSerahHasilCalenderFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='OUT';
end;

procedure TSerahHasilCalenderFrm.LookKonClick(Sender: TObject);
begin
DMFrm.QKonstruksi.Open;
end;

procedure TSerahHasilCalenderFrm.LookKonEnter(Sender: TObject);
begin
DMFrm.QKonstruksi.Open;
end;

procedure TSerahHasilCalenderFrm.LookKonCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
//QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
//QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
//DBText7.Caption := DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TSerahHasilCalenderFrm.wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
begin
  QTotal.DisableControls;
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  QTotal.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('#.#,#',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahHasilCalenderFrm.LookAmbilEnter(Sender: TObject);
begin
QAmbil.Open;
end;

procedure TSerahHasilCalenderFrm.LookAmbilCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
 QDetailNO_ORDER.AsString:=QAmbilNO_ORDER.AsString;
 QDetailKD_KONSTRUKSI.AsString:=QAmbilKD_KONSTRUKSI.AsString;
 QDetailKONSTRUKSI.AsString:=QAmbilKONSTRUKSI.AsString;
 QDetailQTY_GULUNG.AsString:=QAmbilQTY_GULUNG.AsString;
 QDetailQTY_POTONG.AsString:=QAmbilQTY_POTONG.AsString;
 //QDetailQTY_COUNTER.AsString:=QAmbilQTY_COUNTER.AsString;
 QDetailKETERANGAN.AsString:=QAmbilKET_DETAIL.AsString;
 //QDetailGRUP.AsString:=QAmbilGROUP_DET.AsString;
 QDetailPEMESAN.AsString:=QAmbilPEMESAN.AsString;
 //QDetailMESIN_TENUN.AsString:=QAmbilMESIN_TENUN.AsString;
 //QDetailKD_CORAK.AsString:=QAmbilKD_CORAK.AsString;
 //QDetailCORAK.AsString:=QAmbilCORAK.AsString;
 //QDetailNO_RESEP.AsString:=QAmbilNO_RESEP.AsString;
 QDetailKD_PRODUKSI.AsString:=QAmbilKD_PRODUKSI.AsString;
 //QDetailNO_MESIN.AsString:=QAmbilNO_MESIN.AsString;
 //QDetailSATUAN.AsString:=QAmbilSATUAN.AsString;
end;

procedure TSerahHasilCalenderFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TSerahHasilCalenderFrm.VTglakhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TSerahHasilCalenderFrm.BitBtn5Click(Sender: TObject);
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
QPerKonstruksi.Close;
QPerKonstruksi_Tot.Close;
abort;
end
else
QPerKonstruksi.DisableControls;
  QPerKonstruksi.Close;
  QPerKonstruksi.SetVariable('pawal',VTglAwal2.Date);
  QPerKonstruksi.SetVariable('pakhir',VTglakhir2.Date);
  QPerKonstruksi.Open;

  QPerKonstruksi_Tot.Close;
  QPerKonstruksi_Tot.SetVariable('pawal',VTglAwal2.Date);
  QPerKonstruksi_Tot.SetVariable('pakhir',VTglakhir2.Date);
  QPerKonstruksi_Tot.Open;

  QPerKonstruksi.EnableControls;
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerKonstruksi_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotPOTONG.AsFloat);


end;

procedure TSerahHasilCalenderFrm.BtnExport2Click(Sender: TObject);
begin
if QPerKonstruksi.Active then
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

procedure TSerahHasilCalenderFrm.BitBtn6Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep2.Preview
   //else
     //QuickRep1.Print;
end;

procedure TSerahHasilCalenderFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// QRLabel9.Caption:='(Per : '+VTglAwal2.Text+' s/d '+VTglakhir2.Text+')';
end;

procedure TSerahHasilCalenderFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TSerahHasilCalenderFrm.QDetailQTY_REChange(Sender: TField);
begin
  QDetailQTY_SELISIH.AsFloat:=QDetailQTY_POTONG.AsFloat-QDetailQTY_RE.AsFloat;
end;

procedure TSerahHasilCalenderFrm.VTglAwal3Change(Sender: TObject);
begin
VTglakhir3.Date:=(VTglAwal3.Date);
end;

procedure TSerahHasilCalenderFrm.VTglakhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>VTglakhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TSerahHasilCalenderFrm.BitBtn7Click(Sender: TObject);
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
QPerKode_Prod.Close;
QPerKode_Prod_Tot.Close;
abort;
end
else
  QPerKode_Prod.DisableControls;
  QPerKode_Prod.Close;
  QPerKode_Prod.SetVariable('pawal',VTglAwal3.Date);
  QPerKode_Prod.SetVariable('pakhir',VTglakhir3.Date);
  QPerKode_Prod.Open;

  QPerKode_Prod_Tot.Close;
  QPerKode_Prod_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKode_Prod_Tot.SetVariable('pakhir',VTglakhir3.Date);
  QPerKode_Prod_Tot.Open;

  QPerKode_Prod.EnableControls;
  wwDBGrid3.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPerKode_Prod_TotGULUNG.AsFloat);
  wwDBGrid3.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKode_Prod_TotPOTONG.AsFloat);

end;

procedure TSerahHasilCalenderFrm.BtnExport3Click(Sender: TObject);
begin
if QPerKode_Prod.Active then
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

procedure TSerahHasilCalenderFrm.Look_KPClick(Sender: TObject);
begin
//  DMFrm.QKonstruksi_finish.Open;

end;

procedure TSerahHasilCalenderFrm.Look_KPEnter(Sender: TObject);
begin
//  DMFrm.QKonstruksi_finish.Open;
QLookKp.Close;
QLookKp.SetVariable('tgl',wwDBDateTimePicker1.Date);
QLookKp.Open;
end;

procedure TSerahHasilCalenderFrm.Look_KPCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=QLookKpKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=QLookKpKONSTRUKSI.AsString;
    QDetailKD_PRODUKSI.AsString:=QLookKpKD_PRODUKSI.AsString;
    QDetailQTY_POTONG.AsFloat:= 0;    QDetailQTY_GULUNG.AsFloat:= 0;
end;

procedure TSerahHasilCalenderFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TSerahHasilCalenderFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TSerahHasilCalenderFrm.QDetailBeforeInsert(DataSet: TDataSet);
begin
if QDetailQTY_POTONG.AsFloat > QLookKPSTOK.AsFloat then
  begin
    ShowMessage('Kelebihan JHOOOONNN !!!!');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TSerahHasilCalenderFrm.Button1Click(Sender: TObject);
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

procedure TSerahHasilCalenderFrm.BitBtn4Click(Sender: TObject);
begin
  if wwDBDateTimePicker1.DateTime <> 0 then
  begin
    // Jika wwDBDateTimePicker1 diisi, jalankan kode berikut
    QMaster.Edit;
    QMaster.Post;
    QDetailTGL_INSERT.AsDateTime := QMasterTGL_INSERT.AsDateTime;
    QDetailOPR_INSERT.AsString := QMasterOPR_INSERT.AsString;
    QAmbilData.Close;
    QAmbilData.SetVariable('QNO_REG', QMasterNO_REG.AsInteger);
    QAmbilData.SetVariable('QNO_NOTA', ECari_Order.Text);

    if VRep.Checked = true then
    begin
      QAmbilData.SetVariable('CEK', '1');
    end
    else if VRep.Checked = false then
    begin
      QAmbilData.SetVariable('CEK', '0');
    end;

    QAmbilData.Execute;
    QDetail.Close;
    QDetail.Open;
  end
  else
  begin
    // Jika belum diisi, tampilkan peringatan
    ShowMessage('Tanggal belum diisi! Silahkan Klik Tombol Tambah dan Isi Tanggalnya!');
  end;
end;

end.
