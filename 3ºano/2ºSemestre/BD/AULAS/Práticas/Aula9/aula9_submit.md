# BD: Guião 9

## ​9.1
 
### *a)*

```
create procedure Company.removeSsn @Ssn char(9)
as
delete from Company.Dependent where Essn = @Ssn;
delete from Company.Works_on where Essn = @Ssn;

update Company.Department set Mgr_Ssn = null where Mgr_Ssn = @Ssn;
update Company.Employee set Super_ssn = null where Super_ssn = @Ssn;

delete from Company.Employee where Ssn = @Ssn;
```

### *b)* 

```
create procedure Company.Managers (@Ssn char(9) output, @max_year date output)
as
select @max_year = max(Mgr_start_date)
from Company.Department

select @Ssn = Mgr_Ssn
from Company.Department
where Mgr_start_date = @max_year

select Mgr_Ssn
from Company.Department
```

### *c)* 

```
create trigger Company.unique_mgr on Company.Department
after insert, update
as
	set nocount on;

	declare @mgr as char(9)
	select @mgr = Mgr_Ssn from inserted

	if exists(select * 
			from Company.Department
			where Mgr_Ssn = @mgr)
	begin
	raiserror('Um funcionário não pode ser gestor de mais que um departamento',16,1)
	rollback tran
	end
go
```

### *d)* 

```
create trigger Company.adjust_salary on Company.Employee
after insert, update
as
	set nocount on;

	declare @mgr_salary as DECIMAL(6,2)
	declare @new_salary as DECIMAL(6,2)

	select @mgr_salary = Salary
	from Company.Employee
	where Ssn in(
	select Mgr_ssn
	from Company.Department
	where Dnumber = 2)

	if (select Salary from inserted) > @mgr_salary
	begin
	set @new_salary = @mgr_salary - 1
	update Company.Employee
	set Salary = @new_salary
	where Ssn in (select Ssn from inserted)
	end
go
```

### *e)* 

```
create function Company.getProject (@Ssn CHAR(9)) returns Table
as
	return (
	select Pname, Plocation
	from Company.Project join Company.Works_on on Pnumber=Pno
	where Essn = @Ssn)
go
```

### *f)* 

```
create function Company.employee_above_avg_salary (@Dno int) returns Table
as
	return (
	select Ssn, Fname+' '+Lname as Name
	from Company.Department join Company.Employee on Dnumber = Dno
	where Salary < (select avg(Salary)
					from Company.Department join Company.Employee on Dnumber = Dno
					where Dno = @Dno)
	)
go
```
### *g)* 

```
CREATE FUNCTION employeeDeptHighAverage(@departId  INT)
RETURNS @table TABLE (
	pname  VARCHAR(15), 
	pnumber INT, 
	plocation VARCHAR(15), 
	dnum INT, 
	budget FLOAT, 
	totalbudget FLOAT )
AS

BEGIN
	DECLARE C CURSOR
        FOR
            SELECT Pname, Pnumber, Plocation, Dnum, SUM((Salary/40)*Hours) AS Budget  
			 FROM (project JOIN works_on ON Pnumber=Pno) JOIN employee ON Essn=Ssn WHERE Dnum=@departId
			  GROUP BY Pnumber, Pname, Plocation, Dnum;
 
	DECLARE @pname AS VARCHAR(15), @pnumber AS INT, @plocation as VARCHAR(15), @dnum AS INT, @budget AS FLOAT, @totalbudget AS FLOAT;
	SET @totalbudget = 0;
    OPEN C;
	FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @totalbudget += @budget;
		INSERT INTO @table VALUES (@pname, @pnumber, @plocation, @dnum, @budget, @totalbudget);
		FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;
	END
	CLOSE C;
	DEALLOCATE C;
	RETURN;
END
```

### *h)* 

```
CREATE TRIGGER dep_deletion_instead_of ON department INSTEAD OF DELETE
AS
	IF NOT (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'department_deleted'))
		CREATE TABLE department_deleted (
		Dname VARCHAR(15) NOT NULL,
		Dnumber INT NOT NULL,
		Mgr_ssn CHAR(9),
		Mgr_start_date DATE,
		PRIMARY KEY (Dnumber),
		UNIQUE (Dname),
		FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn) 
	);
	INSERT INTO department_deleted SELECT * FROM deleted;
	DELETE FROM department WHERE Dnumber IN (SELECT A.Dnumber FROM deleted AS A);


CREATE TRIGGER dep_deletion ON department AFTER DELETE
AS
	IF NOT (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'department_deleted'))
		CREATE TABLE department_deleted (
		Dname VARCHAR(15) NOT NULL,
		Dnumber INT NOT NULL,
		Mgr_ssn CHAR(9),
		Mgr_start_date DATE,
		PRIMARY KEY (Dnumber),
		UNIQUE (Dname),
		FOREIGN KEY (Mgr_ssn) REFERENCES employee(Ssn) 
	);
	INSERT INTO department_deleted SELECT * FROM deleted;

-- A opção "After Delete" parece ser a melhor escolha. Como o departamento será sempre removido em todos os resultados, não faz sentido criar um trigger "Instead Of" para pausar a operação.
```

### *i)* 

```
Stored Procedures
- Compilados e armazenados na cache do servidor, proporcionando execução rápida.
- Executam outras SPs.
- Devolvem múltiplos valores.
- Lidam com exceções.
- Executam transações.

User Defined Functions (UDFs)
- Compiladas e armazenadas na cache do servidor.
- Determinísticas.
- Devolvem um único valor.
- UDFs podem ser usadas como fontes de dados, funcionando como views parametrizadas que devolvem tabelas com base no input.


Stored Procedures:
Benefícios:
- Melhor performance.
- Execução de operações complexas e transações.
- Tratamento de exceções.
- Devolvem múltiplos valores.
Uso:
- Devem ser usados quando varias operaçoes precisam de ser executadas numa unica transação.

User Defined Functions:
Benefícios:
- Simplicidade e reutilização.
- Determinísticas e rápidas.
Uso:
- Para cálculos simples que retornam um valor, como calcular imposto de um produto.
```
