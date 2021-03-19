function [res]= myVector(a,b,c)

    switch nargin
        case 1
            res=[0:a]
        case 2
            res=[a:b]
        case 3
            res=[a:b:c]
        otherwise
            error("Wrong numb of params")
    end
end
