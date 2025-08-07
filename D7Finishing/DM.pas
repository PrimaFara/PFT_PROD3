unit DM;

interface

uses
  SysUtils, Classes, Oracle, DB, OracleData, Wwdatsrc, Dialogs, wwDialog,
  wwrcdvw, ExtDlgs, jpeg;

type
  TDMFrm = class(TDataModule)
    OL: TOracleLogon;
   OS: TOracleSession;
    QKonstruksi: TOracleDataSet;
    QCorak: TOracleDataSet;
    QCorakKD_CORAK: TStringField;
    QCorakNAMA_CORAK: TStringField;
    QOperator: TOracleDataSet;
    QOperatorNIK_LAMA: TStringField;
    QOperatorNIK: TStringField;
    QOperatorNAMA_KARYAWAN: TStringField;
    QOperatorJNS_KEL: TStringField;
    QOperatorBAGIAN: TStringField;
    QOperatorSUB_BAGIAN: TStringField;
    QOperatorJABATAN: TStringField;
    QMutu: TOracleDataSet;
    QMutuMUTU: TStringField;
    QMutuKETERANGAN: TStringField;
    QMutuSCORE: TFloatField;
    QRekanan: TOracleDataSet;
    QRekananKD_REKANAN: TFloatField;
    QRekananNAMA_REKANAN: TStringField;
    QRekananALAMAT: TStringField;
    QRekananKOTA: TStringField;
    QRekananTELEPON: TStringField;
    QRekananNEGARA: TStringField;
    QRekananNPWP: TStringField;
    QRekananBATAS_KREDIT: TFloatField;
    QRekananALAMAT2: TStringField;
    QRekananTGL_INSERT: TDateTimeField;
    QUserTime: TOracleDataSet;
    QUserTimeVUSER: TStringField;
    wwDataSource1: TwwDataSource;
    wwDataSource2: TwwDataSource;
    dsQUserTime: TwwDataSource;
    QCustomer: TOracleDataSet;
    QCustomerKD_REKANAN: TFloatField;
    QCustomerNAMA_REKANAN: TStringField;
    QCustomerALAMAT: TStringField;
    QCustomerKOTA: TStringField;
    QCustomerTELEPON: TStringField;
    QCustomerNEGARA: TStringField;
    QCustomerNPWP: TStringField;
    QCustomerBATAS_KREDIT: TFloatField;
    QCustomerALAMAT2: TStringField;
    QCustomerTGL_INSERT: TDateTimeField;
    SaveDialog1: TSaveDialog;
    QUserTimeVTGL: TDateTimeField;
    QUserTimeUSER_OPR: TStringField;
    QLokasiProses: TOracleDataSet;
    dsQLokasiProses: TwwDataSource;
    RVLokasiProses: TwwRecordViewDialog;
    QLookLokasiProses: TOracleDataSet;
    QLookLokasiProsesMYLOKASI: TStringField;
    QLookLokasiProsesLOKASI: TStringField;
    QLookLokasiProsesPROSES: TStringField;
    QLookLokasiProsesKD_LOKASI: TStringField;
    QLokasiProsesPROSES: TStringField;
    QLokasiProsesLOKASI: TStringField;
    QLokasiProsesKD_LOKASI: TStringField;
    QMesin: TOracleDataSet;
    QMesinPROSES: TStringField;
    QMesinGRUP: TStringField;
    QMesinLOKASI: TStringField;
    QMesinNIK1: TStringField;
    QMesinNIK2: TStringField;
    QMesinNIK: TStringField;
    QMesinNM_OPR_MESIN: TStringField;
    QLookMesinFinishing: TOracleDataSet;
    DsLookMesinFinishing: TwwDataSource;
    QLookMesinFinishingKD_MESIN: TStringField;
    QLookMesinFinishingSPESIFIKASI: TStringField;
    QLookMesinFinishingNAMA_MESIN: TStringField;
    QKonstruksiKD_KONSTRUKSI: TStringField;
    QKonstruksiNAMA_KONSTRUKSI: TStringField;
    QKonstruksi_finish: TOracleDataSet;
    QMenuUser: TOracleDataSet;
    DsQLookMitra: TwwDataSource;
    QLookMitra: TOracleDataSet;
    LookSerahHasil: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    QUnPost: TOracleQuery;
    QOp_Inspect: TOracleDataSet;
    dsQCorak: TwwDataSource;
    QLookMitraKD_MITRA: TStringField;
    QLookMitraNAMA_MITRA: TStringField;
    QOp_InspectNIK_LAMA: TStringField;
    QOp_InspectNIK: TStringField;
    QOp_InspectNAMA_KARYAWAN: TStringField;
    QOp_InspectJNS_KEL: TStringField;
    QOp_InspectBAGIAN: TStringField;
    QOp_InspectSUB_BAGIAN: TStringField;
    QOp_InspectJABATAN: TStringField;
    QOp_InspectKD_GRUP_SHIFT: TStringField;
    QKonstruksi_Kp: TOracleDataSet;
    QKonstruksi_KpKD_KONSTRUKSI: TStringField;
    QKonstruksi_KpNAMA_KONSTRUKSI: TStringField;
    QKonstruksi_KpSUB_KELOMPOK: TStringField;
    QKonstruksi_KpKP: TStringField;
    dsQPerusahaan: TwwDataSource;
    QPerusahaan: TOracleDataSet;
    QKonstruksi_kelompok: TOracleDataSet;
    QKonstruksi_kelompokKD_KONSTRUKSI: TStringField;
    QKonstruksi_kelompokNAMA_KONSTRUKSI: TStringField;
    QUserTimeVJAM: TStringField;
    QHak_jam: TOracleDataSet;
    QHak_jamJAM1: TStringField;
    QHak_jamJAM2: TStringField;
    QHak_jamTGL_APLIKASI: TDateTimeField;
    QdesainKP: TOracleDataSet;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    QLookKdProduksi: TOracleDataSet;
    QLookKdProduksiKD_PRODUKSI: TStringField;
    QLookKdProduksiKD_KONSTRUKSI: TStringField;
    QLookKdProduksiSUB_KELOMPOK: TStringField;
    QHak_jamWIP: TOracleDataSet;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    QLookGrup: TOracleDataSet;
    DsQLookGrup: TwwDataSource;
    QLookGrupGRUP: TStringField;
    DsQLookKonversi: TwwDataSource;
    QLookKonversi: TOracleDataSet;
    StringField10: TStringField;
    QSuplier: TOracleDataSet;
    DsQSuplier: TwwDataSource;
    QSuplierKD_REKANAN: TFloatField;
    QSuplierNAMA_REKANAN: TStringField;
    QSuplierJENIS: TStringField;
    QSuplierALAMAT: TStringField;
    QSuplierKOTA: TStringField;
    DsQLookWarna: TwwDataSource;
    QLookWarna: TOracleDataSet;
    QLookOperator: TOracleDataSet;
    DsQLookOperator: TwwDataSource;
    QLookOperatorNIK: TStringField;
    QLookOperatorNAMA_KARYAWAN: TStringField;
    QKP_Hasil_Inspect: TOracleDataSet;
    QLookJenis: TOracleDataSet;
    QLookJenisPROSES: TStringField;
    QKP_Hasil_InspectKP: TStringField;
    QKP_Hasil_InspectKD_KONSTRUKSI: TStringField;
    QKP_Hasil_InspectSUB_KELOMPOK: TStringField;
    QKP_Hasil_InspectNAMA_KONSTRUKSI: TStringField;
    dsQKonstruksi_finish: TwwDataSource;
    QKonstruksi_finishKP: TStringField;
    QKonstruksi_finishKD_KONSTRUKSI: TStringField;
    QKonstruksi_finishNAMA_KONSTRUKSI: TStringField;
    SavePictureDialog1: TSavePictureDialog;
    QCorak_New: TOracleDataSet;
    QCorak_NewKD_CORAK: TStringField;
    QCorak_NewNAMA_CORAK: TStringField;
    QCorak_NewSTATUS: TFloatField;
    QCorak_NewJENIS: TStringField;
    MGD: TOracleDataSet;
    MGDKD_PROSES: TStringField;
    MGDPROSES: TStringField;
    MGDHARGA: TFloatField;
    MGDKD_PERK: TStringField;
    Satuan: TOracleDataSet;
    SatuanSATUAN: TStringField;
    QLookWarnaWARNA: TStringField;
    QLookWarnaKD_WARNA: TStringField;
    QLookWarnaJNS_WARNA: TStringField;
    QLookWarnaCW: TStringField;
    QLookWarnaISFIXED: TStringField;
    QLookWarnaTGL_INSERT: TDateTimeField;
    QLookWarnaOPR_INSERT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_lokasi, vrab : String;
  end;

var
  DMFrm: TDMFrm;

implementation

{$R *.dfm}

//ipisma_db5

end.
