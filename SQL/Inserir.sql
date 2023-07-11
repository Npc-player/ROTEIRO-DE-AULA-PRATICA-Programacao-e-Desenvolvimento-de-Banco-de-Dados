-- language: sql

insert ignore into estado(Nome, UF) 
values
('São Paulo', 'SP'), 
('Rio de Janeiro', 'RJ'), 
('Espirito Santo', 'ES');

insert ignore into municipio(Estado_Id, Nome, CodIBGE) 
values 
('1', 'Mogi das Cruzes', '3530607'), 
('1', 'Suzano', '3552502'), 
('1', 'Arujá', '3503901'),
('2', 'Niterói', '3303302'),
('2', 'Resende', '3304201'),
('2', 'Volta Redonda', '3306305'),
('3', 'Vitória', '3205309'),
('3', 'Guarapari', '3202405'),
('3', 'Linhares', '3203205');

insert ignore into cliente(Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_Id)
values
('Guilherme', '11111111111', '99999-9999', 'Rua hum', '100', '1', '08888000', '1'),
('Gabriel', '22222222222', '88888-8888', 'Rua dois', '200', '2', '09999000', '2'),
('Nelson', '33333333333', '77777-7777', 'Rua três', '300', '3', '07777000', '3'),
('Tatiane', '44444444444', '22222-2222', 'Rua quatro', '400', '3', '06666000', '3'),
('Débora', '55555555555', '33333-3333', 'Rua cinco', '500', '2', '05555000', '2'),
('Vilma', '66666666666', '44444-4444', 'Rua seis', '600', '2', '07777000', '1');

insert ignore into contareceber(
Cliente_ID, FaturaVendaId, DataConta, DataVencimento, Valor, Situação)
values
('1', '1001', '2023-05-20', '2023-06-20', '100.00', '1'),
('2', '1002', '2023-05-21', '2023-06-21', '200.00', '2'),
('3', '1003', '2023-05-22', '2023-06-22', '300.00', '3'),
('4', '1004', '2023-05-23', '2023-06-23', '400.00', '1'),
('5', '1005', '2023-05-24', '2023-06-24', '500.00', '2'),
('6', '1006', '2023-05-25', '2023-06-25', '600.00', '1');
