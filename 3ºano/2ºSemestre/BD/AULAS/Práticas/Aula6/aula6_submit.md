# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
use pubs
go
SELECT * 
FROM authors
go
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
use pubs
go
SELECT au_fname,au_lname,phone 
FROM authors
go
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
use pubs
go
SELECT au_fname,au_lname,phone 
FROM authors 
ORDER BY au_fname, au_lname
go
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
use pubs
go
SELECT au_fname AS first_name,au_lname AS last_name ,phone AS telephone FROM authors 
ORDER BY au_fname, au_lname
go
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
use pubs
go
SELECT au_fname AS first_name,au_lname AS last_name ,phone AS telephone FROM authors 
WHERE state = 'CA' AND au_lname != 'Ringer' 
ORDER BY au_fname, au_lname
go
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
use pubs
go
SELECT * 
FROM publishers 
WHERE pub_name LIKE '%Bo%'
go
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
use pubs
go
SELECT pub_name 
FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id ) 
WHERE type = 'business'
go
```

### *h)* Número total de vendas de cada editora; 

```
use pubs
go
SELECT  pub_name, SUM(ytd_sales) 
FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id ) 
GROUP BY pub_name
go
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
use pubs
go
SELECT title_id,SUM(ytd_sales) AS total_sales, pub_name
FROM (publishers JOIN titles ON publishers.pub_id = titles.pub_id ) 
GROUP BY title_id, pub_name
go
```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
select title 
from titles
where title_id in ( select title_id
                    from sales join stores on sales.stor_id = stores.stor_id
                    where stor_name = 'Bookbeat'
                    )
go
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
select au_fname, au_lname 
from authors
where au_id in ( select au_id
                    from titleauthor join titles on titleauthor.title_id = titles.title_id
                    group by au_id
                    having count(distinct type) > 1
                    )
go
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
... Write here your answer ...
```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
... Write here your answer ...
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
... Write here your answer ...
```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
... Write here your answer ...
```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
... Write here your answer ...
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
... Write here your answer ...
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
... Write here your answer ...
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
... Write here your answer ...
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
... Write here your answer ...
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
... Write here your answer ...
```

##### *b)* 

```
... Write here your answer ...
```

##### *c)* 

```
... Write here your answer ...
```

##### *d)* 

```
... Write here your answer ...
```

##### *e)* 

```
... Write here your answer ...
```

##### *f)* 

```
... Write here your answer ...
```

##### *g)* 

```
... Write here your answer ...
```

##### *h)* 

```
... Write here your answer ...
```

##### *i)* 

```
... Write here your answer ...
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT *
FROM Fornecedor
FULL OUTER JOIN Encomenda
ON Fornecedor=Nif
WHERE Numero IS NULL;
```

##### *b)* 

```
SELECT Nome, AVG(item.Unidades) AS avg_units_order FROM item
JOIN Produto
ON Codigo=CodProd
GROUP BY Nome;
```


##### *c)* 

```
SELECT AVG(Aa) AS avg_number_diff_items_per_order
FROM
(SELECT CAST(COUNT(*) AS FLOAT) AS Aa FROM item
GROUP BY NumEnc) AS a;
```


##### *d)* 

```
SELECT Fornecedor.Nome, Produto.Nome, SUM(Item.Unidades) FROM Encomenda
JOIN Fornecedor
ON Fornecedor=Nif
JOIN Item
ON NumEnc=Numero
JOIN Produto
ON Codigo=CodProd
GROUP BY Fornecedor.Nome, Produto.Nome;
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT *
FROM Paciente
WHERE NSNS
NOT IN (SELECT DISTINCT NSNS FROM Prescricao);
```

##### *b)* 

```
SELECT Especialidade, COUNT(*) AS prescricoes FROM medico
JOIN Prescricao
ON medico.nid=Prescricao.nid
GROUP BY Especialidade;
```


##### *c)* 

```
SELECT COUNT(*) AS processed_no FROM Prescricao
WHERE Data_proc IS NOT NULL;
```


##### *d)* 

```
SELECT * FROM Presc_farmaco
FULL OUTER JOIN Farmaco
ON Nome=Nome_farmaco
WHERE Nreg=906
AND Num_presc IS NULL;
```

##### *e)* 

```
SELECT Nome_farmacia, Num_reg_farm, COUNT(*) AS sold_farma FROM Prescricao
JOIN Presc_farmaco
ON Num_presc=Nuni
WHERE Nome_farmacia IS NOT NULL
GROUP BY Nome_farmacia, Num_reg_farm
;
```

##### *f)* 

```
SELECT NSNS FROM prescricao
GROUP BY NSNS
HAVING COUNT(DISTINCT NID) > 1;
```
