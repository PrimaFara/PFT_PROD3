unit KeluarLain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers;

type
  TKeluarLainFrm = class(TForm)
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
    DBMemo1: TDBMemo;
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
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    qrlHarga: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
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
    QDetailKD_ITEM: TStringField;
    QDetailQTY: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailJENIS: TStringField;
    QRDBText12: TQRDBText;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QRDBText7: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KeluarLainFrm: TKeluarLainFrm;

implementation

uses DM, Math;

{$R *.dfm}

procedure TKeluarLainFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  KeluarLainFrm:=Nil;
end;

procedure TKeluarLainFrm.FormResize(Sender: TObject);
begin
  PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);
end;

procedure TKeluarLainFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TKeluarLainFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','999');
 QTransaksi.Open;
 Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TKeluarLainFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTGL.AsDateTime:=Trunc(Date);
end;

procedure TKeluarLainFrm.LookRekananEnter(Sender: TObject);
begin
 DMFrm.QRekanan.Open;
end;

procedure TKeluarLainFrm.LookRekananClick(Sender: TObject);
begin
   DMFrm.QRekanan.Close;
   DMFrm.QRekanan.Open;
end;

procedure TKeluarLainFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TKeluarLainFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    DataSet.Cancel;
  end;

end;

procedure TKeluarLainFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TKeluarLainFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TKeluarLainFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
   QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
end;

procedure TKeluarLainFrm.LookCorakCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If modified then
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TKeluarLainFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TKeluarLainFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TKeluarLainFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailSATUAN.AsString:='POTONG';
  QDetailMUTU.AsString:='KW1';
  QDetailJENIS.AsString:='PALEKAT';
end;

procedure TKeluarLainFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TKeluarLainFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TKeluarLainFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TKeluarLainFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

end.
