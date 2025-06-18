unit Unpost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, wwDialog, wwrcdvw, Wwdatsrc, OracleData, StdCtrls, DBCtrls,
  Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, QRCtrls, QuickRpt,
  ComCtrls, Mask, wwdbedit, Wwdbspin, Buttons, ExtCtrls, wwDBNavigator,
  wwSpeedButton, wwclearpanel, Oracle;

type
  TUnpostFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    cbTanggal: TCheckBox;
    VTglAwal: TwwDBDateTimePicker;
    VTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    Label1: TLabel;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRLTitle: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    QBrowseNO_NOTA: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseALASAN: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_UPDATE: TDateTimeField;
    QBrowseOPR_UPDATE: TStringField;
    QBrowsePESAN_ADMIN: TStringField;
    BitBtn2: TBitBtn;
    rvdQBrowse: TwwRecordViewDialog;
    DBMemo1: TDBMemo;
    LTitle: TLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QBrowseKETERANGAN: TStringField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsQBrowse2: TwwDataSource;
    QBrowse2: TOracleDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField2: TDateTimeField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    QuickRep2: TQuickRep;
    rvdQBrowse2: TwwRecordViewDialog;
    TitleBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText10: TQRDBText;
    QRLTitle2: TQRLabel;
    SummaryBand2: TQRBand;
    QRLabel12: TQRLabel;
    PageHeaderBand2: TQRBand;
    QRDBText11: TQRDBText;
    PageFooterBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText12: TQRDBText;
    DetailBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBGrid2: TwwDBGrid;
    dsQBrowse3: TwwDataSource;
    QKunciTRX: TOracleDataSet;
    QKunciTRXVTABLES: TStringField;
    QKunciTRXEDIT_AWAL: TFloatField;
    QKunciTRXHARI: TFloatField;
    dsQKunciTRX: TwwDataSource;
    QLock_History: TOracleQuery;
    QBrowse3: TOracleDataSet;
    StringField9: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField11: TStringField;
    DateTimeField3: TDateTimeField;
    FloatField5: TFloatField;
    StringField12: TStringField;
    RadioGroup1: TRadioGroup;
    wwDBGrid3: TwwDBGrid;
    BitBtn6: TBitBtn;
    QUpdate_Lock: TOracleQuery;
    QBrowseJENIS: TStringField;
    QBrowseNO_TIKET: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure QTransaksiAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure VTglAwalChange(Sender: TObject);
    procedure VTglAkhirChange(Sender: TObject);
    procedure ColumnHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn5Click(Sender: TObject);
    procedure QBrowseAfterEdit(DataSet: TDataSet);
    procedure QBrowseBeforeInsert(DataSet: TDataSet);
    procedure QBrowseBeforePost(DataSet: TDataSet);
    procedure QBrowseBeforeEdit(DataSet: TDataSet);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1URLOpen(Sender: TObject; var URLLink: String;
      Field: TField; var UseDefault: Boolean);
    procedure LTitleClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure QKunciTRXBeforePost(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure QKunciTRXAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
    vkd_jns_item, vkd_bag : String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
  end;

var
  UnpostFrm: TUnpostFrm;

implementation

uses DM, DateUtils;//, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan;

{$R *.dfm}

procedure TUnpostFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  UnpostFrm:=Nil;
end;

procedure TUnpostFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
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

procedure TUnpostFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
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
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TUnpostFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TUnpostFrm.cbTanggalClick(Sender: TObject);
begin
  if cbTanggal.Checked then
  begin
    VTglAwal.Enabled:=cbTanggal.Checked;
    VTglAkhir.Enabled:=cbTanggal.Checked;
    VTglAwal.SetFocus;
  end
  else
    ECari.SetFocus;
end;

procedure TUnpostFrm.QTransaksiAfterPost(DataSet: TDataSet);
begin
//  TabSheet1.TabVisible:=QTransaksiISPOST.AsString='1';
end;

procedure TUnpostFrm.wwDBGrid1DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;
end;

procedure TUnpostFrm.ECariChange(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
      QBrowse.SearchRecord(wwDBGrid1.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
end;

procedure TUnpostFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;
end;

procedure TUnpostFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (tgl_insert>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and tgl_insert<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse.FieldCount>=1) then
  begin
    for i:=0 to QBrowse.FieldCount-1 do
    begin
      if (QBrowse.Fields[i].FieldKind=fkData) and (UpperCase(QBrowse.Fields[i].FieldName)<>'TANGGAL') then
      begin
        if vpertama then
          begin
            vfilter:=vfilter+QBrowse.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
            vpertama:=False;
          end
          else
            vfilter:=vfilter+' or '+QBrowse.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
      end;
    end;
    vfilter:=vfilter+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by no_tiket desc';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

end;

procedure TUnpostFrm.TabSheet1Show(Sender: TObject);
begin
  VTglAwal.Date:=Trunc(DMFrm.QUserTimeVTGL.AsDateTime);
  VTglAkhir.Date:=Trunc(DMFrm.QUserTimeVTGL.AsDateTime);
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
end;

procedure TUnpostFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TUnpostFrm.VTglAwalChange(Sender: TObject);
begin
  VTglAkhir.Date:=trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TUnpostFrm.VTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>VTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      VTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TUnpostFrm.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TUnpostFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TUnpostFrm.BitBtn2Click(Sender: TObject);
begin
  if QBrowse.Active then
  begin
    QBrowse.Edit;
  end
  else
    ShowMessage('Tabel belum Aktif !');
end;

procedure TUnpostFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
{  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=DMFrm.vclGridRead;
      AFont.Color:=DMFrm.vclGridReadFont;
    end
    else
    begin
      ABrush.Color:=DMFrm.vclGridEdit;
      AFont.Color:=DMFrm.vclGridEditFont;
    end; }
end;

procedure TUnpostFrm.BitBtn5Click(Sender: TObject);
begin
  DMFrm.QUserTime.Close;
  DMFrm.QUserTime.Open;
  case PageControl1.ActivePageIndex of
  0 : begin
        QuickRep1.PreviewModal;
      end;
  end;  
end;

procedure TUnpostFrm.QBrowseAfterEdit(DataSet: TDataSet);
begin
  rvdQBrowse.Execute;
end;

procedure TUnpostFrm.QBrowseBeforeInsert(DataSet: TDataSet);
begin
  ShowMessage('Maaf, tidak bisa buat NO TIKET baru disini !');
  Abort;
end;

procedure TUnpostFrm.QBrowseBeforePost(DataSet: TDataSet);
begin
  //QBrowseOPR_UPDATE.AsString:=DMFrm.QUserVUSER.AsString;     //dihilangkan
  QBrowseSTATUS.AsString:='SUKSES';
end;

procedure TUnpostFrm.QBrowseBeforeEdit(DataSet: TDataSet);
begin
  if QBrowseSTATUS.AsString='SUKSES' then
  begin
    ShowMessage('Status SUKSES tidak bisa dieksekusi lagi !');
    Abort;
  end;
end;

procedure TUnpostFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  if QBrowsePESAN_ADMIN.AsString<>'' then
    QBrowseKETERANGAN.AsString:=QBrowseALASAN.AsString+'-->'+
      QBrowsePESAN_ADMIN.AsString;
end;

procedure TUnpostFrm.wwDBGrid1URLOpen(Sender: TObject; var URLLink: String;
  Field: TField; var UseDefault: Boolean);
begin
  QBrowse.Edit;
end;

procedure TUnpostFrm.LTitleClick(Sender: TObject);
var
  DC : HDC;
  ABitmap:TBitmap;
begin
  DC := GetDC (GetTopParentHandle);
  ABitmap:=TBitmap.Create;
  try
    ABitmap.Width  := Width-9; //GetDeviceCaps (DC, HORZRES);
    ABitmap.Height := Height-30; //GetDeviceCaps (DC, VERTRES);
    BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width,
           ABitmap.Height,DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC (GetTopParentHandle, DC);
  end;
  DMFrm.SavePictureDialog1.FileName:=LTitle.Caption;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TUnpostFrm.BitBtn3Click(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
  //   DMFrm.SaveDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
   //  wwDBGrid1.ExportOptions.TitleName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
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

procedure TUnpostFrm.BitBtn4Click(Sender: TObject);
begin
  DMFrm.QUserTime.Close;
  DMFrm.QUserTime.Open;
  case PageControl1.ActivePageIndex of
  0 : begin
        QuickRep2.Preview;
      end;
  end;
 // QuickRep2.DataSet:=nil
  //QuickRep2.Preview;
  end;

 procedure TUnpostFrm.RadioGroup1Click(Sender: TObject);
begin
  {case RadioGroup1.ItemIndex of
  0 : vRecord.Value:=40;
  1 : vRecord.Value:=20;
  end;}
end;

procedure TUnpostFrm.TabSheet2Show(Sender: TObject);
begin
QKunciTRX.Close;
QKunciTRX.Open;

QBrowse3.Close;
QBrowse3.Open;
wwDBSpinEdit1.value:=2;
wwDBSpinEdit2.value:=1;
end;

procedure TUnpostFrm.QKunciTRXBeforePost(DataSet: TDataSet);
begin
  {  case RadioGroup1.ItemIndex of
  0 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','LPB');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;

  1 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','BON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;

   2 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','VBON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;
end; }
end;

procedure TUnpostFrm.BitBtn6Click(Sender: TObject);
begin
{case RadioGroup1.ItemIndex of
  0 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','LPB');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
      QUpdate_Lock.Close;
      QUpdate_Lock.SetVariable('vtable','LPB');
      QUpdate_Lock.SetVariable('vawal',wwDBSpinEdit1.Value);
      QUpdate_Lock.SetVariable('vhari',wwDBSpinEdit2.Value);
      QUpdate_Lock.Execute;
      QKunciTRX.Close;
      QKunciTRX.Open;
  end;

  1 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','BON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
      QUpdate_Lock.Close;
      QUpdate_Lock.SetVariable('vtable','BON_BARANG');
      QUpdate_Lock.SetVariable('vawal',wwDBSpinEdit1.Value);
      QUpdate_Lock.SetVariable('vhari',wwDBSpinEdit2.Value);
      QUpdate_Lock.Execute;
      QKunciTRX.Close;
      QKunciTRX.Open;
  end;

   2 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','VBON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
      QUpdate_Lock.Close;
      QUpdate_Lock.SetVariable('vtable','VBON_BARANG');
      QUpdate_Lock.SetVariable('vawal',wwDBSpinEdit1.Value);
      QUpdate_Lock.SetVariable('vhari',wwDBSpinEdit2.Value);
      QUpdate_Lock.Execute;
      QKunciTRX.Close;
      QKunciTRX.Open;
  end;
end;   }
end;



procedure TUnpostFrm.QKunciTRXAfterPost(DataSet: TDataSet);
begin
 {case RadioGroup1.ItemIndex of
  0 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','LPB');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;

  1 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','BON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;

   2 : begin
      QLock_History.Close;
      QLock_History.SetVariable('vtable','VBON_BARANG');
      QLock_History.SetVariable('vawal',wwDBSpinEdit1.Value);
      QLock_History.SetVariable('vhari',wwDBSpinEdit2.Value);
      QLock_History.SetVariable('vuser',DMFrm.OSUser.LogonUsername);
      QLock_History.Execute;
      QBrowse3.Close;
      QBrowse3.Open;
  end;
end; }
end;

procedure TUnpostFrm.FormShow(Sender: TObject);
begin
TabSheet2.TabVisible:=False;
end;

end.

