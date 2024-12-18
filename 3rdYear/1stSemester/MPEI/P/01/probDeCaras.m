%Para facilitar o calculo de outras situacoes similares às que tratou nos pontos anteriores, crie uma funccao
%em Matlab que permita estimar a probabilidade por simulacao. A funcao deve ter os seguintes parametros 
%de entrada: p, numero de lancamentos, numero de caras pretendidas e numero de experiencias a realizar. 
%Deve utilizar nomes adequados para a funcao e para os parametros de entrada.

function [returne] = probDeCaras(p,n,caras,N)

lancamentos= rand(n,N) >p;
sucessos= sum(lancamentos) <= caras;
returne=sum(sucessos)/N;
end
