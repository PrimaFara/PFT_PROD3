unit MutasiJahit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB,
  Wwdatsrc, OracleData, Oracle, wwdbdatetimepicker;

type
  TMutasiJahitFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QData: TOracleDataSet;
    dsQData: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    QTutup: TOracleQuery;
    QDataKONSTRUKSI: TStringField;
    QDataCORAK: TStringField;
    QDataAWAL_BK: TFloatField;
    QDataAWAL_BS: TFloatField;
    QDataAWAL_PARAH: TFloatField;
    QDataMASUK_BK: TFloatField;
    QDataMASUK_BS: TFloatField;
    QDataMASUK_PARAH: TFloatField;
    QDataMASUK_LAIN_BK: TFloatField;
    QDataMASUK_LAIN_BS: TFloatField;
    QDataMASUK_LAIN_PARAH: TFloatField;
    QDataKELUAR_LAIN_BK: TFloatField;
    QDataKELUAR_LAIN_BS: TFloatField;
    QDataKELUAR_LAIN_PARAH: TFloatField;
    QDataINSP2_BK: TFloatField;
    QDataINSP2_BS: TFloatField;
    QDataINSP2_PARAH: TFloatField;
    QDataKE_JAHIT_BK: TFloatField;
    QDataKE_JAHIT_BS: TFloatField;
    QDataKE_JAHIT_PARAH: TFloatField;
    QDataAKHIR_BK: TFloatField;
    QDataAKHIR_BS: TFloatField;
    QDataAKHIR_PARAH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MutasiJahitFrm: TMutasiJahitFrm;

implementation

uses DM;

{$R *.dfm}

procedure TMutasiJahitFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  MutasiJahitFrm:=Nil;
end;

procedure TMutasiJahitFrm.BitBtn2Click(Sender: TObject);
begin
  QTutup.Close;
  QTutup.SetVariable('pawal',wwDBDateTimePicker1.Date);
  QTutup.SetVariable('pakhir',wwDBDateTimePicker2.Date);
  QTutup.Execute;
  QData.DisableControls;
  QData.Close;
  QData.Open;
  QData.EnableControls;
end;

procedure TMutasiJahitFrm.FormCreate(Sender: TObject);
begin
  QData.Open;
end;

procedure TMutasiJahitFrm.QDataCalcFields(DataSet: TDataSet);
begin
  QDataAKHIR_BK.AsFloat:=QDataAWAL_BK.AsFloat+QDataMASUK_BK.AsFloat-QDataKELUAR_LAIN_BK.AsFloat-QDataKE_JAHIT_BK.AsFloat;
  QDataAKHIR_BS.AsFloat:=QDataAWAL_BS.AsFloat+QDataMASUK_BK.AsFloat-QDataKELUAR_LAIN_BS.AsFloat-QDataKE_JAHIT_BS.AsFloat;
  QDataAKHIR_PARAH.AsFloat:=QDataAWAL_PARAH.AsFloat+QDataMASUK_BK.AsFloat-QDataKELUAR_LAIN_PARAH.AsFloat-QDataKE_JAHIT_PARAH.AsFloat;
end;

end.
