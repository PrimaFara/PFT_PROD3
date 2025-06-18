unit LaporanMutasiStokInspek;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, QRCtrls, QuickRpt,
  ppParameter;

type
  TLaporanMutasiStokInspekFrm = class(TForm)
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    BtnOk: TBitBtn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label5: TLabel;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    Label1: TLabel;
    ppReportBrowse: TppReport;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    BtnDesign2: TBitBtn;
    ppDBPerusahaan: TppDBPipeline;
    DBText3: TDBText;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppLabel9: TppLabel;
    ppPeriode: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppUserCetak: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBText6: TppDBText;
    QTransaksi: TOracleDataSet;
    ppDBQTransaksi: TppDBPipeline;
    dsQTransaksi: TwwDataSource;
    ppDBText19: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    BtnClose1: TBitBtn;
    ppLblNomer: TppLabel;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    vTglAwal: TwwDBDateTimePicker;
    Label3: TLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel4: TppLabel;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText27: TppDBText;
    QProc: TOracleQuery;
    vTglAkhir: TwwDBDateTimePicker;
    Label4: TLabel;
    ppDBText28: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLine13: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel33: TppLabel;
    ppShape5: TppShape;
    ppShape8: TppShape;
    ppLabel34: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel35: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppShape11: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel36: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape12: TppShape;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel37: TppLabel;
    ppLine27: TppLine;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText4: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExpr3: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape14: TQRShape;
    QTotal: TOracleDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseQTY3: TFloatField;
    QBrowseQTY4: TFloatField;
    QBrowseQTY5: TFloatField;
    QBrowseQTY6: TFloatField;
    QBrowseQTY7: TFloatField;
    QBrowseQTY8: TFloatField;
    QBrowseQTY9: TFloatField;
    QBrowseQTY10: TFloatField;
    QBrowseQTY11: TFloatField;
    QBrowseQTY12: TFloatField;
    QBrowseQTY13: TFloatField;
    QBrowseQTY14: TFloatField;
    QBrowseQTY15: TFloatField;
    QBrowseQTY16: TFloatField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseBS_PARAH: TFloatField;
    QBrowseBS_PARAH_MITRA: TFloatField;
    QBrowseQTY17: TFloatField;
    QBrowseQTY18: TFloatField;
    QBrowseQTY19: TFloatField;
    QBrowseQTY20: TFloatField;
    QBrowseQTY21: TFloatField;
    QBrowseQTY22: TFloatField;
    QBrowseQTY23: TFloatField;
    QBrowseQTY24: TFloatField;
    QBrowseQTY25: TFloatField;
    QTotalSUMQTY1: TFloatField;
    QTotalSUMQTY14: TFloatField;
    QTotalSUMQTY2: TFloatField;
    QTotalSUMBS_PARAH: TFloatField;
    QTotalSUMQTY3: TFloatField;
    QTotalSUMBS_PARAH_MITRA: TFloatField;
    QTotalSUMQTY4: TFloatField;
    QTotalSUMQTY5: TFloatField;
    QTotalSUMQTY6: TFloatField;
    QTotalSUMQTY7: TFloatField;
    QTotalSUMQTY8: TFloatField;
    QTotalSUMQTY9: TFloatField;
    QTotalSUMQTY10: TFloatField;
    QTotalSUMQTY11: TFloatField;
    QTotalSUMQTY12: TFloatField;
    QTotalSUMQTY13: TFloatField;
    QTotalSUMQTY22: TFloatField;
    QTotalSUMQTY15: TFloatField;
    QTotalSUMQTY16: TFloatField;
    QTotalSUMQTY17: TFloatField;
    QTotalSUMQTY18: TFloatField;
    QTotalSUMQTY19: TFloatField;
    QTotalSUMQTY20: TFloatField;
    QTotalSUMQTY21: TFloatField;
    QTotalSUMQTY22_1: TFloatField;
    QTotalSUMQTY23: TFloatField;
    QTotalSUMQTY24: TFloatField;
    QTotalSUMQTY25: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnClose1Click(Sender: TObject);
    procedure wwDBSpinLine2Change(Sender: TObject);
//    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure BtnPrintBrowse1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure vTglAwalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);

    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
    t1, t2, t3, t4, t5, t6 : real;
    t7, t8, t9, t10, t11, t12 : real;
  public
    { Public declarations }

  end;

var
  LaporanMutasiStokInspekFrm: TLaporanMutasiStokInspekFrm;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, //Pembelian, Kriteria_Tanggal1, KartuStokBB, InfoWIPPengeringan,
  Math, LapProduksi;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : String);
var
  mychar : string[125];
Begin
// Hak Menu
//  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
//  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
//  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if InfoWIPPengeringanFrm=Nil then
  begin
    LaporanMutasiStokInspekFrm:=LaporanMutasiStokInspekFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    LaporanMutasiStokInspekFrm.vkode:=pbrg;
    LaporanMutasiStokInspekFrm.QTransaksi.Open;


    {LAPORAN_MUTASI_STOK_INSPEKFrm.PanelHeader.Caption:=pjudul;
    LAPORAN_MUTASI_STOK_INSPEKFrm.Caption:=UpperCase(LapProduksiFrm.PanelHeader.Caption);
    LapProduksiFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    LapProduksiFrm.wwDBGrid2.IniAttributes.SectionName:=LapProduksiFrm.Caption+'2';
    LapProduksiFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    LapProduksiFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,LapProduksiFrm.Caption+'2',LapProduksiFrm.wwDBGrid2);
    LapProduksiFrm.wwDBSpinLine2.Value:=LapProduksiFrm.wwDBGrid2.RowHeightPercent;}

  end;

  LaporanMutasiStokInspekFrm.Show;
end;

procedure TLaporanMutasiStokInspekFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid1);
   Action:=caFree;
   LaporanMutasiStokInspekFrm:=Nil;
   QuickRep1:=Nil;
end;

procedure TLaporanMutasiStokInspekFrm.FormCreate(Sender: TObject);
begin
//barcode
//     DMFrm.FontToUse := TFont.Create;
//     DMFrm.selected := 'UCC 128';
//     SelectedFont := 'CIA Code 128 Medium';
//     StrPCopy(DMFrm.TempSelected, DMFrm.Selected);
//     DMFrm.BType := 'C128';
//     DMFrm.FontToUse.Size := 12;
//     DMFrm.FontToUse.Name := SelectedFont;
//     LBarcode.Font := DMFrm.FontToUse;
//     QRBarcode11.Font := LoginFrm.FontToUse;
//     DMFrm.BType := DMFrm.BType + '-';
//     DMFrm.BType := DMFrm.BType + DMFrm.Format;
//     DMFrm.BType := DMFrm.BType + '.BH';
// end barcode

//  PanelMain.Color:=cWarnaPanelUtama;
//  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
//  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
//  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
//  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
//  BtnPrintBrowse1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
//  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
//  BtnExport.Visible:=DMFrm.cBtnExport;
//  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TLaporanMutasiStokInspekFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
//     wwDBGrid2.ExportOptions.TitleName:='LAPORAN PRODUKSI DEPT DYEING';
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

procedure TLaporanMutasiStokInspekFrm.BtnOkClick(Sender: TObject);
var
  vrasio, vpcs, vkg : real;
begin
  QProc.Close;
  QProc.SetVariable('pawal',vTglAwal.Date);
  QProc.SetVariable('pakhir',vTglAkhir.Date);
  QProc.Execute;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.Open;
  QBrowse.EnableControls;

  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY14').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY14.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY2.AsFloat);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY13').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY13.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY4.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY6.AsFloat);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY9.AsFloat);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY10.AsFloat);
  wwDBGrid1.ColumnByName('QTY11').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY11.AsFloat);
  wwDBGrid1.ColumnByName('QTY12').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY12.AsFloat);
  wwDBGrid1.ColumnByName('QTY22').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY22.AsFloat);
  wwDBGrid1.ColumnByName('QTY15').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY15.AsFloat);
  wwDBGrid1.ColumnByName('QTY16').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY16.AsFloat);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY8.AsFloat);
  wwDBGrid1.ColumnByName('QTY17').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY17.AsFloat);
  wwDBGrid1.ColumnByName('QTY18').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY18.AsFloat);
  wwDBGrid1.ColumnByName('QTY19').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY19.AsFloat);
  wwDBGrid1.ColumnByName('QTY20').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY20.AsFloat);
  wwDBGrid1.ColumnByName('QTY21').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY21.AsFloat);
  wwDBGrid1.ColumnByName('QTY22').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY22.AsFloat);
  wwDBGrid1.ColumnByName('QTY23').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY23.AsFloat);
  wwDBGrid1.ColumnByName('QTY24').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY24.AsFloat);
  wwDBGrid1.ColumnByName('QTY25').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY25.AsFloat);


end;

procedure TLaporanMutasiStokInspekFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TLaporanMutasiStokInspekFrm.BtnClose1Click(Sender: TObject);
begin
  LaporanMutasiStokInspekFrm.Close;
end;

procedure TLaporanMutasiStokInspekFrm.wwDBSpinLine2Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;
{
procedure TWIP_KAIN_GREYFrm.BtnFindClick(Sender: TObject);
begin
	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;
end;
}
procedure TLaporanMutasiStokInspekFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect,dgAlwaysShowSelection];
      t1:=0;
      t2:=0;
      t3:=0;
      t4:=0;
      t5:=0;
      t6:=0;
      t7:=0;
      t8:=0;
      t9:=0;
      t10:=0;
      t11:=0;
      t12:=0;
      while not QBrowse.Eof do
      begin

      end;
      QBrowse.EnableControls;
   end;
end;

procedure TLaporanMutasiStokInspekFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TLaporanMutasiStokInspekFrm.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin

end;

procedure TLaporanMutasiStokInspekFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLaporanMutasiStokInspekFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLaporanMutasiStokInspekFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
{  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
}
end;

procedure TLaporanMutasiStokInspekFrm.Label5Click(Sender: TObject);
begin
{  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
}
end;

procedure TLaporanMutasiStokInspekFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TLaporanMutasiStokInspekFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TLaporanMutasiStokInspekFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
//  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TLaporanMutasiStokInspekFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TLaporanMutasiStokInspekFrm.FormShow(Sender: TObject);
begin
{    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    LapProduksiFrm:=Nil;
}
end;

procedure TLaporanMutasiStokInspekFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TLaporanMutasiStokInspekFrm.BitBtn1Click(Sender: TObject);
begin
//  wwDBGrid2DblClick(nil);
end;

procedure TLaporanMutasiStokInspekFrm.cbAdaTransaksiClick(Sender: TObject);
begin
//  QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TLaporanMutasiStokInspekFrm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLaporanMutasiStokInspekFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  DMFrm.QDateTime.Open;
//  QRLabel84.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TLaporanMutasiStokInspekFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  DMFrm.QDateTime.Open;
end;

procedure TLaporanMutasiStokInspekFrm.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel55.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TLaporanMutasiStokInspekFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel24.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TLaporanMutasiStokInspekFrm.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  DMFrm.QDateTime.Open;
end;

procedure TLaporanMutasiStokInspekFrm.QuickRep1AfterPreview(Sender: TObject);
begin
  LaporanMutasiStokInspekFrm :=Nil;
end;

procedure TLaporanMutasiStokInspekFrm.QuickRep1AfterPrint(Sender: TObject);
begin
  LaporanMutasiStokInspekFrm :=Nil;
end;

procedure TLaporanMutasiStokInspekFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin

{  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY14').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY14.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY2.AsFloat);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY13').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY13.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY4.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY6.AsFloat);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY9.AsFloat);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY10.AsFloat);
  wwDBGrid1.ColumnByName('QTY11').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY11.AsFloat);
  wwDBGrid1.ColumnByName('QTY12').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY12.AsFloat);
  wwDBGrid1.ColumnByName('QTY22').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY22.AsFloat);
  wwDBGrid1.ColumnByName('QTY15').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY15.AsFloat);
  wwDBGrid1.ColumnByName('QTY16').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY16.AsFloat);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY8.AsFloat);
  wwDBGrid1.ColumnByName('QTY17').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY17.AsFloat);
  wwDBGrid1.ColumnByName('QTY18').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY18.AsFloat);
  wwDBGrid1.ColumnByName('QTY19').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY19.AsFloat);
  wwDBGrid1.ColumnByName('QTY20').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY20.AsFloat);
  wwDBGrid1.ColumnByName('QTY21').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY21.AsFloat);
  wwDBGrid1.ColumnByName('QTY22').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY22.AsFloat);
  wwDBGrid1.ColumnByName('QTY23').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY23.AsFloat);
  wwDBGrid1.ColumnByName('QTY24').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY24.AsFloat);
  wwDBGrid1.ColumnByName('QTY25').FooterValue:=FormatFloat('0,0.0;(0,0.0);-',QTotalSUMQTY25.AsFloat);
     }
end;

procedure TLaporanMutasiStokInspekFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  //QBrowseAKHIR.AsInteger:=(QBrowseAWAL.AsInteger + QBrowseLAIN2IN.AsInteger + QBrowseFINISHINGIN.AsInteger) - QBrowseKELUAR.AsInteger - QBrowseAFFAL.AsInteger;
end;

procedure TLaporanMutasiStokInspekFrm.wwDBGrid2UpdateFooter(Sender: TObject);
var  vrasio, vpcs, vkg : real;
begin
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
//    vpcs:=vpcs+QBrowsesc_bale.AsFloat;
//    vkg:=vkg+QBrowsesc_prod_bale_mtr.AsFloat;
    QBrowse.Next;
  end;
  QTotal.Close;
  QTotal.Open;
  QBrowse.EnableControls;
//  wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',QTotalQTY1.AsFloat);
//  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vpcs);
//  wwDBGrid2.ColumnByName('SC_PROD_BALE_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);
end;

procedure TLaporanMutasiStokInspekFrm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  DMFrm.QDateTime.Open;
end;

procedure TLaporanMutasiStokInspekFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LapProduksiFrm :=Nil;
end;

end.
