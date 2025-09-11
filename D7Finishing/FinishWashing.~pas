unit FinishWashing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle;

type
  TFinishWashingFrm = class(TForm)
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
    LabelBanner: TLabel;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalPOTONG: TFloatField;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
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
    Label9: TLabel;
    Label8: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label12: TLabel;
    DBText7: TDBText;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
    LookMesinFinishing: TwwDBLookupComboDlg;
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
    wwDBEdit2: TwwDBEdit;
    Label21: TLabel;
    LookShift: TwwDBComboBox;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_REFF: TStringField;
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
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailQTY_GULUNG: TFloatField;
    QDetailQTY_POTONG: TFloatField;
    QDetailQTY_COUNTER: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailGRUP: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailPEMESAN: TStringField;
    QDetailKD_SUB_LOKASI: TStringField;
    QDetailNO_REFF: TStringField;
    QDetailSHIFT: TStringField;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_ORDER: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowsePEMESAN: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseOPERATOR: TStringField;
    QBrowseNO_REG_DETAIL: TFloatField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseMESIN: TStringField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseGROUP_DET: TStringField;
    QBrowseSHIFT_DET: TStringField;
    QMasterOPERATOR: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    QDetailOPERATOR: TStringField;
    LookAmbil: TwwDBLookupComboDlg;
    QAmbil: TOracleDataSet;
    QDetailSATUAN: TStringField;
    QBrowseSATUAN: TStringField;
    TabSheet3: TTabSheet;
    Label20: TLabel;
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
    QPerKonstruksi_Tot: TOracleDataSet;
    QPerKonstruksi_TotGULUNG: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    DsPerKonstruksi: TwwDataSource;
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiGULUNG: TFloatField;
    QPerKonstruksiPOTONG: TFloatField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    Label16: TLabel;
    Label17: TLabel;
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
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    QRBand5: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailJENIS: TStringField;
    QBrowseNO_REFF: TStringField;
    QBrowseMESIN_TENUN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_RESEP: TStringField;
    QuickRep1: TQuickRep;
    QRBand6: TQRBand;
    Label15: TLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
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
    QRDBText15: TQRDBText;
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
    QPerKonstruksi_TotKODI: TFloatField;
    QPerKonstruksiKODI: TFloatField;
    QRLabel15: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText36: TQRDBText;
    QRShape19: TQRShape;
    QDetailNO_MESIN: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QDetailNO_DESAIN: TStringField;
    QDetailNO_PO: TStringField;
    QRLabel20: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    QTransaksiDOC_ISO: TStringField;
    QTransaksiDOC_ISO2: TStringField;
    QAmbilNO_NOTA: TStringField;
    QAmbilTGL: TDateTimeField;
    QAmbilNO_ORDER: TStringField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilKONSTRUKSI: TStringField;
    QAmbilMESIN_TENUN: TStringField;
    QAmbilKD_CORAK: TStringField;
    QAmbilCORAK: TStringField;
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
    Look_KP: TwwDBLookupComboDlg;
    LookSatuan: TwwDBComboBox;
    QBrowseJENIS: TStringField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    Label2: TLabel;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    Label14: TLabel;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    QMasterOPERATOR2: TStringField;
    QDetailKD_REKANAN: TFloatField;
    QDetailNAMA_REKANAN: TStringField;
    QDetailKD_WARNA: TFloatField;
    QDetailWARNA: TStringField;
    LookSuplier: TwwDBLookupComboDlg;
    LookWarna: TwwDBLookupComboDlg;
    QTotalMETER: TFloatField;
    QBrowseOPERATOR2: TStringField;
    QBrowseKD_WARNA: TFloatField;
    QBrowseWARNA: TStringField;
    QBrowseKD_REKANAN: TFloatField;
    QBrowseNAMA_REKANAN: TStringField;
    QBrowseTotalMETER: TFloatField;
    LookJenis: TwwDBLookupComboDlg;
    QAmbil_New: TOracleDataSet;
    QAmbil_NewNO_NOTA: TStringField;
    QAmbil_NewNO_REG: TFloatField;
    QAmbil_NewTGL: TDateTimeField;
    QAmbil_NewNO_ORDER: TStringField;
    QAmbil_NewNO_REFF: TStringField;
    QAmbil_NewKETERANGAN: TStringField;
    QAmbil_NewPEMESAN: TStringField;
    QAmbil_NewGRUP: TStringField;
    QAmbil_NewSHIFT: TStringField;
    QAmbil_NewKERETA: TStringField;
    QAmbil_NewKD_TRANSAKSI: TStringField;
    QAmbil_NewISPOST: TStringField;
    QAmbil_NewSTATUS: TStringField;
    QAmbil_NewTGL_INSERT: TDateTimeField;
    QAmbil_NewOPR_INSERT: TStringField;
    QAmbil_NewMUTU: TStringField;
    QAmbil_NewNO_REG_DETAIL: TFloatField;
    QAmbil_NewKD_KONSTRUKSI: TStringField;
    QAmbil_NewKONSTRUKSI: TStringField;
    QAmbil_NewMESIN: TStringField;
    QAmbil_NewJENIS: TStringField;
    QAmbil_NewTUJUAN: TStringField;
    QAmbil_NewKD_CORAK: TStringField;
    QAmbil_NewCORAK: TStringField;
    QAmbil_NewNO_RESEP: TStringField;
    QAmbil_NewQTY_GULUNG: TFloatField;
    QAmbil_NewQTY_POTONG: TFloatField;
    QAmbil_NewQTY_COUNTER: TFloatField;
    QAmbil_NewQTY_KONVERSI: TFloatField;
    QAmbil_NewKET_DETAIL: TStringField;
    QAmbil_NewTGL_INSPECT: TDateTimeField;
    QAmbil_NewGROUP_DET: TStringField;
    QAmbil_NewKD_PRODUKSI: TStringField;
    QAmbil_NewMESIN_DET: TStringField;
    QAmbil_NewMESIN_TENUN_DET: TStringField;
    QAmbil_NewSATUAN: TStringField;
    Label4: TLabel;
    ECari_Order: TEdit;
    BitBtn4: TBitBtn;
    Label19: TLabel;
    wwDBEdit1: TwwDBEdit;
    QAmbilData: TOracleQuery;
    QPerKonstruksiKD_PRODUKSI: TStringField;
    VRep: TCheckBox;
    QPerKonstruksiMETER: TFloatField;
    QPerKonstruksi_TotMETER: TFloatField;
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
    procedure LookMesinFinishingEnter(Sender: TObject);
    procedure LookMesinFinishingCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAmbilEnter(Sender: TObject);
    procedure LookAmbilCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure LookAmbilUserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPEnter(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg3Enter(Sender: TObject);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure LookSuplierClick(Sender: TObject);
    procedure LookSuplierEnter(Sender: TObject);
    procedure LookSuplierCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaEnter(Sender: TObject);
    procedure LookWarnaClick(Sender: TObject);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookJenisEnter(Sender: TObject);
    procedure LookJenisClick(Sender: TObject);
    procedure LookJenisCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  FinishWashingFrm: TFinishWashingFrm;

implementation

uses DM, Math, FinishOpening, FinishShearing;

{$R *.dfm}

procedure TFinishWashingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishWashingFrm:=Nil;
end;

procedure TFinishWashingFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TFinishWashingFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TFinishWashingFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','895');
 QTransaksi.Open;
 FinishWashingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TFinishWashingFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TFinishWashingFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TFinishWashingFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TFinishWashingFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    abort;
  end;

end;

procedure TFinishWashingFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TFinishWashingFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TFinishWashingFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
//QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
QDetailKD_SUB_LOKASI.AsString:='75-10000';

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TFinishWashingFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TFinishWashingFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TFinishWashingFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TFinishWashingFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TFinishWashingFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TFinishWashingFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TFinishWashingFrm.cbOtomatisClick(Sender: TObject);
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

procedure TFinishWashingFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TFinishWashingFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TFinishWashingFrm.cbTanggalClick(Sender: TObject);
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

procedure TFinishWashingFrm.BitBtn3Click(Sender: TObject);
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
  wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalGULUNG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_COUNTER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalMETER.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TFinishWashingFrm.BtnExportClick(Sender: TObject);
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

procedure TFinishWashingFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TFinishWashingFrm.TabSheet1Show(Sender: TObject);
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

procedure TFinishWashingFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalPOTONG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_COUNTER').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalMETER.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TFinishWashingFrm.FormShow(Sender: TObject);
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
end;

procedure TFinishWashingFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin

    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';

end;

procedure TFinishWashingFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TFinishWashingFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TFinishWashingFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
   // QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    //QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TFinishWashingFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TFinishWashingFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TFinishWashingFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TFinishWashingFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TFinishWashingFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='IN';
end;

procedure TFinishWashingFrm.LookMesinFinishingEnter(Sender: TObject);
begin
DMFrm.QLookMesinFinishing.Close;
DMFrm.QLookMesinFinishing.SetVariable('KD_TRANSAKSI',DBText2.Caption);
DMFrm.QLookMesinFinishing.Open;
end;

procedure TFinishWashingFrm.LookMesinFinishingCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterKD_MESIN.AsString:=DMFrm.QLookMesinFinishingKD_MESIN.AsString;
QMasterMESIN.AsString:=DMFrm.QLookMesinFinishingNAMA_MESIN.AsString;
DBText7.Caption:= DMFrm.QLookMesinFinishingNAMA_MESIN.AsString;
end;

procedure TFinishWashingFrm.LookAmbilEnter(Sender: TObject);
begin
QAmbil_New.Open;
end;

procedure TFinishWashingFrm.LookAmbilCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
 QDetailNO_ORDER.AsString:=QAmbil_NewNO_ORDER.AsString;
 QDetailKD_PRODUKSI.AsString:=QAmbil_NewKD_PRODUKSI.AsString;
 QDetailKD_KONSTRUKSI.AsString:=QAmbil_NewKD_KONSTRUKSI.AsString;
 QDetailKONSTRUKSI.AsString:=QAmbil_NewKONSTRUKSI.AsString;
 QDetailQTY_GULUNG.AsString:=QAmbil_NewQTY_GULUNG.AsString;
 QDetailQTY_POTONG.AsString:=QAmbil_NewQTY_POTONG.AsString;
 QDetailKETERANGAN.AsString:=QAmbil_NewKET_DETAIL.AsString;
 QDetailKD_CORAK.AsString:=QAmbil_NewKD_CORAK.AsString;
 QDetailCORAK.AsString:=QAmbil_NewCORAK.AsString;
 QDetailNO_RESEP.AsString:=QAmbil_NewNO_RESEP.AsString;
 QDetailSATUAN.AsString:=QAmbil_NewSATUAN.AsString;
end;

procedure TFinishWashingFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TFinishWashingFrm.VTglakhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TFinishWashingFrm.BitBtn5Click(Sender: TObject);
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
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksi_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksi_TotPOTONG.AsFloat);
  wwDBGrid2.ColumnByName('KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksi_TotKODI.AsFloat);
  wwDBGrid2.ColumnByName('METER').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QPerKonstruksi_TotMETER.AsFloat);
end;

procedure TFinishWashingFrm.BtnExport2Click(Sender: TObject);
begin
if QPerKonstruksi.Active then
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

procedure TFinishWashingFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TFinishWashingFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
end;

procedure TFinishWashingFrm.LookAmbilUserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
var
  vfilter : String;
begin
QAmbil_New.Open;
  if InputQuery('Filter','Filter : ',vfilter) then
  begin
    QAmbil_New.Close;
    QAmbil_New.SetVariable('myparam',' (no_order like ''%'+vfilter+'%'')');
    QAmbil_New.Open;
  end;
end;

procedure TFinishWashingFrm.Look_KPClick(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TFinishWashingFrm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TFinishWashingFrm.Look_KPCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_finishKP.AsString;
end;

procedure TFinishWashingFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TFinishWashingFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TFinishWashingFrm.wwDBLookupComboDlg2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterOPERATOR.AsString:=DMFrm.QLookOperatorNAMA_KARYAWAN.AsString;
end;

procedure TFinishWashingFrm.wwDBLookupComboDlg3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterOPERATOR2.AsString:=DMFrm.QLookOperatorNAMA_KARYAWAN.AsString;
end;

procedure TFinishWashingFrm.wwDBLookupComboDlg3Enter(Sender: TObject);
begin
DMFrm.QLookOperator.Open;
end;

procedure TFinishWashingFrm.wwDBLookupComboDlg2Enter(Sender: TObject);
begin
DMFrm.QLookOperator.Open;
end;

procedure TFinishWashingFrm.LookSuplierClick(Sender: TObject);
begin
DMFrm.QSuplier.Open;
end;

procedure TFinishWashingFrm.LookSuplierEnter(Sender: TObject);
begin
DMFrm.QSuplier.Open;
end;

procedure TFinishWashingFrm.LookSuplierCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_REKANAN.AsString:=DMFrm.QSuplierKD_REKANAN.AsString;
    QDetailNAMA_REKANAN.AsString:=DMFrm.QSuplierNAMA_REKANAN.AsString;
end;

procedure TFinishWashingFrm.LookWarnaEnter(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TFinishWashingFrm.LookWarnaClick(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TFinishWashingFrm.LookWarnaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_WARNA.AsString:=DMFrm.QLookWarnaKD_WARNA.AsString;
    QDetailWARNA.AsString:=DMFrm.QLookWarnaWARNA.AsString;
end;

procedure TFinishWashingFrm.LookJenisEnter(Sender: TObject);
begin
DMFrm.QLookJenis.Open;
end;

procedure TFinishWashingFrm.LookJenisClick(Sender: TObject);
begin
DMFrm.QLookJenis.Open;
end;

procedure TFinishWashingFrm.LookJenisCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailJENIS.AsString:=DMFrm.QLookJenisPROSES.AsString;
end;

procedure TFinishWashingFrm.BitBtn4Click(Sender: TObject);
begin
  if wwDBDateTimePicker1.DateTime <> 0 then
  begin
    // Jika wwDBDateTimePicker1 diisi, jalankan kode berikut
    QMaster.Edit;
    QMaster.Post;
    QDetailTGL_INSERT.AsDateTime := QMasterTGL_INSERT.AsDateTime;
    QDetailOPERATOR.AsString := QMasterOPR_INSERT.AsString;
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
