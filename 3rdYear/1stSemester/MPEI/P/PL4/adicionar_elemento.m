function vector = adicionar_elemento(vector, element, k)
    for i = 1:k
        vector = runHash(vector, element, i);
    end
end

function vector = runHash(vector, element, hashType)
    switch hashType
        case 1
            hashcode = mod(string2hash(element, 'djb2'), length(vector)) + 1;
        case 2
            hashcode = mod(string2hash(element, 'sdbm'), length(vector)) + 1;
        case 3
            hashcode = mod(hashstring(element, length(vector)), length(vector)) + 1;
        otherwise
            error('Invalid hashType');
    end

    vector(hashcode) = 1;
end
