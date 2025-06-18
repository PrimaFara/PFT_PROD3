unit InputanHipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Wwdbcomb, DB,
  OracleData, wwDialog, wwidlg, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, wwdbedit, wwdbdatetimepicker, Mask, Wwdotdot,
  ComCtrls, Buttons, QRCtrls, QuickRpt, wwdblook, Wwdbdlg, wwcheckbox,
  Oracle, DateUtils, wwrcdvw, LMDCustomComponent, LMDGlobalHotKey;

type
  TInputanHipoFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    Panel6: TPanel;
    QDetail: TOracleDataSet;
    dsDetail: TwwDataSource;
    dsQBrowse: TwwDataSource;
    dsMaster: TwwDataSource;
    QLookLokasiProses: TOracleDataSet;
    QLookLokasiProsesKODE: TStringField;
    QLookLokasiProsesLOKASI: TStringField;
    QLookLokasiProsesPROSES: TStringField;
    QLookLokasiProsesNO_SERI_BEAM: TStringField;
    QLookLokasiProsesKONSTRUKSI: TStringField;
    QLookLokasiProsesCORAK: TStringField;
    QLookLokasiProsesISI: TFloatField;
    QAmbilData: TOracleQuery;
    Button1: TButton;
    QAmbilData2: TOracleQuery;
    BitBtn1: TBitBtn;
    QHapus: TOracleQuery;
    wwRecordViewDialog1: TwwRecordViewDialog;
    QDetail_Tot: TOracleDataSet;
    Label15: TLabel;
    Edit6: TEdit;
    Label16: TLabel;
    LMDGlobalHotKey1: TLMDGlobalHotKey;
    QDetailNO_REG: TFloatField;
    QDetailNO_REG_MITRA: TFloatField;
    QDetailNO_REFF: TStringField;
    QDetailTANGGAL: TDateTimeField;
    QDetailNO_ORDER: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailNO_RESEP: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailSATUAN: TStringField;
    QDetailMITRA: TStringField;
    QDetailKETERANGAN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailLOKASI: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailJENIS_SARUNG: TStringField;
    QDetailTGL_KIRIM: TDateTimeField;
    QDetailTGL_TERIMA: TDateTimeField;
    QDetailPROD_CABUT: TFloatField;
    QDetailPROD_TDKCABUT: TFloatField;
    QDetailPROD_TOTAL: TFloatField;
    QDetailB1: TFloatField;
    QDetailLPT: TFloatField;
    QDetailLRG: TFloatField;
    QDetailFLO: TFloatField;
    QDetailSLL: TFloatField;
    QDetailBTS: TFloatField;
    QDetailBTB: TFloatField;
    QDetailWP: TFloatField;
    QDetailWL: TFloatField;
    QDetailTK: TFloatField;
    QDetailKTR: TFloatField;
    QDetailMC: TFloatField;
    QDetailBOSK: TFloatField;
    QDetailKS: TFloatField;
    QDetailHK: TFloatField;
    QDetailWTM: TFloatField;
    QDetailM_SAMAR: TFloatField;
    QDetailM_RUSAK: TFloatField;
    QDetailM_BELANG: TFloatField;
    QDetailM_OUIT: TFloatField;
    QDetailMTS: TFloatField;
    QDetailFLEX_PRINT: TFloatField;
    QDetailFLEX_STAMPING: TFloatField;
    QDetailLPT_L: TFloatField;
    QDetailLRG_L: TFloatField;
    QDetailFLO_L: TFloatField;
    QDetailSLL_L: TFloatField;
    QDetailBTS_L: TFloatField;
    QDetailBTB_L: TFloatField;
    QDetailWP_L: TFloatField;
    QDetailWL_L: TFloatField;
    QDetailTK_L: TFloatField;
    QDetailRSK_L: TFloatField;
    QDetailKTR_L: TFloatField;
    QDetailMC_L: TFloatField;
    QDetailBOSK_L: TFloatField;
    QDetailKS_L: TFloatField;
    QDetailHK_L: TFloatField;
    QDetailWTM_L: TFloatField;
    QDetailM_SAMAR_L: TFloatField;
    QDetailM_RUSAK_L: TFloatField;
    QDetailM_BELANG_L: TFloatField;
    QDetailM_OUIT_L: TFloatField;
    QDetailMTS_L: TFloatField;
    QDetailFLEX_PRINT_L: TFloatField;
    QDetailFLEX_STAMPING_L: TFloatField;
    QDetailRSK_BS: TFloatField;
    QDetailKTS: TFloatField;
    QDetail_TotPROD_CABUT: TFloatField;
    QDetail_TotPROD_TDKCABUT: TFloatField;
    QDetail_TotPROD_TOTAL: TFloatField;
    QDetail_TotB1: TFloatField;
    QDetail_TotLPT: TFloatField;
    QDetail_TotLRG: TFloatField;
    QDetail_TotFLO: TFloatField;
    QDetail_TotSLL: TFloatField;
    QDetail_TotBTS: TFloatField;
    QDetail_TotBTB: TFloatField;
    QDetail_TotWP: TFloatField;
    QDetail_TotWL: TFloatField;
    QDetail_TotTK: TFloatField;
    QDetail_TotKTR: TFloatField;
    QDetail_TotMC: TFloatField;
    QDetail_TotBOSK: TFloatField;
    QDetail_TotKS: TFloatField;
    QDetail_TotHK: TFloatField;
    QDetail_TotWTM: TFloatField;
    QDetail_TotM_SAMAR: TFloatField;
    QDetail_TotM_RUSAK: TFloatField;
    QDetail_TotM_BELANG: TFloatField;
    QDetail_TotM_OUIT: TFloatField;
    QDetail_TotMTS: TFloatField;
    QDetail_TotFLEX_PRINT: TFloatField;
    QDetail_TotFLEX_STAMPING: TFloatField;
    QDetail_TotLPT_L: TFloatField;
    QDetail_TotLRG_L: TFloatField;
    QDetail_TotFLO_L: TFloatField;
    QDetail_TotSLL_L: TFloatField;
    QDetail_TotBTS_L: TFloatField;
    QDetail_TotBTB_L: TFloatField;
    QDetail_TotWP_L: TFloatField;
    QDetail_TotWL_L: TFloatField;
    QDetail_TotTK_L: TFloatField;
    QDetail_TotRSK_L: TFloatField;
    QDetail_TotKTR_L: TFloatField;
    QDetail_TotMC_L: TFloatField;
    QDetail_TotBOSK_L: TFloatField;
    QDetail_TotKS_L: TFloatField;
    QDetail_TotHK_L: TFloatField;
    QDetail_TotWTM_L: TFloatField;
    QDetail_TotM_SAMAR_L: TFloatField;
    QDetail_TotM_RUSAK_L: TFloatField;
    QDetail_TotM_BELANG_L: TFloatField;
    QDetail_TotM_OUIT_L: TFloatField;
    QDetail_TotMTS_L: TFloatField;
    QDetail_TotFLEX_PRINT_L: TFloatField;
    QDetail_TotFLEX_STAMPING_L: TFloatField;
    QDetail_TotRSK_BS: TFloatField;
    QDetail_TotKTS: TFloatField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    QDetailB2_TENUN: TFloatField;
    QDetailB2_FINISH: TFloatField;
    QDetailB2_PRINTING: TFloatField;
    QDetailB2_TOTAL: TFloatField;
    QDetailBS_KAIN: TFloatField;
    QDetailBS_PRINTING: TFloatField;
    QDetailBS_TOTAL: TFloatField;
    QDetailBK: TFloatField;
    LookBeam: TwwDBLookupCombo;
    QBrowseMitra: TOracleDataSet;
    QBrowseMitraNAMA_MITRA: TStringField;
    LookKdProd2: TwwDBLookupComboDlg;
    LookSarung: TwwDBLookupCombo;
    QLookSarung: TOracleDataSet;
    QLookSarungJENIS_SARUNG: TStringField;
    QLookSarungKD_SARUNG: TFloatField;
    procedure QMasterBeforeEdit(DataSet: TDataSet);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetail_TotBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QDetailBeforeQuery(Sender: TOracleDataSet);
    procedure LookBeamEnter(Sender: TObject);
    procedure LookKdProd2Click(Sender: TObject);
    procedure LookKdProd2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookKdProd2Enter(Sender: TObject);
    procedure LookSarungCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookSarungEnter(Sender: TObject);
  private
    { Private declarations }
    vorder, vorder2 : String;
    vrasio, vrasio3: real;
  public
    { Public declarations }
    vkd_lokasi, vjns_transaksi : String;
  end;

var
  InputanHipoFrm: TInputanHipoFrm;

implementation

uses DM, TerimaDariFinishing2, ReInspekDetail, TerimaDariFinishing,
  HasilTenun2, InspekMitraDetail, InspectingHipo;

{$R *.dfm}

procedure TInputanHipoFrm.QMasterBeforeEdit(DataSet: TDataSet);
begin
  {  if QMasterISPOST.AsString='1' then
    begin
       ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
       Abort;
    end;   }
end;

procedure TInputanHipoFrm.QDetailNewRecord(DataSet: TDataSet);
begin
 // QDetailNO_REG_TENUN.AsString:=QMasterNO_REG.AsString;
  QDetailNO_REG.AsString:=InspectingHipoFrm.QMasterNO_REG.AsString;
  //QDetailSATUAN.AsString:='PCS';
  //QDetailTANGGAL.AsDateTime:=trunc(TerimaDariFinishing2Frm.QMasterTGL.AsDateTime);
end;

procedure TInputanHipoFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  {QMasterISPOST.AsString:='0';
  QMasterJNS_TRANSAKSI.AsString:=vjns_transaksi; }
end;

procedure TInputanHipoFrm.QDetailCalcFields(DataSet: TDataSet);
begin
  //QDetailDITERIMA.AsFloat:=QDetailPR.AsFloat+QDetailQTY2.AsFloat+QDetailQTY3.AsFloat;
end;

procedure TInputanHipoFrm.Button1Click(Sender: TObject);
begin

  DMFrm.OS.ApplyUpdates([QDetail],True);
  QDetail_Tot.Close;
  QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  QDetail_Tot.Open;

    wwDBGrid1.ColumnByName('PROD_CABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_CABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TDKCABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TDKCABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TOTAL.AsFloat);
    wwDBGrid1.ColumnByName('B1').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotB1.AsFloat);
    wwDBGrid1.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT.AsFloat);
    wwDBGrid1.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG.AsFloat);
    wwDBGrid1.ColumnByName('FLO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO.AsFloat);
    wwDBGrid1.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL.AsFloat);
    wwDBGrid1.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS.AsFloat);
    wwDBGrid1.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB.AsFloat);
    wwDBGrid1.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP.AsFloat);
    wwDBGrid1.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL.AsFloat);
    wwDBGrid1.ColumnByName('TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK.AsFloat);
    wwDBGrid1.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR.AsFloat);
    wwDBGrid1.ColumnByName('MC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC.AsFloat);
    wwDBGrid1.ColumnByName('BOSK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK.AsFloat);
    wwDBGrid1.ColumnByName('KS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS.AsFloat);
    wwDBGrid1.ColumnByName('HK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK.AsFloat);
    wwDBGrid1.ColumnByName('WTM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT.AsFloat);
    wwDBGrid1.ColumnByName('MTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING.AsFloat);
    wwDBGrid1.ColumnByName('LPT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT_L.AsFloat);
    wwDBGrid1.ColumnByName('LRG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG_L.AsFloat);
    wwDBGrid1.ColumnByName('FLO_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO_L.AsFloat);
    wwDBGrid1.ColumnByName('SLL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL_L.AsFloat);
    wwDBGrid1.ColumnByName('BTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS_L.AsFloat);
    wwDBGrid1.ColumnByName('BTB_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB_L.AsFloat);
    wwDBGrid1.ColumnByName('WP_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP_L.AsFloat);
    wwDBGrid1.ColumnByName('WL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL_L.AsFloat);
    wwDBGrid1.ColumnByName('TK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KTR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR_L.AsFloat);
    wwDBGrid1.ColumnByName('MC_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC_L.AsFloat);
    wwDBGrid1.ColumnByName('BOSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS_L.AsFloat);
    wwDBGrid1.ColumnByName('HK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK_L.AsFloat);
    wwDBGrid1.ColumnByName('WTM_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM_L.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR_L.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK_L.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG_L.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT_L.AsFloat);
    wwDBGrid1.ColumnByName('MTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_BS.AsFloat);
    wwDBGrid1.ColumnByName('KTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTS.AsFloat);

    Close;
end;

procedure TInputanHipoFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=clRed;
      AFont.Color:=clBlack;
    end
    else
    begin
      ABrush.Color:=clYellow;
      AFont.Color:=clBlack;
    end;

end;

procedure TInputanHipoFrm.BitBtn1Click(Sender: TObject);
begin
  QHapus.Close;
  //QHapus.SetVariable('qno_nota',HasilTenun2Frm.QDetailNO_REFF.AsString);
  QHapus.SetVariable('no_reg',InputanHipoFrm.QDetailNO_REG.AsString);
  QHapus.Execute;
  QDetail.Close;
  QDetail.Open;
end;

procedure TInputanHipoFrm.wwDBGrid1DblClick(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure TInputanHipoFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder2=' ASC' then
              vorder2:=' DESC'
          else
              vorder2:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myorder',' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder2);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TInputanHipoFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
    QDetail_Tot.Close;
    QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
    QDetail_Tot.Open;

    wwDBGrid1.ColumnByName('PROD_CABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_CABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TDKCABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TDKCABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TOTAL.AsFloat);
    wwDBGrid1.ColumnByName('B1').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotB1.AsFloat);
    wwDBGrid1.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT.AsFloat);
    wwDBGrid1.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG.AsFloat);
    wwDBGrid1.ColumnByName('FLO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO.AsFloat);
    wwDBGrid1.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL.AsFloat);
    wwDBGrid1.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS.AsFloat);
    wwDBGrid1.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB.AsFloat);
    wwDBGrid1.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP.AsFloat);
    wwDBGrid1.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL.AsFloat);
    wwDBGrid1.ColumnByName('TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK.AsFloat);
    wwDBGrid1.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR.AsFloat);
    wwDBGrid1.ColumnByName('MC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC.AsFloat);
    wwDBGrid1.ColumnByName('BOSK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK.AsFloat);
    wwDBGrid1.ColumnByName('KS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS.AsFloat);
    wwDBGrid1.ColumnByName('HK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK.AsFloat);
    wwDBGrid1.ColumnByName('WTM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT.AsFloat);
    wwDBGrid1.ColumnByName('MTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING.AsFloat);
    wwDBGrid1.ColumnByName('LPT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT_L.AsFloat);
    wwDBGrid1.ColumnByName('LRG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG_L.AsFloat);
    wwDBGrid1.ColumnByName('FLO_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO_L.AsFloat);
    wwDBGrid1.ColumnByName('SLL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL_L.AsFloat);
    wwDBGrid1.ColumnByName('BTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS_L.AsFloat);
    wwDBGrid1.ColumnByName('BTB_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB_L.AsFloat);
    wwDBGrid1.ColumnByName('WP_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP_L.AsFloat);
    wwDBGrid1.ColumnByName('WL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL_L.AsFloat);
    wwDBGrid1.ColumnByName('TK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KTR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR_L.AsFloat);
    wwDBGrid1.ColumnByName('MC_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC_L.AsFloat);
    wwDBGrid1.ColumnByName('BOSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS_L.AsFloat);
    wwDBGrid1.ColumnByName('HK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK_L.AsFloat);
    wwDBGrid1.ColumnByName('WTM_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM_L.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR_L.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK_L.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG_L.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT_L.AsFloat);
    wwDBGrid1.ColumnByName('MTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_BS.AsFloat);
    wwDBGrid1.ColumnByName('KTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTS.AsFloat);

end;

procedure TInputanHipoFrm.LMDGlobalHotKey1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Edit6.SetFocus;
end;

procedure TInputanHipoFrm.Edit6Change(Sender: TObject);
begin
  if not QDetail.IsEmpty then
  begin
      QDetail.Locate('NO_MESIN',Edit6.Text,[loPartialKey]);
  end;
end;

procedure TInputanHipoFrm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    wwDBGrid1.SetFocus;
end;

procedure TInputanHipoFrm.QDetail_TotBeforeOpen(DataSet: TDataSet);
begin
//QDetail_Tot.SetVariable('no_reg',QMasterNO_REG.AsInteger);
end;

procedure TInputanHipoFrm.wwDBGrid1Enter(Sender: TObject);
begin
  QDetail_Tot.Close;
  QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  QDetail_Tot.Open;

    wwDBGrid1.ColumnByName('PROD_CABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_CABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TDKCABUT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TDKCABUT.AsFloat);
    wwDBGrid1.ColumnByName('PROD_TOTAL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotPROD_TOTAL.AsFloat);
    wwDBGrid1.ColumnByName('B1').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotB1.AsFloat);
    wwDBGrid1.ColumnByName('LPT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT.AsFloat);
    wwDBGrid1.ColumnByName('LRG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG.AsFloat);
    wwDBGrid1.ColumnByName('FLO').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO.AsFloat);
    wwDBGrid1.ColumnByName('SLL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL.AsFloat);
    wwDBGrid1.ColumnByName('BTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS.AsFloat);
    wwDBGrid1.ColumnByName('BTB').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB.AsFloat);
    wwDBGrid1.ColumnByName('WP').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP.AsFloat);
    wwDBGrid1.ColumnByName('WL').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL.AsFloat);
    wwDBGrid1.ColumnByName('TK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK.AsFloat);
    wwDBGrid1.ColumnByName('KTR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR.AsFloat);
    wwDBGrid1.ColumnByName('MC').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC.AsFloat);
    wwDBGrid1.ColumnByName('BOSK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK.AsFloat);
    wwDBGrid1.ColumnByName('KS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS.AsFloat);
    wwDBGrid1.ColumnByName('HK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK.AsFloat);
    wwDBGrid1.ColumnByName('WTM').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT.AsFloat);
    wwDBGrid1.ColumnByName('MTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING.AsFloat);
    wwDBGrid1.ColumnByName('LPT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLPT_L.AsFloat);
    wwDBGrid1.ColumnByName('LRG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotLRG_L.AsFloat);
    wwDBGrid1.ColumnByName('FLO_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLO_L.AsFloat);
    wwDBGrid1.ColumnByName('SLL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotSLL_L.AsFloat);
    wwDBGrid1.ColumnByName('BTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTS_L.AsFloat);
    wwDBGrid1.ColumnByName('BTB_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBTB_L.AsFloat);
    wwDBGrid1.ColumnByName('WP_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWP_L.AsFloat);
    wwDBGrid1.ColumnByName('WL_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWL_L.AsFloat);
    wwDBGrid1.ColumnByName('TK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotTK_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KTR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTR_L.AsFloat);
    wwDBGrid1.ColumnByName('MC_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMC_L.AsFloat);
    wwDBGrid1.ColumnByName('BOSK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotBOSK_L.AsFloat);
    wwDBGrid1.ColumnByName('KS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKS_L.AsFloat);
    wwDBGrid1.ColumnByName('HK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotHK_L.AsFloat);
    wwDBGrid1.ColumnByName('WTM_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotWTM_L.AsFloat);
    wwDBGrid1.ColumnByName('M_SAMAR_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_SAMAR_L.AsFloat);
    wwDBGrid1.ColumnByName('M_RUSAK_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_RUSAK_L.AsFloat);
    wwDBGrid1.ColumnByName('M_BELANG_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_BELANG_L.AsFloat);
    wwDBGrid1.ColumnByName('M_OUIT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotM_OUIT_L.AsFloat);
    wwDBGrid1.ColumnByName('MTS_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotMTS_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_PRINT_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_PRINT_L.AsFloat);
    wwDBGrid1.ColumnByName('FLEX_STAMPING_L').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotFLEX_STAMPING_L.AsFloat);
    wwDBGrid1.ColumnByName('RSK_BS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotRSK_BS.AsFloat);
    wwDBGrid1.ColumnByName('KTS').FooterValue := FormatFloat('0.0,0;(0.0,0);-', QDetail_TotKTS.AsFloat);

end;

procedure TInputanHipoFrm.QDetailBeforePost(DataSet: TDataSet);
begin
// B2 CACAT TENUN START ---------------------------------------
QDetailB2_TENUN.AsFloat :=
    QDetailLPT.AsFloat +
    QDetailLRG.AsFloat +
    QDetailFLO.AsFloat +
    QDetailSLL.AsFloat +
    QDetailBTS.AsFloat +
    QDetailBTB.AsFloat +
    QDetailWP.AsFloat +
    QDetailWL.AsFloat +
    QDetailTK.AsFloat;

// B2 CACAT FINISH START ---------------------------------------
QDetailB2_FINISH.AsFloat := 
    QDetailKTR.AsFloat +
    QDetailMC.AsFloat +
    QDetailBOSK.AsFloat +
    QDetailKS.AsFloat +
    QDetailHK.AsFloat +
    QDetailWTM.AsFloat;

// B2 CACAT PRINTING START ---------------------------------------
QDetailB2_PRINTING.AsFloat :=
    QDetailM_SAMAR.AsFloat +
    QDetailM_RUSAK.AsFloat +
    QDetailM_BELANG.AsFloat +
    QDetailM_OUIT.AsFloat +
    QDetailMTS.AsFloat +
    QDetailFLEX_PRINT.AsFloat +
    QDetailFLEX_STAMPING.AsFloat;

// B2 TOTAL START ---------------------------------------
QDetailB2_TOTAL.AsFloat :=
    QDetailLPT.AsFloat +
    QDetailLRG.AsFloat +
    QDetailFLO.AsFloat +
    QDetailSLL.AsFloat +
    QDetailBTS.AsFloat +
    QDetailBTB.AsFloat +
    QDetailWP.AsFloat +
    QDetailWL.AsFloat +
    QDetailTK.AsFloat +
    
    QDetailKTR.AsFloat +
    QDetailMC.AsFloat +
    QDetailBOSK.AsFloat +
    QDetailKS.AsFloat +
    QDetailHK.AsFloat +
    QDetailWTM.AsFloat +

    QDetailM_SAMAR.AsFloat +
    QDetailM_RUSAK.AsFloat +
    QDetailM_BELANG.AsFloat +
    QDetailM_OUIT.AsFloat +
    QDetailMTS.AsFloat +
    QDetailFLEX_PRINT.AsFloat +
    QDetailFLEX_STAMPING.AsFloat;

// BS CACAT KAIN START -----------------------------------
QDetailBS_KAIN.AsFloat :=
    QDetailLPT_L.AsFloat +
    QDetailLRG_L.AsFloat +
    QDetailFLO_L.AsFloat +
    QDetailSLL_L.AsFloat +
    QDetailBTS_L.AsFloat +
    QDetailBTB_L.AsFloat +
    QDetailWP_L.AsFloat +
    QDetailWL_L.AsFloat +
    QDetailTK_L.AsFloat +
    QDetailRSK_L.AsFloat +
    QDetailKTR_L.AsFloat +
    QDetailMC_L.AsFloat +
    QDetailBOSK_L.AsFloat +
    QDetailKS_L.AsFloat +
    QDetailHK_L.AsFloat +
    QDetailWTM_L.AsFloat +
    QDetailRSK_BS.AsFloat +
    QDetailKTS.AsFloat;

// BS CACAT PRINTING START --------------------------------
QDetailBS_PRINTING.AsFloat :=
    QDetailM_SAMAR_L.AsFloat +
    QDetailM_RUSAK_L.AsFloat +
    QDetailM_BELANG_L.AsFloat +
    QDetailM_OUIT_L.AsFloat +
    QDetailMTS_L.AsFloat +
    QDetailFLEX_PRINT_L.AsFloat +
    QDetailFLEX_STAMPING_L.AsFloat;

// BS TOTAL START -----------------------------------------
QDetailBS_TOTAL.AsFloat :=
    QDetailLPT_L.AsFloat +
    QDetailLRG_L.AsFloat +
    QDetailFLO_L.AsFloat +
    QDetailSLL_L.AsFloat +
    QDetailBTS_L.AsFloat +
    QDetailBTB_L.AsFloat +
    QDetailWP_L.AsFloat +
    QDetailWL_L.AsFloat +
    QDetailTK_L.AsFloat +
    QDetailRSK_L.AsFloat +
    QDetailKTR_L.AsFloat +
    QDetailMC_L.AsFloat +
    QDetailBOSK_L.AsFloat +
    QDetailKS_L.AsFloat +
    QDetailHK_L.AsFloat +
    QDetailWTM_L.AsFloat +

    QDetailM_SAMAR_L.AsFloat +
    QDetailM_RUSAK_L.AsFloat +
    QDetailM_BELANG_L.AsFloat +
    QDetailM_OUIT_L.AsFloat +
    QDetailMTS_L.AsFloat +
    QDetailFLEX_PRINT_L.AsFloat +
    QDetailFLEX_STAMPING_L.AsFloat +

    QDetailRSK_BS.AsFloat +
    QDetailKTS.AsFloat;

// BK TOTAL START -----------------------------------------
QDetailPROD_TOTAL.AsFloat :=
    QDetailPROD_CABUT.AsFloat +
    QDetailPROD_TDKCABUT.AsFloat;

// BK TOTAL START -----------------------------------------
QDetailBK.AsFloat :=
    QDetailPROD_TOTAL.AsFloat -
    (QDetailB1.AsFloat + QDetailB2_TOTAL.AsFloat + QDetailBS_TOTAL.AsFloat);

end;

procedure TInputanHipoFrm.FormCreate(Sender: TObject);
begin
 QDetail.Close;
 QDetail.Open;
end;

procedure TInputanHipoFrm.QDetailBeforeQuery(Sender: TOracleDataSet);
begin
  QDetail.SetVariable('no_reg',InspectingHipoFrm.QMasterNO_REG.AsInteger);
end;

procedure TInputanHipoFrm.LookBeamEnter(Sender: TObject);
begin
  QBrowseMitra.Close;
  QBrowseMitra.Open;
end;

procedure TInputanHipoFrm.LookKdProd2Click(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
end;

procedure TInputanHipoFrm.LookKdProd2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
If modified then
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKonstruksi_finishKP.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKonstruksi_finishNAMA_KONSTRUKSI.AsString;
end;

procedure TInputanHipoFrm.LookKdProd2Enter(Sender: TObject);
begin
  DMFrm.QKonstruksi_finish.Open;
end;

procedure TInputanHipoFrm.LookSarungCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QDetailJENIS_SARUNG.AsString:=QLookSarungJENIS_SARUNG.AsString;
  end;
end;

procedure TInputanHipoFrm.LookSarungEnter(Sender: TObject);
begin
  QLookSarung.Close;
  QLookSarung.Open;
end;

end.
