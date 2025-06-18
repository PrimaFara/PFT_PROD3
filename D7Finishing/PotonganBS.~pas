unit PotonganBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdblook, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, wwDBNavigator, wwrcdvw, Wwdbdlg;

type
  TPotonganBSFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    LTitle: TLabel;
    BtnClose: TBitBtn;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    BtnSimpan: TBitBtn;
    BtnBrowse: TSpeedButton;
    BtnEditing: TSpeedButton;
    ECari: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    BtnBrowse2: TSpeedButton;
    BtnEditing2: TSpeedButton;
    Label4: TLabel;
    ECari2: TEdit;
    BitBtn3: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    QMaster2: TOracleDataSet;
    dsQMaster2: TwwDataSource;
    cbOtomatis: TCheckBox;
    BitBtn2: TBitBtn;
    QMaster2MU: TStringField;
    QMaster2TAHUN: TIntegerField;
    QMaster2B00: TFloatField;
    QMaster2B01: TFloatField;
    QMaster2B02: TFloatField;
    QMaster2B03: TFloatField;
    QMaster2B04: TFloatField;
    QMaster2B05: TFloatField;
    QMaster2B06: TFloatField;
    QMaster2B07: TFloatField;
    QMaster2B08: TFloatField;
    QMaster2B09: TFloatField;
    QMaster2B10: TFloatField;
    QMaster2B11: TFloatField;
    QMaster2B12: TFloatField;
    QCash: TOracleDataSet;
    QCashKD_CASH: TStringField;
    QCashCASHFLOW: TStringField;
    QCashLVL: TIntegerField;
    QCashISDETAIL: TStringField;
    QMasterKODE: TStringField;
    QMasterKETERANGAN: TStringField;
    QMasterLD: TIntegerField;
    QMasterLB: TIntegerField;
    QMasterLT: TIntegerField;
    QMasterLK: TIntegerField;
    QMasterPL: TIntegerField;
    QMasterLL: TIntegerField;
    QMasterLPT: TIntegerField;
    QMasterLRG: TIntegerField;
    QMasterWL: TIntegerField;
    QMasterCKK: TIntegerField;
    QMasterOJ: TIntegerField;
    QMasterCRT: TIntegerField;
    QMasterCAJ: TIntegerField;
    QMasterPD: TIntegerField;
    QMasterPKP: TIntegerField;
    QMasterNG: TIntegerField;
    QMasterBTB: TIntegerField;
    QMasterWP: TIntegerField;
    QMasterSC: TIntegerField;
    QMasterKP: TIntegerField;
    QMasterBO: TIntegerField;
    QMasterTCS: TIntegerField;
    QMasterSLL: TIntegerField;
    QMasterKS: TIntegerField;
    QMasterANR: TIntegerField;
    QMasterUTS: TIntegerField;
    QMasterKBR: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure QMasterAfterPost(DataSet: TDataSet);
    procedure BtnEditingClick(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QMasterAfterScroll(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BtnEditing2Click(Sender: TObject);
    procedure BtnBrowse2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LookMesinEnter(Sender: TObject);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cbOtomatisClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure LTitleClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vfilter, vorder, vfilter2, vorder2 : String;
  public
    { Public declarations }
  end;

var
  PotonganBSFrm: TPotonganBSFrm;

implementation

uses DM, Main, Menus;

{$R *.dfm}

procedure TPotonganBSFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  PotonganBSFrm:=Nil;
end;

procedure TPotonganBSFrm.BtnSimpanClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
        try
          DMFrm.OS.ApplyUpdates([QMaster],True);
          BtnSimpan.Enabled:=False;
          BtnBrowse.Down:=True;
          BtnBrowseClick(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
      end;
  1 : begin
        try
          DMFrm.OS.ApplyUpdates([QMaster2],True);
          BtnSimpan.Enabled:=False;
          BtnBrowse2.Down:=True;
          BtnBrowse2Click(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
      end;
  end;
end;

procedure TPotonganBSFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TPotonganBSFrm.BtnEditingClick(Sender: TObject);
begin
  wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect];
  wwDBGrid1.ReadOnly:=False;
  wwDBGrid1.SetFocus;
//  TabSheet1.TabVisible:=False;
  TabSheet2.TabVisible:=False;
end;

procedure TPotonganBSFrm.BtnBrowseClick(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect];
      wwDBGrid1.ReadOnly:=True;
      wwDBGrid1.SetFocus;
//      TabSheet1.TabVisible:=True;
      TabSheet2.TabVisible:=True;
    end;
end;

procedure TPotonganBSFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if BtnSimpan.Enabled then
    ShowMessage('Mode CARI berfungsi jika perubahan data sudah di-POSTING/ SIMPAN !')
    else
    begin
        vfilter:=' where ';
        if (QMaster.FieldCount>=1) then
        begin
          for i:=0 to QMaster.FieldCount-1 do
          begin
            if QMaster.Fields[i].FieldKind=fkData then
            begin
              if vpertama then
                begin
                  vfilter:=vfilter+QMaster.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
                  vpertama:=False;
                end
                else
                  vfilter:=vfilter+' or '+QMaster.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
            end;
          end;
          vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
        end;
        QMaster.SetVariable('myparam',vfilter+vorder);
        QMaster.DisableControls;
        QMaster.Close;
        QMaster.Open;
        QMaster.EnableControls;
    end;
end;

procedure TPotonganBSFrm.FormCreate(Sender: TObject);
begin
//DMFRM.QMU.Active:=TRUE;
//  wwDBGrid1.IniAttributes.SectionName:=Name+' '+wwDBGrid1.Name;
//  wwDBGrid2.IniAttributes.SectionName:=Name+' '+wwDBGrid2.Name;
end;

procedure TPotonganBSFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
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

procedure TPotonganBSFrm.QMasterAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TPotonganBSFrm.BitBtn5Click(Sender: TObject);
var
  vtitle : String;
begin
 { case PageControl1.ActivePageIndex of
  0 : begin
        vtitle:='Daftar Rekening Perkiraan';
        DMFrm.SaveDialog1.FileName:=vtitle;
        if DMFrm.SaveDialog1.Execute then
        begin
            wwDBGrid1.ExportOptions.FileName:=ExtractFileName(DMFrm.SaveDialog1.FileName);
            wwDBGrid1.ExportOptions.TitleName:='<SCRIPT LANGUAGE="JavaScript">window.print();</script><font size=4>'+UpperCase(vtitle)+'</font>';
            wwDBGrid1.ExportOptions.Save;
            if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
            begin
              MainBrowse.MyInit(DMFrm.SaveDialog1.FileName);
            end;
        end;
       end;
  1 : begin
        vtitle:='Daftar Rekening Cashflow';
        DMFrm.SaveDialog1.FileName:=vtitle;
        if DMFrm.SaveDialog1.Execute then
        begin
            wwDBGrid2.ExportOptions.FileName:=ExtractFileName(DMFrm.SaveDialog1.FileName);
            wwDBGrid2.ExportOptions.TitleName:='<SCRIPT LANGUAGE="JavaScript">window.print();</script><font size=4>'+UpperCase(vtitle)+'</font>';
            wwDBGrid2.ExportOptions.Save;
            if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
            begin
              MainBrowse.MyInit(DMFrm.SaveDialog1.FileName);
            end;
        end;
       end;
  end;     }

end;

procedure TPotonganBSFrm.TabSheet1Show(Sender: TObject);
begin
  QMaster.Open;

end;

procedure TPotonganBSFrm.BtnEditing2Click(Sender: TObject);
begin
  wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect];
  wwDBGrid2.ReadOnly:=False;
  wwDBGrid2.SetFocus;
  TabSheet1.TabVisible:=False;
//  TabSheet2.TabVisible:=False;
end;

procedure TPotonganBSFrm.BtnBrowse2Click(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect];
      wwDBGrid2.ReadOnly:=True;
      wwDBGrid2.SetFocus;
      TabSheet1.TabVisible:=True;
//      TabSheet2.TabVisible:=True;
    end;
end;

procedure TPotonganBSFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if BtnSimpan.Enabled then
    ShowMessage('Mode CARI berfungsi jika perubahan data sudah di-POSTING/ SIMPAN !')
    else
    begin
        vfilter2:=' where ';
        if (QMaster2.FieldCount>=1) then
        begin
          for i:=0 to QMaster2.FieldCount-1 do
          begin
            if QMaster2.Fields[i].FieldKind=fkData then
            begin
              if vpertama then
                begin
                  vfilter2:=vfilter2+QMaster2.Fields[i].FieldName+' like ''%'+ECari2.Text+'%''';
                  vpertama:=False;
                end
                else
                  vfilter2:=vfilter2+' or '+QMaster2.Fields[i].FieldName+' like ''%'+ECari2.Text+'%''';
            end;
          end;
          vorder2:=' order by '+wwDBGrid2.Columns[0].FieldName;
        end;
        QMaster2.SetVariable('myparam',vfilter2+vorder2);
        QMaster2.DisableControls;
        QMaster2.Close;
        QMaster2.Open;
        QMaster2.EnableControls;
    end;
end;

procedure TPotonganBSFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TPotonganBSFrm.TabSheet2Show(Sender: TObject);
begin
//  QMaster2.Open;
end;

procedure TPotonganBSFrm.FormShow(Sender: TObject);
begin
  Height:=600;
  Width:=748;
  TabSheet2.TabVisible:=False;  
end;

procedure TPotonganBSFrm.LookMesinEnter(Sender: TObject);
begin
  QMaster.Open;
end;

procedure TPotonganBSFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TPotonganBSFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:=(Not BtnSimpan.Enabled);
  if not CanClose then
    if MessageDlg('Data belum di Simpan/ Posting !'+#13+
       'Anda tetap mau menutup Form ?'+#13+
       'Jika pilih [YES], maka Form akan ditutup dan data tidak akan tersimpan.',mtWarning,[mbYes,mbNo],0)=mrYes then
       begin
            CanClose:=True;
       end;
end;

procedure TPotonganBSFrm.wwDBGrid1DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;

end;

procedure TPotonganBSFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 { if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=DMFrm.vclGridRead;
      AFont.Color:=DMFrm.vclGridReadFont;
    end
    else
    begin
      ABrush.Color:=DMFrm.vclGridEdit;
      AFont.Color:=DMFrm.vclGridEditFont;
    end;    }
end;

procedure TPotonganBSFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];

end;

procedure TPotonganBSFrm.ECariChange(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
      QMaster.SearchRecord(wwDBGrid1.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;

end;

procedure TPotonganBSFrm.LTitleClick(Sender: TObject);
var
  DC : HDC;
  ABitmap:TBitmap;
begin
 { DC := GetDC (GetTopParentHandle);
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
  ABitmap.Free;   }
end;

procedure TPotonganBSFrm.BitBtn2Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
  0 : begin
  if Qmaster.Active then
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
         ShowMessage('Simpan Rek. Perk Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
    end;
     1 : begin
     if Qmaster.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
  //   DMFrm.SaveDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
   //  wwDBGrid1.ExportOptions.TitleName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid2.ExportOptions.Save;
         ShowMessage('Simpan Rek. Cashflow Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
    end;
    end;
end;

end.
