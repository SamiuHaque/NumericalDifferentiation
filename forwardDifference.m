function f = forwardDifference(y,n,t,p)
    f = 0;
    k = p;
    for i=1:n-t
        d = diff(y,i);
        f = f+d(t)*k*(1/factorial(i));
        k = k*(p-i);
    end
    f = y(t)+f;
end