function M = calcularMatrizAssinaturas(Conjuntos,v,N,nfd)
    %Calcular Matriz de Assinaturas (M) através de aplicacao ...
    % nfd funcoes de dispersao aos Conjuntos de filmes...
    % avaliados por cada utilizador
    nc = length(Conjuntos); % número de conjuntos
    M = zeros(nfd,nc); % Matriz MinHash
    h = waitbar(0,'Calculando as Assinaturas (MinHash) ...');
    for nu = 1:nc,
        waitbar(nu/nc,h);
        C = Conjuntos{nu}; % Obter Conjunto correspondente a nu
    
        % para cada uma das funções de dispersão
        for nh= 1:nfd,
            %calc MinHash para filmes do conjunto:
            % ... calcular para o primeiro filme do conjunto
            M(nh,nu) = mod(v.a(nh) * (C(1))+v.b(nh), v.p);


            % ... calcular para os restantes filmes do conjunto
            for nf= 2:length(C),
                htmp = mod(v.a(nh) * (C(nf))+v.b(nh), v.p);
                %para determinar min
                if htmp < M(nh,nu)
                    M(nh,nu) = htmp;
                end
            end
        end
    end
    delete(h)
end