unit PackingListKirimMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, OleCtrls, SHDocVw;

type
  TPackingListMitraFrm = class(TForm)
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
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
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
    QAmbil: TOracleDataSet;
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
    QAmbilNO_NOTA: TStringField;
    QAmbilNO_REG: TFloatField;
    QAmbilTGL: TDateTimeField;
    QAmbilNO_ORDER: TStringField;
    QAmbilNO_REFF: TStringField;
    QAmbilKETERANGAN: TStringField;
    QAmbilPEMESAN: TStringField;
    QAmbilGRUP: TStringField;
    QAmbilSHIFT: TStringField;
    QAmbilKD_TRANSAKSI: TStringField;
    QAmbilISPOST: TStringField;
    QAmbilSTATUS: TStringField;
    QAmbilTGL_INSERT: TDateTimeField;
    QAmbilOPR_INSERT: TStringField;
    QAmbilOPERATOR: TStringField;
    QAmbilNO_REG_DETAIL: TFloatField;
    QAmbilKD_KONSTRUKSI: TStringField;
    QAmbilKONSTRUKSI: TStringField;
    QAmbilMESIN_TENUN: TStringField;
    QAmbilKD_CORAK: TStringField;
    QAmbilCORAK: TStringField;
    QAmbilNO_RESEP: TStringField;
    QAmbilQTY_GULUNG: TFloatField;
    QAmbilQTY_POTONG: TFloatField;
    QAmbilQTY_COUNTER: TFloatField;
    QAmbilMESIN: TStringField;
    QAmbilSATUAN: TStringField;
    QAmbilKET_DETAIL: TStringField;
    QAmbilGROUP_DET: TStringField;
    QAmbilSHIFT_DET: TStringField;
    QAmbilNO_MESIN: TStringField;
    QAmbilKD_PRODUKSI: TStringField;
    QAmbilJENIS: TStringField;
    QAmbilNO_DESAIN: TStringField;
    QAmbilNO_PO: TStringField;
    QTransaksiDOC_ISO: TStringField;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QTransaksiDOC_ISO2: TStringField;
    QAmbil_New: TOracleDataSet;
    QAmbilData: TOracleQuery;
    LookSarung: TwwDBLookupCombo;
    QLookMitra: TOracleDataSet;
    QLookMitraKD_MITRA: TStringField;
    QLookMitraNAMA_MITRA: TStringField;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterNO_REFF: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterOPERATOR: TStringField;
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
    QMasterOPERATOR2: TStringField;
    QMasterMITRA: TStringField;
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailMESIN: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_ORDER: TStringField;
    QDetailQTY: TFloatField;
    QDetailNO_KIRIM: TStringField;
    QDetailWARNA: TStringField;
    QDetailDESAIN_CW: TStringField;
    QDetailNO_REG_REFF: TFloatField;
    QTotalQTY: TFloatField;
    Label16: TLabel;
    QDetailKONSTRUKSI: TStringField;
    LookAmbilPacking: TwwDBLookupComboDlg;
    QAmbil_NewNO_REG_DETAIL: TFloatField;
    QAmbil_NewKD_PRODUKSI: TStringField;
    QAmbil_NewKONSTRUKSI: TStringField;
    QAmbil_NewMESIN: TStringField;
    QAmbil_NewNO_RESEP: TStringField;
    QAmbil_NewNO_ORDER: TStringField;
    QAmbil_NewSISA: TFloatField;
    QBrowseNO_NOTA: TStringField;
    QBrowseNO_REG: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseMITRA: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseISPOST: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseNO_ORDER: TStringField;
    QBrowseQTY: TFloatField;
    QBrowseNO_KIRIM: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseDESAIN_CW: TStringField;
    QBrowseNO_REG_REFF: TFloatField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseTotalQTY: TFloatField;
    QBrowseKETERANGAN: TStringField;
    DelokWarna: TwwDBLookupComboDlg;
    QDetailKD_WARNA: TStringField;
    QBrowseKD_WARNA: TStringField;
    WebBrowser3: TWebBrowser;
    BitBtn14: TBitBtn;
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
    procedure TabSheet1Show(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure LookCorakEnter(Sender: TObject);
    procedure LookKonstruksiClick(Sender: TObject);
    procedure LookCorakClick(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure LookSarungCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookSarungEnter(Sender: TObject);
    procedure LookAmbilPackingCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookAmbilPackingEnter(Sender: TObject);
    procedure DelokWarnaEnter(Sender: TObject);
    procedure DelokWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure WebBrowser3DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  PackingListMitraFrm: TPackingListMitraFrm;

implementation

uses DM, Math, FinishOpening, FinishShearing, FinishStenter;

{$R *.dfm}

procedure TPackingListMitraFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  FinishStenterFrm:=Nil;
end;

procedure TPackingListMitraFrm.FormResize(Sender: TObject);
begin
  // PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TPackingListMitraFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TPackingListMitraFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','M06');
 QTransaksi.Open;
 FinishStenterFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TPackingListMitraFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TPackingListMitraFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TPackingListMitraFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TPackingListMitraFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    abort;
  end;

end;

procedure TPackingListMitraFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TPackingListMitraFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TPackingListMitraFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
//QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
//QDetailKD_SUB_LOKASI.AsString:='76-10000';
//QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TPackingListMitraFrm.BitBtn2Click(Sender: TObject);

function NamaHariDariTanggal(ATanggal: TDateTime): string;
const
  NamaHari: array[1..7] of string =
    ('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu');
begin
  Result := NamaHari[DayOfWeek(ATanggal)];
end;

var
    HTMLFile: TStringList;
    FilePath: string;
    HTMLContent: string;
    TanggalCetak: string;

    TotalQTY, TotalKodi: Real;
    QTY, KODI: String;
begin
  WebBrowser3.BringToFront;

  TanggalCetak := 'Pekalongan, ' + FormatDateTime('dd mmmm yyyy', Date);

  FilePath := ExtractFilePath(Application.ExeName) + 'PackingListMitraHandprint.html';
  HTMLFile := TStringList.Create;
  try
    HTMLContent :=
    '<!DOCTYPE html>' +
    '<html lang="id">' +
    '<head>' +
    '    <meta charset="UTF-8">' +
    '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' +
    '    <title></title>' +
    '    <style> ' +
    '        body { font-family: Arial, sans-serif; font-size: 12px; } ' +
    '        .container { width: 100%; max-width: 330mm; padding: 10px; margin: auto; border: 1px solid #000; } ' +
    '        .header { width: 100%; text-align: left; margin-bottom: 10px; } ' +
    '        .header-table { width: 100%; border-collapse: collapse; } ' +
    '        .header-table td { padding: 4px; vertical-align: top; } ' +
    '        .logo { font-size: 18px; font-weight: bold; text-align: center; width: 20%; } ' +
    '        .logo-judul { font-size: 16px; font-weight: bold; text-align: center; width: 30%; } ' +
    '        .title { font-size: 14px; font-weight: bold; text-align: center; }' +
    '        .label { font-weight: bold; width: 20%; } ' +
    '        .received-from { font-weight: bold; margin-top: 10px; } ' +
    '        .order-table { margin-top: 5px; width: 80%; border-collapse: collapse; } ' +
    '        .order-table td { font-size: 12px; padding: 2px 5px; } ' +
    '        .table { width: 100%; border-collapse: collapse; margin-top: 10px; } ' +
    '        .table th, .table td { border: 1px solid #000; padding: 2px; text-align: center; } ' +
    '        .table th { background-color: #f0f0f0; } ' +
    '        .footer { margin-top: 15px; text-align: center; } ' +
    '        @media print { body { margin: 0; padding: 0; } .container { border: none; } ' +
    '        @page { size: F4 landscape; margin: 10mm; } thead { display: table-header-group; } tfoot { display: table-footer-group; } ' +
    '        .table th { position: sticky; top: 0; background-color: #f0f0f0; } } ' +
    '        .footer-table { width: 100%; margin-top: 15px; border-collapse: collapse; } ' +
    '        .footer-table td { padding: 5px; border: none; font-weight: bold; } ' +
    '        .table tr:last-child td { border-bottom: 1px solid black; } ' +
    '    </style>' +
    '</head>' +
    '<body>' +
    '    <div class="container">' +
    '        <div class="header">' +
    '            <table class="header-table">' +
    '                <tr>' +
    '                    <td rowspan="2" class="logo">PT. PRIMAFARA TEXTILE</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td class="logo-judul" colspan="2"><strong>PACKING LIST PENGIRIMAN BARANG</strong></td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td class="label" align="center">Sapugarut - Pekalongan</td>' +
    '                    <td class="label" align="center"></td>' +
    '                </tr>' +
    '            </table>' +

    '            <p class="received-from">' +
    '                <table class="order-table" align="left">' +
    '                    <tr>' +
    '                        <td>Kepada : <u><strong> </u></strong></td>' +
    '                        <td> : ' + QMasterMITRA.AsString + '</td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td>No.</td>' +
    '                        <td> : ' + QMasterNO_NOTA.AsString + '</td>' +
    '                    </tr>' +
    '                    <tr>' +
    '                        <td>Hari, Tanggal : </td>' +
    '                        <td> : ' + NamaHariDariTanggal(QMasterTGL.AsDateTime) + '</td>' +
    '                        <td>' + QMasterTGL.AsString + '</td>' +
    '                        <td></td>' +
    '                        <td>No. Pol</td>' +
    '                        <td> : </td>' +
    '                    </tr>' +
    '                    <tr>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                        <td></td>' +
    '                    </tr>' +
    '                </table>' +
    '            </p>' +
    '        </div>' +
    '        <table class="table">' +
    '            <tr>' +
    '                <th>Konstruksi</th>' +
    '                <th>No.Kirim</th>' +
    '                <th>Konstruksi</th>' +
    '                <th>No.Resep</th>' +
    '                <th>Desain</th>' +                
    '                <th>Warna</th>' +
    '                <th>Potong</th>' +
    '                <th>Kodi</th>' +
    '                <th>Keterangan</th>' +
    '                <th style="border: 0px; color: white;">1</th>' +
    '            </tr>';

    TotalQTY := 0; TotalKODI := 0;

    wwDBGrid1.DataSource.DataSet.First;
    while not wwDBGrid1.DataSource.DataSet.Eof do
    begin

    if wwDBGrid1.DataSource.DataSet.FieldByName('QTY').IsNull or 
    (wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat = 0) then
    QTY := '-'
    else
    QTY := FormatFloat('0.0,0;(0.0,0);-', wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat);

    if wwDBGrid1.DataSource.DataSet.FieldByName('QTY').IsNull or 
    (wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat = 0) then
    KODI := '-'
    else
    KODI := FormatFloat('0.0,0;(0.0,0);-', wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat/20);


    HTMLContent := HTMLContent +
    '                <tr>' +
    '                <td>' + QDetailKONSTRUKSI.AsString + '</td>' +
    '                <td>' + QDetailNO_KIRIM.AsString + '</td>' +
    '                <td>' + QDetailKD_PRODUKSI.AsString + '</td>' +
    '                <td>' + QDetailNO_RESEP.AsString + '</td>' +
    '                <td>' + QDetailDESAIN_CW.AsString + '</td>' +
    '                <td>' + QDetailWARNA.AsString + '</td>' +
    '                <td>' + QTY + '</td>' +
    '                <td>' + KODI + '</td>' +
    '                <td>' + QMasterKETERANGAN.AsString + '</td>' +
    '                <td style="border: 0px; color: white;">1</td>' +
    '            </tr>';

    TotalQTY := TotalQTY + wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat;
    TotalKODI := TotalKODI + wwDBGrid1.DataSource.DataSet.FieldByName('QTY').AsFloat/20;

    wwDBGrid1.DataSource.DataSet.Next;
    end;

    HTMLContent := HTMLContent +
    '            <tr>' +
    '                <td colspan="6" style="border: 1px solid black;"><strong>Jumlah</strong></td>' +
    '                <td style="border: 1px solid black;">' + FormatFloat('###,##0.##;(###,##0.##);-', TotalQTY) + '</td>' +
    '                <td style="border: 1px solid black;">' + FormatFloat('###,##0.##;(###,##0.##);-', TotalKODI) + '</td>' +
    '                <td style="border: 1px solid black;"></td>' +
    '                <td style="border: 0px; color: white;">1</td>' +
    '            </tr>' +
    '        </table>' +
    '        <div class="footer">' +
    '            <table class="footer-table">' +
    '                <tr>' +
    '                    <td align="center"></td>' +
    '                    <td align="center">' + TanggalCetak + '</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td align="center">Mengetahui,</td>' +
    '                    <td align="center">Dibuat Oleh,</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td style="height: 20px;"></td>' +
    '                    <td></td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td align="center" style="font-size: 14px;">__________________________</td>' +
    '                    <td align="center" style="font-size: 14px;">__________________________</td>' +
    '                </tr>' +
    '                <tr>' +
    '                    <td align="center">Kemitraan</td>' +
    '                    <td align="center">Adm Finishing</td>' +
    '                </tr>' +
    '            </table>' +
    '            <p style="text-align: center;"><small>1. Dept. Kemitraan, 2. Security, 3. Mitra Kerja, 4. Arsip</small></p>' +
    '        </div>' +
    '    </div>' +
    '    <script>' +
    '        document.addEventListener("DOMContentLoaded", function() {' +
    '            var table = document.querySelector(".table");' +
    '            var thead = table.querySelector("thead");' +
    '            var tbody = table.querySelector("tbody");' +
    '            var rows = tbody.querySelectorAll("tr");' +
    '            var pageHeight = 297; ' +
    '            var currentHeight = 0;' +
    '            rows.forEach(function(row) {' +
    '                var rowHeight = row.offsetHeight;' +
    '                if (currentHeight + rowHeight > pageHeight) {' +
    '                    var newThead = thead.cloneNode(true);' +
    '                    tbody.insertBefore(newThead, row);' +
    '                    currentHeight = 0;' +
    '                }' +
    '                currentHeight += rowHeight;' +
    '            });' +
    '        });' +
    '    </script>' +
    '</body>' +
    '</html>' ;


    HTMLFile.Text := HTMLContent;
    HTMLFile.SaveToFile(FilePath);
    WebBrowser3.Navigate(FilePath);
  finally
    HTMLFile.Free;
  end;
end;

procedure TPackingListMitraFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TPackingListMitraFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TPackingListMitraFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TPackingListMitraFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TPackingListMitraFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TPackingListMitraFrm.cbOtomatisClick(Sender: TObject);
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

procedure TPackingListMitraFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TPackingListMitraFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TPackingListMitraFrm.cbTanggalClick(Sender: TObject);
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

procedure TPackingListMitraFrm.BitBtn3Click(Sender: TObject);
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
  wwDBGrid1xxxxx.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalPOTONG.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('QTY_COUNTER').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalMETER.AsFloat);
  //wwDBGrid1xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);



end;

procedure TPackingListMitraFrm.BtnExportClick(Sender: TObject);
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

procedure TPackingListMitraFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         //QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.SetVariable('kd_transaksi','M06');
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);

        // VRep.Checked := false;
end;

procedure TPackingListMitraFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalQTY.AsFloat);
  //wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY_COUNTER').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalMETER.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TPackingListMitraFrm.FormShow(Sender: TObject);
begin

  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=Trunc(date());

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=Trunc(date());


end;

procedure TPackingListMitraFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin

    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';

end;

procedure TPackingListMitraFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    //QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TPackingListMitraFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    //QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    //QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TPackingListMitraFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TPackingListMitraFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TPackingListMitraFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TPackingListMitraFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TPackingListMitraFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='OUT';
end;

procedure TPackingListMitraFrm.LookSarungCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QMasterMITRA.AsString:=QLookMitraNAMA_MITRA.AsString;
  end;
end;

procedure TPackingListMitraFrm.LookSarungEnter(Sender: TObject);
begin
  QLookMitra.Close;
  QLookMitra.Open;
end;

procedure TPackingListMitraFrm.LookAmbilPackingCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
 QDetailNO_ORDER.AsString:=QAmbil_NewNO_ORDER.AsString;
 QDetailNO_REG_REFF.AsString:=QAmbil_NewNO_REG_DETAIL.AsString;
 QDetailKD_PRODUKSI.AsString:=QAmbil_NewKD_PRODUKSI.AsString;
 QDetailKONSTRUKSI.AsString:=QAmbil_NewKONSTRUKSI.AsString;
 QDetailQTY.AsFloat:=QAmbil_NewSISA.AsFloat;
 QDetailNO_RESEP.AsString:=QAmbil_NewNO_RESEP.AsString;
 QDetailMESIN.AsString:=QAmbil_NewMESIN.AsString;
end;

procedure TPackingListMitraFrm.LookAmbilPackingEnter(Sender: TObject);
begin
QAmbil_New.Close;
QAmbil_New.Open;
end;

procedure TPackingListMitraFrm.DelokWarnaEnter(Sender: TObject);
begin
dmfrm.QLookWarna.Open;
end;

procedure TPackingListMitraFrm.DelokWarnaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
if modified then
 QDetailKD_WARNA.AsString:=dmfrm.QLookWarnaKD_WARNA.AsString;
 QDetailWARNA.AsString:=dmfrm.QLookWarnaWARNA.AsString;
end;

procedure TPackingListMitraFrm.WebBrowser3DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  vaIn, vaOut: OleVariant;
begin
  WebBrowser3.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, vaIn, vaOut);
end;

procedure TPackingListMitraFrm.BitBtn14Click(Sender: TObject);
begin
  wwDBGrid1.BringToFront;
end;

end.
