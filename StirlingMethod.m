function f = StirlingMethod(y,n,t,p)
    f = 0;
    k = p;
    j = 0;
    for i=1:n-1
        d = diff(y,i);
        if rem(i,2)~=0
            f = f+k*(1/factorial(i))*(d(t-j)+d(t-(j+1)))/2;
            j = j+1;
        else
            f = f+p*k*(1/factorial(i))*d(t-j);
            k = k*(p^2-j^2);
        end
    end
    f = y(t)+f;
end