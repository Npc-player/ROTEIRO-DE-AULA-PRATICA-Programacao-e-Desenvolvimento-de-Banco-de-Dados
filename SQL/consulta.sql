-- language: sql

CREATE OR REPLACE view v_SemPagar as
SELECT CR.Id as 'CODIGO',
	C.Nome as 'NOME DO CLIENTE',
	C.CPF, 
    date_format(CR.DataVencimento, '%d/%m/%Y') as 'Data do Vencimento',
	CR.Valor
FROM contareceber CR
JOIN cliente C ON CR.Cliente_ID = C.Id
WHERE CR.Situação = '1';

select * from v_SemPagar;
