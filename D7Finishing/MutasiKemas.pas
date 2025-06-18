unit MutasiKemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB,
  Wwdatsrc, OracleData;

type
  TMutasiKemasFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QData: TOracleDataSet;
    QDataKD_KONSTRUKSI: TStringField;
    QDataKD_CORAK: TStringField;
    QDataMUTU: TStringField;
    QDataSATUAN: TStringField;
    dsQData: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QDataAWAL: TFloatField;
    QDataLIPAT: TFloatField;
    QDataLIPAT_SUPLIER: TFloatField;
    QDataKEMAS: TFloatField;
    QDataKEMAS_SUPLIER: TFloatField;
    QDataAKHIR: TFloatField;
    QDataLELANG: TFloatField;
    QDataGD_JADI: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MutasiKemasFrm: TMutasiKemasFrm;

implementation

uses DM;

{$R *.dfm}

procedure TMutasiKemasFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  MutasiKemasFrm:=Nil;
end;

procedure TMutasiKemasFrm.BitBtn2Click(Sender: TObject);
begin
  QData.DisableControls;
  QData.Close;
  QData.Open;
  QData.EnableControls;
end;

procedure TMutasiKemasFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
  begin
    if QDataKD_CORAK.AsString='' then
      ABrush.Color:=clSilver
      else
        ABrush.Color:=$0088FFFF;
  end;
end;

procedure TMutasiKemasFrm.FormCreate(Sender: TObject);
begin
  QData.Open;
end;

end.
