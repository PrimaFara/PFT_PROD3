unit TerimaDariFinishing3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers, Oracle;

type
  TTerimaDariFinishing3Frm = class(TForm)
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
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailMUTU: TStringField;
    QDetailSATUAN: TStringField;
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
    wwCheckBox1: TwwCheckBox;
    wwDBNavigator1Button1: TwwNavButton;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label3: TLabel;
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
    LookKonstruksi: TwwDBLookupComboDlg;
    LookCorak: TwwDBLookupComboDlg;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    LookSatuan: TwwDBComboBox;
    LookMaster: TwwLookupDialog;
    DBText4: TDBText;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrlHarga: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBHarga: TQRDBText;
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText20: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    cbPreview: TCheckBox;
    QRLabel16: TQRLabel;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
    QMasterNO_NOTA: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label2: TLabel;
    Label4: TLabel;
    QDetailNIK: TStringField;
    QDetailNO_SERI_BEAM: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailQTY: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    LookJenis: TwwDBComboBox;
    QTotal: TOracleDataSet;
    QTotalTOTAL: TFloatField;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QAmbilData: TOracleQuery;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QMasterNO_BUKTI: TStringField;
    wwDBEdit1: TwwDBEdit;
    Label5: TLabel;
    wwDBEdit2: TwwDBEdit;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText6: TQRDBText;
    Label8: TLabel;
    Label9: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TerimaDariFinishing3Frm: TTerimaDariFinishing3Frm;

implementation

uses DM, Math;

{$R *.dfm}

procedure TTerimaDariFinishing3Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDariFinishing3Frm:=Nil;
end;

procedure TTerimaDariFinishing3Frm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);
end;

procedure TTerimaDariFinishing3Frm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDariFinishing3Frm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','993');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TTerimaDariFinishing3Frm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TTerimaDariFinishing3Frm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishing3Frm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TTerimaDariFinishing3Frm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TTerimaDariFinishing3Frm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TTerimaDariFinishing3Frm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TTerimaDariFinishing3Frm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TTerimaDariFinishing3Frm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TTerimaDariFinishing3Frm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TTerimaDariFinishing3Frm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TTerimaDariFinishing3Frm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TTerimaDariFinishing3Frm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='BK';
  QDetailJENIS.AsString:='PALEKAT';
  QDetailKD_CORAK.AsString:='000';
  QDetailCORAK.AsString:='-';
  QMasterISPOST.AsString:='0';
end;

procedure TTerimaDariFinishing3Frm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TTerimaDariFinishing3Frm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TTerimaDariFinishing3Frm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TTerimaDariFinishing3Frm.QMasterBeforeQuery(
  Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TTerimaDariFinishing3Frm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
end;

procedure TTerimaDariFinishing3Frm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalTOTAL.AsFloat);
end;

end.
