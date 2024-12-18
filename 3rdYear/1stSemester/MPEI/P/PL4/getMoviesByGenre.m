function genreArray = getMoviesByGenre(movies, inputGenres)
    if ischar(inputGenres)
        inputGenres = cellstr(inputGenres);
    end
    if isstring(inputGenres)
        inputGenres = {inputGenres};
    end    

    maxMovies = size(movies, 1);
    genreArray = cell(maxMovies, 3); 
    movieCount = 0;

    shingleSize = 2;
    numHashFuncs = 100;

    h = waitbar(0,'Please wait...'); 


    for i = 1:size(movies, 1)
        waitbar(i/maxMovies, h); 
        genreMatchCounter = 0;  
        for j = 3:12
            if numel(movies{i,j}) > 1 && ~strcmp(movies{i,j}, '(no genres listed)')
                movieGenre = lower(movies{i, j});  
                movieShingles = createShingles(movieGenre, shingleSize);
                movieSignature = minHash(movieShingles, numHashFuncs);


                for g = 1:length(inputGenres)
                    genre = lower(strtrim(inputGenres{g}));  
                    genreShingles = createShingles(genre, shingleSize);
                    genreSignature = minHash(genreShingles, numHashFuncs);

                    similarity = sum(genreSignature == movieSignature) / numHashFuncs;

                    if similarity > 0.6
                        genreMatchCounter = genreMatchCounter + 1;
                    end
                end
            end
        end
        finalSimilarity = genreMatchCounter / length(inputGenres);
        if finalSimilarity > 0.6
            movieCount = movieCount + 1;
            genreArray{movieCount, 1} = movies{i, 1};    
            genreArray{movieCount, 2} = movies{i, 2};    
            genreArray{movieCount, 3} = finalSimilarity;
        end
    end

    close(h); % close waitbar

    genreArray = genreArray(1:movieCount, :);
    genreTable = cell2table(genreArray, 'VariableNames', {'Title', 'Year', 'Similarity'});
    genreTable = sortrows(genreTable, {'Similarity', 'Year'}, {'descend', 'descend'});
    if height(genreTable) > 50
        genreTable = genreTable(1:50, :);
    end
    genreArray = table2cell(genreTable);
end


function shingles = createShingles(str, k)
    shingles = arrayfun(@(i) str(i:i+k-1), 1:length(str)-k+1, 'UniformOutput', false);
end


function signature = minHash(shingles, numHashFuncs)  
    signature = inf(1, numHashFuncs);
    for i = 1:length(shingles)
        hashValues = mod(sum(double(shingles{i})) .* (1:numHashFuncs), numHashFuncs);
        signature = min(signature, hashValues);
    end
end