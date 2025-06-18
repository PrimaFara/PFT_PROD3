unit SerahKeReinspectNewPalapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils;

type
  TSerahKeReinspectFrm = class(TForm)
    PanelLeft: TPanel;
    PanelRight: TPanel;
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
    Panel1: TPanel;
    Panel2: TPanel;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseTotal: TOracleDataSet;
    QBrowseTotalBK: TFloatField;
    QBrowseTotalBS: TFloatField;
    QBrowseTotalPARAH: TFloatField;
    QTotal: TOracleDataSet;
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
    QRImage2: TQRImage;
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
    QRImage1: TQRImage;
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
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    QPerCorak_Tot: TOracleDataSet;
    dsPerCorak: TwwDataSource;
    QPerCorakCORAK: TStringField;
    QPerCorak_TotQTY_TOT: TFloatField;
    QPerCorak_TotBK: TFloatField;
    QPerCorak_TotBS: TFloatField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    QPerKonstruksiKemasKONSTRUKSI: TStringField;
    QPerKonstruksiKemasKD_PRODUKSI: TStringField;
    QPerKonstruksiKemasQTY_TOT: TFloatField;
    QPerKonstruksiKemasBK: TFloatField;
    QPerKonstruksiKemasBS: TFloatField;
    QPerKonstruksiKemasLELANG: TFloatField;
    QPerKonstruksiKemas_TotQTY_TOT: TFloatField;
    QPerKonstruksiKemas_TotBK: TFloatField;
    QPerKonstruksiKemas_TotBS: TFloatField;
    QPerKonstruksiKemas_TotLELANG: TFloatField;
    QPerCorakQTY_LELANG: TFloatField;
    QPerCorak_TotQTY_LELANG: TFloatField;
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
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailGRUP: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailPEMESAN: TStringField;
    QDetailKD_SUB_LOKASI: TStringField;
    QDetailKD_SUB_LOKASI2: TStringField;
    QDetailKD_TRANSAKSI: TStringField;
    QDetailQTY_COUNTER2: TFloatField;
    QDetailSATUAN: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailNO_DESAIN: TStringField;
    QDetailNO_PO: TStringField;
    QDetailQTY_RE: TFloatField;
    QDetailQTY_SELISIH: TFloatField;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
    LookGrup: TwwDBComboBox;
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
    QBrowseMESIN_TENUN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseQTY_COUNTER2: TFloatField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseGROUP_DET: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseNO_DESAIN: TStringField;
    QBrowseNO_PO: TStringField;
    QBrowseQTY_RE: TFloatField;
    QBrowseQTY_SELISIH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure LookRekananEnter(Sender: TObject);
    procedure LookRekananClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
    procedure QDetailBeforeEdit(DataSet: TDataSet);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
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
    procedure QMasterBeforeDelete(DataSet: TDataSet);
    procedure QMasterBeforeEdit(DataSet: TDataSet);
    procedure QDetailBeforeDelete(DataSet: TDataSet);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  SerahKeReinspectFrm: TSerahKeReinspectFrm;

implementation

uses DM, Math;

{$R *.dfm}

procedure TSerahKeReinspectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  SerahKeReinspectFrm:=Nil;
end;

procedure TSerahKeReinspectFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
  //Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
   // ', '+IntToStr(PanelRight.Width);
end;

procedure TSerahKeReinspectFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahKeReinspectFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','908');
 QTransaksi.Open;
 SerahKeReinspectFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TSerahKeReinspectFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);

  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
  QMasterSTATUS.AsString:='OUT';
end;

procedure TSerahKeReinspectFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TSerahKeReinspectFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TSerahKeReinspectFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TSerahKeReinspectFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TSerahKeReinspectFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TSerahKeReinspectFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TSerahKeReinspectFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TSerahKeReinspectFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TSerahKeReinspectFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TSerahKeReinspectFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TSerahKeReinspectFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TSerahKeReinspectFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TSerahKeReinspectFrm.cbOtomatisClick(Sender: TObject);
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

procedure TSerahKeReinspectFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TSerahKeReinspectFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSerahKeReinspectFrm.cbTanggalClick(Sender: TObject);
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

procedure TSerahKeReinspectFrm.BitBtn3Click(Sender: TObject);
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
  wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TSerahKeReinspectFrm.BtnExportClick(Sender: TObject);
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

procedure TSerahKeReinspectFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TSerahKeReinspectFrm.TabSheet2Show(Sender: TObject);
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

procedure TSerahKeReinspectFrm.FormShow(Sender: TObject);
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

procedure TSerahKeReinspectFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TSerahKeReinspectFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TSerahKeReinspectFrm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TSerahKeReinspectFrm.vTglAkhir3Change(Sender: TObject);
begin
 if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TSerahKeReinspectFrm.cbOtomatis3Click(Sender: TObject);
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

procedure TSerahKeReinspectFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
if (QPerKonstruksiKemas.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid5.FieldCount-1 do
    if UpperCase(wwDBGrid5.Columns[i].FieldName)<>'tgl' then
      dbcField3.Items.Add(wwDBGrid5.Columns[i].FieldName);

end;

procedure TSerahKeReinspectFrm.vOperand2Click(Sender: TObject);
begin
  if vOperand2.Caption='LIKE' then
    vOperand2.Caption:='='
    else
      vOperand2.Caption:='LIKE';
end;

procedure TSerahKeReinspectFrm.cbTanggal3Click(Sender: TObject);
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

procedure TSerahKeReinspectFrm.BtnExport3Click(Sender: TObject);
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

procedure TSerahKeReinspectFrm.BitBtn7Click(Sender: TObject);
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
  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  //wwDBGrid5.ColumnByName('PERSEN_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotPERSEN_BS.AsFloat);

  wwDBGrid5.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);


  //wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',Qkon_opening_TotPOTONG.AsFloat);


end;

procedure TSerahKeReinspectFrm.TabSheet3Show(Sender: TObject);
begin
// QPerKonstruksiKemas.Open;
end;

procedure TSerahKeReinspectFrm.wwDBGrid5UpdateFooter(Sender: TObject);
begin
 QPerKonstruksiKemas_Tot.Close;
  QPerKonstruksiKemas_Tot.Open;
  wwDBGrid5.ColumnByName('QTY_TOT').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotQTY_TOT.AsFloat);
  wwDBGrid5.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBK.AsFloat);
  wwDBGrid5.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotBS.AsFloat);
  //wwDBGrid5.ColumnByName('PERSEN_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotPERSEN_BS.AsFloat);

  wwDBGrid5.ColumnByName('LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksiKemas_TotLELANG.AsFloat);
end;



procedure TSerahKeReinspectFrm.DBText1Click(Sender: TObject);
begin
  InputBox('Copy Nomer','Klik Kanan --> Copy : ',QMasterNO_NOTA.AsString);
end;

procedure TSerahKeReinspectFrm.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel25.Caption:='(Per : '+VTglAwal3.Text+' s/d '+VTglAkhir3.Text+')';
end;

procedure TSerahKeReinspectFrm.BitBtn4Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
DMFrm.QUserTime.Open;
   QuickRep2.Preview

end;

procedure TSerahKeReinspectFrm.VTglAwal4Change(Sender: TObject);
begin
VTglAkhir4.Date:=(VTglAwal4.Date);
end;

procedure TSerahKeReinspectFrm.VTglAkhir4Change(Sender: TObject);
begin
 if VTglAwal4.Date>VTglAkhir4.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir4.Date:=VTglAwal4.Date;
  end;
end;

procedure TSerahKeReinspectFrm.cbOtomatis4Click(Sender: TObject);
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

procedure TSerahKeReinspectFrm.dbcField4Enter(Sender: TObject);
var
  i : Word;
begin
if (QPerCorak.Active) and (dbcField4.Items.Count=1) then
  for i:=0 to wwDBGrid4.FieldCount-1 do
    if UpperCase(wwDBGrid4.Columns[i].FieldName)<>'tgl' then
      dbcField4.Items.Add(wwDBGrid4.Columns[i].FieldName);
end;

procedure TSerahKeReinspectFrm.vOperand4Click(Sender: TObject);
begin
  if vOperand4.Caption='LIKE' then
    vOperand4.Caption:='='
    else
      vOperand4.Caption:='LIKE';
end;

procedure TSerahKeReinspectFrm.cbTanggal4Click(Sender: TObject);
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

procedure TSerahKeReinspectFrm.BitBtn5Click(Sender: TObject);
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
  wwDBGrid4.ColumnByName('BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBK.AsFloat);
  wwDBGrid4.ColumnByName('BS').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotBS.AsFloat);
  wwDBGrid4.ColumnByName('QTY_LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerCorak_TotQTY_LELANG.AsFloat);


end;

procedure TSerahKeReinspectFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TSerahKeReinspectFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TSerahKeReinspectFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TSerahKeReinspectFrm.QMasterBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TSerahKeReinspectFrm.QDetailBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;
end;

procedure TSerahKeReinspectFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
//QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
//QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QDetailNO_REG.AsString:=QMasterNO_REG.AsString;
QDetailKD_SUB_LOKASI.AsString:='77-10000';
QDetailKD_SUB_LOKASI2.AsString:='78-00000';

end;

procedure TSerahKeReinspectFrm.wwDBGrid1UpdateFooter(Sender: TObject);
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

end.
