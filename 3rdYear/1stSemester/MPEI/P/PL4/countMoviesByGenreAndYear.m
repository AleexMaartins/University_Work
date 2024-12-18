function estimatedCount = countMoviesByGenreAndYear(movies, genre, year)
    genre = strtrim(lower(genre));
    year = strtrim(num2str(year)); 

    n = 1000;
    bloomFilter = inicializar(n);

    maxGenres = size(movies, 1) * (12 - 3 + 1);
    genres = cell(1, maxGenres);
    genreCount = 0; 

    for i = 1:size(movies, 1)
        for j = 3:12
            if numel(movies{i,j}) > 1 && ~strcmp(movies{i,j}, '(no genres listed)')
                genreCount = genreCount + 1;
                genres{genreCount} = lower(movies{i, j});

                k = 3;
                bloomFilter = adicionar_elemento(bloomFilter, genres{genreCount}, k);
            end
        end
    end

    % check if the genre is in the bloom filter
    if pertenca(bloomFilter, genre, k)
        disp(['The genre ', genre, ' is present in the Bloom Filter.']);

        estimatedCount = 0;
        for i = 1:size(movies, 1)
            movieYear = strtrim(num2str(movies{i, 2})); 
            movieGenres = {};
            for j = 3:12
                if ~ismissing(movies{i, j})
                    movieGenres = [movieGenres, strsplit(lower(movies{i, j}), '|')]; 
                end
            end

            if any(cellfun(@(x) any(strcmp(genre, x)), movieGenres)) && strcmp(year, movieYear)
                estimatedCount = estimatedCount + 1;
            end
        end
        disp(['Estimated number of movies of genre ', genre, ' and year ', year, ': ', num2str(estimatedCount)]);
    else
        disp(['The genre ', genre, ' is not present in the Bloom Filter.']);
        estimatedCount = 0;
    end
end