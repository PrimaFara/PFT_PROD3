unit HasilInspectKeFolding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Wwdbcomb, DB,
  OracleData, wwDialog, wwidlg, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, wwdbedit, wwdbdatetimepicker, Mask, Wwdotdot,
  ComCtrls, Buttons, QRCtrls, QuickRpt, wwdblook, Wwdbdlg, wwcheckbox,
  Oracle, DateUtils, wwrcdvw;

type
  THasilInspectKeFoldingFrm = class(TForm)
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
    QDetailQTY: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailLOKASI: TStringField;
    QDetailGRUP: TStringField;
    QDetailSHIFT: TStringField;
    QDetailPILIH: TStringField;
    QDetailLD: TIntegerField;
    QDetailLB: TIntegerField;
    QDetailLT: TIntegerField;
    QDetailLK: TIntegerField;
    QDetailFLS: TIntegerField;
    QDetailFLP: TIntegerField;
    QDetailLPT: TIntegerField;
    QDetailLRG: TIntegerField;
    QDetailWL: TIntegerField;
    QDetailCK: TIntegerField;
    QDetailOJ: TIntegerField;
    QDetailCRT: TIntegerField;
    QDetailCAJ: TIntegerField;
    QDetailPD: TIntegerField;
    QDetailPP: TIntegerField;
    QDetailBTS: TIntegerField;
    QDetailBTB: TIntegerField;
    QDetailWP: TIntegerField;
    QDetailSC: TIntegerField;
    QDetailPDK: TIntegerField;
    QDetailBO: TIntegerField;
    QDetailKNT: TIntegerField;
    QDetailSLL: TIntegerField;
    QDetailSBK: TIntegerField;
    QDetailANR: TIntegerField;
    QDetailUTS: TIntegerField;
    QDetailPJG: TIntegerField;
    QDetailLBR: TIntegerField;
    QDetailCUP: TIntegerField;
    QDetailPR: TIntegerField;
    QDetailKNB: TIntegerField;
    QDetailMITRA: TStringField;
    look_mitra: TwwDBLookupComboDlg;
    QDetailKD_PRODUKSI: TStringField;
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
    procedure look_mitraEnter(Sender: TObject);
    procedure look_mitraCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
    vorder, vorder2 : String;
    vrasio, vrasio3: real;
  public
    { Public declarations }
    vkd_lokasi, vjns_transaksi : String;
  end;

var
  HasilInspectKeFoldingFrm: THasilInspectKeFoldingFrm;

implementation

uses DM, TerimaDariFinishing2, ReInspekDetail, TerimaDariFinishing,
  HasilTenun2, InspekMitraDetail, InspectingMitra, HasilTenunMitra;

{$R *.dfm}

procedure THasilInspectKeFoldingFrm.QMasterBeforeEdit(DataSet: TDataSet);
begin
  {  if QMasterISPOST.AsString='1' then
    begin
       ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
       Abort;
    end;   }
end;

procedure THasilInspectKeFoldingFrm.QDetailNewRecord(DataSet: TDataSet);
begin
 // QDetailNO_REG_TENUN.AsString:=QMasterNO_REG.AsString;
  QDetailNO_REG.AsString:=TerimaDariFinishing2Frm.QMasterNO_REG.AsString;
  QDetailSATUAN.AsString:='PCS';
  QDetailTANGGAL.AsDateTime:=trunc(TerimaDariFinishing2Frm.QMasterTGL.AsDateTime);
end;

procedure THasilInspectKeFoldingFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  {QMasterISPOST.AsString:='0';
  QMasterJNS_TRANSAKSI.AsString:=vjns_transaksi; }
end;

procedure THasilInspectKeFoldingFrm.Button2Click(Sender: TObject);
begin
{  QAmbilData2.SQL.Clear;
  QAmbilData2.SQL.Add('insert into ipisma_db5.HASIL_MITRA_DETAIL (no_reg_mitra,konstruksi,qty,tanggal,no_reff,no_order,no_reg)');
  QAmbilData2.SQL.Add('(select a.no_reg, b.konstruksi, b.qty_potong,a.tgl, a.no_nota, b.no_order, '+InspectingMitraFrm.QMasterNO_REG.AsString+' from ipisma_db5.hasil_tenun_mitra a, ipisma_db5.hasil_tenun_mitra b');
  QAmbilData2.SQL.Add('where b.no_order = '''+Edit1.Text+''' and a.no_reg=b.no_reg)');
  QAmbilData2.Execute;

  QDetail.DisableControls;
  QDetail.Close;
  QDetail.SetVariable('no_reg',InspectingMitraFrm.QMasterNO_REG.AsString);
  QDetail.SetVariable('myorder',' order by no_reff');
  QDetail.Open;
  QDetail.EnableControls;

  InspekMitraDetailFrm:=TInspekMitraDetailFrm.Create(Self);
  InspekMitraDetailFrm.ShowModal;
  InspekMitraDetailFrm.Free;
                                    }
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

procedure THasilInspectKeFoldingFrm.QDetailCalcFields(DataSet: TDataSet);
begin
  //QDetailDITERIMA.AsFloat:=QDetailPR.AsFloat+QDetailQTY2.AsFloat+QDetailQTY3.AsFloat;
end;

procedure THasilInspectKeFoldingFrm.QDetailBeforeOpen(DataSet: TDataSet);
begin
  //QDetail.SetVariable('no_reg',TerimaDariFinishing2Frm.QMasterNO_REG.AsInteger);
end;

procedure THasilInspectKeFoldingFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=Date;
end;

procedure THasilInspectKeFoldingFrm.Button1Click(Sender: TObject);
begin
  DMFrm.OS.ApplyUpdates([QDetail],True);
  Close;
end;

procedure THasilInspectKeFoldingFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  QDetailQTY2.AsFloat:=QDetailLD.AsFloat+
    QDetailLB.AsFloat+
    QDetailLT.AsFloat+
    QDetailLK.AsFloat+
    QDetailFLS.AsFloat+
    QDetailFLP.AsFloat+
    QDetailLPT.AsFloat+
    QDetailLRG.AsFloat+
    QDetailWL.AsFloat+
    QDetailCK.AsFloat+
    QDetailOJ.AsFloat+
    QDetailCRT.AsFloat+
    QDetailCAJ.AsFloat+
    QDetailPD.AsFloat+
    QDetailPP.AsFloat+
    QDetailBTS.AsFloat+
    QDetailBTB.AsFloat+
    QDetailWP.AsFloat+
    QDetailSC.AsFloat+
    QDetailPDK.AsFloat+
    QDetailBO.AsFloat+
    QDetailKNT.AsFloat+
    QDetailSLL.AsFloat;
    QDetailPR.AsFloat:=QDetailSBK.AsFloat+
    QDetailANR.AsFloat+
    QDetailUTS.AsFloat+
    QDetailKNB.AsFloat;
    QDetailQTY3.AsFloat:=QDetailQTY.AsFloat-QDetailQTY2.AsFloat-
    QDetailPR.AsFloat;

end;

procedure THasilInspectKeFoldingFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure THasilInspectKeFoldingFrm.Button3Click(Sender: TObject);
begin
  QAmbilData2.SQL.Clear;
  QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_mitra_detail (no_reg_mitra, konstruksi, corak, qty, tanggal, no_reff, no_mesin, no_resep, kd_produksi, mesin_tenun, mitra,keterangan, no_reg)');
  QAmbilData2.SQL.Add('(select a.no_reg, a.konstruksi, a.corak, a.qty_akhir, a.tanggal, a.no_spb, a.no_mesin, a.res,a.kd_produksi, a.mesin, a.nama_mitra,a.ket_detail, '+InspectingMitraFrm.QMasterNO_REG.AsString+' from ipisma_db5.vhasil_tenun_mitra a');
  QAmbilData2.SQL.Add(' where a.tanggal=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
  QAmbilData2.SQL.Add(' and (a.nama_mitra like '''+Edit2.Text+'%'')');
  QAmbilData2.SQL.Add(' and (a.no_mesin like '''+Edit5.Text+'%''))');
  QAmbilData2.Execute;

  QDetail.DisableControls;
  QDetail.Close;
  QDetail.SetVariable('no_reg',InspectingMitraFrm.QMasterNO_REG.AsString);
  QDetail.SetVariable('myorder',' order by no_reff');
  QDetail.Open;
  QDetail.EnableControls;

  {QDetail_Tot.Close;
  QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  QDetail_Tot.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QDetail_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QDetail_TotBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QDetail_TotBS.AsFloat);
  wwDBGrid1.ColumnByName('PR').FooterValue:=FormatFloat('#.#,#',QDetail_TotPARAH.AsFloat);
  }

  InspekMitraDetailFrm:=TInspekMitraDetailFrm.Create(Self);
  InspekMitraDetailFrm.ShowModal;
  InspekMitraDetailFrm.Free;
end;

procedure THasilInspectKeFoldingFrm.BitBtn1Click(Sender: TObject);
begin
  QHapus.Close;
  //QHapus.SetVariable('qno_nota',HasilTenun2Frm.QDetailNO_REFF.AsString);
  QHapus.SetVariable('no_reg',HasilTenunMitraFrm.QDetailNO_REG.AsString);
  QHapus.Execute;
  QDetail.Close;
  QDetail.Open;
end;

procedure THasilInspectKeFoldingFrm.wwDBGrid1DblClick(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure THasilInspectKeFoldingFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
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

procedure THasilInspectKeFoldingFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QDetail_Tot.Close;
  QDetail_Tot.SetVariable('no_reg',QDetailNO_REG.AsInteger);
  QDetail_Tot.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QDetail_TotQTY.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('#.#,#',QDetail_TotBK.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#.#,#',QDetail_TotBS.AsFloat);
  wwDBGrid1.ColumnByName('PR').FooterValue:=FormatFloat('#.#,#',QDetail_TotPARAH.AsFloat);

end;

procedure THasilInspectKeFoldingFrm.look_mitraEnter(Sender: TObject);
begin
DMFrm.QLookMitra.Open;
end;

procedure THasilInspectKeFoldingFrm.look_mitraCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
Edit2.Text:=DMFrm.QLookMitraNAMA_MITRA.AsString;

end;

end.
