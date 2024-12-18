 imin = 5;
imax = 8;
false_positives = 0;
for k = 1:1
    caracteres = 'a':'z';
    prob_caracteres = ones(1, length(caracteres)) / length(caracteres);
    chaves = key_gen(m,imin,imax, caracteres, prob_caracteres);
    chaves = unique(chaves);
    U1 = chaves(1:300);
    vetor = init_vector(10000);

    for i = 1:length(U1)
        vetor = insert_element(vetor, U1{i}, 1);
    end

    numWords = 300;
    exists_word = zeros(1, numWords);

    U2 = chaves(301:600);

    for i = 1:numWords
        exists_word(i) = isMember(vetor, U2{i}, 1);

        if exists_word(i) ~= 0
            false_positives = false_positives + 1;
        end

    end
end
false_positives/300