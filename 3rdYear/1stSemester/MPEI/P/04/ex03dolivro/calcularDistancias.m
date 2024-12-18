function distancia = calcularDistancias(M,nfd)
% Calcular distâncias entre Assinaturas na matriz M

nc = length(M);
distancia=zeros(nc,nc);
h = waitbar(0,'Calculando Distâncias ...');

for n1 = 1:nc,
    waitbar(n1/nc,h);

    for n2 = n1+1:nc,
        % estimativa de similaridade baseada nas assinaturas
        simJ = sum(M(:,n1) == M(:,n2))/nfd;

        % guardar distância para o par de utilizadores (n1,n2)
        distancia(n1,n2)=1-simJ;
    end
end
delete (h)