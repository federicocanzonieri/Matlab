
function[qt,rm]=myIntegerDivision(a,b)

    qt = floor(a/b)
    if nargout == 2
        rm = rem(a,b)
    end
end
