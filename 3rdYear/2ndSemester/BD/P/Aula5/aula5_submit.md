# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
πPname,Fname,Lname,Ssn ((employee)⨯(project)⨝employee.Ssn=Essn∧project.Pnumber=Pno works_on)
```


### *b)* 

```
Carlos_SSn = ρCarlos_Ssn (πSsn σFname='Carlos'∧Minit='D'∧Lname='Gomes' (employee))

πFname,Lname (employee ⨝Super_ssn=Carlos_Ssn.Ssn  Carlos_SSn) 
```


### *c)* 

```
γPname; sum(works_on.Hours)-> Total_hours (project⨝Pnumber=Pno works_on)
```


### *d)* 

```
γPname; sum(Hours)->TotalHours (σPname='Aveiro Digital' (σDno=3 (employee)⨯(project)⨝employee.Ssn=Essn∧project.Pnumber=Pno∧Hours>20 works_on))
```


### *e)* 

```
πFname σPno = 0 γFname; count(Pno)->Pno ((employee)⨯(project)⟕employee.Ssn=Essn∧project.Pnumber=Pno works_on)
```


### *f)* 

```
(γDname; avg(Salary)->Avg (employee⨝Sex='F' department))
```


### *g)* 

```
σno_dependet>2 γFname; count(Essn)->no_dependet (employee⨝Ssn=Essn dependent)
```


### *h)* 

```
πFname σno_dependet=0 γFname; count(Essn)->no_dependet ((employee⟕Ssn=Essn dependent)⨝Ssn=Mgr_ssn department)
```


### *i)* 

```
πFname,Address σDlocation≠'Aveiro' (((employee⨝Ssn=Essn works_on)⨝Plocation='Aveiro' project)⨝Dnum=department.Dnumber  (department⨝department.Dnumber=dept_location.Dnumber dept_location))
```


## ​Problema 5.2

### *a)*

```
πnif,nome,fax,endereco,condpag,tipo (σencomenda.numero=null (fornecedor⟕nif=fornecedor encomenda))
```

### *b)* 

```
(γcodProd; avg(unidades)->n_prod item)
```


### *c)* 

```
γ avg(n_prod)->avg_prod (γnumEnc; count(codProd)->n_prod item)
```


### *d)* 

```
γfornecedor.nome, produto.nome; sum(item.unidades)->quant (((fornecedor⨝nif=fornecedor encomenda)⨝numEnc=numero item)⨝codProd=codigo produto)
```


## ​Problema 5.3

### *a)*

```
σ (NumeroPrescricao=null) (paciente⟕Prescricao)
```

### *b)* 

```
alpha = medico ⨝ numSNS=numMedico prescricao
γ especialidade; COUNT(numPresc) -> count_prescricao (alpha)
```


### *c)* 

```
γ farmacia; count(numPresc) -> count_prescricao (σ (farmacia≠null) (prescricao))
```


### *d)* 

```
 π nomeFarmaco (σ numReg=906 (farmaceutica ⨝ numReg=numRegFarm presc_farmaco)) - π nomeFarmaco presc_farmaco
```

### *e)* 

```
γ farmacia.nome, farmaceutica.nome; count(presc_farmaco.nomeFarmaco) -> num_farmacos
π farmacia.nome, farmaceutica.nome, presc_farmaco.nomeFarmaco
(farmaceutica ⨝ presc_farmaco.numRegFarm = numReg
(farmacia ⨝ prescricao.farmacia = nome 
π prescricao.farmacia, presc_farmaco.numRegFarm, presc_farmaco.nomeFarmaco
(prescricao ⨝ numPrescX = numPresc (ρ numPrescX←numPresc (presc_farmaco)))))


```

### *f)* 

```
alpha = γ numUtente; count(numMedico) -> dif_doctors (π numUtente,numMedico prescricao)
π paciente.nome (paciente⨝(σ dif_doctors > 1 alpha))

```
