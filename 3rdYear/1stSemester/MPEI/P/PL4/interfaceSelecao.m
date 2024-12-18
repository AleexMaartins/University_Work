function numeroSelecionado = interfaceSelecao()    
opcoes = {'Display avaliable genres', 
        'Number of movies of a genre', 
        'Number of movies of a genre on a given year', 
        'Search of movie titles',
        'Search movies based on genres',
        'Exit'}; % Lista de opções

    
while true
    % Mostra as opções enumeradas
    for i = 1:numel(opcoes)
        fprintf('%d. %s\n', i, opcoes{i});
    end
    
    % Obtém a entrada do usuário
    numeroSelecionado = input('Digite o número da opção desejada: ');
   
    if  ((numeroSelecionado >= 1) && (numeroSelecionado<= 6))
        fprintf('Opção válida\n ');
        return;
        
    end
end
