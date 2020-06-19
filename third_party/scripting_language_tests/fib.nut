function fibR(n)
{
    if (n < 2) return n;
    return (fibR(n-2) + fibR(n-1));
}


function fibI(n)
{
    local last = 0;
    local cur = 1;
    n = n - 1;
    while(n)
    {
        --n;
        local tmp = cur;
        cur = last + cur;
        last = tmp;
    }
    return cur;
}

local N = 43;
print("fib: " + fibR(N) + " = " + fibI(N) + "\n");
