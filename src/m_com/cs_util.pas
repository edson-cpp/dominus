unit cs_util;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils;

function FormataCPF(cpf: String; fmt: Boolean): String;
function FormataCNPJ(cnpj: String; fmt: Boolean): String;
function GetNumber(str: String): String;

implementation
function FormataCPF(cpf: String; fmt: Boolean): String;
begin
    result := FormataCNPJ(cpf, fmt);
end;

function FormataCNPJ(cnpj: String; fmt: Boolean): String;
begin
    if not fmt then
        result := GetNumber(cnpj)
    else if Length(cnpj) = 14 then
    begin
        result := '';
    end;
end;

function GetNumber(str: String): String;
var
  i, len, p: Integer;
  numb, char: String;
begin
	numb := '';
    len := Length(str);
	for i := 1 to len do
    begin
        char := copy(str, i, 1);
        p := Pos(char, '0123456789');
		if p <> 0 then
			numb := numb + char;
    end;
    result := numb;
end;

end.

