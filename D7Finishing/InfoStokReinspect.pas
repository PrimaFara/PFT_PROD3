unit InfoStokReinspect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DB, Wwdatsrc,
  OracleData, wwSpeedButton, wwDBNavigator, wwclearpanel, Buttons, DBCtrls,
  wwcheckbox, wwdblook, Wwdbdlg, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, wwDialog, wwidlg, QRCtrls, QuickRpt, Printers,
  ComCtrls,DateUtils, Oracle, Wwdbspin;

type
  TInfoStokReinspectFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FNo_Urut: TOracleDataSet;
    FNo_UrutNO_NOTA: TStringField;
    LookMaster: TwwLookupDialog;
    Label11: TLabel;
    Label1: TLabel;
    QHasil_Shift_Tot: TOracleDataSet;
    QHasil_Shift_TotFOLDING: TFloatField;
    QHasil_Shift_TotSHEARING: TFloatField;
    QHasil_Shift_TotBAKAR: TFloatField;
    QHasil_Shift_TotDESIZING: TFloatField;
    QHasil_Shift_TotWASHING: TFloatField;
    QHasil_Shift_TotSTENTER: TFloatField;
    QHasil_Shift_TotCALENDER: TFloatField;
    QWIP: TOracleDataSet;
    dsQWIP: TwwDataSource;
    QProcWIP: TOracleQuery;
    QWIP_Tot: TOracleDataSet;
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
    QTransaksiDOC_ISO: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiKD_DIV: TStringField;
    QTransaksiSINOPSIS: TBlobField;
    QTransaksiDOC_ISO2: TStringField;
    dsQTransaksi: TwwDataSource;
    QTransaksiDOC_ISO3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    QuickRep7: TQuickRep;
    QRBand21: TQRBand;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRBand22: TQRBand;
    QRDBText133: TQRDBText;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRBand23: TQRBand;
    QRLabel181: TQRLabel;
    QRShape225: TQRShape;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRShape231: TQRShape;
    QRImage7: TQRImage;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRBand24: TQRBand;
    QRDBText141: TQRDBText;
    Panel15: TPanel;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    VTglAkhir7: TwwDBDateTimePicker;
    BitBtn21: TBitBtn;
    VTglAwal7: TwwDBDateTimePicker;
    Panel16: TPanel;
    vOperand7: TLabel;
    BitBtn22: TBitBtn;
    ECari7: TEdit;
    cbOtomatis7: TCheckBox;
    dbcField7: TwwDBComboBox;
    BtnExport7: TBitBtn;
    BitBtn24: TBitBtn;
    wwDBGrid6: TwwDBGrid;
    TabSheet6: TTabSheet;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape227: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape16: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape12: TQRShape;
    QRShape15: TQRShape;
    QRLabel46: TQRLabel;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape41: TQRShape;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QWIP_TotAWAL1: TFloatField;
    QWIP_TotMASUK1: TFloatField;
    QWIP_TotKELUAR1: TFloatField;
    QWIP_TotAKHIR1: TFloatField;
    QWIPKD_KONSTRUKSI: TStringField;
    QWIPKONSTRUKSI: TStringField;
    QWIPAWAL1: TFloatField;
    QWIPMASUK1: TFloatField;
    QWIPKELUAR1: TFloatField;
    QWIPAKHIR1: TFloatField;
    QWIPKD_PRODUKSI: TStringField;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    VTglAkhir8: TwwDBDateTimePicker;
    VTglAwal8: TwwDBDateTimePicker;
    Panel4: TPanel;
    vOperand8: TLabel;
    BitBtn2: TBitBtn;
    ECari8: TEdit;
    cbOtomatis8: TCheckBox;
    dbcField8: TwwDBComboBox;
    BitBtn3: TBitBtn;
    wwDBGrid8: TwwDBGrid;
    dsQWIPn: TwwDataSource;
    QProcWIPn: TOracleQuery;
    QWIPn_Tot: TOracleDataSet;
    QWIPn_TotAWAL_BK: TFloatField;
    QWIPn_TotAWAL_BS: TFloatField;
    QWIPn_TotDLM_BK: TFloatField;
    QWIPn_TotDLM_BS: TFloatField;
    QWIPn_TotMTR_BK: TFloatField;
    QWIPn_TotMTR_BS: TFloatField;
    QWIPn_TotLNIN_BK: TFloatField;
    QWIPn_TotLNIN_BS: TFloatField;
    QWIPn_TotKORIN_BK: TFloatField;
    QWIPn_TotKORIN_BS: TFloatField;
    QWIPn_TotJAHIT_BK: TFloatField;
    QWIPn_TotJAHIT_BS: TFloatField;
    QWIPn_TotKOROUT_BK: TFloatField;
    QWIPn_TotKOROUT_BS: TFloatField;
    QWIPn_TotLNOUT_BK: TFloatField;
    QWIPn_TotLNOUT_BS: TFloatField;
    QWIPn_TotRETUR_BK: TFloatField;
    QWIPn_TotRETUR_BS: TFloatField;
    QWIPn_TotOUT_BK: TFloatField;
    QWIPn_TotOUT_BS: TFloatField;
    QWIPn_TotAKHIR_BK: TFloatField;
    QWIPn_TotAKHIR_BS: TFloatField;
    QWIPn: TOracleDataSet;
    QWIPnKD_PRODUKSI: TStringField;
    QWIPnKONSTRUKSI: TStringField;
    QWIPnAWAL_BK: TFloatField;
    QWIPnAWAL_BS: TFloatField;
    QWIPnDLM_BK: TFloatField;
    QWIPnDLM_BS: TFloatField;
    QWIPnMTR_BK: TFloatField;
    QWIPnMTR_BS: TFloatField;
    QWIPnLNIN_BK: TFloatField;
    QWIPnLNIN_BS: TFloatField;
    QWIPnKORIN_BK: TFloatField;
    QWIPnKORIN_BS: TFloatField;
    QWIPnJAHIT_BK: TFloatField;
    QWIPnJAHIT_BS: TFloatField;
    QWIPnKOROUT_BK: TFloatField;
    QWIPnKOROUT_BS: TFloatField;
    QWIPnLNOUT_BK: TFloatField;
    QWIPnLNOUT_BS: TFloatField;
    QWIPnRETUR_BK: TFloatField;
    QWIPnRETUR_BS: TFloatField;
    QWIPnOUT_BK: TFloatField;
    QWIPnOUT_BS: TFloatField;
    QWIPnAKHIR_BK: TFloatField;
    QWIPnAKHIR_BS: TFloatField;
    QWIPnSSUAI_IN: TFloatField;
    QWIPnSSUAI_OUT: TFloatField;
    QWIPn_TotSSUAI_IN: TFloatField;
    QWIPn_TotSSUAI_OUT: TFloatField;
    QWIPnKEMAS_BK: TFloatField;
    QWIPnKEMAS_BS: TFloatField;
    QWIPn_TotKEMAS_BK: TFloatField;
    QWIPn_TotKEMAS_BS: TFloatField;
    QWIPnAKHIR_BK_KD: TFloatField;
    QWIPnAKHIR_BS_KD: TFloatField;
    QWIPn_TotAKHIR_BK_KD: TFloatField;
    QWIPn_TotAKHIR_BS_KD: TFloatField;
    TabSheet3: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    Panel7: TPanel;
    Label5: TLabel;
    DBText5: TDBText;
    Panel6: TPanel;
    DBText6: TDBText;
    Label6: TLabel;
    Panel5: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    Button1: TButton;
    QRiwayatTransaksi: TOracleDataSet;
    dsQRiwayatTransaksi: TwwDataSource;
    QRiwayatTransaksiISTOK_GD: TFloatField;
    QRiwayatTransaksiNO_NOTA: TStringField;
    QRiwayatTransaksiTGL: TDateTimeField;
    QRiwayatTransaksiKP: TStringField;
    QRiwayatTransaksiKONSTRUKSI: TStringField;
    QRiwayatTransaksiIN_BK: TFloatField;
    QRiwayatTransaksiOUT_BK: TFloatField;
    QRiwayatTransaksiIN_BS: TFloatField;
    QRiwayatTransaksiOUT_BS: TFloatField;
    QRiwayatTransaksiDEPARTEMEN: TStringField;
    QRiwayatTransaksiTGL_INSERT: TDateTimeField;
    QRiwayatTransaksiOPR_INSERT: TStringField;
    QRiwayatTransaksiNO_ORDER: TStringField;
    QRiwayatTransaksi_tot: TOracleDataSet;
    QRiwayatTransaksi_totIN_BK: TFloatField;
    QRiwayatTransaksi_totIN_BS: TFloatField;
    QRiwayatTransaksi_totOUT_BK: TFloatField;
    QRiwayatTransaksi_totOUT_BS: TFloatField;
    DBText4: TDBText;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText7: TDBText;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FNo_UrutBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterBeforeQuery(Sender: TOracleDataSet);
    procedure FormShow(Sender: TObject);
    procedure QHasilAfterScroll(DataSet: TDataSet);
    procedure LookKonstruksiCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookCorakCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure TabSheet1Show(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TabSheet6Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure cbOtomatis7Click(Sender: TObject);
    procedure dbcField7Enter(Sender: TObject);
    procedure vOperand7Click(Sender: TObject);
    procedure BtnExport7Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure VTglAwal7Change(Sender: TObject);
    procedure VTglAkhir7Change(Sender: TObject);
    procedure VTglAwal8Change(Sender: TObject);
    procedure VTglAkhir8Change(Sender: TObject);
    procedure cbOtomatis8Click(Sender: TObject);
    procedure dbcField8Enter(Sender: TObject);
    procedure vOperand8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
    vTab,vfilter,vorder : string;
  public
    { Public declarations }
  end;

var
  InfoStokReinspectFrm: TInfoStokReinspectFrm;

implementation

uses DM, Math, FinishOpening, InfoWIPFinishing;

{$R *.dfm}

procedure TInfoStokReinspectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InfoStokReinspectFrm:=Nil;
end;

procedure TInfoStokReinspectFrm.FormCreate(Sender: TObject);
begin
 QTransaksi.SetVariable('kd_transaksi','991');
 QTransaksi.Open;
//InfoWIPFinishingFrm.Caption:=QTransaksiNAMA_TRANSAKSI.AsString;


end;

procedure TInfoStokReinspectFrm.ColumnHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin//  qrlHarga.Enabled:=not cbHarga.Checked;
//  QRDBHarga.Enabled:=not cbHarga.Checked;
end;

procedure TInfoStokReinspectFrm.FNo_UrutBeforeQuery(
  Sender: TOracleDataSet);
begin
  //FNo_Urut.SetVariable('pkode',QTransaksiKD_TRANSAKSI.AsString);
  //FNo_Urut.SetVariable('ptgl',QMasterTGL.AsDateTime);
end;

procedure TInfoStokReinspectFrm.QMasterBeforeQuery(Sender: TOracleDataSet);
begin
  //QMaster.SetVariable('kd_transaksi',QTransaksiKD_TRANSAKSI.AsString);
end;







procedure TInfoStokReinspectFrm.FormShow(Sender: TObject);
begin




  VTglAwal7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAwal7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAwal7.Date:=Trunc(date());

  VTglAkhir7.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  VTglAkhir7.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  VTglAkhir7.Date:=Trunc(date());



end;

procedure TInfoStokReinspectFrm.QHasilAfterScroll(DataSet: TDataSet);
begin
{azmi}
    //LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
{azmi}
end;

procedure TInfoStokReinspectFrm.LookKonstruksiCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 if modified then

end;

procedure TInfoStokReinspectFrm.LookCorakCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 If modified then

end;

procedure TInfoStokReinspectFrm.TabSheet1Show(Sender: TObject);
begin
         //QBrowse.Close;
        // QBrowse.SetVariable('myparam',vfilter);
         //QBrowse.Open;
       {  QPosisi_Stok.Open;
         QHasil_Shift.Open;
         QHasil_BL.Open;   }


end;

procedure TInfoStokReinspectFrm.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLabel46.Caption:='(Per : '+VTglAwal7.Text+' s/d '+vTglAkhir7.Text+')';
end;

procedure TInfoStokReinspectFrm.TabSheet6Show(Sender: TObject);
begin
         {QBrowse.Close;
         QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         QBrowseTotal.Close;
         QBrowseTotal.SetVariable('myparam',vfilter);
         QBrowseTotal.Open;  }

end;

procedure TInfoStokReinspectFrm.TabSheet5Show(Sender: TObject);
begin
         {QBrowse.SetVariable('myparam',vfilter);
         QBrowse.Open;
         QBrowseTotal.Close;
         QBrowseTotal.SetVariable('myparam',vfilter);
         QBrowseTotal.Open; }
         {QHasil.Close;
         QHasil.SetVariable('myparam',vfilter);
         QHasil.Open;
         QHasil_Shift.Close;
         QHasil.SetVariable('myparam',vfilter);
         QHasil_Shift.Open;  }
         {QPosisi_Stok.Close;
         QHasil.SetVariable('myparam',vfilter);
         QPosisi_Stok.Open;  }
end;






procedure TInfoStokReinspectFrm.TabSheet4Show(Sender: TObject);
begin
//QHasil_BL.Open;
//QHasil_BL_Tot.Open;
end;




procedure TInfoStokReinspectFrm.BitBtn21Click(Sender: TObject);
begin
  QWIP.DisableControls;
  QWIP.Close;
  QProcWIP.Close;
  QProcWIP.SetVariable('pawal',VTglAwal7.Date);
  QProcWIP.SetVariable('pakhir',VTglAkhir7.Date);
  QProcWIP.Execute;


  QWIP.SetVariable('myparam',vfilter+vorder);
  QWIP.Open;
  QWIP_Tot.Close;
  QWIP_Tot.SetVariable('myparam',vfilter);
  QWIP_Tot.Open;
  QWIP.EnableControls;

  wwDBGrid6.ColumnByName('AWAL1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIP_TotAWAL1.AsFloat);
  wwDBGrid6.ColumnByName('MASUK1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIP_TotMASUK1.AsFloat);
  //wwDBGrid6.ColumnByName('MASUK2').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIP_TotMASUK2.AsFloat);
  wwDBGrid6.ColumnByName('KELUAR1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIP_TotKELUAR1.AsFloat);
  wwDBGrid6.ColumnByName('AKHIR1').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIP_TotAKHIR1.AsFloat);

 { QPosisi_Stok.Close;
  QPosisi_Stok.SetVariable('myparam',vfilter);
  QPosisi_Stok.Open;   }


end;
 
procedure TInfoStokReinspectFrm.cbOtomatis7Click(Sender: TObject);
begin
 if cbOtomatis7.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid6.Options:=wwDBGrid6.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid6.Options:=wwDBGrid6.Options-[dgAlwaysShowSelection];
  ECari7.SetFocus;
end;

procedure TInfoStokReinspectFrm.dbcField7Enter(Sender: TObject);
var
  i : Word;
begin
  if (QWIP.Active) and (dbcField7.Items.Count=1) then
  for i:=0 to wwDBGrid6.FieldCount-1 do
    if UpperCase(wwDBGrid6.Columns[i].FieldName)<>'TANGGAL' then
      dbcField7.Items.Add(wwDBGrid6.Columns[i].FieldName);

end;

procedure TInfoStokReinspectFrm.vOperand7Click(Sender: TObject);
begin
if vOperand7.Caption='LIKE' then
    vOperand7.Caption:='='
    else
      vOperand7.Caption:='LIKE';
end;

procedure TInfoStokReinspectFrm.BtnExport7Click(Sender: TObject);
begin
  if QWIP.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=''+TabSheet8.Caption+' Finishing';
             wwDBGrid6.ExportOptions.TitleName:=''+TabSheet8.Caption+' Finishing';
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid6.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid6.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TInfoStokReinspectFrm.BitBtn24Click(Sender: TObject);
begin
 DMFrm.QUserTime.Close;
 DMFrm.QUserTime.Open;
 //if cbPreview.Checked then
   QuickRep7.Preview
   //else
     //QuickRep1.Print;
end;

procedure TInfoStokReinspectFrm.VTglAwal7Change(Sender: TObject);
begin
VTglAkhir7.Date:=(VTglAwal7.Date);
end;

procedure TInfoStokReinspectFrm.VTglAkhir7Change(Sender: TObject);
begin
  if VTglAwal7.Date>VTglAkhir7.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir7.Date:=VTglAwal7.Date;
  end;
end;

procedure TInfoStokReinspectFrm.VTglAwal8Change(Sender: TObject);
begin
VTglAkhir8.Date:=trunc(EndOfTheMonth(VTglAwal8.Date));
end;

procedure TInfoStokReinspectFrm.VTglAkhir8Change(Sender: TObject);
begin
if VTglAwal8.Date>VTglAkhir8.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir8.Date:=VTglAwal8.Date;
  end;
end;

procedure TInfoStokReinspectFrm.cbOtomatis8Click(Sender: TObject);
begin
if cbOtomatis8.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid8.Options:=wwDBGrid8.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid8.Options:=wwDBGrid8.Options-[dgAlwaysShowSelection];
  ECari8.SetFocus;
end;

procedure TInfoStokReinspectFrm.dbcField8Enter(Sender: TObject);
var
  i : Word;
begin
  if (QWIPn.Active) and (dbcField8.Items.Count=1) then
  for i:=0 to wwDBGrid8.FieldCount-1 do
    if UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TGL' then
      dbcField8.Items.Add(wwDBGrid8.Columns[i].FieldName);

end;

procedure TInfoStokReinspectFrm.vOperand8Click(Sender: TObject);
begin
if vOperand8.Caption='LIKE' then
    vOperand8.Caption:='='
    else
      vOperand8.Caption:='LIKE';
end;

procedure TInfoStokReinspectFrm.BitBtn2Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vrgTanggal : String;
begin
  QProcWIPn.Close;
  QProcWIPn.SetVariable('pawal',VTglAwal8.Date);
  QProcWIPn.SetVariable('pakhir',VTglAkhir8.Date);
  QProcWIPn.Execute;
  QWIPn.Close;
  QWIPn.Open;

  vpertama:=True;
  vfilter:=' where (';
  if (QWIPn.FieldCount>=1) then
  begin
    if dbcField8.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid8.Selected.Count-1 do
  //    for i:=0 to QWIP.FieldCount-1 do
      begin
        if (QWIPn.FieldByName(wwDBGrid8.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid8.Columns[i].FieldName)<>'TGL') then
        begin
          if vpertama then
            begin
              if vOperand8.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari8.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid8.Columns[i].FieldName+' = '''+ECari8.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand8.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' like ''%'+ECari8.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid8.Columns[i].FieldName+' = '''+ECari8.Text+''''
        end;
      end;
    end
    else
      if vOperand8.Caption='LIKE' then
         vfilter:=vfilter+dbcField8.Text+' like ''%'+ECari8.Text+'%'''
         else
           vfilter:=vfilter+dbcField8.Text+' = '''+ECari8.Text+'''';
    vfilter:=vfilter+')';
    if QWIPn.Active then
      vorder:=' order by kd_produksi'
      else
        vorder:=' order by kd_produksi';

  end;
  QWIPn.DisableControls;
  QWIPn.Close;
  QWIPn.SetVariable('myparam',vfilter+vorder);
  QWIPn.Open;
  QWIPn_Tot.Close;
  QWIPn_Tot.SetVariable('myparam',vfilter+vorder);
  QWIPn_Tot.Open;
  QWIPn.EnableControls;

  wwDBGrid8.ColumnByName('AWAL_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAWAL_BK.AsFloat);
  wwDBGrid8.ColumnByName('AWAL_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAWAL_BS.AsFloat);
  wwDBGrid8.ColumnByName('DLM_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotDLM_BK.AsFloat);
  wwDBGrid8.ColumnByName('DLM_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotDLM_BS.AsFloat);
  wwDBGrid8.ColumnByName('SSUAI_IN').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotSSUAI_IN.AsFloat);
  wwDBGrid8.ColumnByName('MTR_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotMTR_BK.AsFloat);
  wwDBGrid8.ColumnByName('MTR_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotMTR_BS.AsFloat);
  wwDBGrid8.ColumnByName('LNIN_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotLNIN_BK.AsFloat);
  wwDBGrid8.ColumnByName('LNIN_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotLNIN_BS.AsFloat);
  wwDBGrid8.ColumnByName('KORIN_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKORIN_BK.AsFloat);
  wwDBGrid8.ColumnByName('KORIN_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKORIN_BS.AsFloat);
  wwDBGrid8.ColumnByName('SSUAI_OUT').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotSSUAI_OUT.AsFloat);
  wwDBGrid8.ColumnByName('JAHIT_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotJAHIT_BK.AsFloat);
  wwDBGrid8.ColumnByName('JAHIT_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotJAHIT_BS.AsFloat);
  wwDBGrid8.ColumnByName('KOROUT_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKOROUT_BK.AsFloat);
  wwDBGrid8.ColumnByName('KOROUT_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKOROUT_BS.AsFloat);
  wwDBGrid8.ColumnByName('LNOUT_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotLNOUT_BK.AsFloat);
  wwDBGrid8.ColumnByName('LNOUT_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotLNOUT_BS.AsFloat);
  wwDBGrid8.ColumnByName('RETUR_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotRETUR_BK.AsFloat);
  wwDBGrid8.ColumnByName('RETUR_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotRETUR_BS.AsFloat);
  wwDBGrid8.ColumnByName('OUT_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotOUT_BK.AsFloat);
  wwDBGrid8.ColumnByName('OUT_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotOUT_BS.AsFloat);
  wwDBGrid8.ColumnByName('KEMAS_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKEMAS_BK.AsFloat);
  wwDBGrid8.ColumnByName('KEMAS_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotKEMAS_BS.AsFloat);
  wwDBGrid8.ColumnByName('AKHIR_BK').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAKHIR_BK.AsFloat);
  wwDBGrid8.ColumnByName('AKHIR_BS').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAKHIR_BS.AsFloat);

  wwDBGrid8.ColumnByName('AKHIR_BK_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAKHIR_BK_KD.AsFloat);
  wwDBGrid8.ColumnByName('AKHIR_BS_KD').FooterValue:=FormatFloat('0.0,0;(0.0,0); ',QWIPn_TotAKHIR_BS_KD.AsFloat);
end;

procedure TInfoStokReinspectFrm.BitBtn3Click(Sender: TObject);
var
  TanggalStr: string;
begin
if VTglAwal8.Date = VTglAkhir8.Date then
      TanggalStr := FormatDateTime('dd mmmm yyyy', VTglAwal8.Date)
    else
      TanggalStr := FormatDateTime('dd mmmm yyyy', VTglAwal8.Date) + ' - ' + FormatDateTime('dd mmmm yyyy', VTglAkhir8.Date);

if QWIPn.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='WIP REINSPECT_'+ TanggalStr +'';
             wwDBGrid8.ExportOptions.TitleName:='WIP REINSPECT_'+ TanggalStr +'';
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid8.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid8.ExportOptions.Save;
                 ShowMessage('Simpan Sukses !');
                 except
                 ShowMessage('Simpan Gagal !');
                 end;
               end;
          end
          else
            ShowMessage('Tabel belum di-OPEN !');
end;

procedure TInfoStokReinspectFrm.TabSheet3Show(Sender: TObject);
begin
  //wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
  //BtnExport.Enabled:=False;
  QRiwayatTransaksi.DisableControls;
  QRiwayatTransaksi_tot.DisableControls;

  QRiwayatTransaksi.Close;
  QRiwayatTransaksi_tot.Close;

  QRiwayatTransaksi.SetVariable('kp',QWIPnKD_PRODUKSI.AsString);
  QRiwayatTransaksi.SetVariable('pawal',trunc(VTglAwal8.Date));
  QRiwayatTransaksi.SetVariable('pakhir',trunc(VTglAkhir8.Date)+1-1/86400);
  QRiwayatTransaksi.SetVariable('dept','REINSPEK');

  QRiwayatTransaksi_tot.SetVariable('kp',QWIPnKD_PRODUKSI.AsString);
  QRiwayatTransaksi_tot.SetVariable('pawal',trunc(VTglAwal8.Date));
  QRiwayatTransaksi_tot.SetVariable('pakhir',trunc(VTglAkhir8.Date)+1-1/86400);
  QRiwayatTransaksi_tot.SetVariable('dept','REINSPEK');

  QRiwayatTransaksi.Open;
  QRiwayatTransaksi_tot.Open;
  QRiwayatTransaksi.EnableControls;

  Label15.Caption:=QWIPnSSUAI_IN.AsString;
  Label17.Caption:=QWIPnSSUAI_OUT.AsString;

  wwDBGrid2.ColumnByName('IN_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QRiwayatTransaksi_totIN_BK.AsFloat);
  wwDBGrid2.ColumnByName('IN_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QRiwayatTransaksi_totIN_BS.AsFloat);

  wwDBGrid2.ColumnByName('OUT_BK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QRiwayatTransaksi_totOUT_BK.AsFloat);
  wwDBGrid2.ColumnByName('OUT_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QRiwayatTransaksi_totOUT_BS.AsFloat);
end;

end.
