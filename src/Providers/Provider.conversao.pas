unit Provider.conversao;

interface

uses
  SysUtils,
  StrUtils,
  Classes;

Type
  TPCpessoa = (tpCliente, TpFornecedor, tpFuncionario);
  TPCtelas = (tpProduto, tpCaixa, tpGrupo, tpSubgrupo);

  function PessoaToInt(const t: TPCpessoa) :integer;
  function TelasToStr(const t: TPCtelas): string;

implementation

function PessoaToInt(const t: TPCpessoa) :integer;
  begin
    case t of
      tpCliente:     result := 1;
      tpFornecedor:  result := 2;
      tpFuncionario: result := 3;
    end;
  end;

function TelasToStr(const t: TPCtelas) :string;
begin
  case t of
    tpProduto:    result:= 'Produto';
    tpCaixa:      result:= 'Caixa';
    tpGrupo:      result:= 'Grupo';
    tpSubgrupo:   result:= 'Subgrupo';
  end;
end;

end.
