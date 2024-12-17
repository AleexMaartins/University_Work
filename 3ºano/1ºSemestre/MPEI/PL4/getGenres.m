function genreArray = getGenres(movies)

    maxGenres = size(movies, 1) * (12 - 3 + 1);
    genres = cell(1, maxGenres);
    genreCount = 0; 

    for i = 1:size(movies, 1)
        for j = 3:12
            if numel(movies{i,j}) > 1 && ~strcmp(movies{i,j}, '(no genres listed)')
                genreCount = genreCount + 1;
                genres{genreCount} = movies{i, j};
                movies{i,j};
            end
        end
    end

    genres = genres(1:genreCount);

    genreArray = unique(genres);
end
