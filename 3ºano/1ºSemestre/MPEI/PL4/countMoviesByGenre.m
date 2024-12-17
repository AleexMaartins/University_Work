function estimatedCount = countMoviesByGenre(movies, userGenre)
    movies = movies(:, :);
    userGenre = lower(userGenre);
  
    maxGenres = size(movies, 1) * (12 - 3 + 1);
    genres = cell(1, maxGenres);
    genreCount = 0; 

    for i = 1:size(movies, 1)
        for j = 3:12
            
            if numel(movies{i,j}) > 1 && ~strcmp(movies{i,j}, '(no genres listed)')
                genreCount = genreCount + 1;
                genres{genreCount} = lower(movies{i, j});
            end
        end
    end


    n = 1000;
    bloomFilter = inicializar(n);

    k = 3;
    for i = 1:size(genres, 1)
        for j = 1:size(genres, 2)
            genre = genres{i, j};
            if ~isempty(genre)
                bloomFilter = adicionar_elemento(bloomFilter, genre, k);
            end
        end
    end
    
    if pertenca(bloomFilter, userGenre, k)
        disp('O genero está presente no Bloom Filter.');
    
        estimatedCount = 0;
        for i = 1:size(genres, 1)
            for j = 1:size(genres, 2)
                genre = genres{i, j};
                if strcmp(userGenre, genre)
                    estimatedCount = estimatedCount + 1;
                end
            end
        end
         disp(['Número estimado de filmes do genero ', userGenre, ': ', num2str(estimatedCount)]);
    else
        disp('O genero não está presente no Bloom Filter.');
    end


end






