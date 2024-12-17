function titleArray = getMoviesByTitle(movies, title)
   
    title = lower(title);
    maxMovies = size(movies, 1);
    titleArray = cell(maxMovies, 2); 
    movieCount = 0;

    shingleSize = 2;
    numHashFuncs = 100;

    titleShingles = createShingles(title, shingleSize);
    titleSignature = minHash(titleShingles, numHashFuncs);

    for i = 1:size(movies, 1)
        movieTitle = lower(movies{i, 1});  
        movieShingles = createShingles(movieTitle, shingleSize);
        movieSignature = minHash(movieShingles, numHashFuncs);

        similarity = sum(titleSignature == movieSignature) / numHashFuncs;

        if similarity > 0.6
            movieCount = movieCount + 1;
            titleArray{movieCount, 1} = movies{i, 1};  
            titleArray{movieCount, 2} = similarity;
        end
    end
    titleArray = titleArray(1:movieCount, :);
    titleTable = cell2table(titleArray, 'VariableNames', {'Title', 'Similarity'});
    titleTable = sortrows(titleTable, 'Similarity', 'descend');
    titleArray = table2cell(titleTable);
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