# BD: Guião 7


## ​7.2 
 
### *a)*

```
Está na forma 1FN porque tem Dependências Parciais e Dependências Transitivas.

- Dependencias Parciais:
    - Nome_Autor -> Afiliação_Autor

- Dependências Transistivas:
    - Editor -> Endereço_Editor
    - Tipo_Livro, NoPaginas -> Preço
```

### *b)* 

```
Decomposição de Dependencias Parciais:
EP1(<u>Titulo_Livro</u>, <u>Nome_Autor</u> , Tipo_Livro, Preço, NoPaginas, Editor, Endereço_Editor, Ano_Publicaçao)
EP2(<u>Nome_Autor</u>, Afiliação_Autor)

Decomposição de Dependencias Transitivas:
ED1(<u>Editor</u>, Endereço_Editor)
ED2(<u>Tipo_Livro, <u>NoPaginas</u>, Preço)

Decomposição Final:
EP1(<u>Titulo_Livro</u>, <u>Nome_Autor</u> ,Editor, Tipo_Livro, NoPaginas, Ano_Publicaçao)
EP2(<u>Nome_Autor</u>, Afiliação_Autor)
ED1(<u>Editor</u>, Endereço_Editor)
ED2(<u>Tipo_Livro, <u>NoPAginas</u>, Preço)
```

## ​7.3
 
### *a)*

```
Chave Primária: (A,B)
```


### *b)* 

```
R1={[A,B(PK)],C}; R2={A(PK),D,E,I,J}; R3={B(PK),F,G,H}
```


### *c)* 

```
R1={[A,B(PK)],C}; R2={A(PK),D(FK),E}; R3={B(PK),F(FK)};
R4={F(PK),G,H}; R5={D(PK),I,J}
```


## ​7.4
 
### *a)*

```
Chave Primária: (A,B)
```


### *b)* 

```
R1={[A,B](PK),C,D(FK)}; R2={D(PK),E}
```


### *c)* 

```
R1={[C,B](PK),D(FK)}; R2={D(PK),E}; R3={C(PK),A}
```



## ​7.5
 
### *a)*

```
Chave Primária: (A,B)
```

### *b)* 

```
R1={[A,B](PK),E}; R2={A(PK),C,D}
```


### *c)* 

```
R1={[A,B](PK),E}; R2={A(PK),C}
R3={C(PK),D}
```

### *d)* 

```
Já está na BCNF
```
