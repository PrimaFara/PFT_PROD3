unit LapProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDCustomButtonGroup, LMDCustomRadioGroup, LMDRadioGroup;

type
  TLapProduksiFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseTotal: TOracleDataSet;
    Label11: TLabel;
    PageControl1: TPageControl;
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
    Label1: TLabel;
    QDump: TOracleQuery;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseTotalQTY1: TFloatField;
    QBrowseTotalQTY2: TFloatField;
    BitBtn6: TBitBtn;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape14: TQRShape;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    Label15: TLabel;
    QRLabel5: TQRLabel;
    QRImage1: TQRImage;
    QRLabel29: TQRLabel;
    TabSheet1: TTabSheet;
    Panel7: TPanel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    VTglAwal3: TwwDBDateTimePicker;
    VTglAkhir3: TwwDBDateTimePicker;
    BitBtn4: TBitBtn;
    Panel8: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    ECari3: TEdit;
    cbOtomatis3: TCheckBox;
    dbcField3: TwwDBComboBox;
    BtnExport3: TBitBtn;
    BitBtn7: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRLabel36: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand6: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText31: TQRDBText;
    QRBand7: TQRBand;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape40: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRImage3: TQRImage;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRBand8: TQRBand;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    Label7: TLabel;
    dsQRekap: TwwDataSource;
    QRekap: TOracleDataSet;
    QProc_Rekap: TOracleQuery;
    QRekap_Tot: TOracleDataSet;
    QRekap_TotQTY: TFloatField;
    QRekap_TotQTY2: TFloatField;
    QRekap_TotQTY3: TFloatField;
    rgMitra: TLMDRadioGroup;
    QProc_Rekap_Mitra: TOracleQuery;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText14: TQRDBText;
    QRBand3: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRImage2: TQRImage;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    QRBand4: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel47: TQRLabel;
    QRShape9: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel32: TQRLabel;
    QRShape16: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText5: TQRDBText;
    QRLabel34: TQRLabel;
    QRShape5: TQRShape;
    QRDBText8: TQRDBText;
    QRShape15: TQRShape;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
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
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglAkhir2: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BtnExport2: TBitBtn;
    BitBtn9: TBitBtn;
    QuickRep4: TQuickRep;
    QRBand13: TQRBand;
    QRLabel68: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRBand14: TQRBand;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape41: TQRShape;
    QRDBText61: TQRDBText;
    QRShape42: TQRShape;
    QRBand15: TQRBand;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRImage5: TQRImage;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape48: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel81: TQRLabel;
    QRShape53: TQRShape;
    QRLabel82: TQRLabel;
    QRShape54: TQRShape;
    QRBand16: TQRBand;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    Label8: TLabel;
    QRekap_Lokasi: TOracleDataSet;
    dsQRekap_Lokasi: TwwDataSource;
    QRekap_Lokasi_Tot: TOracleDataSet;
    QRekap_Lokasi_TotQTY: TFloatField;
    QRekap_Lokasi_TotQTY2: TFloatField;
    QRekap_Lokasi_TotQTY3: TFloatField;
    QProc_Rekap_Lokasi: TOracleQuery;
    QRekap_LokasiLOKASI: TStringField;
    QRekap_LokasiQTY: TFloatField;
    QRekap_LokasiQTY2: TFloatField;
    QRekap_LokasiQTY3: TFloatField;
    QRLabel22: TQRLabel;
    QRShape17: TQRShape;
    QRShape21: TQRShape;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRekap_TotBGRADE: TFloatField;
    QRekap_TotP_BK: TFloatField;
    QRekap_TotP_BGRADE: TFloatField;
    QRekap_TotP_BS: TFloatField;
    QBrowseKP: TStringField;
    QRekapKONSTRUKSI: TStringField;
    QRekapQTY: TFloatField;
    QRekapQTY2: TFloatField;
    QRekapQTY3: TFloatField;
    QRekapPERSEN: TFloatField;
    QRekapMITRA: TStringField;
    QRekapCORAK: TStringField;
    QRekapBGRADE: TFloatField;
    QRekapP_BK: TFloatField;
    QRekapP_BGRADE: TFloatField;
    QRekapP_BS: TFloatField;
    QRekapKP: TStringField;
    QBrowseQTY_MITRA: TFloatField;
    QBrowseTotalQTY_MITRA: TFloatField;
    QRekap_LokasiBGRADE: TFloatField;
    QRekap_LokasiP_BK: TFloatField;
    QRekap_LokasiP_BS: TFloatField;
    QRekap_LokasiP_BGRADE: TFloatField;
    QRekap_Lokasi_TotBGRADE: TFloatField;
    QRekap_Lokasi_TotP_BK: TFloatField;
    QRekap_Lokasi_TotP_BS: TFloatField;
    QRekap_Lokasi_TotP_BGRADE: TFloatField;
    QBrowseTOTAL2: TFloatField;
    QBrowseTotalTOTAL: TFloatField;
    QBrowseQTY1_PCS: TFloatField;
    QBrowseQTY2_PCS: TFloatField;
    QBrowseQTY_MITRA_PCS: TFloatField;
    QBrowseTOTAL_PCS: TFloatField;
    QBrowseTotalQTY1_PCS: TFloatField;
    QBrowseTotalQTY2_PCS: TFloatField;
    QBrowseTotalQTY_MITRA_PCS: TFloatField;
    QBrowseTotalTOTAL_PCS: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure VTglAwal3Change(Sender: TObject);
    procedure VTglAkhir3Change(Sender: TObject);
    procedure cbOtomatis3Click(Sender: TObject);
    procedure dbcField3Enter(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure BtnExport3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnExport2Click(Sender: TObject);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglAkhir2Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  LapProduksiFrm: TLapProduksiFrm;

implementation

uses DM, Math, FinishOpening, InfoWIPFinishing;

{$R *.dfm}

procedure TLapProduksiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  LapProduksiFrm:=Nil;
end;

procedure TLapProduksiFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','991');
 QTransaksi.Open;
//LapProduksiFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;

end;

procedure TLapProduksiFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TLapProduksiFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  //FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  //FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TLapProduksiFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  //QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TLapProduksiFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TLapProduksiFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TLapProduksiFrm.cbOtomatisClick(Sender: TObject);
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

procedure TLapProduksiFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1xxxxx.FieldCount-1 do
    if UpperCase(wwDBGrid1xxxxx.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1xxxxx.Columns[i].FieldName);

end;

procedure TLapProduksiFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TLapProduksiFrm.cbTanggalClick(Sender: TObject);
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

procedure TLapProduksiFrm.BitBtn3Click(Sender: TObject);
begin
if Qbrowse.Active then
      vorder:=' order by '+wwDBGrid1xxxxx.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';
  QBrowse.DisableControls;
  QBrowse.Close;
  QDump.Close;
  QDump.SetVariable('pawal',VTglAwal.Date);
  QDump.SetVariable('Pakhir',vTglAkhir.Date);
  QDump.Execute;

  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
  QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid1xxxxx.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY1.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_MITRA').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY_MITRA.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('TOTAL').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalTOTAL.AsFloat);
  //wwDBGrid1 xxxxx.ColumnByName('PARAH').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalPARAH.AsFloat);

  wwDBGrid1xxxxx.ColumnByName('QTY1_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY1_PCS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY2_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY2_PCS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_MITRA_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY_MITRA_PCS.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('TOTAL_PCS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalTOTAL_PCS.AsFloat);
end;

procedure TLapProduksiFrm.BtnExportClick(Sender: TObject);
begin
          if QBrowse.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet2.Caption +' Produksi 3 QA';
             wwDBGrid1xxxxx.ExportOptions.TitleName:=''+TabSheet2.Caption +' Produksi 3 QA';
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

procedure TLapProduksiFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TLapProduksiFrm.TabSheet2Show(Sender: TObject);
begin
{if Qbrowse.Active then
      vorder:=' order by '+wwDBGrid1xxxxx.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';
         QBrowse.Close;
         QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         wwDBGrid1xxxxxUpdateFooter(nil);
         //vfilter:=' where (TGL>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and TGL<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
         QBrowse.Open; }
end;

procedure TLapProduksiFrm.FormShow(Sender: TObject);
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

  VTglAkhir3.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir3.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir3.Date:=Trunc(date());
{azmi}
end;

procedure TLapProduksiFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
{azmi}
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TLapProduksiFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then

end;

procedure TLapProduksiFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then

end;

procedure TLapProduksiFrm.wwDBGrid1xxxxxUpdateFooter(Sender: TObject);
begin
  QBrowseTotal.Close;
  //QBrowseTotal.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  wwDBGrid1xxxxx.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY1.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY2.AsFloat);
  wwDBGrid1xxxxx.ColumnByName('QTY_MITRA').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QBrowseTotalQTY_MITRA.AsFloat);
  //wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QTotalPARAH.AsFloat);

end;

procedure TLapProduksiFrm.BitBtn6Click(Sender: TObject);
begin
//DMFrm.QUserTime.Close;
 //DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   //QuickRep1.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TLapProduksiFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapProduksiFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapProduksiFrm.BitBtn4Click(Sender: TObject);
begin
case rgMitra.ItemIndex of
 0:
 begin
if QRekap.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by kp';
  QRekap.DisableControls;
  QRekap.Close;
  QProc_Rekap.Close;
  QProc_Rekap.SetVariable('pawal',VTglAwal3.Date);
  QProc_Rekap.SetVariable('pakhir',VTglAkhir3.Date);
  QProc_Rekap.Execute;
  QRekap.SetVariable('myparam',vfilter+vorder);
  QRekap.Open;
  QRekap_Tot.Close;
  QRekap_Tot.SetVariable('myparam',vfilter);
  QRekap_Tot.Open;
  QRekap.EnableControls;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat);           //bk
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat);           //bs
  //wwDBGrid1.ColumnByName('PERSEN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotPERSEN.AsFloat);

  wwDBGrid1.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat/QRekap_TotQTY.AsFloat*100);
  end;

  1:
  begin
  if QRekap.Active then
   // vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      //else
        //vorder:=' order by mitra,konstruksi';

      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by kp';

  QRekap.DisableControls;
  QRekap.Close;
  QProc_Rekap_Mitra.Close;
  QProc_Rekap_Mitra.SetVariable('pawal',VTglAwal3.Date);
  QProc_Rekap_Mitra.SetVariable('pakhir',VTglAkhir3.Date);
  QProc_Rekap_Mitra.Execute;

  QRekap.SetVariable('myparam',vfilter+vorder);
  QRekap.Open;
  QRekap_Tot.Close;
  QRekap_Tot.SetVariable('myparam',vfilter);
  QRekap_Tot.Open;
  QRekap.EnableControls;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat);           //bk
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat);           //bs
  //wwDBGrid1.ColumnByName('PERSEN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotPERSEN.AsFloat);

  wwDBGrid1.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat/QRekap_TotQTY.AsFloat*100);

  end;
  end;
  end;

procedure TLapProduksiFrm.VTglAwal3Change(Sender: TObject);
begin
  VTglAkhir3.Date:=(VTglAwal3.Date);
end;

procedure TLapProduksiFrm.VTglAkhir3Change(Sender: TObject);
begin
if VTglAwal3.Date>VTglAkhir3.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir3.Date:=VTglAwal3.Date;
  end;
end;

procedure TLapProduksiFrm.cbOtomatis3Click(Sender: TObject);
begin
 if cbOtomatis3.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari3.SetFocus;
end;

procedure TLapProduksiFrm.dbcField3Enter(Sender: TObject);
var
  i : Word;
begin
  if (QRekap.Active) and (dbcField3.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField3.Items.Add(wwDBGrid1.Columns[i].FieldName);

end;

procedure TLapProduksiFrm.Label3Click(Sender: TObject);
begin
  if Label3.Caption='LIKE' then
    Label3.Caption:='='
    else
      Label3.Caption:='LIKE';
end;

procedure TLapProduksiFrm.BtnExport3Click(Sender: TObject);
var
vmitra:String;
begin
//ShowMessage(.Items.Text);
  if rgMitra.itemIndex = 0 then
  vmitra:= 'GJDUDUK'
  else
  vmitra:= 'MITRA';
 // end;

   if QRekap.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet1.Caption+' '+vmitra;
             wwDBGrid1.ExportOptions.TitleName:=TabSheet1.Caption+' '+vmitra;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid1.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TLapProduksiFrm.BitBtn2Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
case rgMitra.ItemIndex of
 0:
 begin
  vpertama:=True;
    vfilter:=' where (';
  if (QRekap.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QRekap.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'tanggal') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QRekap.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
      // vorder:=' order by mitra, konstruksi';
        vorder:=' order by kp';

  end;

  QRekap.DisableControls;
  QRekap.Close;
  QRekap.SetVariable('myparam',vfilter+vorder);
  QRekap.Open;
  QRekap_Tot.Close;
  QRekap_Tot.SetVariable('myparam',vfilter);
  QRekap_Tot.Open;
  QRekap.EnableControls;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat);           //bk
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat);           //bs
  //wwDBGrid1.ColumnByName('PERSEN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotPERSEN.AsFloat);

  wwDBGrid1.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat/QRekap_TotQTY.AsFloat*100);
end;


1:
 begin
  vpertama:=True;
    vfilter:=' where (';
  if (QRekap.FieldCount>=1) then
  begin
    if dbcField3.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QRekap.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'tanggal') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari3.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari3.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari3.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField3.Text+' like ''%'+ECari3.Text+'%'''
         else
           vfilter:=vfilter+dbcField3.Text+' = '''+ECari3.Text+'''';
    vfilter:=vfilter+')';
    if QRekap.Active then
      //vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
     // else
       // vorder:=' order by mitra, konstruksi';

       vorder:=' order by kp';

  end;

  QRekap.DisableControls;
  QRekap.Close;
  QRekap.SetVariable('myparam',vfilter+vorder);
  QRekap.Open;
  QRekap_Tot.Close;
  QRekap_Tot.SetVariable('myparam',vfilter);
  QRekap_Tot.Open;
  QRekap.EnableControls;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat);           //bk
  wwDBGrid1.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat);           //bs
  //wwDBGrid1.ColumnByName('PERSEN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotPERSEN.AsFloat);

  wwDBGrid1.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY2.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotBGRADE.AsFloat/QRekap_TotQTY.AsFloat*100);
  wwDBGrid1.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_TotQTY3.AsFloat/QRekap_TotQTY.AsFloat*100);

end;
end;
end;

procedure TLapProduksiFrm.BitBtn7Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
DMFrm.QUserTime.Open;

if rgMitra.ItemIndex = 0
then
   QuickRep2.Preview
  else
    QuickRep3.Preview;
end;

procedure TLapProduksiFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //QRLabel25.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel25.Caption:='(Per : '+VTglAwal3.Text+' s/d '+VTglAkhir3.Text+')';
end;

procedure TLapProduksiFrm.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel45.Caption:='(Per : '+VTglAwal3.Text+' s/d '+VTglAkhir3.Text+')';
end;

procedure TLapProduksiFrm.BitBtn1Click(Sender: TObject);
begin
if QRekap_Lokasi.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by lokasi';
  QRekap_Lokasi.DisableControls;
  QRekap_Lokasi.Close;
  QProc_Rekap_Lokasi.Close;
  QProc_Rekap_Lokasi.SetVariable('pawal',VTglAwal2.Date);
  QProc_Rekap_Lokasi.SetVariable('Pakhir',vTglAkhir2.Date);
  QProc_Rekap_Lokasi.Execute;
  QRekap_Lokasi.SetVariable('myparam',vfilter+vorder);
  QRekap_Lokasi.Open;
  QRekap_Lokasi_Tot.Close;
  QRekap_Lokasi_Tot.SetVariable('myparam',vfilter);
  QRekap_Lokasi_Tot.Open;
  QRekap_Lokasi.EnableControls;
  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY.AsFloat);
  wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY2.AsFloat);
  wwDBGrid2.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY2.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);

  wwDBGrid2.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotBGRADE.AsFloat);
  wwDBGrid2.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotBGRADE.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);

  wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY3.AsFloat);
  wwDBGrid2.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY3.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);


  //wwDBGrid2.ColumnByName('PERSEN_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotPERSEN_BK.AsFloat);
  //wwDBGrid2.ColumnByName('PERSEN_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotPERSEN_BS.AsFloat);

end;

procedure TLapProduksiFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QRekap_Lokasi.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'TANGGAL' then
      dbcField2.Items.Add(wwDBGrid2.Columns[i].FieldName);

end;

procedure TLapProduksiFrm.cbOtomatis2Click(Sender: TObject);
begin
if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;

procedure TLapProduksiFrm.Label6Click(Sender: TObject);
begin
  if Label6.Caption='LIKE' then
    Label6.Caption:='='
    else
      Label6.Caption:='LIKE';
end;

procedure TLapProduksiFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
 begin
  vpertama:=True;
    vfilter:=' where (';
  if (QRekap_Lokasi.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QRekap_Lokasi.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'tanggal') then
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
    if QRekap_Lokasi.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by lokasi';

  end;

  QRekap_Lokasi.DisableControls;
  QRekap_Lokasi.Close;
  QRekap_Lokasi.SetVariable('myparam',vfilter+vorder);
  QRekap_Lokasi.Open;
  QRekap_Lokasi_Tot.Close;
  QRekap_Lokasi_Tot.SetVariable('myparam',vfilter);
  QRekap_Lokasi_Tot.Open;
  QRekap_Lokasi.EnableControls;
  wwDBGrid2.ColumnByName('QTY').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY.AsFloat);
  wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY2.AsFloat);
  wwDBGrid2.ColumnByName('P_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY2.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);

  wwDBGrid2.ColumnByName('BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotBGRADE.AsFloat);
  wwDBGrid2.ColumnByName('P_BGRADE').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotBGRADE.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);

  wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY3.AsFloat);
  wwDBGrid2.ColumnByName('P_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QRekap_Lokasi_TotQTY3.AsFloat/QRekap_Lokasi_TotQTY.AsFloat*100);


end;


procedure TLapProduksiFrm.BtnExport2Click(Sender: TObject);
begin
   if QRekap_Lokasi.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=TabSheet3.Caption;
             wwDBGrid2.ExportOptions.TitleName:=TabSheet3.Caption;
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

procedure TLapProduksiFrm.VTglAwal2Change(Sender: TObject);
begin
  VTglAkhir2.Date:=(VTglAwal2.Date);
end;

procedure TLapProduksiFrm.VTglAkhir2Change(Sender: TObject);
begin
if VTglAwal2.Date>VTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TLapProduksiFrm.BitBtn9Click(Sender: TObject);
begin
DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;

 //if cbPreview.Checked then
   QuickRep4.Preview
 // else
   //  QuickRep2.Print;
end;

procedure TLapProduksiFrm.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel74.Caption:='(Per : '+VTglAwal2.Text+' s/d '+VTglAkhir2.Text+')';
end;

end.
