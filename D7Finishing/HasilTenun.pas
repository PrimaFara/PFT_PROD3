unit HasilTenun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Wwdbcomb, DB,
  OracleData, wwDialog, wwidlg, Wwdatsrc, wwSpeedButton, wwDBNavigator,
  wwclearpanel, DBCtrls, wwdbedit, wwdbdatetimepicker, Mask, Wwdotdot,
  ComCtrls, Buttons, QRCtrls, QuickRpt, wwdblook, Wwdbdlg, wwcheckbox,
  Oracle, DateUtils, LMDCustomComponent, LMDGlobalHotKey, wwrcdvw;

type
  THasilTenunFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    Panel6: TPanel;
    QMaster: TOracleDataSet;
    QMasterTANGGAL: TDateTimeField;
    QMasterKETERANGAN: TStringField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QMasterISPOST: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    QDetail: TOracleDataSet;
    dsDetail: TwwDataSource;
    dsQBrowse: TwwDataSource;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dsMaster: TwwDataSource;
    QMasterNO_REG: TFloatField;
    QMasterNO_NOTA: TStringField;
    QMasterGRUP: TStringField;
    QMasterSHIFT: TStringField;
    QMasterINSPECTOR: TStringField;
    QMasterNIK: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    LookKaryawan: TwwDBLookupComboDlg;
    Label5: TLabel;
    QLookLokasiProses: TOracleDataSet;
    QLookLokasiProsesKODE: TStringField;
    QLookLokasiProsesLOKASI: TStringField;
    QLookLokasiProsesPROSES: TStringField;
    QLookLokasiProsesNO_SERI_BEAM: TStringField;
    QLookLokasiProsesKONSTRUKSI: TStringField;
    QLookLokasiProsesCORAK: TStringField;
    QLookLokasiProsesISI: TFloatField;
    QMasterJNS_TRANSAKSI: TStringField;
    Button2: TButton;
    QAmbilData: TOracleQuery;
    Edit1: TEdit;
    wwCheckBox1: TwwCheckBox;
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
    Edit6: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    LMDGlobalHotKey1: TLMDGlobalHotKey;
    QTotal: TOracleDataSet;
    wwRecordViewDialog1: TwwRecordViewDialog;
    Look_KP: TwwDBLookupComboDlg;
    QBrowse: TOracleDataSet;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    StringField5: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField2: TDateTimeField;
    StringField9: TStringField;
    re: TFloatField;
    FloatField4: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField5: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    IntegerField27: TIntegerField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    FloatField10: TFloatField;
    IntegerField30: TIntegerField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    IntegerField33: TIntegerField;
    IntegerField34: TIntegerField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    IntegerField37: TIntegerField;
    IntegerField38: TIntegerField;
    IntegerField39: TIntegerField;
    IntegerField40: TIntegerField;
    IntegerField41: TIntegerField;
    IntegerField42: TIntegerField;
    IntegerField43: TIntegerField;
    IntegerField44: TIntegerField;
    IntegerField45: TIntegerField;
    IntegerField46: TIntegerField;
    IntegerField47: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField48: TIntegerField;
    IntegerField49: TIntegerField;
    IntegerField50: TIntegerField;
    IntegerField51: TIntegerField;
    IntegerField52: TIntegerField;
    IntegerField53: TIntegerField;
    IntegerField54: TIntegerField;
    IntegerField55: TIntegerField;
    IntegerField56: TIntegerField;
    IntegerField57: TIntegerField;
    LookBeam: TwwDBLookupCombo;
    QLookBeam: TOracleDataSet;
    QBrowsePROSES: TStringField;
    QBrowseNO_SERI_BEAM: TStringField;
    QBrowseRESEP: TStringField;
    QLookBeamNO_SERI_BEAM: TStringField;
    QLookBeamPROSES: TStringField;
    QLookBeamRESEP: TStringField;
    RAmbil: TRadioGroup;
    Edit7: TEdit;
    Label17: TLabel;
    QDetailSATUAN: TStringField;
    QDetailNO_SERI_BEAM: TStringField;
    QDetailQTY: TFloatField;
    QDetailOPR_TENUN: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailNO_REG: TFloatField;
    QDetailPROSES: TStringField;
    QDetailLOKASI: TStringField;
    QDetailKONSTRUKSI: TStringField;
    QDetailCORAK: TStringField;
    QDetailTANGGAL: TDateTimeField;
    QDetailNIK: TStringField;
    QDetailSHIFT: TStringField;
    QDetailNO_PRODUKSI: TStringField;
    QDetailGRUP: TStringField;
    QDetailNO_REG_TENUN: TFloatField;
    QDetailLD: TFloatField;
    QDetailLB: TFloatField;
    QDetailLT: TFloatField;
    QDetailLK: TFloatField;
    QDetailLL: TFloatField;
    QDetailLP: TFloatField;
    QDetailLR: TFloatField;
    QDetailWL: TFloatField;
    QDetailCB: TFloatField;
    QDetailCK: TFloatField;
    QDetailCRT: TFloatField;
    QDetailPD: TFloatField;
    QDetailPL: TFloatField;
    QDetailPP: TFloatField;
    QDetailPS: TFloatField;
    QDetailNG: TFloatField;
    QDetailWP: TFloatField;
    QDetailSC: TFloatField;
    QDetailKS: TFloatField;
    QDetailKP: TFloatField;
    QDetailBO: TFloatField;
    QDetailLN: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailKD_KONSTRUKSI: TStringField;
    QDetailKD_CORAK: TStringField;
    QDetailPR: TFloatField;
    QDetailUTB: TFloatField;
    QDetailUTK: TFloatField;
    QDetailLBK: TFloatField;
    QDetailSLL: TFloatField;
    QDetailTG: TFloatField;
    QDetailTCS: TFloatField;
    QDetailCUP: TFloatField;
    QDetailNO_URUT: TFloatField;
    QDetailLPB: TFloatField;
    QDetailLPS: TFloatField;
    QDetailLRB: TFloatField;
    QDetailLRS: TFloatField;
    QDetailLS: TFloatField;
    QDetailLSB: TFloatField;
    QDetailLSS: TFloatField;
    QDetailOJ: TFloatField;
    QDetailLPT: TFloatField;
    QDetailLRG: TFloatField;
    QDetailCKK: TFloatField;
    QDetailCAJ: TFloatField;
    QDetailPKP: TFloatField;
    QDetailBTB: TFloatField;
    QDetailANR: TFloatField;
    QDetailUTS: TFloatField;
    QDetailKBR: TFloatField;
    QDetailNO_DESAIN: TStringField;
    QDetailPILIH: TStringField;
    QDetailMESIN: TStringField;
    QDetailKD_PRODUKSI: TStringField;
    QDetailJENIS: TStringField;
    QDetailAFL: TFloatField;
    QDetailPRA: TFloatField;
    QDetailTGL_PTG: TDateTimeField;
    QDetailFLS: TFloatField;
    QDetailFLP: TFloatField;
    QDetailNEPS: TFloatField;
    QDetailBTS: TFloatField;
    QDetailKTR: TFloatField;
    QDetailPDK: TFloatField;
    QDetailSBK: TFloatField;
    QDetailKNB: TFloatField;
    QDetailBGRADE: TFloatField;
    QDetailBS_FLS: TFloatField;
    QDetailBS_FLP: TFloatField;
    QDetailBS_BTS: TFloatField;
    QDetailBS_BTB: TFloatField;
    QDetailBS_TK: TFloatField;
    QDetailKECOES_BG: TFloatField;
    QDetailKECOES_BS: TFloatField;
    QDetailKNT: TFloatField;
    QDetailKETERANGAN: TStringField;
    QDetailDITERIMA: TFloatField;
    QTotalQTY: TFloatField;
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
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QTotalBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Look_KPClick(Sender: TObject);
    procedure Look_KPCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Look_KPEnter(Sender: TObject);
    procedure LookBeamCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookBeamEnter(Sender: TObject);
  private
    { Private declarations }
    vorder : String;
    vrasio, vrasio3: real;
  public
    { Public declarations }
    vkd_lokasi, vjns_transaksi, vorder2 : String;
  end;

var
  HasilTenunFrm: THasilTenunFrm;

implementation

uses DM, TerimaDariFinishing, InspekDetail;

{$R *.dfm}

procedure THasilTenunFrm.QMasterBeforeEdit(DataSet: TDataSet);
begin
    if QMasterISPOST.AsString='1' then
    begin
       ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
       Abort;
    end;
end;

procedure THasilTenunFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailNO_REG_TENUN.AsString:=QMasterNO_REG.AsString;
  QDetailNO_REG.AsString:=TerimaDariFinishingFrm.QMasterNO_REG.AsString;
  QDetailSATUAN.AsString:='PCS';
  QDetailTANGGAL.AsDateTime:=trunc(QMasterTANGGAL.AsDateTime);
end;

procedure THasilTenunFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterISPOST.AsString:='0';
  QMasterJNS_TRANSAKSI.AsString:=vjns_transaksi;
end;

procedure THasilTenunFrm.Button2Click(Sender: TObject);
begin
  QMaster.Close;
  QMaster.SetVariable('no_reg',StrToInt(Edit1.Text));
  QMaster.Open;
  QAmbilData.Close;
  QAmbilData.SetVariable('no_reg',TerimaDariFinishingFrm.QMasterNO_REG.AsInteger);
  QAmbilData.SetVariable('no_reg_tenun',QMasterNO_REG.AsInteger);
  QAmbilData.Execute;
  QDetail.Close;
  QDetail.Open;
end;

procedure THasilTenunFrm.QDetailCalcFields(DataSet: TDataSet);
begin
  QDetailDITERIMA.AsFloat:=QDetailQTY3.AsFloat+QDetailQTY2.AsFloat+QDetailBGRADE.AsFloat;
end;

procedure THasilTenunFrm.QDetailBeforeOpen(DataSet: TDataSet);
begin
  QDetail.SetVariable('no_reg',TerimaDariFinishingFrm.QMasterNO_REG.AsInteger);
end;

procedure THasilTenunFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBDateTimePicker2.Date:=TerimaDariFinishingFrm.wwDBDateTimePicker2.Date;
end;

procedure THasilTenunFrm.Button1Click(Sender: TObject);
begin
  DMFrm.OS.ApplyUpdates([QDetail],True);
  Close;
end;

procedure THasilTenunFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  QDetailNO_DESAIN.AsString := QDetailNO_DESAIN.AsString;
  QDetailKD_PRODUKSI.AsString := QDetailKD_PRODUKSI.AsString;
  QDetailKONSTRUKSI.AsString := QDetailKONSTRUKSI.AsString;
{AYP}
//BGRADE START---------------------------------------------
  QDetailBGRADE.AsFloat :=
    QDetailLD.AsFloat      +
    QDetailLT.AsFloat      +
    QDetailLPT.AsFloat     +
    QDetailLRG.AsFloat     +
    QDetailWL.AsFloat      +
    QDetailFLS.AsFloat     +
    QDetailFLP.AsFloat     +
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
    QDetailKECOES_BG.AsFloat +
    QDetailKBR.AsFloat;
//BGRADE END-----------------------------------------------

//BS START-------------------------------------------------
  QDetailQTY2.AsFloat :=
    QDetailSBK.AsFloat     +
    QDetailKNT.AsFloat     +
    QDetailUTS.AsFloat     +
    QDetailKNB.AsFloat     +

    QDetailBS_FLS.AsFloat  +
    QDetailBS_FLP.AsFloat  +
    QDetailBS_BTS.AsFloat  +
    QDetailBS_BTB.AsFloat  +
    QDetailBS_TK.AsFloat   +

    QDetailAFL.AsFloat     +      // AFFAL
    // QDetailLB.AsFloat      +      // AFL TDK LGS
    QDetailKECOES_BS.AsFloat;
//BS END---------------------------------------------------

//BK START-------------------------------------------------
//  QDetailQTY3.AsFloat :=
//    QDetailBGRADE.AsFloat  -        //BGRADE
//    QDetailQTY2.AsFloat;            //BS
//BK END---------------------------------------------------

//BK PRODUKSI SHIFT START-------------------------------
  QDetailQTY3.AsFloat :=
    (QDetailQTY.AsFloat - (QDetailBGRADE.AsFloat + QDetailQTY2.AsFloat));
end;

procedure THasilTenunFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=clMoneyGreen;
      AFont.Color:=clBlack;
    end
    else
    begin
      ABrush.Color:=clWhite;
      AFont.Color:=clBlack;
    end;

end;

procedure THasilTenunFrm.Button3Click(Sender: TObject);
begin
  if RAmbil.ItemIndex = 0 then // SARUNG
    begin
        QAmbilData2.Close;
        QAmbilData2.SQL.Clear;
        QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi,');
        QAmbilData2.SQL.Add(' corak, tanggal, nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3, no_desain, mesin, kd_produksi, jenis,tgl_ptg)');
        QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishingFrm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
        QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty, a.no_desain, a.jenis_mesin, a.kp, c.jenis, a.tgl_ptg from ipisma_db4.vdesain_hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
        QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and TRIM(UPPER(a.corak))=TRIM(UPPER(c.nama_corak)) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.Execute;
        QDetail.Close;
        QDetail.SetVariable('myorder',' order by proses, grup');
        QDetail.Open;

        InspekDetailFrm:=TInspekDetailFrm.Create(Self);
        InspekDetailFrm.ShowModal;
        InspekDetailFrm.Free;
    end

else if RAmbil.ItemIndex = 1 then //NON SARUNG
    begin
        QAmbilData2.Close;
        QAmbilData2.SQL.Clear;
        QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi,');
        QAmbilData2.SQL.Add(' corak, tanggal, nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3, no_desain, mesin, kd_produksi, jenis,tgl_ptg)');
        QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishingFrm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
        QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty, a.no_desain, a.jenis_mesin, a.kp, c.jenis, a.tgl_ptg from ipisma_db4.vdesain_hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
        QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and TRIM(UPPER(a.corak))=TRIM(UPPER(c.nama_corak)) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''NS'''+' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.Execute;
        QDetail.Close;
        QDetail.SetVariable('myorder',' order by proses, grup');
        QDetail.Open;

        InspekDetailFrm:=TInspekDetailFrm.Create(Self);
        InspekDetailFrm.ShowModal;
        InspekDetailFrm.Free;
    end

else if RAmbil.ItemIndex = 2 then //NOTA SARUNG
    begin
        QAmbilData2.Close;
        QAmbilData2.SQL.Clear;
        QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi,');
        QAmbilData2.SQL.Add(' corak, tanggal, nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3, no_desain, mesin, kd_produksi, jenis,tgl_ptg)');
        QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishingFrm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
        QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty, a.no_desain, a.jenis_mesin, a.kp, c.jenis, a.tgl_ptg from ipisma_db4.vdesain_hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
        QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and TRIM(UPPER(a.corak))=TRIM(UPPER(c.nama_corak)) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.SQL.Add('and (a.no_reg like '''+Edit7.Text+'%'') and c.jenis LIKE '+'''S'''+' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        
        QAmbilData2.Execute;
        QDetail.Close;
        QDetail.SetVariable('myorder',' order by proses, grup');
        QDetail.Open;

        InspekDetailFrm:=TInspekDetailFrm.Create(Self);
        InspekDetailFrm.ShowModal;
        InspekDetailFrm.Free;
    end

else if RAmbil.ItemIndex = 3 then 
    begin
        QAmbilData2.Close;
        QAmbilData2.SQL.Clear;
        QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi,');
        QAmbilData2.SQL.Add(' corak, tanggal, nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3, no_desain, mesin, kd_produksi, jenis,tgl_ptg)');
        QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishingFrm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
        QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty, a.no_desain, a.jenis_mesin, a.kp, c.jenis, a.tgl_ptg from ipisma_db4.vdesain_hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
        QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and TRIM(UPPER(a.corak))=TRIM(UPPER(c.nama_corak)) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.SQL.Add('and (a.no_reg like '''+Edit7.Text+'%'') and c.jenis LIKE '+'''NS'''+' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        
        QAmbilData2.Execute;
        QDetail.Close;
        QDetail.SetVariable('myorder',' order by proses, grup');
        QDetail.Open;

        InspekDetailFrm:=TInspekDetailFrm.Create(Self);
        InspekDetailFrm.ShowModal;
        InspekDetailFrm.Free;
    end

else
    begin
        QAmbilData2.Close;
        QAmbilData2.SQL.Clear;
        QAmbilData2.SQL.Add('insert into ipisma_db5.hasil_tenun_detail (no_reg_tenun, satuan, no_seri_beam, qty, no_reg, proses, lokasi, konstruksi,');
        QAmbilData2.SQL.Add(' corak, tanggal, nik, opr_tenun, no_produksi, grup, kd_konstruksi,  kd_corak, qty3, no_desain, mesin, kd_produksi, jenis,tgl_ptg)');
        QAmbilData2.SQL.Add(' (select a.no_reg, a.satuan, a.no_seri_beam, a.qty, '+TerimaDariFinishingFrm.QMasterNO_REG.AsString+', a.proses, a.lokasi, a.konstruksi,');
        QAmbilData2.SQL.Add(' a.corak, a.tanggal, a.nik, a.opr_tenun, a.no_produksi, a.grup, b.kd_konstruksi, c.kd_corak, a.qty, a.no_desain, a.jenis_mesin, a.kp, c.jenis, a.tgl_ptg from ipisma_db4.vdesain_hasil_tenun_detail a, ipisma_db2.konstruksi b, ipisma_db2.corak c');
        QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and TRIM(UPPER(a.corak))=TRIM(UPPER(c.nama_corak)) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add('where a.qty>0 and TRIM(RTRIM(UPPER(a.konstruksi),'+'''BK'''+'))=TRIM(RTRIM(UPPER(b.nama_konstruksi),'+'''BK'''+')) and a.tgl_ptg=to_date('''+formatdatetime('dd/mm/yyyy',wwDBDateTimePicker2.Date)+''',''dd/mm/yyyy'')');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and c.jenis LIKE '+'''S'''+' and (a.grup like '''+Edit4.Text+'%'') and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        //QAmbilData2.SQL.Add(' and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.SQL.Add(' and c.jenis is null and (a.lokasi like '''+Edit3.Text+'%'') and (a.proses like '''+Edit5.Text+'%'') and (a.no_seri_beam like '''+Edit2.Text+'%''))');
        QAmbilData2.Execute;
        QDetail.Close;
        QDetail.SetVariable('myorder',' order by proses, grup');
        QDetail.Open;

        InspekDetailFrm:=TInspekDetailFrm.Create(Self);
        InspekDetailFrm.ShowModal;
        InspekDetailFrm.Free;
    end;

end;

procedure THasilTenunFrm.BitBtn1Click(Sender: TObject);
begin
  QHapus.Close;
  QHapus.SetVariable('no_reg',TerimaDariFinishingFrm.QMasterNO_REG.AsInteger);
  QHapus.Execute;
  QDetail.Close;
  QDetail.Open;
end;

procedure THasilTenunFrm.Edit6Change(Sender: TObject);
begin
  if not QDetail.IsEmpty then
  begin
      QDetail.Locate('PROSES',Edit6.Text,[loPartialKey]);
  end;

end;

procedure THasilTenunFrm.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    wwDBGrid1.SetFocus;
end;

procedure THasilTenunFrm.LMDGlobalHotKey1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Edit6.SetFocus;
end;

procedure THasilTenunFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY').FooterValue:=FormatFloat('#.#,#',QTotalQTY.AsFloat);
end;

procedure THasilTenunFrm.QTotalBeforeOpen(DataSet: TDataSet);
begin
  QTotal.SetVariable('no_reg',TerimaDariFinishingFrm.QMasterNO_REG.AsInteger);
end;

procedure THasilTenunFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
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

procedure THasilTenunFrm.wwDBGrid1DblClick(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure THasilTenunFrm.Look_KPClick(Sender: TObject);
begin
DMFrm.QKP_Hasil_Inspect.Open;
end;

procedure THasilTenunFrm.Look_KPCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
    //QDetailKD_KONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectKD_KONSTRUKSI.AsString;
    QDetailKONSTRUKSI.AsString:=DMFrm.QKP_Hasil_InspectSUB_KELOMPOK.AsString;
    QDetailKD_PRODUKSI.AsString:=DMFrm.QKP_Hasil_InspectKP.AsString;
end;

procedure THasilTenunFrm.Look_KPEnter(Sender: TObject);
begin
  DMFrm.QKP_Hasil_Inspect.Open;
end;

procedure THasilTenunFrm.LookBeamCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
if modified then
  begin
    QDetailNO_SERI_BEAM.AsString:=QLookBeamNO_SERI_BEAM.AsString;
    QDetailPROSES.AsString:=QLookBeamPROSES.AsString;
    QDetailNO_DESAIN.AsString:=QLookBeamRESEP.AsString;
     // QBrowseSISA.AsString:=QLookBeamSISA.AsString;
     // DetailPROSES_TUJUAN.AsString:=DMFrm.QLookLokasiProsesPROSES.AsString;
     // DetailKD_LOKASI.AsString:=DMFrm.QLookLokasiProsesKD_LOKASI.AsString;
     // DetailISPOST.AsInteger:=1;
  end;
end;

procedure THasilTenunFrm.LookBeamEnter(Sender: TObject);
begin
  //QLookBeam.Close;
  //QLookBeam.SetVariable('plokasi',QBrowseLOKASI.AsString);
  //QLookBeam.SetVariable('pproses',QBrowsePROSES.AsString);
  //QLookBeam.SetVariable('ptgl',vTglAkhir.Date);
  //QLookBeam.SetVariable('ptgl',vTglAwal.Date);    //ganti tgl akhir
  //QLookBeam.Open;

  QLookBeam.Close;
  QLookBeam.SetVariable('plokasi',QDetailLOKASI.AsString);
  QLookBeam.SetVariable('pproses',QDetailPROSES.AsString);
  QLookBeam.SetVariable('ptgl',wwDBDateTimePicker2.Date);
  QLookBeam.Open;
end;

end.
