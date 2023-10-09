function t = term(a,x,n,h)
    d = abs(a-x);
    for i = 1:n
        j = i;
        if d(j)<=h
            if j>(n+1)/2
                j=j+1;
            end
            break
        end
    end
    t = j;
end

