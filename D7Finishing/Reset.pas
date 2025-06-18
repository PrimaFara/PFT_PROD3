unit Reset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, StdCtrls,Registry, Buttons, ComCtrls;

type
  TResetFrm = class(TForm)
    BitBtn1: TBitBtn;
    GRItem: TOracleQuery;
    Animate1: TAnimate;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FIniFile: TRegIniFile;
  end;

var
  ResetFrm: TResetFrm;

implementation

uses DM, Main;

{$R *.dfm}

procedure TResetFrm.BitBtn1Click(Sender: TObject);
var
  Cleanup: TRegistry;
  key: string;
  //reg: string;
begin
 // reg.delete;
  key := FIniFile.FileName;
  FIniFile.Free;
  // make sure we don't leave junk in the registry behind.
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;

  FormCreate(nil);
  key := 'Pismatex Master';
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;

  FormCreate(nil);
  key := 'Pismatex Finishing';
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;

  FormCreate(nil);
  key := 'Finishing';
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;

  FormCreate(nil);
  key := 'Printing';
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  end;

  FormCreate(nil);
  key := 'Produksi3';
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
    ShowMessage('Reset Registry Tabel Sukses !');
  end;


  Close;
end;

procedure TResetFrm.FormCreate(Sender: TObject);
begin
FIniFile := TRegIniFile.Create('Pismatex Master');
//Read_Registry;
//CheckBox2.Checked:=DMFrm.vremote;
end;

end.
