unit SerahKeKemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, jpeg;

type
  TSerahKeKemasFrm = class(TForm)
    PanelLeft: TPanel;
    PanelRight: TPanel;
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
    BitBtn2: TBitBtn;
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
    Panel1: TPanel;
    Panel2: TPanel;
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
    Label10: TLabel;
    wwDBEdit1: TwwDBEdit;
    LookGrup: TwwDBComboBox;
    LookKonstruksi: TwwDBLookupComboDlg;
    LookCorak: TwwDBLookupComboDlg;
    Label11: TLabel;
    LookKon: TwwDBLookupComboDlg;
    wwDBComboBox3: TwwDBComboBox;
    Label12: TLabel;
    wwDBEdit2: TwwDBEdit;
    DBText7: TDBText;
    wwDBEdit3: TwwDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape13: TQRShape;
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
    QRBand11: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape18: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    VTglAwal2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BtnExport2: TBitBtn;
    Label20: TLabel;
    dsQPer_Hari: TwwDataSource;
    BitBtn6: TBitBtn;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    Label16: TLabel;
    Label17: TLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText14: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand5: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText23: TQRDBText;
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
    QRLabel30: TQRLabel;
    QRDBText24: TQRDBText;
    VTglakhir2: TwwDBDateTimePicker;
    Label18: TLabel;
    QBrowseKERETA: TStringField;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QBrowseJENIS: TStringField;
    QBrowseSATUAN: TStringField;
    QMesin: TOracleDataSet;
    QMesinKD_MESIN: TStringField;
    QMesinNAMA_MESIN: TStringField;
    QMesinKELOMPOK: TStringField;
    dsQMesin: TwwDataSource;
    QRLabel13: TQRLabel;
    Label19: TLabel;
    DBText8: TDBText;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    LookAmbil: TwwDBLookupComboDlg;
    QAmbil: TOracleDataSet;
    LookSatuan: TwwDBComboBox;
    Label21: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    QProcmeter: TOracleQuery;
    QPerKonstruksi_M: TOracleDataSet;
    dsQPerKonstruksi_M: TwwDataSource;
    QRShape1: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRDBText25: TQRDBText;
    QRShape20: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QPerKonstruksi_M_Tot: TOracleDataSet;
    Label22: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label23: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
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
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailGRUP: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailPEMESAN: TStringField;
    QDetailSATUAN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailTGL_INSPECT: TDateTimeField;
    QDetailNO_PO: TStringField;
    QDetailNO_DESAIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    LookKdProd: TwwDBLookupComboDlg;
    QKdProd: TOracleDataSet;
    QKdProdKD_PRODUKSI: TStringField;
    QKdProdKD_KONSTRUKSI: TStringField;
    QKdProdSUB_KELOMPOK: TStringField;
    LookMesin: TwwDBComboBox;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_ORDER: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterPEMESAN: TStringField;
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
    QMasterKERETA: TStringField;
    QMasterKD_KONSTRUKSI: TStringField;
    QMasterKONSTRUKSI: TStringField;
    QMasterNO_REFF: TStringField;
    QMasterQTY_GULUNG: TFloatField;
    QMasterJENIS: TStringField;
    QMasterSATUAN: TStringField;
    QMasterKD_CORAK: TStringField;
    QMasterCORAK: TStringField;
    QMasterKD_PRODUKSI: TStringField;
    QAmbilKD_PRODUKSI: TStringField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilSUB_KELOMPOK: TStringField;
    QTotalKODI: TFloatField;
    QPerKonstruksi_M_TotQTY_GULUNG: TFloatField;
    QPerKonstruksi_MKD_PRODUKSI: TStringField;
    QPerKonstruksi_MKONSTRUKSI: TStringField;
    QPerKonstruksi_MQTY_GULUNG: TFloatField;
    QBrowseTUJUAN: TStringField;
    Label24: TLabel;
    wwDBComboBox6: TwwDBComboBox;
    QTotalPOTONG: TFloatField;
    QBrowseTotalKODI: TFloatField;
    QRImage1: TQRImage;
    QRLabel96: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel4: TQRLabel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    Button1: TButton;
    QUnpost: TOracleQuery;
    LookKereta: TwwDBLookupCombo;
    QBrowseKereta2: TOracleDataSet;
    QBrowseKeretaKD_KERETA: TStringField;
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
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QPer_HariAfterScroll(DataSet: TDataSet);
    procedure look_mesinEnter(Sender: TObject);
    procedure Look_CorakEnter(Sender: TObject);
    procedure LookMsnTenunEnter(Sender: TObject);
    procedure LookMsnTenunClick(Sender: TObject);
    procedure LookMsnTenunCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn7Click(Sender: TObject);
    procedure LookAmbilClick(Sender: TObject);
    procedure LookAmbilEnter(Sender: TObject);
    procedure LookAmbilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAmbilUserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure LookKdProdClick(Sender: TObject);
    procedure LookKdProdCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKdProdEnter(Sender: TObject);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure LookKeretaEnter(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
SerahKeKemasFrm: TSerahKeKemasFrm;

implementation

uses DM, Math, FinishOpening, HasilInspectKeFolding, SerahKeOpening;

{$R *.dfm}

procedure TSerahKeKemasFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishOpeningFrm:=Nil;
end;

procedure TSerahKeKemasFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TSerahKeKemasFrm.wwDBGrid1Enter(Sender: TObject);
begin
 If QMaster.State<> dsBrowse then QMaster.Post;
 QDetail.Open;
end;

procedure TSerahKeKemasFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','995');
 QTransaksi.Open;
 SerahKeOpeningFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TSerahKeKemasFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TSerahKeKemasFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TSerahKeKemasFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TSerahKeKemasFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TSerahKeKemasFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TSerahKeKemasFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TSerahKeKemasFrm.QDetailNewRecord(DataSet: TDataSet);
begin

{DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString; }

   
  QDetailSATUAN.AsString:='PCS';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TSerahKeKemasFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TSerahKeKemasFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TSerahKeKemasFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TSerahKeKemasFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TSerahKeKemasFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TSerahKeKemasFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TSerahKeKemasFrm.cbOtomatisClick(Sender: TObject);
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

procedure TSerahKeKemasFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TGL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TSerahKeKemasFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSerahKeKemasFrm.cbTanggalClick(Sender: TObject);
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

procedure TSerahKeKemasFrm.BitBtn3Click(Sender: TObject);
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
        if (QBrowse.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'Tgl') then
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
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalKODI.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TSerahKeKemasFrm.BtnExportClick(Sender: TObject);
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

procedure TSerahKeKemasFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TSerahKeKemasFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TSerahKeKemasFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalKODI.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('#.#,#',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahKeKemasFrm.FormShow(Sender: TObject);
begin
{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  vTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());
{azmi}
end;

procedure TSerahKeKemasFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TSerahKeKemasFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahKeKemasFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    //QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    //QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    //QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TSerahKeKemasFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahKeKemasFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi.Open;
end;

procedure TSerahKeKemasFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TSerahKeKemasFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi.Open;
end;

procedure TSerahKeKemasFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TSerahKeKemasFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;

end;

procedure TSerahKeKemasFrm.LookKonClick(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahKeKemasFrm.LookKonEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahKeKemasFrm.LookKonCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
DBText7.Caption := DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TSerahKeKemasFrm.BitBtn4Click(Sender: TObject);
begin
   if QBrowse.Active then
      begin
        DMFrm.QUserTime.Close;
        DMFrm.QUserTime.Open;

      if cbPreview.Checked then
         begin
            QuickRep2.Preview
         end
         else
            QuickRep2.Print;
      end;
    end;


procedure TSerahKeKemasFrm.BitBtn5Click(Sender: TObject);
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
QPerKonstruksi_M.Close;
QPerKonstruksi_M_Tot.Close;
QProcmeter.Close;
abort;
end
else
  QPerKonstruksi_M.Close;
  QPerKonstruksi_M.SetVariable('pawal',VTglAwal2.DateTime);
  QPerKonstruksi_M.SetVariable('pakhir',VTglakhir2.DateTime);
  QPerKonstruksi_M.Open;
  QPerKonstruksi_M_Tot.Close;
  QPerKonstruksi_M_Tot.SetVariable('pawal',VTglAwal2.DateTime);
  QPerKonstruksi_M_Tot.SetVariable('pakhir',VTglakhir2.DateTime);
  QPerKonstruksi_M_Tot.Open;

  wwDBGrid2.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_M_TotQTY_GULUNG.AsFloat);


end;

procedure TSerahKeKemasFrm.BtnExport2Click(Sender: TObject);
begin
 if QPerKonstruksi_M.Active then
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

procedure TSerahKeKemasFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TSerahKeKemasFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QPerKonstruksi_M.Close;
  QPerKonstruksi_M.SetVariable('pawal',VTglAwal2.DateTime);
  QPerKonstruksi_M.SetVariable('pakhir',VTglakhir2.DateTime);
  QPerKonstruksi_M.Open;
  QPerKonstruksi_M_Tot.Close;
  QPerKonstruksi_M_Tot.SetVariable('pawal',VTglAwal2.DateTime);
  QPerKonstruksi_M_Tot.SetVariable('pakhir',VTglakhir2.DateTime);
  QPerKonstruksi_M_Tot.Open;

  wwDBGrid2.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_M_TotQTY_GULUNG.AsFloat);

end;

procedure TSerahKeKemasFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TSerahKeKemasFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TSerahKeKemasFrm.DBText1Click(Sender: TObject);
begin
 InputBox (' Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

procedure TSerahKeKemasFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabel8.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TSerahKeKemasFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TSerahKeKemasFrm.QPer_HariAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QPerKonstruksi_M.RecNo)+' dari '+FormatFloat('#,#',QPerKonstruksi_M.RecordCount)+' Records';
end;

procedure TSerahKeKemasFrm.look_mesinEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahKeKemasFrm.Look_CorakEnter(Sender: TObject);
Begin
DMFrm.QCorak.Open;
end;

procedure TSerahKeKemasFrm.LookMsnTenunEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahKeKemasFrm.LookMsnTenunClick(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahKeKemasFrm.LookMsnTenunCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailMESIN.AsString:=QMesinNAMA_MESIN.AsString;
   // QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahKeKemasFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahKeKemasFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterMESIN.AsString:=QMesinNAMA_MESIN.AsString;
DBText7.Caption := QMesinNAMA_MESIN.AsString;
end;

procedure TSerahKeKemasFrm.BitBtn7Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilInspectKeFoldingFrm:=THasilInspectKeFoldingFrm.Create(Self);
  HasilInspectKeFoldingFrm.QDetail.Close;
  HasilInspectKeFoldingFrm.QDetail.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  HasilInspectKeFoldingFrm.QDetail.Open;
 { HasilInspectKeFoldingFrm.QMaster.Close;
  HasilInspectKeFoldingFrm.QMaster.SetVariable('no_reg',HasilInspectKeFoldingFrm.QDetailNO_REG_TENUN.AsInteger);
  HasilInspectKeFoldingFrm.QMaster.Open; }
  HasilInspectKeFoldingFrm.ShowModal;
  HasilInspectKeFoldingFrm.Free;
end;

procedure TSerahKeKemasFrm.LookAmbilClick(Sender: TObject);
begin
QAmbil.Open;
end;

procedure TSerahKeKemasFrm.LookAmbilEnter(Sender: TObject);
begin
QAmbil.Open;
end;

procedure TSerahKeKemasFrm.LookAmbilCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    QDetailKD_PRODUKSI.AsString:=QAmbilKD_PRODUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=QAmbilSUB_KELOMPOK.AsString;
    
  
  {  //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=QAmbilKD_CORAK.AsString;
    QDetailNO_RESEP.AsString:=QAmbilNO_RESEP.AsString;
    QDetailKD_CORAK.AsString:=QAmbilKD_CORAK.AsString;
    QDetailCORAK.AsString:=QAmbilCORAK.AsString;
    QDetailMESIN.AsString:=QAmbilNO_MESIN.AsString;
    QDetailQTY_POTONG.AsString:=QAmbilQTY.AsString;
    QDetailKD_PRODUKSI.AsString:=QAmbilKD_PRODUKSI.AsString;
    QDetailMESIN_TENUN.AsString:=QAmbilMESIN_TENUN.AsString;
    QDetailTGL_INSPECT.AsDateTime:=QAmbilTGL.AsDateTime;
    QDetailKD_KONSTRUKSI.AsString:=QAmbilKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=QAmbilKONSTRUKSI.AsString;
    QDetailSATUAN.AsString:=QAmbilSATUAN.AsString;

    QDetailMESIN.AsString:=QAmbilNO_MESIN.AsString;
    QDetailTGL_INSPECT.AsString:=QAmbilTANGGAL.AsString;
    QDetailNO_RESEP.AsString:=QAmbilNO_RESEP.AsString;
    QDetailCORAK.AsString:=QAmbilCORAK.AsString;
    QDetailQTY_POTONG.AsString:=QAmbilPOTONG.AsString;
    QDetailKD_PRODUKSI.AsString:=QAmbilKD_PRODUKSI.AsString;
    QDetailMESIN_TENUN.AsString:=QAmbilMESIN.AsString;
    QDetailKD_KONSTRUKSI.AsString:=QAmbilKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=QAmbilKONSTRUKSI.AsString;
   }
end;

procedure TSerahKeKemasFrm.LookAmbilUserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
//Var
//  vfilter : String;
begin
//QAmbil.Open;
//  if InputQuery('Filter','Filter : ',vfilter) then
//  begin
//    QAmbil.Close;
//    QAmbil.SetVariable('myparam',' (no_mesin like ''%'+vfilter+'%'')');
//    Qambil.Open;
//  end;
end;

procedure TSerahKeKemasFrm.LookKdProdClick(Sender: TObject);
begin
//QKdProd.Open;
end;

procedure TSerahKeKemasFrm.LookKdProdCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  QDetailKD_PRODUKSI.AsString:=QKdProdKD_PRODUKSI.AsString;
  //QDetailKD_KONSTRUKSI.AsString:=QKdProdKD_KONSTRUKSI.AsString;
  QDetailKONSTRUKSI.AsString:=QKdProdSUB_KELOMPOK.AsString;
end;

procedure TSerahKeKemasFrm.LookKdProdEnter(Sender: TObject);
begin
QKdProd.Open;
end;

procedure TSerahKeKemasFrm.wwDBLookupComboDlg2Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TSerahKeKemasFrm.wwDBLookupComboDlg2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TSerahKeKemasFrm.Button1Click(Sender: TObject);
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

procedure TSerahKeKemasFrm.LookKeretaEnter(Sender: TObject);
begin
  QBrowseKereta2.Close;
  QBrowseKereta2.Open;
end;

end.
