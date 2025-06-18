unit FinishPemasukan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, jpeg;

type
  TFinishPemasukanFrm = class(TForm)
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
    Label21: TLabel;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalPOTONG: TFloatField;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
    LookKonstruksi: TwwDBLookupComboDlg;
    Label11: TLabel;
    Label12: TLabel;
    LookMesinFinishing: TwwDBLookupComboDlg;
    DBText7: TDBText;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_ORDER: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowsePEMESAN: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseNO_REG_DETAIL: TFloatField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseGROUP_DET: TStringField;
    QBrowseOPERATOR: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseSHIFT_DET: TStringField;
    Label10: TLabel;
    TabSheet3: TTabSheet;
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
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRImage2: TQRImage;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand5: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    Label20: TLabel;
    Qkon_opening: TOracleDataSet;
    Qkon_opening_Tot: TOracleDataSet;
    Qkon_opening_TotGULUNG: TFloatField;
    Qkon_opening_TotPOTONG: TFloatField;
    dsQkon_opening: TwwDataSource;
    Qkon_openingKONSTRUKSI: TStringField;
    Qkon_openingGULUNG: TFloatField;
    Qkon_openingPOTONG: TFloatField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseSATUAN: TStringField;
    QRLabel12: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel28: TQRLabel;
    LookSatuan: TwwDBComboBox;
    QBrowseMESIN_TENUN: TStringField;
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
    QRDBText17: TQRDBText;
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
    Qkon_openingKODI: TFloatField;
    Qkon_opening_TotKODI: TFloatField;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText36: TQRDBText;
    QRShape7: TQRShape;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_MESIN: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QTransaksiDOC_ISO: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
    QTransaksiSINOPSIS: TBlobField;
    QRLabel22: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Look_KP: TwwDBLookupComboDlg;
    LookJenis: TwwDBComboBox;
    QBrowseJENIS: TStringField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    LookSuplier: TwwDBLookupComboDlg;
    LookWarna: TwwDBLookupComboDlg;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    Label13: TLabel;
    Label14: TLabel;
    QBrowseOPERATOR2: TStringField;
    QBrowseKD_WARNA: TFloatField;
    QBrowseWARNA: TStringField;
    QBrowseKD_REKANAN: TFloatField;
    QBrowseNAMA_REKANAN: TStringField;
    wwDBComboBox3: TwwDBComboBox;
    TabSheet4: TTabSheet;
    Panel7: TPanel;
    Panel8: TPanel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label16: TLabel;
    DBText10: TDBText;
    Panel9: TPanel;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    Panel10: TPanel;
    Label17: TLabel;
    DBText11: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    Label27: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBComboBox4: TwwDBComboBox;
    wwDBComboBox5: TwwDBComboBox;
    Panel11: TPanel;
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
    wwCheckBox2: TwwCheckBox;
    ListView1: TListView;
    wwDBComboBox6: TwwDBComboBox;
    OpenDialog1: TOpenDialog;
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
    QMasterJENIS: TStringField;
    QMasterDEPT: TStringField;
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
    QDetailKD_PRODUKSI: TStringField;
    QDetailNO_BATCH: TStringField;
    QDetailQTY4: TFloatField;
    QDetailQTY5: TFloatField;
    QDetailKETERANGAN2: TStringField;
    QDetailKD_WARNA: TFloatField;
    QDetailWARNA: TStringField;
    QDetailKD_PRINT: TStringField;
    TabSheet5: TTabSheet;
    Panel17: TPanel;
    wwDBGrid4: TwwDBGrid;
    Panel16: TPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    Panel14: TPanel;
    Panel15: TPanel;
    vOperand2: TLabel;
    BitBtn8: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
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
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg1Click(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPEnter(Sender: TObject);
    procedure LookMesinFinishingCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookMesinFinishingEnter(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure LookSuplierClick(Sender: TObject);
    procedure LookWarnaClick(Sender: TObject);
    procedure LookSuplierCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookSuplierEnter(Sender: TObject);
    procedure LookWarnaEnter(Sender: TObject);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure wwDBLookupComboDlg3Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
    procedure baca_tab(SheetIndex:integer);
  end;

var  FinishPemasukanFrm: TFinishPemasukanFrm;

implementation

uses DM, Math, ComObj;

{$R *.dfm}

procedure TFinishPemasukanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishPemasukanFrm:=Nil;
end;

procedure TFinishPemasukanFrm.baca_tab(SheetIndex:integer);
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

procedure TFinishPemasukanFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TFinishPemasukanFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TFinishPemasukanFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','FM1');
 QTransaksi.Open;
 FinishPemasukanFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TFinishPemasukanFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TFinishPemasukanFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TFinishPemasukanFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TFinishPemasukanFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TFinishPemasukanFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TFinishPemasukanFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TFinishPemasukanFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
//QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
//QDetailKD_SUB_LOKASI.AsString:='71-10000';
//QDetailOPERATOR.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TFinishPemasukanFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TFinishPemasukanFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TFinishPemasukanFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TFinishPemasukanFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TFinishPemasukanFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TFinishPemasukanFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TFinishPemasukanFrm.cbOtomatisClick(Sender: TObject);
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

procedure TFinishPemasukanFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TFinishPemasukanFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TFinishPemasukanFrm.cbTanggalClick(Sender: TObject);
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

procedure TFinishPemasukanFrm.BtnExportClick(Sender: TObject);
begin
          if QBrowse.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet2.Caption+' '+Caption+'';
             wwDBGrid1xxxxx.ExportOptions.TitleName:=''+TabSheet2.Caption+' '+Caption+'';
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

procedure TFinishPemasukanFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TFinishPemasukanFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TFinishPemasukanFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TFinishPemasukanFrm.FormShow(Sender: TObject);
begin
{azmi}
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
{azmi}
end;

procedure TFinishPemasukanFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
   // LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TFinishPemasukanFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
 
end;

procedure TFinishPemasukanFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_finishKP.AsString;
end;

procedure TFinishPemasukanFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    //QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TFinishPemasukanFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TFinishPemasukanFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TFinishPemasukanFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TFinishPemasukanFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TFinishPemasukanFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='IN';
end;

procedure TFinishPemasukanFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TFinishPemasukanFrm.VTglakhir2Change(Sender: TObject);
begin
 if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TFinishPemasukanFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin

end;

procedure TFinishPemasukanFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
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
Qkon_opening.Close;
Qkon_opening_Tot.Close;
abort;
end
else
 { vpertama:=True;
  if cbTanggal2.Checked then
     vfilter:=' where (tgl>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal2.Date)+''',''dd/mm/yyyy'') and tgl<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglakhir2.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (Qkon_opening.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (Qkon_opening.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'KONSTRUKSI') then
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
    if Qkon_opening.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;
  Qkon_opening.DisableControls;
  Qkon_opening.Close;
  Qkon_opening.SetVariable('myparam',vfilter+vorder);
  Qkon_opening.Open;
  Qkon_opening_Tot.Close;
  Qkon_opening_Tot.SetVariable('myparam',vfilter);
  Qkon_opening_Tot.Open;
  Qkon_opening.EnableControls;
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',Qkon_opening_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('#.#,#;#.#,#; ',Qkon_opening_TotPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);
   }
  Qkon_opening.DisableControls;
  Qkon_opening.Close;
  Qkon_opening.SetVariable('pawal',VTglAwal2.Date);
  Qkon_opening.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_opening.Open;
  Qkon_opening_Tot.Close;
  Qkon_opening_Tot.SetVariable('pawal',VTglAwal2.Date);
  Qkon_opening_Tot.SetVariable('pakhir',vTglAkhir2.Date);
  Qkon_opening_Tot.Open;
  Qkon_opening.EnableControls;
  wwDBGrid2.ColumnByName('GULUNG').FooterValue:=FormatFloat('#.#,##;#.#,#; ',Qkon_opening_TotGULUNG.AsFloat);
  wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',Qkon_opening_TotPOTONG.AsFloat);
  wwDBGrid2.ColumnByName('KODI').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',Qkon_opening_TotKODI.AsFloat);
end;

procedure TFinishPemasukanFrm.BtnExport2Click(Sender: TObject);
begin
if Qkon_opening.Active then
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

procedure TFinishPemasukanFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TFinishPemasukanFrm.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel26.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
DMFrm.QCorak.Open;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg1Click(Sender: TObject);
begin
DMFrm.QCorak.Open;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TFinishPemasukanFrm.Look_KPCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_finishKP.AsString;
end;

procedure TFinishPemasukanFrm.Look_KPClick(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TFinishPemasukanFrm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TFinishPemasukanFrm.LookMesinFinishingCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//QMasterKD_MESIN.AsString:=DMFrm.QLookMesinFinishingKD_MESIN.AsString;
//QMasterMESIN.AsString:=DMFrm.QLookMesinFinishingNAMA_MESIN.AsString;
DBText7.Caption:= DMFrm.QLookMesinFinishingNAMA_MESIN.AsString;
end;

procedure TFinishPemasukanFrm.LookMesinFinishingEnter(Sender: TObject);
begin
DMFrm.QLookMesinFinishing.Close;
DMFrm.QLookMesinFinishing.SetVariable('KD_TRANSAKSI',DBText2.Caption);
DMFrm.QLookMesinFinishing.Open;
end;

procedure TFinishPemasukanFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TFinishPemasukanFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TFinishPemasukanFrm.LookSuplierClick(Sender: TObject);
begin
DMFrm.QSuplier.Open;
end;

procedure TFinishPemasukanFrm.LookWarnaClick(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TFinishPemasukanFrm.LookSuplierCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    //QDetailKD_REKANAN.AsString:=DMFrm.QSuplierKD_REKANAN.AsString;
    //QDetailNAMA_REKANAN.AsString:=DMFrm.QSuplierNAMA_REKANAN.AsString;
end;

procedure TFinishPemasukanFrm.LookWarnaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_WARNA.AsString:=DMFrm.QLookWarnaKD_WARNA.AsString;
    QDetailWARNA.AsString:=DMFrm.QLookWarnaWARNA.AsString;
end;

procedure TFinishPemasukanFrm.LookSuplierEnter(Sender: TObject);
begin
DMFrm.QSuplier.Open;
end;

procedure TFinishPemasukanFrm.LookWarnaEnter(Sender: TObject);
begin
DMFrm.QLookWarna.Open;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterOPERATOR.AsString:=DMFrm.QLookOperatorNAMA_KARYAWAN.AsString;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//QMasterOPERATOR2.AsString:=DMFrm.QLookOperatorNAMA_KARYAWAN.AsString;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg2Enter(Sender: TObject);
begin
DMFrm.QLookOperator.Open;
end;

procedure TFinishPemasukanFrm.wwDBLookupComboDlg3Enter(Sender: TObject);
begin
DMFrm.QLookOperator.Open;
end;

procedure TFinishPemasukanFrm.Button1Click(Sender: TObject);
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

end.
