unit SerahNonSarungKeJD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils;

type
  TSerahNonSarungKeJDFrm = class(TForm)
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
    LookGrup: TwwDBComboBox;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalPOTONG: TFloatField;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
    wwDBComboBox3: TwwDBComboBox;
    Label12: TLabel;
    Label14: TLabel;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    VTglAwal2: TwwDBDateTimePicker;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BtnExport2: TBitBtn;
    Label20: TLabel;
    QPer_Hari: TOracleDataSet;
    dsQPer_Hari: TwwDataSource;
    QPer_Hari_Tot: TOracleDataSet;
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
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand5: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText24: TQRDBText;
    VTglakhir2: TwwDBDateTimePicker;
    Label18: TLabel;
    QPer_Hari_TotPOTONG: TFloatField;
    QPer_Hari_TotGULUNG: TFloatField;
    QPer_HariKONSTRUKSI: TStringField;
    QPer_HariGULUNG: TFloatField;
    QPer_HariPOTONG: TFloatField;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QMesin: TOracleDataSet;
    QMesinKD_MESIN: TStringField;
    QMesinNAMA_MESIN: TStringField;
    QMesinKELOMPOK: TStringField;
    dsQMesin: TwwDataSource;
    QRLabel13: TQRLabel;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    QAmbil: TOracleDataSet;
    LookSatuan: TwwDBComboBox;
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
    QDetailJENIS: TStringField;
    LookKonstruksi: TwwDBLookupComboDlg;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_ORDER: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowsePEMESAN: TStringField;
    QBrowseJENIS: TStringField;
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
    QBrowseMESIN_TENUN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseNO_DESAIN: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseMESIN: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseJENIS_DET: TStringField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseNO_PO: TStringField;
    Label10: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    QMasterKIRIM: TStringField;
    QBrowseKIRIM: TStringField;
    LookKet: TwwDBComboBox;
    LookAmbil: TwwDBLookupComboDlg;
    QAmbilNO_NOTA: TStringField;
    QAmbilTGL: TDateTimeField;
    QAmbilNO_ORDER: TStringField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilKONSTRUKSI: TStringField;
    QAmbilKD_CORAK: TStringField;
    QAmbilCORAK: TStringField;
    QAmbilMESIN_TENUN: TStringField;
    QAmbilNO_RESEP: TStringField;
    QAmbilQTY_GULUNG: TFloatField;
    QAmbilQTY_POTONG: TFloatField;
    QAmbilQTY_COUNTER: TFloatField;
    QAmbilSATUAN: TStringField;
    QAmbilJENIS: TStringField;
    QAmbilKET_DETAIL: TStringField;
    QAmbilNO_MESIN: TStringField;
    QAmbilKD_PRODUKSI: TStringField;
    QAmbilNO_DESAIN: TStringField;
    QAmbilNO_PO: TStringField;
    wwDBComboBox1: TwwDBLookupComboDlg;
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
    procedure wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
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
    procedure BitBtn7Click(Sender: TObject);
    procedure LookAmbilClick(Sender: TObject);
    procedure LookAmbilEnter(Sender: TObject);
    procedure LookAmbilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
SerahNonSarungKeJDFrm: TSerahNonSarungKeJDFrm;

implementation

uses DM, Math, FinishOpening, HasilInspectKeFolding, SerahKainKeOpening;

{$R *.dfm}

procedure TSerahNonSarungKeJDFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishOpeningFrm:=Nil;
end;

procedure TSerahNonSarungKeJDFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahNonSarungKeJDFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','917');
 QTransaksi.Open;
 SerahKainKeOpeningFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TSerahNonSarungKeJDFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TSerahNonSarungKeJDFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TSerahNonSarungKeJDFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TSerahNonSarungKeJDFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TSerahNonSarungKeJDFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;


  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TSerahNonSarungKeJDFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TSerahNonSarungKeJDFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TSerahNonSarungKeJDFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TSerahNonSarungKeJDFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TSerahNonSarungKeJDFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TSerahNonSarungKeJDFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TSerahNonSarungKeJDFrm.cbOtomatisClick(Sender: TObject);
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

procedure TSerahNonSarungKeJDFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TGL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TSerahNonSarungKeJDFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSerahNonSarungKeJDFrm.cbTanggalClick(Sender: TObject);
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

procedure TSerahNonSarungKeJDFrm.BitBtn3Click(Sender: TObject);
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
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalGULUNG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TSerahNonSarungKeJDFrm.BtnExportClick(Sender: TObject);
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

procedure TSerahNonSarungKeJDFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TSerahNonSarungKeJDFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('#.#,#',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahNonSarungKeJDFrm.FormShow(Sender: TObject);
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

procedure TSerahNonSarungKeJDFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahNonSarungKeJDFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    //QMasterKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksiKD_KONSTRUKSI.AsString;
    //QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:= DMFrm.QKonstruksi_kelompokKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_kelompokNAMA_KONSTRUKSI.AsString;
end;

procedure TSerahNonSarungKeJDFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahNonSarungKeJDFrm.LookKonstruksiEnter(Sender: TObject);
begin
 DMFrm.QKonstruksi_kelompok.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_kelompok.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TSerahNonSarungKeJDFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterJENIS.AsString:='NON SARUNG';

end;

procedure TSerahNonSarungKeJDFrm.LookKonClick(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookKonEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
begin
  QBrowseTotal.DisableControls;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter+vorder);
  QBrowseTotal.Open;
  QBrowseTotal.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('#.#,#',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahNonSarungKeJDFrm.BitBtn4Click(Sender: TObject);
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


procedure TSerahNonSarungKeJDFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;
begin
  QPer_Hari.Open;
 { vpertama:=True;
  if cbTanggal2.Checked then
    vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QPer_Hari.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
      begin
        if (QPer_Hari.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TGL') then
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
    if QPer_Hari.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';


  end; }

  QPer_Hari.DisableControls;
  QPer_Hari.Close;
  QPer_Hari.SetVariable('pawal',VTglAwal2.Date);
  QPer_Hari.SetVariable('pakhir',VTglakhir2.Date);
  QPer_Hari.SetVariable('myparam','group by konstruksi');
  QPer_Hari.Open;

  QPer_Hari_Tot.Close;
  QPer_Hari_Tot.SetVariable('pawal',VTglAwal2.Date);
  QPer_Hari_Tot.SetVariable('pakhir',VTglakhir2.Date);
  QPer_Hari_Tot.Open;

  QPer_Hari.EnableControls;
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QPer_Hari_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPer_Hari_TotPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TSerahNonSarungKeJDFrm.BtnExport2Click(Sender: TObject);
begin
 if QPer_Hari.Active then
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

procedure TSerahNonSarungKeJDFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QPer_Hari_Tot.DisableControls;
  QPer_Hari_Tot.Close;
  QPer_Hari_Tot.SetVariable('myparam',vfilter);
  QPer_Hari_Tot.Open;
  QPer_Hari_Tot.EnableControls;
 // wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#',QPer_Hari_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#',QPer_Hari_TotPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TSerahNonSarungKeJDFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TSerahNonSarungKeJDFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TSerahNonSarungKeJDFrm.DBText1Click(Sender: TObject);
begin
 InputBox (' Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

procedure TSerahNonSarungKeJDFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabel8.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TSerahNonSarungKeJDFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TSerahNonSarungKeJDFrm.QPer_HariAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QPer_Hari.RecNo)+' dari '+FormatFloat('#,#',QPer_Hari.RecordCount)+' Records';
end;

procedure TSerahNonSarungKeJDFrm.look_mesinEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahNonSarungKeJDFrm.Look_CorakEnter(Sender: TObject);
Begin
DMFrm.QCorak.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookMsnTenunEnter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookMsnTenunClick(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookMsnTenunCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailMESIN.AsString:=QMesinNAMA_MESIN.AsString;
   // QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TSerahNonSarungKeJDFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
QMesin.Open;
end;

procedure TSerahNonSarungKeJDFrm.BitBtn7Click(Sender: TObject);
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

procedure TSerahNonSarungKeJDFrm.LookAmbilClick(Sender: TObject);
begin
QAmbil.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookAmbilEnter(Sender: TObject);
begin
QAmbil.Open;
end;

procedure TSerahNonSarungKeJDFrm.LookAmbilCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 If modified then
   QDetailNO_ORDER.AsString:=QAmbilNO_ORDER.AsString;
 QDetailKD_KONSTRUKSI.AsString:=QAmbilKD_KONSTRUKSI.AsString;
 QDetailKONSTRUKSI.AsString:=QAmbilKONSTRUKSI.AsString;
 QDetailQTY_GULUNG.AsString:=QAmbilQTY_GULUNG.AsString;
 QDetailQTY_POTONG.AsString:=QAmbilQTY_POTONG.AsString;
 QDetailQTY_COUNTER.AsString:=QAmbilQTY_COUNTER.AsString;
 //QDetailNO_REFF.AsString:=QAmbilNO_NOTA.AsString;
 QDetailMESIN_TENUN.AsString:=QAmbilMESIN_TENUN.AsString;
 QDetailKD_CORAK.AsString:=QAmbilKD_CORAK.AsString;
 QDetailCORAK.AsString:=QAmbilCORAK.AsString;
 QDetailNO_RESEP.AsString:=QAmbilNO_RESEP.AsString;
 QDetailKETERANGAN.AsString:=QAmbilKET_DETAIL.AsString;
 QDetailKD_PRODUKSI.AsString:=QAmbilKD_PRODUKSI.AsString;
 //QDetailNO_MESIN.AsString:=QAmbilNO_MESIN.AsString;
 QDetailSATUAN.AsString:=QAmbilSATUAN.AsString;
 QDetailNO_DESAIN.AsString:=QAmbilNO_DESAIN.AsString;
 QDetailNO_PO.AsString:=QAmbilNO_PO.AsString;
 QDetailJENIS.AsString:=QAmbilJENIS.AsString;

end;

procedure TSerahNonSarungKeJDFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TSerahNonSarungKeJDFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

end.
