%% main

movies = readcell('movies.csv', 'Delimiter',',');
option = interfaceSelecao();

while (option ~= 6)
    
    switch option
        case 1
            fprintf('Option 1...\n');
            % 'Display avaliable genres'
            genres = getGenres(movies);
            disp('All movie genres:');
            disp(genres);
            
        case 2 
            fprintf('Option 2...\n');
            % 'Number of movies of a genre'
            fprintf('Executing option 2 ...\n');
            genre = input('Enter the genre: ', 's');
            count = countMoviesByGenre(movies, genre);
            
        case 3 
            fprintf('Option 3...\n');
            % 'Number of movies of a genre on a given year's
            genre = input('Enter the genre: ', 's');
            year = input('Enter the year: ');
            count = countMoviesByGenreAndYear(movies, genre,year);
            
        case 4 
            fprintf('Option 4...\n');
            % 'Search of movie titles'
            title = input('Enter the title: ', 's');
            similarMoviesByTitle = getMoviesByTitle(movies, title);
            disp('All similar movie titles:');
            disp(similarMoviesByTitle);
            
        case 5 
            fprintf('Option 5...\n');
            % 'Search movies based on genres'
            genres = input('Enter the genres (separated by commas): ', 's');
            genres = strsplit(genres, ',');  
            similarMoviesByGenre = getMoviesByGenre(movies, genres);
            disp('All movie with the desired genre: ');
            disp(similarMoviesByGenre);
            
        case 6
            fprintf('Closing...\n');
            % 'Exit'
            return; 
        
        otherwise
            fprintf('Invalid option.\n');
    end
    
    option = interfaceSelecao();
end 