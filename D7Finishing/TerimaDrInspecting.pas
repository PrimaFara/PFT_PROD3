unit TerimaDrInspecting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle;

type
  TTerimaDrInspectingFrm = class(TForm)
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
    wwDBNavigator1Button2: TwwNavButton;
    wwDBNavigator1Button3: TwwNavButton;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    DBText4: TDBText;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
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
    QRDBText13: TQRDBText;
    QRSysData1: TQRSysData;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    cbPreview: TCheckBox;
    QRLabel16: TQRLabel;
    RadioGroup1: TRadioGroup;
    cbHarga: TCheckBox;
    wwDBComboBox2: TwwDBComboBox;
    Label2: TLabel;
    Label4: TLabel;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
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
    QDetailNO_REG_DETAIL: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailQTY_GULUNG: TFloatField;
    QDetailQTY_POTONG: TFloatField;
    QDetailQTY_COUNTER: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    LookKonstruksi: TwwDBLookupComboDlg;
    LookCorak: TwwDBLookupComboDlg;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailMESIN: TStringField;
    QDetailGRUP: TStringField;
    LookGrup: TwwDBComboBox;
    LookMesin: TwwDBComboBox;
    QTotalGULUNG: TFloatField;
    QTotalPOTONG: TFloatField;
    QDetailNO_ORDER: TStringField;
    QDetailPEMESAN: TStringField;
    BitBtn4: TBitBtn;
    Label13: TLabel;
    QMasterNO_NOTA: TStringField;
    QMasterNO_REG: TFloatField;
    QMasterTGL: TDateTimeField;
    QMasterKETERANGAN: TStringField;
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
    QAmbilData: TOracleQuery;
    ECari_Order: TEdit;
    QDetailNO_REFF: TStringField;
    QDetailNO_BUKTI: TStringField;
    QMasterNO_ORDER: TStringField;
    QDetailKERETA: TStringField;
    QDetailKD_SUB_LOKASI: TStringField;
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
    QRBand2: TQRBand;
    Label16: TLabel;
    Label17: TLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRShape3: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel18: TQRLabel;
    QRImage2: TQRImage;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    QRDBText22: TQRDBText;
    QRSysData3: TQRSysData;
    QRDBText23: TQRDBText;
    QRBand5: TQRBand;
    QRDBText24: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRBand6: TQRBand;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    Label20: TLabel;
    QPerKonstruksi: TOracleDataSet;
    QPerKonstruksi_Tot: TOracleDataSet;
    DsPerKonstruksi: TwwDataSource;
    QPerKonstruksiKONSTRUKSI: TStringField;
    QPerKonstruksiGULUNG: TFloatField;
    QPerKonstruksiPOTONG: TFloatField;
    QPerKonstruksi_TotGULUNG: TFloatField;
    QPerKonstruksi_TotPOTONG: TFloatField;
    QDetailJENIS: TStringField;
    QDetailSATUAN: TStringField;
    LookSatuan: TwwDBComboBox;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_RESEP: TStringField;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel31: TQRLabel;
    cbAdaTransaksi: TCheckBox;
    QRDBHarga: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel7: TQRLabel;
    QDetailKD_PRODUKSI: TStringField;
    QBrowseTotalGULUNG: TFloatField;
    QBrowseTotalPOTONG: TFloatField;
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
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseMESIN_TENUN: TStringField;
    QBrowseKD_CORAK: TStringField;
    QBrowseCORAK: TStringField;
    QBrowseNO_RESEP: TStringField;
    QBrowseQTY_GULUNG: TFloatField;
    QBrowseQTY_POTONG: TFloatField;
    QBrowseQTY_COUNTER: TFloatField;
    QBrowseKET_DETAIL: TStringField;
    QBrowseMESIN: TStringField;
    QBrowseJENIS: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseGROUP_DET: TStringField;
    QBrowseNO_REFF: TStringField;
    QBrowseNO_BUKTI: TStringField;
    QRLabel14: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText10: TQRDBText;
    QBrowseKD_PRODUKSI: TStringField;
    wwDBComboBox1: TwwDBLookupComboDlg;
    QUnpost: TOracleQuery;
    Button1: TButton;
    RPost: TCheckBox;
    QBrowse1: TOracleDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField2: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField2: TFloatField;
    FloatField4: TFloatField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    QBrowseTotal1: TOracleDataSet;
    QBrowseTotal1GULUNG: TFloatField;
    QBrowseTotal1POTONG: TFloatField;
    QBrowse1QTY_POTONG: TFloatField;
    QDetailMITRA: TStringField;
    QPerKonstruksiKD_PRODUKSI: TStringField;
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
    procedure TabSheet2Show(Sender: TObject);
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
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure wwDBComboBox1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QBrowse1AfterScroll(DataSet: TDataSet);
    procedure QBrowse1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  TerimaDrInspectingFrm: TTerimaDrInspectingFrm;

implementation

uses DM, Math, FinishOpening, FinishShearing;

{$R *.dfm}

procedure TTerimaDrInspectingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  TerimaDrInspectingFrm:=Nil;
end;

procedure TTerimaDrInspectingFrm.FormResize(Sender: TObject);
begin
  //PanelLeft.Width:=round((Width-PanelCenter.Width)/2)-4;
{  Caption:=IntToStr(width)+', '+IntToStr(PanelLeft.Width)+', '+IntToStr(PanelCenter.Width)+
    ', '+IntToStr(PanelRight.Width);    }
end;

procedure TTerimaDrInspectingFrm.wwDBGrid1Enter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDrInspectingFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','901');
 QTransaksi.Open;
 TerimaDrInspectingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;
 QMaster.Open;
 QDetail.Open;
end;

procedure TTerimaDrInspectingFrm.LookRekananEnter(Sender: TObject);
begin
 //DMFrm.QRekanan.Open;
end;

procedure TTerimaDrInspectingFrm.LookRekananClick(Sender: TObject);
begin
   //DMFrm.QRekanan.Close;
   //DMFrm.QRekanan.Open;
end;

procedure TTerimaDrInspectingFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if (QMasterISPOST.AsString='1') and (QMasterNO_NOTA.AsString='') then
  begin
      FNo_Urut.Close;
      FNo_Urut.Open;
      QMasterNO_NOTA.AsString:=FNo_UrutNO_NOTA.AsString;
  end;
end;

procedure TTerimaDrInspectingFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
   if QMasterISPOST.AsString='1' then
  begin
    ShowMessage('Maaf, sudah di-POSTING, tidak bisa diedit !...');
    //DataSet.Cancel;
    abort;
  end;

end;

procedure TTerimaDrInspectingFrm.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     QMaster.Close;
     QMaster.SetVariable('no_nota','%'+Edit1.Text+'%');
     QMaster.Open;
  end;
end;

procedure TTerimaDrInspectingFrm.wwDBNavigator1ButtonClick(Sender: TObject);
begin
  QDetail.Close;
  LookMaster.Execute;
  QDetail.Open;
end;

procedure TTerimaDrInspectingFrm.QDetailNewRecord(DataSet: TDataSet);
begin

DMFrm.QUserTime.Open;
QDetailTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QDetailOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QDetailNO_REG.AsInteger:=QMasterNO_REG.AsInteger;
//QDetailKD_SUB_LOKASI.AsString:='71-10000';

  //QDetailSATUAN.AsString:='KODI';
//  QDetailMUTU.AsString:='KW1';
  //QDetailJENIS.AsString:='PALEKAT';
{AZMI}
  //QDetailQTY.AsFloat:=0;
  //QDetailQTY2.AsFloat:=0;
  //QDetailQTY3.AsFloat:=0;
{AZMI}
end;

procedure TTerimaDrInspectingFrm.BitBtn2Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
end;

procedure TTerimaDrInspectingFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TTerimaDrInspectingFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TTerimaDrInspectingFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TTerimaDrInspectingFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TTerimaDrInspectingFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TTerimaDrInspectingFrm.cbOtomatisClick(Sender: TObject);
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

procedure TTerimaDrInspectingFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TTerimaDrInspectingFrm.vOperandClick(Sender: TObject);
begin
    if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
      else
      vOperand.Caption:='LIKE';
end;

procedure TTerimaDrInspectingFrm.cbTanggalClick(Sender: TObject);
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

procedure TTerimaDrInspectingFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  if RPost.Checked then
  begin
    // Logika saat VPotong di-check

    QBrowse1.Open;
    vpertama := True;

    if cbTanggal.Checked then
    vfilter := ' where (tgl >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal.Date) + ''', ''dd/mm/yyyy'') ' +
                'and tgl <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
    else
    vfilter := ' where (';

    if (QBrowse1.FieldCount >= 1) then
    begin
    if dbcField.ItemIndex = 0 then
    begin
        for i := 0 to wwDBGrid1xxxxx.Selected.Count - 1 do
        begin
        if (QBrowse1.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind = fkData) and
            (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName) <> 'TGL') then
        begin
            if vpertama then
            begin
            if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
            else
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
            vpertama := False;
            end
            else
            begin
            if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
            else
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
            end;
        end;
        end;
    end
    else
    begin
        if vOperand.Caption = 'LIKE' then
        vfilter := vfilter + dbcField.Text + ' like ''%' + ECari.Text + '%'''
        else
        vfilter := vfilter + dbcField.Text + ' = ''' + ECari.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse1.Active then
        vorder := ' order by ' + wwDBGrid1xxxxx.Columns[0].FieldName
    else
        vorder := ' order by no_nota';
    end;

    QBrowse1.DisableControls;
    QBrowse1.Close;
    QBrowse1.SetVariable('myparam', vfilter + vorder);
    QBrowse1.Open;

    QBrowseTotal1.Close;
    QBrowseTotal1.SetVariable('myparam', vfilter);
    QBrowseTotal1.Open;

    QBrowse1.EnableControls;

    wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotal1GULUNG.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QBrowseTotal1POTONG.AsFloat);
    
  end
  else
  begin
    // Logika saat VPotong di-uncheck

    QBrowse.Open;
    vpertama := True;

    if cbTanggal.Checked then
    vfilter := ' where (tgl >= to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAwal.Date) + ''', ''dd/mm/yyyy'') ' +
                'and tgl <= (to_date(''' + FormatDateTime('dd/mm/yyyy', VTglAkhir.Date) + ''', ''dd/mm/yyyy'') + 1 - 1/86400)) and ('
    else
    vfilter := ' where (';

    if (QBrowse.FieldCount >= 1) then
    begin
    if dbcField.ItemIndex = 0 then
    begin
        for i := 0 to wwDBGrid1xxxxx.Selected.Count - 1 do
        begin
        if (QBrowse.FieldByName(wwDBGrid1xxxxx.Columns[i].FieldName).FieldKind = fkData) and
            (UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName) <> 'TGL') then
        begin
            if vpertama then
            begin
            if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
            else
                vfilter := vfilter + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
            vpertama := False;
            end
            else
            begin
            if vOperand.Caption = 'LIKE' then
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' like ''%' + ECari.Text + '%'''
            else
                vfilter := vfilter + ' or ' + wwDBGrid1xxxxx.Columns[i].FieldName + ' = ''' + ECari.Text + '''';
            end;
        end;
        end;
    end
    else
    begin
        if vOperand.Caption = 'LIKE' then
        vfilter := vfilter + dbcField.Text + ' like ''%' + ECari.Text + '%'''
        else
        vfilter := vfilter + dbcField.Text + ' = ''' + ECari.Text + '''';
    end;

    vfilter := vfilter + ')';

    if QBrowse.Active then
        vorder := ' order by ' + wwDBGrid1xxxxx.Columns[0].FieldName
    else
        vorder := ' order by no_nota';
    end;

    QBrowse.DisableControls;
    QBrowse.Close;
    QBrowse.SetVariable('myparam', vfilter + vorder);
    QBrowse.Open;

    QBrowseTotal.Close;
    QBrowseTotal.SetVariable('myparam', vfilter);
    QBrowseTotal.Open;

    QBrowse.EnableControls;

    wwDBGrid1xxxxx.ColumnByName('QTY_GULUNG').FooterValue := FormatFloat('#.#,#;#.#,#; ', QBrowseTotalGULUNG.AsFloat);
    wwDBGrid1xxxxx.ColumnByName('QTY_POTONG').FooterValue := FormatFloat('0.0,0;(0.0,0); ', QBrowseTotalPOTONG.AsFloat);
  end;
end;

procedure TTerimaDrInspectingFrm.BtnExportClick(Sender: TObject);
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

procedure TTerimaDrInspectingFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TTerimaDrInspectingFrm.TabSheet2Show(Sender: TObject);
begin
{azmi}
{if vTab='Bro' then
   vTab:='In'   }
{else
 begin

  vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse.Open;

   BitBtn3.Click;

  end;   }
end;

procedure TTerimaDrInspectingFrm.TabSheet1Show(Sender: TObject);
begin
         QMaster.Close;
         QMaster.SetVariable('no_nota',QBrowseNO_NOTA.AsString);
         QMaster.SetVariable('no_reg',QBrowseNO_REG.AsInteger);
         QMaster.Open;
         QDetail.Close;
         QDetail.Open;
         wwDBGrid1UpdateFooter(nil);
end;

procedure TTerimaDrInspectingFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg',QMasterNO_REG.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_GULUNG').FooterValue:=FormatFloat('#.#,#',QTotalGULUNG.AsFloat);
  wwDBGrid1.ColumnByName('QTY_POTONG').FooterValue:=FormatFloat('0.0,0;(0.0,0);',QTotalPOTONG.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QTotalPARAH.AsFloat);

end;

procedure TTerimaDrInspectingFrm.FormShow(Sender: TObject);
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
  vTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());
{azmi}
end;

procedure TTerimaDrInspectingFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDrInspectingFrm.wwDBGrid1xxxxxEnter(Sender: TObject);
begin
  If QMaster.State<> dsBrowse then QMaster.Post;
end;

procedure TTerimaDrInspectingFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then
  // QMasterKONSTRUKSI.AsString:=DMFrm.QKonstruksiNAMA_KONSTRUKSI.AsString;
    QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TTerimaDrInspectingFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then
    //QMasterCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
    QDetailKD_CORAK.AsString:=DMFrm.QCorakKD_CORAK.AsString;
    QDetailCORAK.AsString:=DMFrm.QCorakNAMA_CORAK.AsString;
end;

procedure TTerimaDrInspectingFrm.LookKonstruksiEnter(Sender: TObject);
begin
DMFrm.QKonstruksi_finish.Open;
end;

procedure TTerimaDrInspectingFrm.LookCorakEnter(Sender: TObject);
begin
  DMFrm.QCorak.Open;
end;

procedure TTerimaDrInspectingFrm.LookKonstruksiClick(Sender: TObject);
begin
   DMFrm.QKonstruksi_finish.Open;
end;

procedure TTerimaDrInspectingFrm.LookCorakClick(Sender: TObject);
begin
   DMFrm.QCorak.Open;
end;

procedure TTerimaDrInspectingFrm.QMasterNewRecord(DataSet: TDataSet);
begin
DMFrm.QUserTime.Open;
QMasterTGL_INSERT.AsDateTime:=DMFrm.QUserTimeVTGL.AsDateTime;
QMasterOPR_INSERT.AsString:=DMFrm.QUserTimeUSER_OPR.AsString;
QMasterKD_TRANSAKSI.AsString:=QTransaksiKD_TRANSAKSI.AsString;
QMasterSTATUS.AsString:='IN';
end;

procedure TTerimaDrInspectingFrm.BitBtn4Click(Sender: TObject);
begin
  QMaster.Edit;
  QMaster.Post;
  QDetailTGL_INSERT.AsDateTime:=QMasterTGL_INSERT.AsDateTime;
  QDetailOPR_INSERT.AsString:=QMasterOPR_INSERT.AsString;
  QAmbilData.Close;
  QAmbilData.SetVariable('QNO_REG',QMasterNO_REG.AsInteger);
  QAmbilData.SetVariable('QNO_NOTA',ECari_Order.Text);
  QAmbilData.Execute;
  QDetail.Close;
  QDetail.Open;    
end;

procedure TTerimaDrInspectingFrm.BitBtn5Click(Sender: TObject);
begin
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

procedure TTerimaDrInspectingFrm.TabSheet3Show(Sender: TObject);
begin
//QPerKonstruksi.Open;
end;

procedure TTerimaDrInspectingFrm.VTglAwal2Change(Sender: TObject);
begin
 VTglakhir2.Date:=(VTglAwal2.Date);
end;

procedure TTerimaDrInspectingFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>VTglakhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglakhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TTerimaDrInspectingFrm.BtnExport2Click(Sender: TObject);
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

procedure TTerimaDrInspectingFrm.BitBtn6Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep2.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TTerimaDrInspectingFrm.cbAdaTransaksiClick(Sender: TObject);
begin
QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TTerimaDrInspectingFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:= (Trunc(QBrowseQTY_POTONG.AsFloat)<=20);
end;

procedure TTerimaDrInspectingFrm.wwDBComboBox1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
QMasterGRUP.AsString:=DMFrm.QLookGrupGRUP.AsString;
end;

procedure TTerimaDrInspectingFrm.wwDBComboBox1Enter(Sender: TObject);
begin
DMFrm.QLookGrup.Open;
end;

procedure TTerimaDrInspectingFrm.Button1Click(Sender: TObject);
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

procedure TTerimaDrInspectingFrm.QBrowse1AfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse1.RecNo)+' dari '+FormatFloat('#,#',QBrowse1.RecordCount)+' Records';
{azmi}
end;

procedure TTerimaDrInspectingFrm.QBrowse1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:= (Trunc(QBrowse1QTY_POTONG.AsFloat)<=20);
end;

end.
