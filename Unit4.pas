unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable4: TADOTable;
    ADOTable5: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm4: Tdm4;

implementation

{$R *.dfm}

end.
