function is = pertenca(vector, element, k)
    for i = 1:k
        index = getHashcode(vector, element, i);
        if vector(index) == 0
            is = false;
            return;
        end
    end
    is = true;
end

function hashcode = getHashcode(vector, element, hashType)
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
end