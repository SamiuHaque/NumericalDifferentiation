function f = backwardDifference(y,t,p)
    f = 0;
    k = p;
    for i=1:t-1
        d = diff(y,i);
        f = f+d(t-i)*k*(1/factorial(i));
        k = k*(p+i);
    end
    f = y(t)+f;
end