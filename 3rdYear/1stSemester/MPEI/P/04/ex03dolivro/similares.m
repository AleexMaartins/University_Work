function ParesSimilares=similares(distancia, limiar, utilizadores)
% Determinação dos pares com distância inferior ao valor de limiar

[id1 id2 c] = find (distancia < limiar & distancia>0);
ParesSimilares = zeros(length(id1),3);

h = waitbar(0,'Procurando Pares Similares ...');
for k=1:length(id1)
    waitbar(k/length(id1),h);

    n1=id1(k); n2=id2(k);
    ParesSimilares(k,1)= utilizadores(n1);
    ParesSimilares(k,2)= utilizadores(n2);
    ParesSimilares(k,3)= distancia(n1,n2);
end    
delete (h)