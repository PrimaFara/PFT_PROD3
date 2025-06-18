unit Refresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, StdCtrls, Buttons, ComCtrls;

type
  TDLFrm = class(TForm)
    BitBtn1: TBitBtn;
    GRItem: TOracleQuery;
    Animate1: TAnimate;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DLFrm: TDLFrm;

implementation

uses DM;

{$R *.dfm}

procedure TDLFrm.BitBtn1Click(Sender: TObject);
begin
  try
    Animate1.Visible:=True;
    Animate1.Active:=True;
    GRItem.Close;
    GRItem.Execute;
    ShowMessage('Sukses !');
    Animate1.Active:=False;
    Animate1.Visible:=False;
  except
    ShowMessage('Gagal !, tolong cek jaringan !');
    Animate1.Active:=False;
    Animate1.Visible:=False;
  end;
end;

end.
