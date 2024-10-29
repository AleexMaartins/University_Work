# BD: Guião 8


## ​8.1. Complete a seguinte tabela.
Complete the following table.

| #    | Query                                                                                                      | Rows  | Cost  | Pag. Reads | Time (ms) | Index used                   | Index Op.                                   | Discussion |
| :--- | :--------------------------------------------------------------------------------------------------------- | :---- | :---- | :--------- | :-------- | :----------------------------|:--------------------------------------------|:-----------|
| 1    | SELECT * from Production.WorkOrder                                                                         | 72591 | 0.488 | 742        | 891       |WorkOrderID                   | Clustered Index Scan                        |            |
| 2    | SELECT * from Production.WorkOrder where WorkOrderID=1234                                                  |   1   | 0.003 | 216        | 52        |WorkOrderID                   | Clustered Index Seek                        |            |
| 3.1  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 10000 and 10010                               | 11.99 | 0.003 | 216        | 90        |WorkOrderID                   | Clustered Index Seek                        |            |
| 3.2  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 1 and 72591                                   | 72591 | 0.488 | 748        | 889       |WorkOrderID                   | Clustered Index Seek                        |            |
| 4    | SELECT * FROM Production.WorkOrder WHERE StartDate = '2012-05-14'                                          | 41.11 | 0.522 | 752        | 182       |WorkOrderID                   | Clustered Index Scan                        |            |
| 5    | SELECT * FROM Production.WorkOrder WHERE ProductID = 757                                                   | 11.4  | 0.037 | 76         | 70        |ProductID                     |Non ClusteredIndex Seek & Clustered KeyLookup|            |
| 6.1  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 757                              | 11.4  | 0.003 | 228        | 8         |ProductID Covered (StartDate) | Non ClusteredIndex Seek                     |            |
| 6.2  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945                              | 1105  | 0.005 | 232        | 57        |ProductID Covered (StartDate) | Non ClusteredIndex Seek                     |            |
| 6.3  | SELECT WorkOrderID FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2011-12-04'            | 1.79  | 0.005 | 4793       | 416       |ProductID Covered (StartDate) | Non ClusteredIndex Seek                     |            |
| 7    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2011-12-04' | 1.79  | 0.474 | 758        | 16        |ProductID and StartDate       | Clustered Index Scan                        |            |
| 8    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2011-12-04' | 1.79  | 0.006 | 226        | 5         |Composite(ProductID,StartDate)| Non ClusteredIndex Seek                     |            |

## ​8.2.

### a)

```
CREATE UNIQUE CLUSTERED INDEX idx_rid ON dbo.mytemp(rid)
```

### b)

```
Fragmentação: 98.8%
Ocupação: 69.9%
```

### c)

```
Fillfactor: 65%
61120 ms
Fillfactor: 80%
61549 ms
Fillfactor: 90%
65639 ms
```

### d)

```
Fillfactor: 65%
54100 ms
Fillfactor: 80%
54822 ms
Fillfactor: 90%
53971 ms
```

### e)

```
75816 ms
Há mais indices, o que leva a uma pior performance de inserção.
```

## ​8.3.

```
... Write here your answer ...
```
