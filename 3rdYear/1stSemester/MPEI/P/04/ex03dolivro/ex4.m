nfd=100; % número de funções de dispersão

%%Leitura de informação do ficheiro u.data
%% para obter Conjuntos e ID de utilizadores

[Conjuntos, utilizadores] =definirConjuntos ('u.data');
%% Calcular MinHash

% inicializar as funções de dispersão
N= 100000;
v= inicFuncoesDispersao(N, nfd);

% calcular Assinaturas usando MinHash
tic 
M=calcularMatrizAssinaturas(Conjuntos, v, N, nfd);
toc

%% Calcular distâncias com base na matriz de assinaturas
tic
distMH=calcularDistancias(M, nfd);
toc

%% Determinar Pares Similares com base na distância 
tic
limiar =0.4; % limiar de decisão
ParesSimilares=similares(distMH, limiar, utilizadores);
toc
%% Mostrar pares similares
tic
fprintf (1, '\n%d Pares Similares [dist < %.2f]\n', size (ParesSimilares, 1), limiar);

for i=1:size (ParesSimilares, 1) 
    fprintf (1, '%3d %3d : Distância = %.3f\n', ParesSimilares (i,:));
end
toc