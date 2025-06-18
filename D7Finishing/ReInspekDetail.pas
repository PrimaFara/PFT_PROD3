unit ReInspekDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, ExtCtrls, Buttons, DB, DBTables,
  Wwtable;

type
  TReInspekDetailFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Ed101: TwwDBEdit;
    Label1: TLabel;
    Ed102: TwwDBEdit;
    Label2: TLabel;
    Ed103: TwwDBEdit;
    Label3: TLabel;
    Ed104: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Ed106: TwwDBEdit;
    E61: TwwDBEdit;
    Label6: TLabel;
    E71: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Ed109: TwwDBEdit;
    Ed111: TwwDBEdit;
    Label9: TLabel;
    E101: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Ed112: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Ed114: TwwDBEdit;
    Ed105: TwwDBEdit;
    E32: TwwDBEdit;
    E42: TwwDBEdit;
    Ed116: TwwDBEdit;
    Ed118: TwwDBEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Ed119: TwwDBEdit;
    Ed21: TwwDBEdit;
    Ed120: TwwDBEdit;
    Ed121: TwwDBEdit;
    Ed122: TwwDBEdit;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    E14: TwwDBEdit;
    E24: TwwDBEdit;
    E34: TwwDBEdit;
    Ed31: TwwDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Ed32: TwwDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    wwTable1: TwwTable;
    E3A4: TwwDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    Ed123: TwwDBEdit;
    Label18: TLabel;
    Ed33: TwwDBEdit;
    Label37: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Ed107: TwwDBEdit;
    Label40: TLabel;
    Ed108: TwwDBEdit;
    Ed110: TwwDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Ed113: TwwDBEdit;
    Label43: TLabel;
    Ed115: TwwDBEdit;
    Label44: TLabel;
    Ed117: TwwDBEdit;
    Ed22: TwwDBEdit;
    Label45: TLabel;
    Ed23: TwwDBEdit;
    Label46: TLabel;
    Ed24: TwwDBEdit;
    Label47: TLabel;
    GroupBox5: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Ed41: TwwDBEdit;
    Ed42: TwwDBEdit;
    Ed43: TwwDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

    procedure E11Enter(Sender: TObject);
    procedure E11Exit(Sender: TObject);
    procedure Ed101KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure Ed118KeyPress(Sender: TObject; var Key: Char);
    procedure Ed123KeyPress(Sender: TObject; var Key: Char);
    procedure Ed24KeyPress(Sender: TObject; var Key: Char);
    procedure Ed43KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReInspekDetailFrm: TReInspekDetailFrm;

implementation

uses HasilTenun, HasilTenun2;

{$R *.dfm}

procedure TReInspekDetailFrm.BitBtn3Click(Sender: TObject);
begin
  if HasilTenun2Frm.QDetail.State<>dsBrowse then HasilTenun2Frm.QDetail.Post;
  if not HasilTenun2Frm.QDetail.Eof then HasilTenun2Frm.QDetail.Next;
  Close;
end;

procedure TReInspekDetailFrm.BitBtn1Click(Sender: TObject);
begin
  if HasilTenun2Frm.QDetail.State<>dsBrowse then HasilTenun2Frm.QDetail.Post;
  if not HasilTenun2Frm.QDetail.Bof then HasilTenun2Frm.QDetail.Prior;
  Ed101.SetFocus;
end;

procedure TReInspekDetailFrm.BitBtn2Click(Sender: TObject);
begin
  if HasilTenun2Frm.QDetail.State<>dsBrowse then HasilTenun2Frm.QDetail.Post;
  if not HasilTenun2Frm.QDetail.Eof then HasilTenun2Frm.QDetail.Next;
  Ed101.SetFocus;
end;

procedure TReInspekDetailFrm.E11Enter(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color:=clMoneyGreen;
end;

procedure TReInspekDetailFrm.E11Exit(Sender: TObject);
begin
  (Sender as TwwDBEdit).Color:=clWhite;
end;

procedure TReInspekDetailFrm.Ed101KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
        Key := #0 ;
        Perform (WM_NEXTDLGCTL, 0, 0) ;
      end;
end;

procedure TReInspekDetailFrm.wwDBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      begin
        Key := #0 ;
        Perform (WM_NEXTDLGCTL, 0, 0) ;
      end;
end;

procedure TReInspekDetailFrm.Ed118KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
        Key := #0 ;
        Perform (WM_NEXTDLGCTL, 0, 0) ;
      end;
end;

procedure TReInspekDetailFrm.Ed123KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
        Ed21.SetFocus;
      end;
end;

procedure TReInspekDetailFrm.Ed24KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
        Ed41.SetFocus;
      end;
end;

procedure TReInspekDetailFrm.Ed43KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      begin
        BitBtn2.SetFocus;
      end;
end;

procedure TReInspekDetailFrm.FormShow(Sender: TObject);
begin
Ed101.SetFocus;
end;

end.
