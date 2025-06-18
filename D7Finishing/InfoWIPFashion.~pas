unit InfoWIPFashion;

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
  TInfoWIPFashionFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    QHasil: TOracleDataSet;
    dsQHasil: TwwDataSource;
    QHasil_Total: TOracleDataSet;
    Label11: TLabel;
    Label1: TLabel;
    QProcHasil: TOracleQuery;
    QHasil_TotalSHEARING: TFloatField;
    QHasil_TotalBAKAR: TFloatField;
    QHasil_TotalDESIZING: TFloatField;
    QHasil_TotalWASHING: TFloatField;
    QHasil_TotalSTENTER: TFloatField;
    QHasil_TotalCALENDER: TFloatField;
    QBrowse: TOracleDataSet;
    QBrowseTotal: TOracleDataSet;
    QProcWIP: TOracleQuery;
    DsQBrowse: TwwDataSource;
    QHasil_TotalFOLDING: TFloatField;
    QHasilKONSTRUKSI: TStringField;
    QHasilFOLDING: TFloatField;
    QHasilSHEARING: TFloatField;
    QHasilBAKAR: TFloatField;
    QHasilDESIZING: TFloatField;
    QHasilWASHING: TFloatField;
    QHasilSTENTER: TFloatField;
    QHasilCALENDER: TFloatField;
    QBrowseTotalQTY_AWAL: TFloatField;
    QBrowseTotalMQA: TFloatField;
    QBrowseTotalMQA_RE: TFloatField;
    QBrowseTotalMJD: TFloatField;
    QBrowseTotalMJD_RE: TFloatField;
    QBrowseTotalMLAIN: TFloatField;
    QBrowseTotalKQA: TFloatField;
    QBrowseTotalKQA_RE: TFloatField;
    QBrowseTotalKJD: TFloatField;
    QBrowseTotalKJD_RE: TFloatField;
    QBrowseTotalKLAIN: TFloatField;
    QBrowseTotalQTY_AKHIR: TFloatField;
    QBrowseNO_RESEP: TStringField;
    QBrowseNO_PO: TStringField;
    QBrowseKD_PRODUKSI: TStringField;
    QBrowseKONSTRUKSI: TStringField;
    QBrowseQTY_AWAL: TFloatField;
    QBrowseMQA: TFloatField;
    QBrowseMQA_RE: TFloatField;
    QBrowseMJD: TFloatField;
    QBrowseMJD_RE: TFloatField;
    QBrowseKQA: TFloatField;
    QBrowseKQA_RE: TFloatField;
    QBrowseKJD: TFloatField;
    QBrowseKJD_RE: TFloatField;
    QBrowseQTY_AKHIR: TFloatField;
    QBrowseMLAIN: TFloatField;
    QBrowseKLAIN: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    QuickRep2: TQuickRep;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    TitleBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape3: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRImage1: TQRImage;
    QRLabel11: TQRLabel;
    QRLabel35: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label18: TLabel;
    VTglAwal2: TwwDBDateTimePicker;
    VTglakhir2: TwwDBDateTimePicker;
    BitBtn9: TBitBtn;
    Panel6: TPanel;
    vOperand: TLabel;
    BitBtn5: TBitBtn;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    dbcField2: TwwDBComboBox;
    BtnExport2: TBitBtn;
    BitBtn6: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    TabSheet2: TTabSheet;
    Panel15: TPanel;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    VTglAkhir7: TwwDBDateTimePicker;
    VTglAwal7: TwwDBDateTimePicker;
    Panel16: TPanel;
    vOperand7: TLabel;
    BitBtn22: TBitBtn;
    ECari7: TEdit;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    BtnExport7: TBitBtn;
    BitBtn24: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    QRBand22: TQRBand;
    QRDBText133: TQRDBText;
    QRExpr64: TQRExpr;
    QRDBText136: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText140: TQRDBText;
    QRShape224: TQRShape;
    QRBand23: TQRBand;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRShape225: TQRShape;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRShape226: TQRShape;
    QRShape227: TQRShape;
    QRShape231: TQRShape;
    QRImage7: TQRImage;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRBand24: TQRBand;
    QRDBText141: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    rgRekap: TLMDRadioGroup;
    BitBtn21: TBitBtn;
    QProcWIP_Res: TOracleQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure dbcFieldEnter(Sender: TObject);
    procedure wwDBGrid1xxxxxTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QHasilAfterScroll(DataSet: TDataSet);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure VTglAwal2Change(Sender: TObject);
    procedure VTglakhir2Change(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure dbcField2Enter(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure vOperandClick(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure VTglAkhir7Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure QRBand23BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  InfoWIPFashionFrm: TInfoWIPFashionFrm;

implementation

uses DM, Math, FinishOpening, InfoWIPFinishing;

{$R *.dfm}

procedure TInfoWIPFashionFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InfoWIPFashionFrm:=Nil;
end;

procedure TInfoWIPFashionFrm.FormCreate(Sender: TObject);
begin
 //QTransaksi.SetVariable('kd_transaksi','891');
 //QTransaksi.Open;
//InfoWIPFashionFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;


end;

procedure TInfoWIPFashionFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TInfoWIPFashionFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  //FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  //FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TInfoWIPFashionFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  //QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;

procedure TInfoWIPFashionFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin

end;

procedure TInfoWIPFashionFrm.wwDBGrid1xxxxxTitleButtonClick(
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

procedure TInfoWIPFashionFrm.TabSheet2Show(Sender: TObject);
begin
         //QBrowse.Open;
        // QHasil.Open;

end;

procedure TInfoWIPFashionFrm.FormShow(Sender: TObject);
begin



  vTglAwal2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal2.Date:=Trunc(date());

  vTglAkhir2.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir2.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir2.Date:=Trunc(date());

  VTglAwal7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal7.Date:=Trunc(date());

  VTglAkhir7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir7.Date:=Trunc(date());


end;

procedure TInfoWIPFashionFrm.QHasilAfterScroll(DataSet: TDataSet);
begin
{azmi}
    Label20.Caption:='Record ke '+IntToStr(QHasil.RecNo)+' dari '+FormatFloat('#,#',QHasil.RecordCount)+' Records';
{azmi}
end;

procedure TInfoWIPFashionFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then

end;

procedure TInfoWIPFashionFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then

end;

procedure TInfoWIPFashionFrm.VTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.Date:=(VTglAwal2.Date);
end;

procedure TInfoWIPFashionFrm.VTglakhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TInfoWIPFashionFrm.cbOtomatis2Click(Sender: TObject);
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

procedure TInfoWIPFashionFrm.dbcField2Enter(Sender: TObject);
var
  i : Word;
begin
  if (QHasil.Active) and (dbcField2.Items.Count=1) then
  for i:=0 to wwDBGrid2.FieldCount-1 do
    if UpperCase(wwDBGrid2.Columns[i].FieldName)<>'tgl' then
      dbcField2.Items.Add(wwDBGrid2.Columns[i].FieldName);


end;

procedure TInfoWIPFashionFrm.BitBtn5Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
    vfilter:=' where (';
  if (QHasil.FieldCount>=1) then
  begin
    if dbcField2.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid2.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QHasil.FieldByName(wwDBGrid2.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid2.Columns[i].FieldName)<>'tgl') then
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
    if QHasil.Active then
      vorder:=' order by '+wwDBGrid2.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  end;


  QHasil.DisableControls;
  QHasil.Close;
  QHasil.SetVariable('myparam',vfilter+vorder);
  QHasil.Open;
  QHasil_Total.Close;
  QHasil_Total.SetVariable('myparam',vfilter);
  QHasil_Total.Open;
  QHasil.EnableControls;

  wwDBGrid2.ColumnByName('FOLDING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING.AsFloat);

  wwDBGrid2.ColumnByName('WASHING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING.AsFloat);

  wwDBGrid2.ColumnByName('STENTER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER.AsFloat);



  {   begin
 // QBrowse.DisableControls;
  QBrowse.Close;
  QAmbilData.Close;
  QAmbilData.SetVariable('pawal',VTglAwal.Date);
   QAmbilData.SetVariable('pakhir',vTglAkhir.Date);
   QAmbilData.Execute;
//  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
 // QBrowse.EnableControls;   }
end;

procedure TInfoWIPFashionFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
{  QProcHasil.Close;
  QProcHasil.SetVariable('pawal',VTglAwal2.Date);
  QProcHasil.SetVariable('pakhir',vTglAkhir2.Date);
  QProcHasil.Execute;
  QHasil.DisableControls;
  QHasil.Close;
  QHasil.SetVariable('myparam',vfilter+vorder);
  QHasil.Open;
  QHasil_Total.Close;
  QHasil_Total.SetVariable('myparam',vfilter);
  QHasil_Total.Open;
  QHasil.EnableControls;

  wwDBGrid2.ColumnByName('FOLDING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING.AsFloat);

  wwDBGrid2.ColumnByName('WASHING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING.AsFloat);

  wwDBGrid2.ColumnByName('STENTER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER.AsFloat);

    }
end;

procedure TInfoWIPFashionFrm.BitBtn6Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep2.Preview
   //else
     //QuickRep1.Print;
end;

procedure TInfoWIPFashionFrm.TabSheet3Show(Sender: TObject);
begin
        // QBrowse.Open;
         //QHasil.Open;
        
end;

procedure TInfoWIPFashionFrm.BitBtn9Click(Sender: TObject);
begin
  QHasil.DisableControls;
  QProcHasil.Close;
  QProcHasil.SetVariable('pawal',VTglAwal2.Date);
  QProcHasil.SetVariable('pakhir',vTglAkhir2.Date);
  QProcHasil.Execute;


  QHasil.Close;
  //QHasil.SetVariable('myparam',vfilter+vorder);
  QHasil.Open;
  QHasil_Total.Close;
 // QHasil_Total.SetVariable('myparam',vfilter);
  QHasil_Total.Open;
  QHasil.EnableControls;

  wwDBGrid2.ColumnByName('FOLDING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalFOLDING.AsFloat);

  wwDBGrid2.ColumnByName('SHEARING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSHEARING.AsFloat);

  wwDBGrid2.ColumnByName('BAKAR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalBAKAR.AsFloat);

  wwDBGrid2.ColumnByName('DESIZING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalDESIZING.AsFloat);

  wwDBGrid2.ColumnByName('WASHING').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalWASHING.AsFloat);

  wwDBGrid2.ColumnByName('STENTER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalSTENTER.AsFloat);

  wwDBGrid2.ColumnByName('CALENDER').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QHasil_TotalCALENDER.AsFloat);



end;

procedure TInfoWIPFashionFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// QRLabel12.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir2.Date);
  QRLabel23.Caption:='(Per : '+vTglAwal2.Text+' s/d '+vTglAkhir2.Text+')';
end;

procedure TInfoWIPFashionFrm.vOperandClick(Sender: TObject);
begin
 if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TInfoWIPFashionFrm.BitBtn21Click(Sender: TObject);
begin

case rgRekap.ItemIndex of
 0:
 begin

 if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by konstruksi';

  QBrowse.DisableControls;
  QBrowse.Close;
  QProcWIP.Close;
  QProcWIP.SetVariable('pawal',VTglAwal7.Date);
  QProcWIP.SetVariable('pakhir',VTglAkhir7.Date);
  QProcWIP.Execute;

  QBrowse.SetVariable('myparam',vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
 // QHasil_Total.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;

  wwDBGrid1.ColumnByName('QTY_AWAL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_AWAL.AsFloat);

  wwDBGrid1.ColumnByName('MQA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMQA.AsFloat);

  wwDBGrid1.ColumnByName('MQA_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMQA_RE.AsFloat);

  wwDBGrid1.ColumnByName('MJD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMJD.AsFloat);

  wwDBGrid1.ColumnByName('MJD_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMJD_RE.AsFloat);

  wwDBGrid1.ColumnByName('MLAIN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMLAIN.AsFloat);

  wwDBGrid1.ColumnByName('KQA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKQA.AsFloat);

  wwDBGrid1.ColumnByName('KQA_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKQA_RE.AsFloat);

  wwDBGrid1.ColumnByName('KJD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKJD.AsFloat);

  wwDBGrid1.ColumnByName('KJD_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKJD_RE.AsFloat);

  wwDBGrid1.ColumnByName('KLAIN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKLAIN.AsFloat);

  wwDBGrid1.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_AKHIR.AsFloat);


end;

   1:
 begin

 if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by kelompok';

  QBrowse.DisableControls;
  QBrowse.Close;
  QProcWIP_Res.Close;
  QProcWIP_Res.SetVariable('pawal',VTglAwal7.Date);
  QProcWIP_Res.SetVariable('pakhir',VTglAkhir7.Date);
  QProcWIP_Res.Execute;

  QBrowse.SetVariable('myparam',vorder);
  QBrowse.Open;
  QBrowseTotal.Close;
 // QHasil_Total.SetVariable('myparam',vfilter);
  QBrowseTotal.Open;
  QBrowse.EnableControls;

  wwDBGrid1.ColumnByName('QTY_AWAL').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_AWAL.AsFloat);

  wwDBGrid1.ColumnByName('MQA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMQA.AsFloat);

  wwDBGrid1.ColumnByName('MQA_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMQA_RE.AsFloat);

  wwDBGrid1.ColumnByName('MJD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMJD.AsFloat);

  wwDBGrid1.ColumnByName('MJD_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMJD_RE.AsFloat);

  wwDBGrid1.ColumnByName('MLAIN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalMLAIN.AsFloat);

  wwDBGrid1.ColumnByName('KQA').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKQA.AsFloat);

  wwDBGrid1.ColumnByName('KQA_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKQA_RE.AsFloat);

  wwDBGrid1.ColumnByName('KJD').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKJD.AsFloat);

  wwDBGrid1.ColumnByName('KJD_RE').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKJD_RE.AsFloat);

  wwDBGrid1.ColumnByName('KLAIN').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalKLAIN.AsFloat);

  wwDBGrid1.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('#.#,#;#.#,#; ',QBrowseTotalQTY_AKHIR.AsFloat);

end;
  end;
  end;


procedure TInfoWIPFashionFrm.VTglAwal7Change(Sender: TObject);
begin
  vTglAkhir7.Date:=(VTglAwal7.Date);
end;

procedure TInfoWIPFashionFrm.VTglAkhir7Change(Sender: TObject);
begin
  if VTglAwal7.Date>vTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TInfoWIPFashionFrm.TabSheet1Show(Sender: TObject);
begin
//QBrowse.Open;
end;

procedure TInfoWIPFashionFrm.BitBtn24Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep1.Preview
   //else
     //QuickRep1.Print;
end;

procedure TInfoWIPFashionFrm.QRBand23BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel182.Caption:='(Per : '+VTglAwal7.Text+' s/d '+VTglAkhir7.Text+')';
end;

end.
