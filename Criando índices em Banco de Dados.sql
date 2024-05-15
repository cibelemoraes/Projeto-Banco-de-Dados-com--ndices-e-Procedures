"""Parte 1 - criando índices em banco de dados"""

use company_constraints;

select *FROM departament;
select *FROM employee;
select *FROM dept_location;

-- Departamento com maior número de pessoas

select e.Dno as "Número do departamento", d.Dname as "Departamento", count(e.Dno) as frequencia from employee e, department d
where e.Dno = d.Dnumber
group by Dno
ORDER BY frequencia desc limit 1;

-- Criação do índice para o número do departamento, para agilizar a busca pelo departamento com maior número de pessoas
create index index_departament on employee(Dno);

-- Departamentos por cidade
select dl.Dlocation, d.Dname from department d, dept_locations dl 
where d.Dnumber = dl.Dnumber
order by dl.Dlocation;

-- Criação dos índices para o número do departamento nas tabelas department e dept_locations, para agilizar a querry acima, já que estamos comparando esses parâmetros
create index index_departament_Dnumber on department(Dnumber);
-- usando Alter Table
alter table dept_locations add index index_dept_location_Dnumber(Dnumber);
show index from department;
show index from dept_locations;

-- Relação de empregados por departamento

select Dno, Dname, concat(Fname, ' ', Minit, ' ', Lname) as Name, Ssm from employee, department
where Dno = Dnumber
order by Dno;

-- Os índices necessarios para para recuperação de informações foram criados


