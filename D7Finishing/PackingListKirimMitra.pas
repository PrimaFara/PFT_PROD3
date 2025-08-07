unit PackingListKirimMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle;

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
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 if cbPreview.Checked then
   QuickRep1.Preview
   else
     QuickRep1.Print;
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

end.
