unit HasilTenun2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Wwdbcomb, DB,
  OracleData, wwDialog, wwidlg, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, wwdbedit, wwdbdatetimepicker, Mask, Wwdotdot,
  ComCtrls, Buttons, QRCtrls, QuickRpt, wwdblook, Wwdbdlg, wwcheckbox,
  Oracle, DateUtils, wwrcdvw;

type
  THasilTenun2Frm = class(TForm)
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
    Button2: TButton;
    QAmbilData: TOracleQuery;
    Edit1: TEdit;
    Label6: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label10: TLabel;
    Edit3: TEdit;
    Label11: TLabel;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    Label12: TLabel;
    Button3: TButton;
    Edit4: TEdit;
    Label13: TLabel;
    Edit5: TEdit;
    Label14: TLabel;
    QAmbilData2: TOracleQuery;
    BitBtn1: TBitBtn;
    QHapus: TOracleQuery;
    wwRecordViewDialog1: TwwRecordViewDialog;
    QDetail_Tot: TOracleDataSet;
    QDetail_TotQTY: TFloatField;
    QDetail_TotBK: TFloatField;
    QDetail_TotBS: TFloatField;
    QDetail_TotPARAH: TFloatField;
    QDetailNO_REG: TFloatField;
    QDetailNO_REG_FINISH: TFloatField;
    QDetailNO_REFF: TStringField;
    QDetailTANGGAL: TDateTimeField;
    QDetailNO_ORDER: TStringField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailCORAK: TStringField;
    QDetailSATUAN: TStringField;
    QDetailQTY: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailNO_RESEP: TStringField;
    QDetailMESIN_TENUN: TStringField;
    QDetailNO_MESIN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailLOKASI: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailPILIH: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailNO_PO: TStringField;
    QDetailNO_DESAIN: TStringField;
    QDetailLD: TFloatField;
    QDetailLT: TFloatField;
    QDetailLPT: TFloatField;
    QDetailLRG: TFloatField;
    QDetailWL: TFloatField;
    QDetailNEPS: TFloatField;
    QDetailPP: TFloatField;
    QDetailWP: TFloatField;
    QDetailOJ: TFloatField;
    QDetailCRT: TFloatField;
    QDetailBTS: TFloatField;
    QDetailBTB: TFloatField;
    QDetailSC: TFloatField;
    QDetailSLL: TFloatField;
    QDetailCK: TFloatField;
    QDetailCAJ: TFloatField;
    QDetailKTR: TFloatField;
    QDetailPDK: TFloatField;
    QDetailKP: TFloatField;
    QDetailSBK: TFloatField;
    QDetailUTS: TFloatField;
    QDetailKNB: TFloatField;
    QDetailUTB: TFloatField;
    QDetailLBK: TFloatField;
    QDetailCUP: TFloatField;
    QDetailBGRADE: TFloatField;
    QDetailDITERIMA: TFloatField;
    QDetailPR: TFloatField;
    QDetailFLO: TFloatField;
    QDetailMC: TFloatField;
    QDetailBOSK: TFloatField;
    QDetailKS: TFloatField;
    QDetailBO: TFloatField;
    QDetailFC: TFloatField;
    QDetailHK: TFloatField;
    QDetailWM: TFloatField;
    procedure QMasterBeforeEdit(DataSet: TDataSet);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure QDetailBeforeOpen(DataSet: TDataSet);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
  private
    { Private declarations }
    vorder, vorder2 : String;
    vrasio, vrasio3: real;
  public
    { Public declarations }
    vkd_lokasi, vjns_transaksi : String;
  end;

var
  HasilTenun2Frm: THasilTenun2Frm;

implementation

uses DM, TerimaDariFinishing2, ReInspekDetail, TerimaDariFinishing;

{$R *.dfm}

procedure THasilTenun2Frm.QMasterBeforeEdit(DataSet: TDataSet);
begin
  {  if QMasterISPOST.AsString='1' then
    begin
       ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
       Abort;
    end;   }
end;

procedure THasilTenun2Frm.QDetailNewRecord(DataSet: TDataSet);
begin
 // QDetailNO_REG_TENUN.AsString:=QMasterNO_REG.AsString;
  QDetailNO_REG.AsString:=TerimaDariFinishing2Frm.QMasterNO_REG.AsString;
  QDetailSATUAN.AsString:='PCS';
  QDetailTANGGAL.AsDateTime:=trunc(TerimaDariFinishing2Frm.QMasterTGL.AsDateTime);
end;

procedure THasilTenun2Frm.QMasterNewRecord(DataSet: TDataSet);
begin
  {QMasterISPOST.AsString:='0';
  QMasterJNS_TRANSAKSI.AsString:=vjns_transaksi; }
end;

procedure THasilTenun2Frm.Button2Click(Sender: TObject);
begin
  QAmbilData2.SQL.Clear;
  QAmbilData2.SQL.Add('insert into ipisma_db5.finish_reinspect_det (no_reg_finish,konstruksi,qty,tanggal,no_reff,no_order,no_reg)');
  QAmbilData2.SQL.Add('(select a.no_reg, b.konstruksi, b.qty_potong,a.tgl, a.no_nota, b.no_order, '+TerimaDariFinishing2Frm.QMasterNO_REG.AsString+' from ipisma_db5.terima_dari_finishing a, ipisma_db5.terima_dari_finishing_det b');
  QAmbilData2.SQL.Add('where b.no_order = '''+Edit1.Text+''' and a.no_reg=b.no_reg)');
  QAmbilData2.Execute;

  QDetail.DisableControls;
  QDetail.Close;
  QDetail.SetVariable('no_reg',TerimaDariFinishing2Frm.QMasterNO_REG.AsString);
  QDetail.SetVariable('myorder',' order by no_reff');
  QDetail.Open;
  QDetail.EnableControls;

  ReInspekDetailFrm:=TReInspekDetailFrm.Create(Self);
  ReInspekDetailFrm.ShowModal;
  ReInspekDetailFrm.Free;

{  //QMaster.Close;
  //QMaster.SetVariable('no_reg',StrToInt(Edit1.Text));
  //QMaster.Open;
  QAmbilData.Close;
  QAmbilData.SetVariable('no_nota',Edit1.Text);
  //QAmbilData.SetVariable('no_reg_tenun',QMasterNO_REG.AsInteger);
  QAmbilData.Execute;
  QDetail.Close;
  QDetail.SetVariable('no_reg_finish',TerimaDariFinishing2Frm.QMasterNO_REG.AsString);
  QDetail.Open;}

  
end;

procedure THasilTenun2Frm.QDetailCalcFields(DataSet: TDataSet);
begin
  //QDetailDITERIMA.AsFloat:=QDetailPR.AsFloat+QDetailQTY2.AsFloat+QDetailQTY3.AsFloat;
  QDetailDITERIMA.AsFloat:=QDetailQTY3.AsFloat+QDetailQTY2.AsFloat+QDetailBGRADE.AsFloat;
end;

procedure THasilTenun2Frm.QDetailBeforeOpen(DataSet: TDataSet);
begin
  //QDetail.SetVariable('no_reg',TerimaDariFinishing2Frm.QMasterNO_REG.AsInteger);
    QDetail.SetVariable('no_reg',TerimaDariFinishing2Frm.QMasterNO_REG.AsInteger);
end;

procedure THasilTenun2Frm.TabSheet1Show(Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=Date;
end;

procedure THasilTenun2Frm.Button1Click(Sender: TObject);
begin
  DMFrm.OS.ApplyUpdates([QDetail],True);
  Close;
end;

procedure THasilTenun2Frm.QDetailBeforePost(DataSet: TDataSet);
begin
{AYP}
//BGRADE START---------------------------------------------
  QDetailBGRADE.AsFloat :=
    QDetailLD.AsFloat      + //LOPIS DOBEL / BESAR
    QDetailLT.AsFloat      + //LOPIS TEGANG / KENDOR
    QDetailLPT.AsFloat     + //LUSI PUTUS
    QDetailLRG.AsFloat     + //LUSI RENGGANG
    QDetailWL.AsFloat      +
    QDetailFLO.AsFloat     +
    QDetailNEPS.AsFloat    +
    QDetailPP.AsFloat      +
    QDetailWP.AsFloat      +
    QDetailOJ.AsFloat      +
    QDetailCRT.AsFloat     +
    QDetailBTS.AsFloat     +
    QDetailBTB.AsFloat     +
    QDetailBO.AsFloat      +
    QDetailSC.AsFloat      +
    QDetailSLL.AsFloat     +
    QDetailCK.AsFloat      +
    QDetailCAJ.AsFloat     +
    QDetailKTR.AsFloat     +
    QDetailPDK.AsFloat     +
    QDetailKP.AsFloat      +
    QDetailMC.AsFloat      +
    QDetailBOSK.AsFloat    +
    QDetailKS.AsFloat      +
    QDetailBO.AsFloat      +
    QDetailFC.AsFloat      +
    QDetailHK.AsFloat      +
    QDetailWM.AsFloat;
//BGRADE END-----------------------------------------------

//BS START-------------------------------------------------
  QDetailQTY2.AsFloat :=
    QDetailSBK.AsFloat     +
    QDetailUTS.AsFloat     +
    QDetailKNB.AsFloat;
//BS END---------------------------------------------------

//BK START-------------------------------------------------
//  QDetailQTY3.AsFloat :=
//    QDetailBGRADE.AsFloat  -        //BGRADE
//    QDetailQTY2.AsFloat;            //BS
//BK END---------------------------------------------------

//BK PRODUKSI SHIFT START----------------------------------
  QDetailQTY3.AsFloat :=
    (QDetailQTY.AsFloat - (QDetailBGRADE.AsFloat + QDetailQTY2.AsFloat));
//BK PRODUKSI SHIFT END------------------------------------
end;

procedure THasilTenun2Frm.wwDBGrid1CalcCellColors(Sender: TObject;
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
      ABrush.Color:=clWhite;
      AFont.Color:=clBlack;
    end;

end;

procedure THasilTenun2Frm.Button3Click(Sender: TObject);
begin
  {QAmbilData2.Close;
  QAmbilData2.SQL.Clear;
  QAmbilData2.SQL.Add('delete ipisma_db5.hasil_tenun_detail a where a.no_reg='+TerimaDariFinishing2Frm.QMasterNO_REG.AsString+' and a.tanggal=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
  QAmbilData2.SQL.Add(' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and');
  QAmbilData2.SQL.Add(' (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%'')');
  QAmbilData2.Execute;

  QAmbilData2.Close;
  QAmbilData2.SQL.Clear;
  QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi, corak, tanggal,');
  QAmbilData2.SQL.Add(' nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3)');
  QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishing2Frm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
  QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty from ipisma_db4.hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
  QAmbilData2.SQL.Add('where a.qty>0 and a.konstruksi=b.nama_konstruksi and a.corak=c.nama_corak and a.tanggal=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
  QAmbilData2.SQL.Add(' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
  QAmbilData2.Execute;
  QDetail.Close;
  QDetail.Open;
  wwRecordViewDialog1.Execute;  }
end;

procedure THasilTenun2Frm.BitBtn1Click(Sender: TObject);
begin
  QHapus.Close;
  //QHapus.SetVariable('qno_nota',HasilTenun2Frm.QDetailNO_REFF.AsString);
  QHapus.SetVariable('no_reg',HasilTenun2Frm.QDetailNO_REG.AsString);
  QHapus.Execute;
  QDetail.Close;
  QDetail.Open;
end;

procedure THasilTenun2Frm.wwDBGrid1DblClick(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure THasilTenun2Frm.wwDBGrid1TitleButtonClick(Sender: TObject;
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

procedure THasilTenun2Frm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QDetail_Tot.Close;
  QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  QDetail_Tot.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QDetail_TotQTY.AsFloat);
{  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QDetail_TotBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QDetail_TotBS.AsFloat);
  wwDBGrid1.ColumnByName('PR').FooterValue:=FormatFloat('#.#,#',QDetail_TotPARAH.AsFloat);
 }
end;

end.
