%Para facilitar o calculo de outras situacoes similares às que tratou nos pontos anteriores, crie uma funccao
%em Matlab que permita estimar a probabilidade por simulacao. A funcao deve ter os seguintes parametros 
%de entrada: p, numero de lancamentos, numero de caras pretendidas e numero de experiencias a realizar. 
%Deve utilizar nomes adequados para a funcao e para os parametros de entrada.

%N numero de experiencias
%p probabilidade de caras
%k numero de caras
%n numero de lancamentos

function [returne] = igualK(p,n,k,N)

lancamentos= rand(n,N) >p;
sucessos= sum(lancamentos) == k;
returne=sum(sucessos)/N;
end
