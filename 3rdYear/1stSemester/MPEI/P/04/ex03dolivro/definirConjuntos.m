function [C, utiliz] =definirConjuntos (ficheiro) 
%Definir Conjunto C e lista de utilizadores com informação de ficheiro

udata=load (ficheiro);

% manter apenas com as duas primeiras colunas
u= udata (1: end, 1:2); clear udata;
clear udata;

%Lista de utilizadores
utiliz= unique (u (:,1));
% IDs dos utilizadores
Nu= length (utiliz);
%Número de utilizadores
%Construir o Conjunto de filmes avaliados para cada utilizador 
C= cell (Nu, 1); % Usa células
for n = 1:Nu, % Para cada utilizador
    % obter os filmes de cada um
    ind = find (u (:,1) == utiliz (n));
    C{n} = [C{n} u(ind, 2)];
end