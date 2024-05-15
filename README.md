Personalizando o Banco de Dados com Índices e Procedures
Desafio de projeto "Personalizando o Banco de Dados com Índices e Procedures" para a formação SQL Database Specialist, da DIO.
Parte 1 – Criando índices em Banco de Dados
Criação de índices para consultas para o cenário de company com as perguntas (queries sql) para recuperação de informações. Sendo assim, dentro do script será criado os índices com base na consulta SQL.

O que será levado em consideração para criação dos índices?

Quais os dados mais acessados

Quais os dados mais relevantes no contexto

A criação do índice pode ser criada via ALTER TABLE ou CREATE Statement, como segue o exemplo:

ALTER TABLE customer ADD UNIQUE index_email(email);

CREATE INDEX index_ativo_hash ON exemplo(ativo) USING HASH;

Perguntas:
Qual o departamento com maior número de pessoas?

Quais são os departamentos por cidade?

Relação de empregrados por departamento

Entregável:
Crie as queries para responder essas perguntas

Crie o índice para cada tabela envolvida (de acordo com a necessidade)

Tipo de indice utilizado e motivo da escolha (via comentário no script ou readme)

Foram apenas utilizados os índices padrão do MySQL.
Parte 2 - Utilização de procedures para manipulação de dados em Banco de Dados
Objetivo:
Criar uma procedure que possua as instruções de inserção, remoção e atualização de dados no banco de dados. As instruções devem estar dentro de estruturas condicionais (como CASE ou IF).

Além das variáveis de recebimento das informações, a procedure deverá possuir uma variável de controle. Essa variável de controle irá determinar a ação a ser executada. Ex: opção 1 – select, 2 – update, 3 – delete.

Entregável:
Script SQL com a procedure criada e chamada para manipular os dados de universidade e e-commerce. Podem ser criados dois arquivos distintos, assim como a utilização do mesmo script para criação das procedures. Fique atento para selecionar o banco de dados antes da criação da procedure.

Foi apenas criada uma procedure para manipulação de produtos do banco de dados de e-commerce.