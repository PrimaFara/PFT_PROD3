unit TerimaDariFinishing2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle,
  ComCtrls,DateUtils, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, DBTables;

type
  TTerimaDariFinishing2Frm = class(TForm)
    PanelLeft: TPanel;
    QMaster: TOracleDataSet;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    dsQMaster: TwwDataSource;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_KONTRAK: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterKD_REKANAN: TFloatField;
    QMasterSTATUS: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterREKANAN: TStringField;
    QMasterISPOST: TStringField;
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
    QMasterNO_NOTA: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QTotal: TOracleDataSet;
    QAmbilData: TOracleQuery;
    QMasterNO_BUKTI: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
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
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    PanelHeader: TPanel;
    DBText1: TDBText;
    DB2: TDBText;
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
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBComboBox2: TwwDBComboBox;
    look_op: TwwDBLookupComboDlg;
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
    LabelBanner: TLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    VTglAwal: TwwDBDateTimePicker;
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
    Panel1: TPanel;
    Panel2: TPanel;
    PanelRight: TPanel;
    QBrowse: TOracleDataSet;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowseTotal: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QTotalBK: TFloatField;
    QTotalBS: TFloatField;
    QTotalPARAH: TFloatField;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
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
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiQTY: TFloatField;
    QPerKonstruksiKD_PRODUKSI: TStringField;
    QPerKonstruksiPOTONG: TFloatField;
    QPerKonstruksi_Tot: TOracleDataSet;
    QPerKonstruksi_TotTOTAL: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    DsPerKonstruksi: TwwDataSource;
    QPerOperator_Tot: TOracleDataSet;
    QPerOperator_TotTOTAL: TFloatField;
    QPerOperator_TotJML_POTONG: TFloatField;
    QPerOperator: TOracleDataSet;
    QPerOperatorREKANAN: TStringField;
    QPerOperatorKONSTRUKSI: TStringField;
    QPerOperatorQTY: TFloatField;
    QPerOperatorPOTONG: TFloatField;
    dsQPerOperator: TwwDataSource;
    wwDBGrid7: TwwDBGrid;
    Panel12: TPanel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    VTglAwal5: TwwDBDateTimePicker;
    VTglAkhir5: TwwDBDateTimePicker;
    Panel13: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label19: TLabel;
    wwDBComboBox1: TwwDBLookupComboDlg;
    TabSheet5: TTabSheet;
    PanelCenter1: TPanel;
    Panel6: TPanel;
    DBText2: TDBText;
    DBText7: TDBText;
    Label12: TLabel;
    DBText8: TDBText;
    Panel7: TPanel;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    CheckBox1: TCheckBox;
    RadioGroup2: TRadioGroup;
    Panel10: TPanel;
    Label13: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Button1: TButton;
    Edit2: TEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    Panel11: TPanel;
    wwCheckBox2: TwwCheckBox;
    ListView1: TListView;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2Button2: TwwNavButton;
    wwDBNavigator2Button3: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    wwDBNavigator2Button: TwwNavButton;
    wwDBNavigator2Button1: TwwNavButton;
    OpenDialog1: TOpenDialog;
    QDeleteDetail: TOracleQuery;
    QInsertDetail: TOracleQuery;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNIK: TStringField;
    QDetailNO_SERI_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailMUTU: TStringField;
    QDetailQTY: TFloatField;
    QDetailHARGA: TFloatField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailSATUAN: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QDetailTGL_JTH_TEMPO: TDateTimeField;
    QDetailQTY_TERIMA: TFloatField;
    QDetailQTY_LALU: TFloatField;
    QDetailQTY_ORG: TFloatField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailOPR_TENUN: TStringField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailNO_DESAIN: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_PO: TStringField;
    QDetailBGRADE: TFloatField;
    QDetailLD: TFloatField;
    QDetailLT: TFloatField;
    QDetailLPT: TFloatField;
    QDetailLRG: TFloatField;
    QDetailWL: TFloatField;
    QDetailFLO: TFloatField;
    QDetailNEPS: TFloatField;
    QDetailPP: TFloatField;
    QDetailWP: TFloatField;
    QDetailOJ: TFloatField;
    QDetailCRT: TFloatField;
    QDetailBTS: TFloatField;
    QDetailBTB: TFloatField;
    QDetailSC: TFloatField;
    QDetailSLL: TFloatField;
    QDetailCK: TFloatField;
    QDetailCAJ: TFloatField;
    QDetailKTR: TFloatField;
    QDetailPDK: TFloatField;
    QDetailKP: TFloatField;
    QDetailMC: TFloatField;
    QDetailBOSK: TFloatField;
    QDetailKS: TFloatField;
    QDetailBO: TFloatField;
    QDetailFC: TFloatField;
    QDetailHK: TFloatField;
    QDetailWM: TFloatField;
    QDetailSBK: TFloatField;
    QDetailUTS: TFloatField;
    QDetailKNB: TFloatField;
    QDetailPROD: TFloatField;
    QDetailBK: TFloatField;
    QDetailB1: TFloatField;
    QDetailB2: TFloatField;
    QDetailLELANG: TFloatField;
    QDetailBSPARAH: TFloatField;
    QDetailWEAVING: TStringField;
    QDetailP_BK: TFloatField;
    QDetailP_B1: TFloatField;
    QDetailP_B2: TFloatField;
    QDetailP_LELANG: TFloatField;
    QDetailP_BSPARAH: TFloatField;
    QBrowseREKANAN: TStringField;
    QBrowseMUTU: TStringField;
    QBrowseKODI_TOTAL: TFloatField;
    QBrowsePCS_TOTAL: TFloatField;
    QBrowseKODI_BK: TFloatField;
    QBrowsePCS_BK: TFloatField;
    QBrowseKODI_B1: TFloatField;
    QBrowsePCS_B1: TFloatField;
    QBrowseKODI_B2: TFloatField;
    QBrowsePCS_B2: TFloatField;
    QBrowseKODI_LELANG: TFloatField;
    QBrowsePCS_LELANG: TFloatField;
    QBrowseKODI_BSPARAH: TFloatField;
    QBrowsePCS_BSPARAH: TFloatField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseTotalTOTAL_KODI: TFloatField;
    QBrowseTotalTOTAL_PCS: TFloatField;
    QBrowseTotalBK_KODI: TFloatField;
    QBrowseTotalBK_PCS: TFloatField;
    QBrowseTotalB1_KODI: TFloatField;
    QBrowseTotalB1_PCS: TFloatField;
    QBrowseTotalB2_KODI: TFloatField;
    QBrowseTotalB2_PCS: TFloatField;
    QBrowseTotalLELANG_KODI: TFloatField;
    QBrowseTotalLELANG_PCS: TFloatField;
    QBrowseTotalBSPARAH_KODI: TFloatField;
    QBrowseTotalBSPARAH_PCS: TFloatField;
    QDetailKODE_PROD: TStringField;
    Look_KP: TwwDBLookupComboDlg;
    IdHTTP1: TIdHTTP;
    Button2: TButton;
    QBrowseKODE_PROD: TStringField;
    QBrowseRUANG: TStringField;
    QBrowseWEAVING: TStringField;
    QDetailRUANG: TStringField;
    ListView2: TListView;
    ListView3: TListView;
    Label5: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label16: TLabel;
    Edit4: TEdit;
    Button6: TButton;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label24: TLabel;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    QMasterTGL_INSPECT: TDateTimeField;
    QBrowseKODE: TStringField;
    QBrowsePROSES: TStringField;
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
    procedure look_opEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure VTglAwalChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure vTglAkhir3Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure VTglAwal5Change(Sender: TObject);
    procedure VTglAkhir5Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure wwDBNavigator2ButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure wwDBNavigator2DeleteClick(Sender: TObject);
    procedure wwDBNavigator2InsertClick(Sender: TObject);
    procedure wwDBNavigator2PostClick(Sender: TObject);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPEnter(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure wwDBNavigator2CancelClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure wwCheckBox2Enter(Sender: TObject);
  private
    vorder,vfilter:string;
    { Private declarations }
  public
    { Public declarations }
    procedure baca_tab(SheetIndex:integer);
    procedure baca_tab2(SheetIndex:integer);
    procedure baca_tab3(SheetIndex:integer);
  end;

var

  TerimaDariFinishing2Frm: TTerimaDariFinishing2Frm;

implementation

uses DM, Math, HasilTenun2, ComObj;

{$R *.dfm}

procedure TTerimaDariFinishing2Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDariFinishing2Frm:=Nil;
end;

procedure TTerimaDariFinishing2Frm.baca_tab(SheetIndex:integer);
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

//B2 start
procedure TTerimaDariFinishing2Frm.baca_tab2(SheetIndex:integer);
Var
  Xlapp1, Sheet:Variant ;
  i, MaxRow, MaxCol,X, Y:integer ;
  dtTmp,str:string;
  row : TListItem;
begin
  Str:=trim(Edit3.Text);
  XLApp1 := CreateOleObject('excel.application');
  XLApp1.Workbooks.open(Str) ;
  Sheet := XLApp1.WorkSheets[SheetIndex] ;
  MaxRow := Sheet.Usedrange.EntireRow.count ;
  MaxCol := sheet.Usedrange.EntireColumn.count;
  ListView2.Columns.Clear;
  for i:=1 to MaxCol do
  begin
   ListView2.Columns.Add.Caption:=sheet.cells.item[2,i].value;
  end;
  for x:=3 to MaxRow do
  begin
   row:=ListView2.Items.add;
   row.Caption:=sheet.cells.item[x,1];
   for y:=2 to MaxCol do
      begin
       row.SubItems.Add('');
       dtTmp:=sheet.cells.item[x,y];
       ListView2.Items[x-3].SubItems.Strings[y-2]:=dtTmp
      end;
  end;
 XLApp1.Workbooks.close;
 PageControl1.ActivePageIndex:=0;
end;
//end b2

//start lelang
procedure TTerimaDariFinishing2Frm.baca_tab3(SheetIndex:integer);
Var
  Xlapp1, Sheet:Variant ;
  i, MaxRow, MaxCol,X, Y:integer ;
  dtTmp,str:string;
  row : TListItem;
begin
  Str:=trim(Edit4.Text);
  XLApp1 := CreateOleObject('excel.application');
  XLApp1.Workbooks.open(Str) ;
  Sheet := XLApp1.WorkSheets[SheetIndex] ;
  MaxRow := Sheet.Usedrange.EntireRow.count ;
  MaxCol := sheet.Usedrange.EntireColumn.count;
  ListView3.Columns.Clear;
  for i:=1 to MaxCol do
  begin
   ListView3.Columns.Add.Caption:=sheet.cells.item[2,i].value;
  end;
  for x:=3 to MaxRow do
  begin
   row:=ListView3.Items.add;
   row.Caption:=sheet.cells.item[x,1];
   for y:=2 to MaxCol do
      begin
       row.SubItems.Add('');
       dtTmp:=sheet.cells.item[x,y];
       ListView3.Items[x-3].SubItems.Strings[y-2]:=dtTmp
      end;
  end;
 XLApp1.Workbooks.close;
 PageControl1.ActivePageIndex:=0;
end;
//end lelang

procedure TTerimaDariFinishing2Frm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
//  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
   // ', '+IntToStr(PanelRight.Width);
end;

procedure TTerimaDariFinishing2Frm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDariFinishing2Frm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','898');
 QTransaksi.Open;
 TerimaDariFinishing2Frm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TTerimaDariFinishing2Frm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  DMFrm.QUserTime.Open;
  QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
  QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TTerimaDariFinishing2Frm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishing2Frm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishing2Frm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.SetVariable('pkode','898');
      FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
      QDetail.Close;
      QDetail.Open;
      QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
  end;
end;

procedure TTerimaDariFinishing2Frm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TTerimaDariFinishing2Frm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TTerimaDariFinishing2Frm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TTerimaDariFinishing2Frm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TTerimaDariFinishing2Frm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TTerimaDariFinishing2Frm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TTerimaDariFinishing2Frm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TTerimaDariFinishing2Frm.QDetailNewRecord(DataSet: TDataSet);
begin
  DMFrm.QUserTime.Open;
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='BK';
  QDetailJENIS.AsString:='PALEKAT';
  QDetailKD_CORAK.AsString:='000';
  QDetailCORAK.AsString:='-';
end;

procedure TTerimaDariFinishing2Frm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TTerimaDariFinishing2Frm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TTerimaDariFinishing2Frm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TTerimaDariFinishing2Frm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TTerimaDariFinishing2Frm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
end;

procedure TTerimaDariFinishing2Frm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QTotalBS.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);
end;

procedure TTerimaDariFinishing2Frm.BitBtn4Click(Sender: TObject);
begin
  wwDBGrid1Enter(nil);
  HasilTenun2Frm:=THasilTenun2Frm.Create(Self);
  HasilTenun2Frm.QDetail.Close;
  HasilTenun2Frm.QDetail.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  HasilTenun2Frm.QDetail.Open;
 { HasilTenun2Frm.QMaster.Close;
  HasilTenun2Frm.QMaster.SetVariable('no_reg',HasilTenun2Frm.QDetailNO_REG_FINISH.AsInteger);
  HasilTenun2Frm.QMaster.Open; }
  HasilTenun2Frm.ShowModal;
  HasilTenun2Frm.Free;
end;

procedure TTerimaDariFinishing2Frm.BitBtn3Click(Sender: TObject);
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

procedure TTerimaDariFinishing2Frm.look_opEnter(Sender: TObject);
begin
DMFrm.QOp_Inspect.Open;
end;

procedure TTerimaDariFinishing2Frm.FormShow(Sender: TObject);
begin
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());

  VTglAwal3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal3.Date:=Trunc(date());

  vTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir3.Date:=Trunc(date());

  VTglAwal5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal5.Date:=Trunc(date());

  vTglAkhir5.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir5.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir5.Date:=Trunc(date());

end;

procedure TTerimaDariFinishing2Frm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vkd : string;

  t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12: real;
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
        vorder:=' order by no_reg';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

    t1 := 0; t2 := 0; t3 := 0; t4 := 0; t5 := 0; t6 := 0; t7 := 0; t8 := 0; t9 := 0; t10 := 0; t11 := 0; t12 := 0;

    while not QBrowse.Eof do
    begin
            t1 := t1 + QBrowseKODI_TOTAL.AsFloat;
            t2 := t2 + QBrowsePCS_TOTAL.AsFloat;
            t3 := t3 + QBrowseKODI_BK.AsFloat;
            t4 := t4 + QBrowsePCS_BK.AsFloat;
            t5 := t5 + QBrowseKODI_B1.AsFloat;
            t6 := t6 + QBrowsePCS_B1.AsFloat;
            t7 := t7 + QBrowseKODI_B2.AsFloat;
            t8 := t8 + QBrowsePCS_B2.AsFloat;
            t9 := t9 + QBrowseKODI_LELANG.AsFloat;
            t10 := t10 + QBrowsePCS_LELANG.AsFloat;
            t11 := t11 + QBrowseKODI_BSPARAH.AsFloat;
            t12 := t12 + QBrowsePCS_BSPARAH.AsFloat;

            QBrowse.Next;
    end;


  wwDBGrid1xxxxx.ColumnByName('KODI_TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t1);
  wwDBGrid1xxxxx.ColumnByName('PCS_TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t2);
  wwDBGrid1xxxxx.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t3);
  wwDBGrid1xxxxx.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t4);
  wwDBGrid1xxxxx.ColumnByName('KODI_B1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t5);
  wwDBGrid1xxxxx.ColumnByName('PCS_B1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t6);
  wwDBGrid1xxxxx.ColumnByName('KODI_B2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t7);
  wwDBGrid1xxxxx.ColumnByName('PCS_B2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t8);
  wwDBGrid1xxxxx.ColumnByName('KODI_LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t9);
  wwDBGrid1xxxxx.ColumnByName('PCS_LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t10);
  wwDBGrid1xxxxx.ColumnByName('KODI_BSPARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t11);
  wwDBGrid1xxxxx.ColumnByName('PCS_BSPARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',t12);

  //QBrowseTotal.Close;
  //QBrowseTotal.SetVariable('myparam',vfilter);
  //QBrowseTotal.Open;
  // QBrowse.EnableControls;


  // wwDBGrid1xxxxx.ColumnByName('KODI_TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalTOTAL_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalTOTAL_PCS.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('KODI_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalBK_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalBK_PCS.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('KODI_B1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalB1_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_B1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalB1_PCS.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('KODI_B2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalB2_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_B2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalB2_PCS.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('KODI_LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalLELANG_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_LELANG').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalLELANG_PCS.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('KODI_BSPARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalBSPARAH_KODI.AsFloat);
  // wwDBGrid1xxxxx.ColumnByName('PCS_BSPARAH').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QBrowseTotalBSPARAH_PCS.AsFloat);


end;


procedure TTerimaDariFinishing2Frm.BtnExportClick(Sender: TObject);
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

procedure TTerimaDariFinishing2Frm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TTerimaDariFinishing2Frm.cbTanggalClick(Sender: TObject);
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

procedure TTerimaDariFinishing2Frm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TTerimaDariFinishing2Frm.VTglAwalChange(Sender: TObject);
begin
vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TTerimaDariFinishing2Frm.cbOtomatisClick(Sender: TObject);
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

procedure TTerimaDariFinishing2Frm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);


end;

procedure TTerimaDariFinishing2Frm.QBrowseAfterScroll(DataSet: TDataSet);
begin
 LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TTerimaDariFinishing2Frm.TabSheet2Show(Sender: TObject);
begin
vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
end;

procedure TTerimaDariFinishing2Frm.TabSheet1Show(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','898');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Close;
 QDetail.Close;
 QMaster.Open;
 QDetail.Open;
end;

procedure TTerimaDariFinishing2Frm.VTglAwal3Change(Sender: TObject);
begin
vTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TTerimaDariFinishing2Frm.vTglAkhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TTerimaDariFinishing2Frm.BitBtn7Click(Sender: TObject);
begin
  QPerKonstruksi.DisableControls;
  QPerKonstruksi.Close;
  QPerKonstruksi.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi.Open;
  QPerKonstruksi_Tot.Close;
  QPerKonstruksi_Tot.SetVariable('pawal',VTglAwal3.Date);
  QPerKonstruksi_Tot.SetVariable('pakhir',vTglAkhir3.Date);
  QPerKonstruksi_Tot.Open;
  QPerKonstruksi.EnableControls;
  wwDBGrid5.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotTOTAL.AsFloat);
  wwDBGrid5.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerKonstruksi_TotPOTONG.AsFloat);

end;

procedure TTerimaDariFinishing2Frm.BtnExport3Click(Sender: TObject);
begin
 if QPerKonstruksi.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet3.Caption+' ReInspecting';
             wwDBGrid5.ExportOptions.TitleName:=''+TabSheet3.Caption+' ReInspecting';
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

procedure TTerimaDariFinishing2Frm.VTglAwal5Change(Sender: TObject);
begin
VTglAkhir5.Date:=(VTglAwal5.Date);
end;

procedure TTerimaDariFinishing2Frm.VTglAkhir5Change(Sender: TObject);
begin
if VTglAwal5.Date>vTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir5.Date:=VTglAwal3.Date;
  end;
end;

procedure TTerimaDariFinishing2Frm.BitBtn9Click(Sender: TObject);
begin
  QPerOperator.DisableControls;
  QPerOperator.Close;
  QPerOperator.SetVariable('pawal',VTglAwal5.Date);
  QPerOperator.SetVariable('pakhir',vTglAkhir5.Date);
  QPerOperator.Open;
  QPerOperator_Tot.Close;
  QPerOperator_Tot.SetVariable('pawal',VTglAwal5.Date);
  QPerOperator_Tot.SetVariable('pakhir',vTglAkhir5.Date);
  QPerOperator_Tot.Open;
  QPerOperator.EnableControls;
  wwDBGrid7.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerOperator_TotJML_POTONG.AsFloat);
  wwDBGrid7.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QPerOperator_TotTOTAL.AsFloat);
  //wwDBGrid2.ColumnByName('POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',Qkon_opening_TotPOTONG.AsFloat);

end;

procedure TTerimaDariFinishing2Frm.BitBtn10Click(Sender: TObject);
begin
if QPerOperator.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet4.Caption+' ReInspecting';
             wwDBGrid7.ExportOptions.TitleName:=''+TabSheet4.Caption+' ReInspecting';
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

procedure TTerimaDariFinishing2Frm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TTerimaDariFinishing2Frm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TTerimaDariFinishing2Frm.wwDBNavigator2ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TTerimaDariFinishing2Frm.Button1Click(Sender: TObject);
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

procedure TTerimaDariFinishing2Frm.wwDBNavigator2DeleteClick(
  Sender: TObject);
Var
Reg:String;
begin
ListView1.Clear;
ListView2.Clear;
ListView3.Clear;

Edit2.Clear;
Edit3.Clear;
Edit4.Clear;

QDetail.Close;
  Reg:=QMasterNO_REG.AsString;
  QDetail.Open;
//QDetail.SQL.Text('delete from ')
  QDeleteDetail.Close;
  QDeleteDetail.SQL.Clear;
  QDeleteDetail.SQL.Add('begin') ;
  QDeleteDetail.SQL.Add('delete from ipisma_db5.bukti3_detail where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;

procedure TTerimaDariFinishing2Frm.wwDBNavigator2InsertClick(
  Sender: TObject);
begin
ListView1.Clear;
ListView2.Clear;
ListView3.Clear;

Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
end;

procedure TTerimaDariFinishing2Frm.wwDBNavigator2PostClick(Sender: TObject);
var i:Integer;
Reg:Integer;
Item1, Item2, Item3: TListItem;
                   //DEFECT
PROD,BK,P_BK,
B1,P_B1,
B2,P_B2,
LELANG,P_LELANG,
BSPARAH,P_BSPARAH,
                   //Variabel B1
LD,LT,LPT,LRG,WL,FLO,NEPS,PP,WP,OJ,CRT,BTS,BTB,SC,SLL,CK,CAJ,KTR,PDK,
KP,MC,BOSK,KS,BO,FC,HK,WM,

                   //Variabel B2
LD2,LT2,LPT2,LRG2,WL2,FLO2,NEPS2,PP2,WP2,OJ2,CRT2,BTS2,BTB2,SC2,SLL2,
CK2,CAJ2,KTR2,PDK2,KP2,MC2,BOSK2,KS2,BO2,FC2,HK2,WM2,

                   //Variabel lELANG
SBK,UTS,KNB, LELANG2
:Real;
NO,KPROD,CORAK,KONS,QTY,JENIS,WEAVING,RUANG,RegDet, KODE, PROSES, REKANAN:string;

begin
  if (ListView1.Items.Count <> ListView2.Items.Count) or
     (ListView1.Items.Count <> ListView3.Items.Count) then
  begin
    ShowMessage('Jumlah data di ketiga ListView harus sama.');
    Exit;
  end;

  // Ambil nomor registrasi dari QMasterNO_REG
  Reg := StrToInt(QMasterNO_REG.AsString);

  // Iterasi melalui data dalam ListView1 (asumsikan ListView1 memiliki jumlah data yang sama dengan ListView2 dan ListView3)
  for i := 0 to ListView1.Items.Count - 1 do
  begin
    // Ambil data dari ListView1
    Item1 := ListView1.Items[i];
    KPROD := Item1.SubItems[0];
    CORAK := Item1.SubItems[1];
    KONS := Item1.SubItems[2];
    WEAVING := Item1.SubItems[3];
    RUANG := Item1.SubItems[4];

    KODE := Item1.SubItems[5];
    PROSES := Item1.SubItems[6];
    REKANAN := Item1.SubItems[7];

    PROD := StrToFloatDef(Item1.SubItems[8], 0);
    BK := StrToFloatDef(Item1.SubItems[9], 0);
    P_BK := StrToFloatDef(Item1.SubItems[10], 0);
    B1 := StrToFloatDef(Item1.SubItems[11], 0);
    P_B1 := StrToFloatDef(Item1.SubItems[12], 0);
    LD := StrToFloatDef(Item1.SubItems[13], 0);
    LT := StrToFloatDef(Item1.SubItems[14], 0);
    LPT := StrToFloatDef(Item1.SubItems[15], 0);
    LRG := StrToFloatDef(Item1.SubItems[16], 0);
    WL := StrToFloatDef(Item1.SubItems[17], 0);
    FLO := StrToFloatDef(Item1.SubItems[18], 0);
    NEPS := StrToFloatDef(Item1.SubItems[19], 0);
    PP := StrToFloatDef(Item1.SubItems[20], 0);
    WP := StrToFloatDef(Item1.SubItems[21], 0);
    OJ := StrToFloatDef(Item1.SubItems[22], 0);
    CRT := StrToFloatDef(Item1.SubItems[23], 0);
    BTS := StrToFloatDef(Item1.SubItems[24], 0);
    BTB := StrToFloatDef(Item1.SubItems[25], 0);
    SC := StrToFloatDef(Item1.SubItems[26], 0);
    SLL := StrToFloatDef(Item1.SubItems[27], 0);
    CK := StrToFloatDef(Item1.SubItems[28], 0);
    CAJ := StrToFloatDef(Item1.SubItems[29], 0);
    KTR := StrToFloatDef(Item1.SubItems[30], 0);
    PDK := StrToFloatDef(Item1.SubItems[31], 0);
    KP := StrToFloatDef(Item1.SubItems[32], 0);
    MC := StrToFloatDef(Item1.SubItems[33], 0);
    BOSK := StrToFloatDef(Item1.SubItems[34], 0);
    KS := StrToFloatDef(Item1.SubItems[35], 0);
    BO := StrToFloatDef(Item1.SubItems[36], 0);
    FC := StrToFloatDef(Item1.SubItems[37], 0);
    HK := StrToFloatDef(Item1.SubItems[38], 0);
    WM := StrToFloatDef(Item1.SubItems[39], 0);


    // Ambil data dari ListView2
    Item2 := ListView2.Items[i];
    B2 := StrToFloatDef(Item2.SubItems[6], 0);
    P_B2 := StrToFloatDef(Item2.SubItems[7], 0);
    LD2 := StrToFloatDef(Item2.SubItems[8], 0);
    LT2 := StrToFloatDef(Item2.SubItems[9], 0);
    LPT2 := StrToFloatDef(Item2.SubItems[10], 0);
    LRG2 := StrToFloatDef(Item2.SubItems[11], 0);
    WL2 := StrToFloatDef(Item2.SubItems[12], 0);
    FLO2 := StrToFloatDef(Item2.SubItems[13], 0);
    NEPS2 := StrToFloatDef(Item2.SubItems[14], 0);
    PP2 := StrToFloatDef(Item2.SubItems[15], 0);
    WP2 := StrToFloatDef(Item2.SubItems[16], 0);
    OJ2 := StrToFloatDef(Item2.SubItems[17], 0);
    CRT2 := StrToFloatDef(Item2.SubItems[18], 0);
    BTS2 := StrToFloatDef(Item2.SubItems[19], 0);
    BTB2 := StrToFloatDef(Item2.SubItems[20], 0);
    SC2 := StrToFloatDef(Item2.SubItems[21], 0);
    SLL2 := StrToFloatDef(Item2.SubItems[22], 0);
    CK2 := StrToFloatDef(Item2.SubItems[23], 0);
    CAJ2 := StrToFloatDef(Item2.SubItems[24], 0);
    KTR2 := StrToFloatDef(Item2.SubItems[25], 0);
    PDK2 := StrToFloatDef(Item2.SubItems[26], 0);
    KP2 := StrToFloatDef(Item2.SubItems[27], 0);
    MC2 := StrToFloatDef(Item2.SubItems[28], 0);
    BOSK2 := StrToFloatDef(Item2.SubItems[29], 0);
    KS2 := StrToFloatDef(Item2.SubItems[30], 0);
    BO2 := StrToFloatDef(Item2.SubItems[31], 0);
    FC2 := StrToFloatDef(Item2.SubItems[32], 0);
    HK2 := StrToFloatDef(Item2.SubItems[33], 0);
    WM2 := StrToFloatDef(Item2.SubItems[34], 0);
    // Lanjutkan untuk semua kolom yang sesuai

    // Ambil data dari ListView3
    Item3 := ListView3.Items[i];
    LELANG := StrToFloatDef(Item3.SubItems[6], 0);
    P_LELANG := StrToFloatDef(Item3.SubItems[7], 0);
    BSPARAH := StrToFloatDef(Item3.SubItems[8], 0);
    P_BSPARAH := StrToFloatDef(Item3.SubItems[9], 0);
    SBK := StrToFloatDef(Item3.SubItems[10], 0);
    UTS := StrToFloatDef(Item3.SubItems[11], 0);
    KNB := StrToFloatDef(Item3.SubItems[12], 0);
    LELANG2 := StrToFloatDef(Item3.SubItems[13], 0);
    // Lanjutkan untuk semua kolom yang sesuai

    // Set variabel dalam query untuk menyimpan ke database
    QInsertDetail.Close;
    QInsertDetail.SetVariable('reg', Reg);
    QInsertDetail.SetVariable('kdprod', KPROD);
    QInsertDetail.SetVariable('corak', CORAK);
    QInsertDetail.SetVariable('kons', KONS);
    QInsertDetail.SetVariable('weav', WEAVING);
    QInsertDetail.SetVariable('ruang', RUANG);

    QInsertDetail.SetVariable('kode', KODE);
    QInsertDetail.SetVariable('proses', PROSES);
    QInsertDetail.SetVariable('rekanan', REKANAN);

    QInsertDetail.SetVariable('prod', PROD);
    QInsertDetail.SetVariable('bk', BK);
    QInsertDetail.SetVariable('p_bk', P_BK);
    QInsertDetail.SetVariable('b1', B1);
    QInsertDetail.SetVariable('p_b1', P_B1);

    // Set variabel defect dalam query
    QInsertDetail.SetVariable('LD', LD);
    QInsertDetail.SetVariable('LT', LT);
    QInsertDetail.SetVariable('LPT', LPT);
    QInsertDetail.SetVariable('LRG', LRG);
    QInsertDetail.SetVariable('WL', WL);
    QInsertDetail.SetVariable('FLO', FLO);
    QInsertDetail.SetVariable('NEPS', NEPS);
    QInsertDetail.SetVariable('PP', PP);
    QInsertDetail.SetVariable('WP', WP);
    QInsertDetail.SetVariable('OJ', OJ);
    QInsertDetail.SetVariable('CRT', CRT);
    QInsertDetail.SetVariable('BTS', BTS);
    QInsertDetail.SetVariable('BTB', BTB);
    QInsertDetail.SetVariable('SC', SC);
    QInsertDetail.SetVariable('SLL', SLL);
    QInsertDetail.SetVariable('CK', CK);
    QInsertDetail.SetVariable('CAJ', CAJ);
    QInsertDetail.SetVariable('KTR', KTR);
    QInsertDetail.SetVariable('PDK', PDK);
    QInsertDetail.SetVariable('KP', KP);
    QInsertDetail.SetVariable('MC', MC);
    QInsertDetail.SetVariable('BOSK', BOSK);
    QInsertDetail.SetVariable('KS', KS);
    QInsertDetail.SetVariable('BO', BO);
    QInsertDetail.SetVariable('FC', FC);
    QInsertDetail.SetVariable('HK', HK);
    QInsertDetail.SetVariable('WM', WM);

    // di Dalam B2 
    QInsertDetail.SetVariable('b2', B2);
    QInsertDetail.SetVariable('p_b2', P_B2);

    // Defect
    QInsertDetail.SetVariable('LD2', LD2);
    QInsertDetail.SetVariable('LT2', LT2);
    QInsertDetail.SetVariable('LPT2', LPT2);
    QInsertDetail.SetVariable('LRG2', LRG2);
    QInsertDetail.SetVariable('WL2', WL2);
    QInsertDetail.SetVariable('FLO2', FLO2);
    QInsertDetail.SetVariable('NEPS2', NEPS2);
    QInsertDetail.SetVariable('PP2', PP2);
    QInsertDetail.SetVariable('WP2', WP2);
    QInsertDetail.SetVariable('OJ2', OJ2);
    QInsertDetail.SetVariable('CRT2', CRT2);
    QInsertDetail.SetVariable('BTS2', BTS2);
    QInsertDetail.SetVariable('BTB2', BTB2);
    QInsertDetail.SetVariable('SC2', SC2);
    QInsertDetail.SetVariable('SLL2', SLL2);
    QInsertDetail.SetVariable('CK2', CK2);
    QInsertDetail.SetVariable('CAJ2', CAJ2);
    QInsertDetail.SetVariable('KTR2', KTR2);
    QInsertDetail.SetVariable('PDK2', PDK2);
    QInsertDetail.SetVariable('KP2', KP2);
    QInsertDetail.SetVariable('MC2', MC2);
    QInsertDetail.SetVariable('BOSK2', BOSK2);
    QInsertDetail.SetVariable('KS2', KS2);
    QInsertDetail.SetVariable('BO2', BO2);
    QInsertDetail.SetVariable('FC2', FC2);
    QInsertDetail.SetVariable('HK2', HK2);
    QInsertDetail.SetVariable('WM2', WM2);

    // di Dalam Lelang 
    QInsertDetail.SetVariable('lelang', LELANG);
    QInsertDetail.SetVariable('p_lelang', P_LELANG);
    QInsertDetail.SetVariable('bsparah', BSPARAH);
    QInsertDetail.SetVariable('p_bsparah', P_BSPARAH);
    
    QInsertDetail.SetVariable('SBK', SBK);
    QInsertDetail.SetVariable('UTS', UTS);
    QInsertDetail.SetVariable('KNB', KNB);
    QInsertDetail.SetVariable('LELANG2', LELANG2);
    // Lanjutkan untuk semua kolom yang sesuai dari ListView2 dan ListView3

    // Eksekusi query
    QInsertDetail.Execute;
  end;

  MessageDlg('Data Sudah Disimpan', mtInformation, [mbOK], 0);

  //Clear ListView jika perlu
  //ListView1.Clear;
  //ListView2.Clear;
  //ListView3.Clear;
end;
 


procedure TTerimaDariFinishing2Frm.Look_KPClick(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TTerimaDariFinishing2Frm.Look_KPCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectSUB_KELOMPOK.AsString;
    QDetailKODE_PROD.AsString:=DMFrm.QKP_Hasil_InspectKP.AsString;
end;

procedure TTerimaDariFinishing2Frm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
  DMFrm.QKonstruksi_finish.Open;
  DMFrm.QKonstruksi_Kp.Open;
end;

procedure TTerimaDariFinishing2Frm.Button2Click(Sender: TObject);
var
  ExcelTemplateURL: string;
  LocalFilePath: string;
  FileStream: TFileStream;
  IdHTTP1: TIdHTTP;
  SaveDialog: TSaveDialog;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  SaveDialog := TSaveDialog.Create(nil);
  try
    // Inisialisasi SaveDialog
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.Filter := 'File Excel (*.xls)|*.xls|Semua File (*.*)|*.*';
    SaveDialog.FileName := 'TEMPLATE_RE-INSPECTING_SARUNG_B1.xls';

    // Menampilkan dialog Save As
    if SaveDialog.Execute then
    begin
      LocalFilePath := SaveDialog.FileName;

      try
        // URL tempat file template Excel disimpan
        ExcelTemplateURL := 'http:\\192.168.1.226\Template\TEMPLATE_RE-INSPECTING_SARUNG_B1.xls';

        // Mengunduh file Excel dari URL dan menyimpannya secara langsung
        FileStream := TFileStream.Create(LocalFilePath, fmCreate);
        try
          IdHTTP1.Get(ExcelTemplateURL, FileStream);
        finally
          FileStream.Free;
        end;

        ShowMessage('File template berhasil diunduh. Lokasi: ' + LocalFilePath);
      except
        on E: Exception do
          ShowMessage('Gagal mengunduh file template: ' + E.Message);
      end;
    end
    else
    begin
      ShowMessage('Proses penyimpanan file dibatalkan.');
    end;
  finally
    IdHTTP1.Free;
    SaveDialog.Free;
  end;
end;

//button B1

procedure TTerimaDariFinishing2Frm.Button3Click(Sender: TObject);
var i : integer;
begin
 if OpenDialog2.Execute then
  begin
    Edit3.Text:=OpenDialog2.FileName;
    baca_tab2(1);
      for i:=0 to ListView2.Columns.Count-1 do
      begin
        ListView2.Columns[i].Width :=-2;
      end;
  end;
end;

procedure TTerimaDariFinishing2Frm.Button6Click(Sender: TObject);
var i : integer;
begin
 if OpenDialog3.Execute then
  begin
    Edit4.Text:=OpenDialog3.FileName;
    baca_tab3(1);
      for i:=0 to ListView3.Columns.Count-1 do
      begin
        ListView3.Columns[i].Width :=-2;
      end;
  end;
end;

procedure TTerimaDariFinishing2Frm.Button4Click(Sender: TObject);
var
  ExcelTemplateURL: string;
  LocalFilePath: string;
  FileStream: TFileStream;
  IdHTTP1: TIdHTTP;
  SaveDialog: TSaveDialog;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  SaveDialog := TSaveDialog.Create(nil);
  try
    // Inisialisasi SaveDialog
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.Filter := 'File Excel (*.xls)|*.xls|Semua File (*.*)|*.*';
    SaveDialog.FileName := 'TEMPLATE_RE-INSPECTING_SARUNG_B2.xls';

    // Menampilkan dialog Save As
    if SaveDialog.Execute then
    begin
      LocalFilePath := SaveDialog.FileName;

      try
        // URL tempat file template Excel disimpan
        ExcelTemplateURL := 'http:\\192.168.1.226\Template\TEMPLATE_RE-INSPECTING_SARUNG_B2.xls';

        // Mengunduh file Excel dari URL dan menyimpannya secara langsung
        FileStream := TFileStream.Create(LocalFilePath, fmCreate);
        try
          IdHTTP1.Get(ExcelTemplateURL, FileStream);
        finally
          FileStream.Free;
        end;

        ShowMessage('File template berhasil diunduh. Lokasi: ' + LocalFilePath);
      except
        on E: Exception do
          ShowMessage('Gagal mengunduh file template: ' + E.Message);
      end;
    end
    else
    begin
      ShowMessage('Proses penyimpanan file dibatalkan.');
    end;
  finally
    IdHTTP1.Free;
    SaveDialog.Free;
  end;
end;

procedure TTerimaDariFinishing2Frm.Button5Click(Sender: TObject);
var
  ExcelTemplateURL: string;
  LocalFilePath: string;
  FileStream: TFileStream;
  IdHTTP1: TIdHTTP;
  SaveDialog: TSaveDialog;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  SaveDialog := TSaveDialog.Create(nil);
  try
    // Inisialisasi SaveDialog
    SaveDialog.DefaultExt := 'xls';
    SaveDialog.Filter := 'File Excel (*.xls)|*.xls|Semua File (*.*)|*.*';
    SaveDialog.FileName := 'TEMPLATE_RE-INSPECTING_SARUNG_LELANG.xls';

    // Menampilkan dialog Save As
    if SaveDialog.Execute then
    begin
      LocalFilePath := SaveDialog.FileName;

      try
        // URL tempat file template Excel disimpan
        ExcelTemplateURL := 'http:\\192.168.1.226\Template\TEMPLATE_RE-INSPECTING_SARUNG_LELANG.xls';

        // Mengunduh file Excel dari URL dan menyimpannya secara langsung
        FileStream := TFileStream.Create(LocalFilePath, fmCreate);
        try
          IdHTTP1.Get(ExcelTemplateURL, FileStream);
        finally
          FileStream.Free;
        end;

        ShowMessage('File template berhasil diunduh. Lokasi: ' + LocalFilePath);
      except
        on E: Exception do
          ShowMessage('Gagal mengunduh file template: ' + E.Message);
      end;
    end
    else
    begin
      ShowMessage('Proses penyimpanan file dibatalkan.');
    end;
  finally
    IdHTTP1.Free;
    SaveDialog.Free;
  end;
end;

procedure TTerimaDariFinishing2Frm.wwDBNavigator2CancelClick(
  Sender: TObject);
Var
Reg:String;
begin
ListView1.Clear;
ListView2.Clear;
ListView3.Clear;

Edit2.Clear;
Edit3.Clear;
Edit4.Clear;

QDetail.Close;
  Reg:=QMasterNO_REG.AsString;
  QDetail.Open;
//QDetail.SQL.Text('delete from ')
  QDeleteDetail.Close;
  QDeleteDetail.SQL.Clear;
  QDeleteDetail.SQL.Add('begin') ;
  QDeleteDetail.SQL.Add('delete from ipisma_db5.bukti3_detail where no_reg = '+Reg+';');
  QDeleteDetail.SQL.Add('commit;') ;
  QDeleteDetail.SQL.Add('end;') ;
  QDeleteDetail.Execute;
end;


procedure TTerimaDariFinishing2Frm.TabSheet5Show(Sender: TObject);
begin
  //QMaster.Close;
  //QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
  //QMaster.SetVariable('kd_transaksi',QBrowseKD_TRANSAKSI.AsInteger);
  //QMaster.Open;
  //QDetail.Close;
  //QDetail.Open;

  QTransaksi.SetVariable('kd_transaksi','898');
  QTransaksi.Open;
  Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
  QMaster.Close;
  QDetail.Close;
  QMaster.Open;
  QDetail.Open;
end;

procedure TTerimaDariFinishing2Frm.wwCheckBox2Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

end.
