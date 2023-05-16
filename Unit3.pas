unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    epasien: TEdit;
    enama: TEdit;
    ealamat: TEdit;
    emasuk: TEdit;
    eumur: TEdit;
    edokter: TEdit;
    eperawat: TEdit;
    ekamar: TEdit;
    eobat: TEdit;
    ecari: TEdit;
    EKELAMIN: TComboBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4, Unit2, Unit10;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
dm4.ADOTable1.Insert;
dm4.ADOTable1.FieldByName('id_pasien').AsString := epasien.Text;
dm4.ADOTable1.FieldByName('nama_pasien').AsString := enama.Text;
dm4.ADOTable1.FieldByName('alamat').AsString := ealamat.text;
dm4.ADOTable1.FieldByName('tanggal_masuk').AsString := emasuk.Text;
dm4.ADOTable1.FieldByName('jenis_kelamin').AsString := EKELAMIN.Text;
dm4.ADOTable1.FieldByName('umur_pasien').AsString := eumur.Text;
dm4.ADOTable1.FieldByName('id_dokter').AsString := edokter.Text;
dm4.ADOTable1.FieldByName('id_perawat').AsString := eperawat.Text;
dm4.ADOTable1.FieldByName('id_kamar').AsString := ekamar.Text;
dm4.ADOTable1.FieldByName('id_obat').AsString := eobat.Text;
dm4.ADOTable1.Post;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
dm4.ADOTable1.edit;
dm4.ADOTable1.FieldByName('id_pasien').AsString := epasien.Text;
dm4.ADOTable1.FieldByName('nama_pasien').AsString := enama.Text;
dm4.ADOTable1.FieldByName('alamat').AsString := ealamat.text;
dm4.ADOTable1.FieldByName('tanggal_masuk').AsString := emasuk.Text;
dm4.ADOTable1.FieldByName('jenis_kelamin').AsString := EKELAMIN.Text;
dm4.ADOTable1.FieldByName('umur_pasien').AsString := eumur.Text;
dm4.ADOTable1.FieldByName('id_dokter').AsString := edokter.Text;
dm4.ADOTable1.FieldByName('id_perawat').AsString := eperawat.Text;
dm4.ADOTable1.FieldByName('id_kamar').AsString := ekamar.Text;
dm4.ADOTable1.FieldByName('id_obat').AsString := eobat.Text;
dm4.ADOTable1.Post;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
epasien.Text := ' ';
enama.Text := ' ';
ealamat.Text := ' ';
emasuk.Text := ' ';
eumur.Text := ' ';
ekelamin.Text := ' ';
ekamar.Text := ' ';
edokter.Text := ' ';
eperawat.Text := ' ';
eobat.Text := ' ';
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
dm4.ADOTable1.Delete;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form3.Hide;
Form2.Show;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
 if dm4.ADOTable1.Locate('id_pasien',ecari.Text,[]) then
 begin
   epasien.Text := dm4.ADOTable1.FieldByName('id_pasien').AsString;
   enama.Text:= dm4.ADOTable1.FieldByName('nama_pasien').AsString;
   ealamat.Text := dm4.ADOTable1.FieldByName('alamat').AsString;
   emasuk.Text := dm4.ADOTable1.FieldByName('tanggal_masuk').AsString;
   EKELAMIN.Text := dm4.ADOTable1.FieldByName('jenis_kelamin').AsString;
   eumur.Text := dm4.ADOTable1.FieldByName('umur_pasien').AsString;
   edokter.Text := dm4.ADOTable1.FieldByName('id_dokter').AsString;
   eperawat.Text := dm4.ADOTable1.FieldByName('id_perawat').AsString;
   ekamar.Text := dm4.ADOTable1.FieldByName('id_kamar').AsString;
   eobat.Text := dm4.ADOTable1.FieldByName('id_obat').AsString;
   end
   else
   if not dm4.ADOTable1.Locate('id_pasien',ecari.Text,[]) then
   begin
    ShowMessage('DATA TIDAK ADA');
   end;
 end;

procedure TForm3.Button7Click(Sender: TObject);
begin
Form10.QuickRep1.preview;
end;

end.
