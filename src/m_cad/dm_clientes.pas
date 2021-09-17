unit dm_clientes;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, db, BufDataset, memds;

type

    { TdmClientes }

    TdmClientes = class(TDataModule)
        bsContatocargo: TStringField;
        bsContatocelular: TStringField;
        bsContatochat: TStringField;
        bsContatodt_admi: TDateField;
        bsContatoemail: TStringField;
        bsContatofone: TStringField;
        bsContatoid_chat: TStringField;
        bsContatonome: TStringField;
        bsContatoramal: TStringField;
        bsEnder: TBufDataset;
        bsEnderbairro: TStringField;
        bsEndercep: TStringField;
        bsEndercidade: TStringField;
        bsEndercompl: TStringField;
        bsEndercontato: TStringField;
        bsEnderestado: TStringField;
        bsEnderfone: TStringField;
        bsEnderlograd: TStringField;
        bsEndernum: TStringField;
        bsEnderpref: TStringField;
        bsEnderprin: TBooleanField;
        bsEndertipo: TStringField;
        bsContato: TBufDataset;
        dsContato: TDataSource;
        dsEnder: TDataSource;
    private

    public

    end;

var
    dmClientes: TdmClientes;

implementation

{$R *.lfm}

end.

