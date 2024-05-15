""" Parte 2 - Utilização de procedures para manipulação de dados em Banco de Dados """

use ecormerce;
show tables;
select * from product;
select * from clients;

desc product;

/* 
Procedure para exibir, inserir, atualizar e deletar elementos da tabela product,
de acordo com a opção (option_p) passada como primeiro parâmetro
*/

delimiter $$
create procedure product_procedure(
    in option TINYINT(1),
    in idProdutc_p int,
    inPname_p varchar(45),
    in Classification_Kids_p TINYINT(1),
    in Category_p FLOAT,
    in size_p VARCHAR(10)
    in productDescription_p varchar(255),
    in price_p float
)
BEGIN 
         case option_p
		-- Caso a opção seja 1, e os outros parâmetros nulos, irá exibir todos os elementos da tabela
		when 1 then
			select * from product;
		-- Caso a opçã oseja 2, irá inserir um produto na tabela de acordo com os parâmetros passados
		when 2 then
			insert into product(Pname, Classification_kids, Category, rating, size, productDescription, price)
			values (Pname_p, Classification_kids_p, Category_p, rating_p, size_p, productDescription_p, price_p);
		-- Caso a opção seja 3, irá atualizar os campos não nulos passados como parâmetro
        when 3 then
			update product
            set Pname = if(Pname_p is null, Pname, Pname_p),
				Classification_kids = if(Classification_kids_p is null, Classification_kids, Classification_kids_p),
                Category = if(Category_p is null, Category, Category_p),
                rating = if(rating_p is null, rating, rating_p),
                size = if(size_p is null, size, size_p),
                productDescription = if(productDescription_p is null, productDescription, productDescription_p),
                price = if(price_p is null, price, price_p)
			where idProduct = idProduct_p;
		-- Caso a opção seja 4, irá deletar a instância da tabela do respectivo idProduct passado
		when 4 then
			delete from product where idProduct = idProduct_p;
	end case;
end $$
delimiter ;

-- Exibir todos os produtos da tabela
call product_procedure(1, null, null, null, null, null, null, null, null);

-- Inserir um produto na tabela
call product_procedure(2, null, "Batedeira", 1, "Eletrodomestico", 4, "2x15x20", "Batedeira", 50.3);

-- Atualizar descrição do produto de id 2
call product_procedure(3, 2, null, null, null, null, null, "Geladeira", null);

-- Atualizar descrição e preço de produto de id 6
call product_procedure(3, 6, null, null, null, null, null, "Produto de Limpeza", 12.0);

-- Deletar instância de id 7
call product_procedure(4, 8, null, null, null, null, null, null, null);







