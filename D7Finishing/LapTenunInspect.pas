unit LapTenunInspect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, DB,
  Wwdatsrc, OracleData, Oracle, wwdbdatetimepicker;

type
  TLapTenunInspectFrm = class(TForm)
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
    QDataTGL: TDateTimeField;
    QDataKP: TStringField;
    QDataKONSTRUKSI: TStringField;
    QDataNO_SERI_BEAM: TStringField;
    LabelBanner: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QDataAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LapTenunInspectFrm: TLapTenunInspectFrm;

implementation

uses DM;

{$R *.dfm}

procedure TLapTenunInspectFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  LapTenunInspectFrm:=Nil;
end;

procedure TLapTenunInspectFrm.BitBtn2Click(Sender: TObject);
begin
  QTutup.Close;
  QTutup.SetVariable('ptgl',wwDBDateTimePicker1.Date);
  QTutup.SetVariable('ptgl2',wwDBDateTimePicker2.Date);
  QTutup.Execute;
  QData.DisableControls;
  QData.Close;
  QData.Open;
  QData.EnableControls;
end;

procedure TLapTenunInspectFrm.FormCreate(Sender: TObject);
begin
  QData.Open;
end;

procedure TLapTenunInspectFrm.QDataAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QData.RecNo)+' dari '+FormatFloat('#,#',QData.RecordCount)+' Records';
end;

end.
