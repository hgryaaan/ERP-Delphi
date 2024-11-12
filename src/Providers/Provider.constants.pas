unit Provider.constants;

interface

var
  iCODempresa: integer;
  sRAZAOempresa: string;
  procedure GETclientes_grid(iTIPO: integer);
  procedure GETprodutos;
  procedure GETprodutos_detalhes(iCOD_produto: integer);

implementation

uses Service.conexao;

procedure GETclientes_grid(iTIPO: integer);
begin
  ServiceConexao.QRY_pessoa.Close;
  ServiceConexao.QRY_pessoa.SQL.Clear;
  ServiceConexao.QRY_pessoa.SQL.Add('select * from PESSOA where pes_tipopessoa = :tipopessoa');
  ServiceConexao.QRY_pessoa.SQL.Add('order by 1 desc');
  ServiceConexao.QRY_pessoa.Params[0].AsInteger := iTIPO;
  ServiceConexao.QRY_pessoa.Open();
end;

procedure GETprodutos;
begin
  ServiceConexao.QRY_produto1.Close;
  ServiceConexao.QRY_produto1.SQL.Clear;
  ServiceConexao.QRY_produto1.SQL.Add('select * from PRODUTO1 order by pro1_cod');
  ServiceConexao.QRY_produto1.Open();
end;

procedure GETprodutos_detalhes(iCOD_produto: integer);
begin
  ServiceConexao.QRY_produto2.Close;
  ServiceConexao.QRY_produto2.SQL.Clear;
  ServiceConexao.QRY_produto2.SQL.Add('select * from PRODUTO2 where PRO2_COD_PRO1 = :codigo');
  ServiceConexao.QRY_produto2.Params[0].AsInteger := iCOD_produto;
  ServiceConexao.QRY_produto2.Open();
end;

end.
